; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/32.SMG2000.box_algebra.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %box1, %struct.hypre_Box_struct* %box2, %struct.hypre_Box_struct* %ibox) #0 {
entry:
  %box1.addr = alloca %struct.hypre_Box_struct*, align 8
  %box2.addr = alloca %struct.hypre_Box_struct*, align 8
  %ibox.addr = alloca %struct.hypre_Box_struct*, align 8
  %ierr = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.hypre_Box_struct* %box1, %struct.hypre_Box_struct** %box1.addr, align 8
  store %struct.hypre_Box_struct* %box2, %struct.hypre_Box_struct** %box2.addr, align 8
  store %struct.hypre_Box_struct* %ibox, %struct.hypre_Box_struct** %ibox.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %d, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %d, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imin2 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %3, %6
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32, i32* %d, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imin6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imin6, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %10 = load i32, i32* %d, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin9, i32 0, i64 %idxprom8
  %12 = load i32, i32* %arrayidx10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %12, %cond.false ]
  %13 = load i32, i32* %d, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %ibox.addr, align 8
  %imin12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imin12, i32 0, i64 %idxprom11
  store i32 %cond, i32* %arrayidx13, align 4
  %15 = load i32, i32* %d, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %18 = load i32, i32* %d, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imax17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax17, i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp slt i32 %17, %20
  br i1 %cmp19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %cond.end
  %21 = load i32, i32* %d, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imax22, i32 0, i64 %idxprom21
  %23 = load i32, i32* %arrayidx23, align 4
  br label %cond.end.28

cond.false.24:                                    ; preds = %cond.end
  %24 = load i32, i32* %d, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imax26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imax26, i32 0, i64 %idxprom25
  %26 = load i32, i32* %arrayidx27, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.24, %cond.true.20
  %cond29 = phi i32 [ %23, %cond.true.20 ], [ %26, %cond.false.24 ]
  %27 = load i32, i32* %d, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %ibox.addr, align 8
  %imax31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax31, i32 0, i64 %idxprom30
  store i32 %cond29, i32* %arrayidx32, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %29 = load i32, i32* %d, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %ierr, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SubtractBoxes(%struct.hypre_Box_struct* %box1, %struct.hypre_Box_struct* %box2, %struct.hypre_BoxArray_struct* %box_array) #0 {
entry:
  %box1.addr = alloca %struct.hypre_Box_struct*, align 8
  %box2.addr = alloca %struct.hypre_Box_struct*, align 8
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %rembox = alloca %struct.hypre_Box_struct*, align 8
  %d = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.hypre_Box_struct* %box1, %struct.hypre_Box_struct** %box1.addr, align 8
  store %struct.hypre_Box_struct* %box2, %struct.hypre_Box_struct** %box2.addr, align 8
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %call = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %0, i32 7)
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1, i32 0, i32 0
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2, i64 6
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %rembox, align 8
  %3 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin2 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2, i32 0, i64 0
  store i32 %4, i32* %arrayidx3, align 4
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin4 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %6, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4, i32 0, i64 1
  %7 = load i32, i32* %arrayidx5, align 4
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imin6, i32 0, i64 1
  store i32 %7, i32* %arrayidx7, align 4
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 2
  %10 = load i32, i32* %arrayidx9, align 4
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imin10, i32 0, i64 2
  store i32 %10, i32* %arrayidx11, align 4
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %13 = load i32, i32* %arrayidx12, align 4
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imax13, i32 0, i64 0
  store i32 %13, i32* %arrayidx14, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %imax15, i32 0, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax17, i32 0, i64 1
  store i32 %16, i32* %arrayidx18, align 4
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imax19, i32 0, i64 2
  %19 = load i32, i32* %arrayidx20, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imax21, i32 0, i64 2
  store i32 %19, i32* %arrayidx22, align 4
  store i32 0, i32* %size, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %21, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %d, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imin23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imin23, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx24, align 4
  %25 = load i32, i32* %d, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imax26, i32 0, i64 %idxprom25
  %27 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp sgt i32 %24, %27
  br i1 %cmp28, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %28 = load i32, i32* %d, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imax30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imax30, i32 0, i64 %idxprom29
  %30 = load i32, i32* %arrayidx31, align 4
  %31 = load i32, i32* %d, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imin33, i32 0, i64 %idxprom32
  %33 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp slt i32 %30, %33
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imin36, i32 0, i64 0
  %35 = load i32, i32* %arrayidx37, align 4
  %36 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes38 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %36, i32 0, i32 0
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes38, align 8
  %arrayidx39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i64 0
  %imin40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx39, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imin40, i32 0, i64 0
  store i32 %35, i32* %arrayidx41, align 4
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imin42, i32 0, i64 1
  %39 = load i32, i32* %arrayidx43, align 4
  %40 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes44 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %40, i32 0, i32 0
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes44, align 8
  %arrayidx45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i64 0
  %imin46 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %imin46, i32 0, i64 1
  store i32 %39, i32* %arrayidx47, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imin48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %imin48, i32 0, i64 2
  %43 = load i32, i32* %arrayidx49, align 4
  %44 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes50 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %44, i32 0, i32 0
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes50, align 8
  %arrayidx51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i64 0
  %imin52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imin52, i32 0, i64 2
  store i32 %43, i32* %arrayidx53, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imax54, i32 0, i64 0
  %47 = load i32, i32* %arrayidx55, align 4
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes56 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %48, i32 0, i32 0
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes56, align 8
  %arrayidx57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i64 0
  %imax58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx57, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imax58, i32 0, i64 0
  store i32 %47, i32* %arrayidx59, align 4
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imax60, i32 0, i64 1
  %51 = load i32, i32* %arrayidx61, align 4
  %52 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes62 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %52, i32 0, i32 0
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes62, align 8
  %arrayidx63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i64 0
  %imax64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx63, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imax64, i32 0, i64 1
  store i32 %51, i32* %arrayidx65, align 4
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box1.addr, align 8
  %imax66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %imax66, i32 0, i64 2
  %55 = load i32, i32* %arrayidx67, align 4
  %56 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes68 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %56, i32 0, i32 0
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes68, align 8
  %arrayidx69 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i64 0
  %imax70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx69, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imax70, i32 0, i64 2
  store i32 %55, i32* %arrayidx71, align 4
  store i32 1, i32* %size, align 4
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false
  %58 = load i32, i32* %d, align 4
  %idxprom72 = sext i32 %58 to i64
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imin73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imin73, i32 0, i64 %idxprom72
  %60 = load i32, i32* %arrayidx74, align 4
  %61 = load i32, i32* %d, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 %idxprom75
  %63 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp sgt i32 %60, %63
  br i1 %cmp78, label %if.then.79, label %if.end

if.then.79:                                       ; preds = %if.else
  %64 = load i32, i32* %size, align 4
  %idxprom80 = sext i32 %64 to i64
  %65 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes81 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %65, i32 0, i32 0
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes81, align 8
  %arrayidx82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i64 %idxprom80
  store %struct.hypre_Box_struct* %arrayidx82, %struct.hypre_Box_struct** %box, align 8
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imin83, i32 0, i64 0
  %68 = load i32, i32* %arrayidx84, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 0
  store i32 %68, i32* %arrayidx86, align 4
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin87 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %imin87, i32 0, i64 1
  %71 = load i32, i32* %arrayidx88, align 4
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin89 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %imin89, i32 0, i64 1
  store i32 %71, i32* %arrayidx90, align 4
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imin91, i32 0, i64 2
  %74 = load i32, i32* %arrayidx92, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imin93, i32 0, i64 2
  store i32 %74, i32* %arrayidx94, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imax95, i32 0, i64 0
  %77 = load i32, i32* %arrayidx96, align 4
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax97 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %imax97, i32 0, i64 0
  store i32 %77, i32* %arrayidx98, align 4
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imax99, i32 0, i64 1
  %80 = load i32, i32* %arrayidx100, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %imax101, i32 0, i64 1
  store i32 %80, i32* %arrayidx102, align 4
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imax103, i32 0, i64 2
  %83 = load i32, i32* %arrayidx104, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imax105, i32 0, i64 2
  store i32 %83, i32* %arrayidx106, align 4
  %85 = load i32, i32* %d, align 4
  %idxprom107 = sext i32 %85 to i64
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imin108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin108, i32 0, i64 %idxprom107
  %87 = load i32, i32* %arrayidx109, align 4
  %sub = sub nsw i32 %87, 1
  %88 = load i32, i32* %d, align 4
  %idxprom110 = sext i32 %88 to i64
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imax111, i32 0, i64 %idxprom110
  store i32 %sub, i32* %arrayidx112, align 4
  %90 = load i32, i32* %d, align 4
  %idxprom113 = sext i32 %90 to i64
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imin114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imin114, i32 0, i64 %idxprom113
  %92 = load i32, i32* %arrayidx115, align 4
  %93 = load i32, i32* %d, align 4
  %idxprom116 = sext i32 %93 to i64
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %imin117, i32 0, i64 %idxprom116
  store i32 %92, i32* %arrayidx118, align 4
  %95 = load i32, i32* %size, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.79, %if.else
  %96 = load i32, i32* %d, align 4
  %idxprom119 = sext i32 %96 to i64
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imax120 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %imax120, i32 0, i64 %idxprom119
  %98 = load i32, i32* %arrayidx121, align 4
  %99 = load i32, i32* %d, align 4
  %idxprom122 = sext i32 %99 to i64
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imax123, i32 0, i64 %idxprom122
  %101 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp slt i32 %98, %101
  br i1 %cmp125, label %if.then.126, label %if.end.167

if.then.126:                                      ; preds = %if.end
  %102 = load i32, i32* %size, align 4
  %idxprom127 = sext i32 %102 to i64
  %103 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes128 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %103, i32 0, i32 0
  %104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes128, align 8
  %arrayidx129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %104, i64 %idxprom127
  store %struct.hypre_Box_struct* %arrayidx129, %struct.hypre_Box_struct** %box, align 8
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %imin130, i32 0, i64 0
  %106 = load i32, i32* %arrayidx131, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin132, i32 0, i64 0
  store i32 %106, i32* %arrayidx133, align 4
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %108, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 1
  %109 = load i32, i32* %arrayidx135, align 4
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* %imin136, i32 0, i64 1
  store i32 %109, i32* %arrayidx137, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imin138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %imin138, i32 0, i64 2
  %112 = load i32, i32* %arrayidx139, align 4
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %imin140, i32 0, i64 2
  store i32 %112, i32* %arrayidx141, align 4
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 0
  %115 = load i32, i32* %arrayidx143, align 4
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imax144, i32 0, i64 0
  store i32 %115, i32* %arrayidx145, align 4
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %imax146, i32 0, i64 1
  %118 = load i32, i32* %arrayidx147, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %imax148, i32 0, i64 1
  store i32 %118, i32* %arrayidx149, align 4
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 2
  %121 = load i32, i32* %arrayidx151, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imax152, i32 0, i64 2
  store i32 %121, i32* %arrayidx153, align 4
  %123 = load i32, i32* %d, align 4
  %idxprom154 = sext i32 %123 to i64
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imax155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imax155, i32 0, i64 %idxprom154
  %125 = load i32, i32* %arrayidx156, align 4
  %add = add nsw i32 %125, 1
  %126 = load i32, i32* %d, align 4
  %idxprom157 = sext i32 %126 to i64
  %127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin158 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %127, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [3 x i32], [3 x i32]* %imin158, i32 0, i64 %idxprom157
  store i32 %add, i32* %arrayidx159, align 4
  %128 = load i32, i32* %d, align 4
  %idxprom160 = sext i32 %128 to i64
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box2.addr, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 %idxprom160
  %130 = load i32, i32* %arrayidx162, align 4
  %131 = load i32, i32* %d, align 4
  %idxprom163 = sext i32 %131 to i64
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rembox, align 8
  %imax164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imax164, i32 0, i64 %idxprom163
  store i32 %130, i32* %arrayidx165, align 4
  %133 = load i32, i32* %size, align 4
  %inc166 = add nsw i32 %133, 1
  store i32 %inc166, i32* %size, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.126, %if.end
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167
  br label %for.inc

for.inc:                                          ; preds = %if.end.168
  %134 = load i32, i32* %d, align 4
  %inc169 = add nsw i32 %134, 1
  store i32 %inc169, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %135 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %136 = load i32, i32* %size, align 4
  %call170 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %135, i32 %136)
  %137 = load i32, i32* %ierr, align 4
  ret i32 %137
}

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct* %boxes) #0 {
entry:
  %retval = alloca i32, align 4
  %boxes.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %block_index = alloca [3 x i32*], align 16
  %block_sz = alloca [3 x i32], align 4
  %block_volume = alloca i32, align 4
  %block = alloca i32*, align 8
  %index = alloca i32, align 4
  %size = alloca i32, align 4
  %factor = alloca [3 x i32], align 4
  %iminmax = alloca [2 x i32], align 4
  %imin = alloca [3 x i32], align 4
  %imax = alloca [3 x i32], align 4
  %ii = alloca [3 x i32], align 4
  %dd = alloca [3 x i32], align 4
  %join = alloca i32, align 4
  %i_tmp0 = alloca i32, align 4
  %i_tmp1 = alloca i32, align 4
  %ioff = alloca i32, align 4
  %joff = alloca i32, align 4
  %koff = alloca i32, align 4
  %bi = alloca i32, align 4
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %index_not_there = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %boxes, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ierr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size2, align 4
  %mul = mul nsw i32 2, %4
  store i32 %mul, i32* %i_tmp0, align 4
  %5 = load i32, i32* %i_tmp0, align 4
  %mul3 = mul nsw i32 3, %5
  %conv = sext i32 %mul3 to i64
  %mul4 = mul i64 4, %conv
  %conv5 = trunc i64 %mul4 to i32
  %call = call i8* @hypre_MAlloc(i32 %conv5)
  %6 = bitcast i8* %call to i32*
  %arrayidx = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 0
  store i32* %6, i32** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4
  store i32 1, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %d, align 4
  %cmp7 = icmp slt i32 %7, 3
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %d, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom
  %9 = load i32*, i32** %arrayidx9, align 8
  %10 = load i32, i32* %i_tmp0, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  %11 = load i32, i32* %d, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom10
  store i32* %add.ptr, i32** %arrayidx11, align 8
  %12 = load i32, i32* %d, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %d, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %bi, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.101, %for.end
  %14 = load i32, i32* %bi, align 4
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %size15 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 1
  %16 = load i32, i32* %size15, align 4
  %cmp16 = icmp slt i32 %14, %16
  br i1 %cmp16, label %for.body.18, label %for.end.103

for.body.18:                                      ; preds = %for.cond.14
  %17 = load i32, i32* %bi, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %boxes20 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %18, i32 0, i32 0
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes20, align 8
  %arrayidx21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i64 %idxprom19
  store %struct.hypre_Box_struct* %arrayidx21, %struct.hypre_Box_struct** %box, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.98, %for.body.18
  %20 = load i32, i32* %d, align 4
  %cmp23 = icmp slt i32 %20, 3
  br i1 %cmp23, label %for.body.25, label %for.end.100

for.body.25:                                      ; preds = %for.cond.22
  %21 = load i32, i32* %d, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 %idxprom26
  %23 = load i32, i32* %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %iminmax, i32 0, i64 0
  store i32 %23, i32* %arrayidx29, align 4
  %24 = load i32, i32* %d, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax31, i32 0, i64 %idxprom30
  %26 = load i32, i32* %arrayidx32, align 4
  %add = add nsw i32 %26, 1
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %iminmax, i32 0, i64 1
  store i32 %add, i32* %arrayidx33, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.95, %for.body.25
  %27 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %27, 2
  br i1 %cmp35, label %for.body.37, label %for.end.97

for.body.37:                                      ; preds = %for.cond.34
  store i32 1, i32* %index_not_there, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.64, %for.body.37
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %d, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom39
  %30 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp slt i32 %28, %30
  br i1 %cmp41, label %for.body.43, label %for.end.66

for.body.43:                                      ; preds = %for.cond.38
  %31 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %iminmax, i32 0, i64 %idxprom44
  %32 = load i32, i32* %arrayidx45, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load i32, i32* %d, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom47
  %35 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %35, i64 %idxprom46
  %36 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sle i32 %32, %36
  br i1 %cmp50, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %for.body.43
  %37 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %iminmax, i32 0, i64 %idxprom53
  %38 = load i32, i32* %arrayidx54, align 4
  %39 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load i32, i32* %d, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom56
  %41 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %41, i64 %idxprom55
  %42 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %38, %42
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.52
  store i32 0, i32* %index_not_there, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.52
  br label %for.end.66

if.end.63:                                        ; preds = %for.body.43
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %43 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %43, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond.38

for.end.66:                                       ; preds = %if.end.62, %for.cond.38
  %44 = load i32, i32* %index_not_there, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.67, label %if.end.94

if.then.67:                                       ; preds = %for.end.66
  %45 = load i32, i32* %d, align 4
  %idxprom68 = sext i32 %45 to i64
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom68
  %46 = load i32, i32* %arrayidx69, align 4
  store i32 %46, i32* %k, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.83, %if.then.67
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %j, align 4
  %cmp71 = icmp sgt i32 %47, %48
  br i1 %cmp71, label %for.body.73, label %for.end.84

for.body.73:                                      ; preds = %for.cond.70
  %49 = load i32, i32* %k, align 4
  %sub74 = sub nsw i32 %49, 1
  %idxprom75 = sext i32 %sub74 to i64
  %50 = load i32, i32* %d, align 4
  %idxprom76 = sext i32 %50 to i64
  %arrayidx77 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom76
  %51 = load i32*, i32** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %51, i64 %idxprom75
  %52 = load i32, i32* %arrayidx78, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %53 to i64
  %54 = load i32, i32* %d, align 4
  %idxprom80 = sext i32 %54 to i64
  %arrayidx81 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom80
  %55 = load i32*, i32** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %55, i64 %idxprom79
  store i32 %52, i32* %arrayidx82, align 4
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.73
  %56 = load i32, i32* %k, align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.70

for.end.84:                                       ; preds = %for.cond.70
  %57 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %57 to i64
  %arrayidx86 = getelementptr inbounds [2 x i32], [2 x i32]* %iminmax, i32 0, i64 %idxprom85
  %58 = load i32, i32* %arrayidx86, align 4
  %59 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %59 to i64
  %60 = load i32, i32* %d, align 4
  %idxprom88 = sext i32 %60 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom88
  %61 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %61, i64 %idxprom87
  store i32 %58, i32* %arrayidx90, align 4
  %62 = load i32, i32* %d, align 4
  %idxprom91 = sext i32 %62 to i64
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom91
  %63 = load i32, i32* %arrayidx92, align 4
  %inc93 = add nsw i32 %63, 1
  store i32 %inc93, i32* %arrayidx92, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.84, %for.end.66
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %64 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %64, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.34

for.end.97:                                       ; preds = %for.cond.34
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %65 = load i32, i32* %d, align 4
  %inc99 = add nsw i32 %65, 1
  store i32 %inc99, i32* %d, align 4
  br label %for.cond.22

for.end.100:                                      ; preds = %for.cond.22
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end.100
  %66 = load i32, i32* %bi, align 4
  %inc102 = add nsw i32 %66, 1
  store i32 %inc102, i32* %bi, align 4
  br label %for.cond.14

for.end.103:                                      ; preds = %for.cond.14
  store i32 0, i32* %d, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.111, %for.end.103
  %67 = load i32, i32* %d, align 4
  %cmp105 = icmp slt i32 %67, 3
  br i1 %cmp105, label %for.body.107, label %for.end.113

for.body.107:                                     ; preds = %for.cond.104
  %68 = load i32, i32* %d, align 4
  %idxprom108 = sext i32 %68 to i64
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom108
  %69 = load i32, i32* %arrayidx109, align 4
  %dec110 = add nsw i32 %69, -1
  store i32 %dec110, i32* %arrayidx109, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.107
  %70 = load i32, i32* %d, align 4
  %inc112 = add nsw i32 %70, 1
  store i32 %inc112, i32* %d, align 4
  br label %for.cond.104

for.end.113:                                      ; preds = %for.cond.104
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 0
  %71 = load i32, i32* %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 1
  %72 = load i32, i32* %arrayidx115, align 4
  %mul116 = mul nsw i32 %71, %72
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 2
  %73 = load i32, i32* %arrayidx117, align 4
  %mul118 = mul nsw i32 %mul116, %73
  store i32 %mul118, i32* %block_volume, align 4
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 0
  store i32 1, i32* %arrayidx119, align 4
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 0
  %74 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %74, 1
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 1
  store i32 %add121, i32* %arrayidx122, align 4
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 1
  %75 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %75, 1
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 1
  %76 = load i32, i32* %arrayidx125, align 4
  %mul126 = mul nsw i32 %add124, %76
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 2
  store i32 %mul126, i32* %arrayidx127, align 4
  %77 = load i32, i32* %block_volume, align 4
  %call128 = call i8* @hypre_CAlloc(i32 %77, i32 4)
  %78 = bitcast i8* %call128 to i32*
  store i32* %78, i32** %block, align 8
  store i32 0, i32* %bi, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.212, %for.end.113
  %79 = load i32, i32* %bi, align 4
  %80 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %size130 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %80, i32 0, i32 1
  %81 = load i32, i32* %size130, align 4
  %cmp131 = icmp slt i32 %79, %81
  br i1 %cmp131, label %for.body.133, label %for.end.214

for.body.133:                                     ; preds = %for.cond.129
  %82 = load i32, i32* %bi, align 4
  %idxprom134 = sext i32 %82 to i64
  %83 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %boxes135 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %83, i32 0, i32 0
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes135, align 8
  %arrayidx136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i64 %idxprom134
  store %struct.hypre_Box_struct* %arrayidx136, %struct.hypre_Box_struct** %box, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.169, %for.body.133
  %85 = load i32, i32* %d, align 4
  %cmp138 = icmp slt i32 %85, 3
  br i1 %cmp138, label %for.body.140, label %for.end.171

for.body.140:                                     ; preds = %for.cond.137
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.140
  %86 = load i32, i32* %d, align 4
  %idxprom141 = sext i32 %86 to i64
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 %idxprom141
  %88 = load i32, i32* %arrayidx143, align 4
  %89 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %89 to i64
  %90 = load i32, i32* %d, align 4
  %idxprom145 = sext i32 %90 to i64
  %arrayidx146 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom145
  %91 = load i32*, i32** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %91, i64 %idxprom144
  %92 = load i32, i32* %arrayidx147, align 4
  %cmp148 = icmp ne i32 %88, %92
  br i1 %cmp148, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %93 = load i32, i32* %j, align 4
  %inc150 = add nsw i32 %93, 1
  store i32 %inc150, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %d, align 4
  %idxprom151 = sext i32 %95 to i64
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom151
  store i32 %94, i32* %arrayidx152, align 4
  br label %while.cond.153

while.cond.153:                                   ; preds = %while.body.164, %while.end
  %96 = load i32, i32* %d, align 4
  %idxprom154 = sext i32 %96 to i64
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imax155, i32 0, i64 %idxprom154
  %98 = load i32, i32* %arrayidx156, align 4
  %add157 = add nsw i32 %98, 1
  %99 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %99 to i64
  %100 = load i32, i32* %d, align 4
  %idxprom159 = sext i32 %100 to i64
  %arrayidx160 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 %idxprom159
  %101 = load i32*, i32** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %101, i64 %idxprom158
  %102 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp ne i32 %add157, %102
  br i1 %cmp162, label %while.body.164, label %while.end.166

while.body.164:                                   ; preds = %while.cond.153
  %103 = load i32, i32* %j, align 4
  %inc165 = add nsw i32 %103, 1
  store i32 %inc165, i32* %j, align 4
  br label %while.cond.153

while.end.166:                                    ; preds = %while.cond.153
  %104 = load i32, i32* %j, align 4
  %105 = load i32, i32* %d, align 4
  %idxprom167 = sext i32 %105 to i64
  %arrayidx168 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom167
  store i32 %104, i32* %arrayidx168, align 4
  br label %for.inc.169

for.inc.169:                                      ; preds = %while.end.166
  %106 = load i32, i32* %d, align 4
  %inc170 = add nsw i32 %106, 1
  store i32 %inc170, i32* %d, align 4
  br label %for.cond.137

for.end.171:                                      ; preds = %for.cond.137
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 2
  %107 = load i32, i32* %arrayidx172, align 4
  store i32 %107, i32* %k, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.209, %for.end.171
  %108 = load i32, i32* %k, align 4
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 2
  %109 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp slt i32 %108, %109
  br i1 %cmp175, label %for.body.177, label %for.end.211

for.body.177:                                     ; preds = %for.cond.173
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 1
  %110 = load i32, i32* %arrayidx178, align 4
  store i32 %110, i32* %j, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.206, %for.body.177
  %111 = load i32, i32* %j, align 4
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %112 = load i32, i32* %arrayidx180, align 4
  %cmp181 = icmp slt i32 %111, %112
  br i1 %cmp181, label %for.body.183, label %for.end.208

for.body.183:                                     ; preds = %for.cond.179
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %113 = load i32, i32* %arrayidx184, align 4
  store i32 %113, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.203, %for.body.183
  %114 = load i32, i32* %i, align 4
  %arrayidx186 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %115 = load i32, i32* %arrayidx186, align 4
  %cmp187 = icmp slt i32 %114, %115
  br i1 %cmp187, label %for.body.189, label %for.end.205

for.body.189:                                     ; preds = %for.cond.185
  %116 = load i32, i32* %k, align 4
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 1
  %117 = load i32, i32* %arrayidx190, align 4
  %mul191 = mul nsw i32 %116, %117
  %118 = load i32, i32* %j, align 4
  %add192 = add nsw i32 %mul191, %118
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 0
  %119 = load i32, i32* %arrayidx193, align 4
  %mul194 = mul nsw i32 %add192, %119
  %120 = load i32, i32* %i, align 4
  %add195 = add nsw i32 %mul194, %120
  store i32 %add195, i32* %index, align 4
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 2
  %121 = load i32, i32* %arrayidx196, align 4
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 1
  %122 = load i32, i32* %arrayidx197, align 4
  %add198 = add nsw i32 %121, %122
  %arrayidx199 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 0
  %123 = load i32, i32* %arrayidx199, align 4
  %add200 = add nsw i32 %add198, %123
  %124 = load i32, i32* %index, align 4
  %idxprom201 = sext i32 %124 to i64
  %125 = load i32*, i32** %block, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %125, i64 %idxprom201
  store i32 %add200, i32* %arrayidx202, align 4
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.189
  %126 = load i32, i32* %i, align 4
  %inc204 = add nsw i32 %126, 1
  store i32 %inc204, i32* %i, align 4
  br label %for.cond.185

for.end.205:                                      ; preds = %for.cond.185
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %127 = load i32, i32* %j, align 4
  %inc207 = add nsw i32 %127, 1
  store i32 %inc207, i32* %j, align 4
  br label %for.cond.179

for.end.208:                                      ; preds = %for.cond.179
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.end.208
  %128 = load i32, i32* %k, align 4
  %inc210 = add nsw i32 %128, 1
  store i32 %inc210, i32* %k, align 4
  br label %for.cond.173

for.end.211:                                      ; preds = %for.cond.173
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.end.211
  %129 = load i32, i32* %bi, align 4
  %inc213 = add nsw i32 %129, 1
  store i32 %inc213, i32* %bi, align 4
  br label %for.cond.129

for.end.214:                                      ; preds = %for.cond.129
  store i32 0, i32* %d, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.319, %for.end.214
  %130 = load i32, i32* %d, align 4
  %cmp216 = icmp slt i32 %130, 3
  br i1 %cmp216, label %for.body.218, label %for.end.321

for.body.218:                                     ; preds = %for.cond.215
  %131 = load i32, i32* %d, align 4
  switch i32 %131, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.222
    i32 2, label %sw.bb.226
  ]

sw.bb:                                            ; preds = %for.body.218
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  store i32 0, i32* %arrayidx219, align 4
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  store i32 1, i32* %arrayidx220, align 4
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  store i32 2, i32* %arrayidx221, align 4
  br label %sw.epilog

sw.bb.222:                                        ; preds = %for.body.218
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  store i32 1, i32* %arrayidx223, align 4
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  store i32 0, i32* %arrayidx224, align 4
  %arrayidx225 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  store i32 2, i32* %arrayidx225, align 4
  br label %sw.epilog

sw.bb.226:                                        ; preds = %for.body.218
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  store i32 2, i32* %arrayidx227, align 4
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  store i32 1, i32* %arrayidx228, align 4
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  store i32 0, i32* %arrayidx229, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.218, %sw.bb.226, %sw.bb.222, %sw.bb
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  %132 = load i32, i32* %arrayidx230, align 4
  %idxprom231 = sext i32 %132 to i64
  %arrayidx232 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom231
  store i32 0, i32* %arrayidx232, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.313, %sw.epilog
  %arrayidx234 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  %133 = load i32, i32* %arrayidx234, align 4
  %idxprom235 = sext i32 %133 to i64
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom235
  %134 = load i32, i32* %arrayidx236, align 4
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  %135 = load i32, i32* %arrayidx237, align 4
  %idxprom238 = sext i32 %135 to i64
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom238
  %136 = load i32, i32* %arrayidx239, align 4
  %cmp240 = icmp slt i32 %134, %136
  br i1 %cmp240, label %for.body.242, label %for.end.318

for.body.242:                                     ; preds = %for.cond.233
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  %137 = load i32, i32* %arrayidx243, align 4
  %idxprom244 = sext i32 %137 to i64
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom244
  store i32 0, i32* %arrayidx245, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.307, %for.body.242
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  %138 = load i32, i32* %arrayidx247, align 4
  %idxprom248 = sext i32 %138 to i64
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom248
  %139 = load i32, i32* %arrayidx249, align 4
  %arrayidx250 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  %140 = load i32, i32* %arrayidx250, align 4
  %idxprom251 = sext i32 %140 to i64
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom251
  %141 = load i32, i32* %arrayidx252, align 4
  %cmp253 = icmp slt i32 %139, %141
  br i1 %cmp253, label %for.body.255, label %for.end.312

for.body.255:                                     ; preds = %for.cond.246
  store i32 0, i32* %join, align 4
  %arrayidx256 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  %142 = load i32, i32* %arrayidx256, align 4
  %idxprom257 = sext i32 %142 to i64
  %arrayidx258 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom257
  store i32 0, i32* %arrayidx258, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.301, %for.body.255
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  %143 = load i32, i32* %arrayidx260, align 4
  %idxprom261 = sext i32 %143 to i64
  %arrayidx262 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom261
  %144 = load i32, i32* %arrayidx262, align 4
  %arrayidx263 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  %145 = load i32, i32* %arrayidx263, align 4
  %idxprom264 = sext i32 %145 to i64
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 %idxprom264
  %146 = load i32, i32* %arrayidx265, align 4
  %cmp266 = icmp slt i32 %144, %146
  br i1 %cmp266, label %for.body.268, label %for.end.306

for.body.268:                                     ; preds = %for.cond.259
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 2
  %147 = load i32, i32* %arrayidx269, align 4
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 1
  %148 = load i32, i32* %arrayidx270, align 4
  %mul271 = mul nsw i32 %147, %148
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 1
  %149 = load i32, i32* %arrayidx272, align 4
  %add273 = add nsw i32 %mul271, %149
  %arrayidx274 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 0
  %150 = load i32, i32* %arrayidx274, align 4
  %mul275 = mul nsw i32 %add273, %150
  %arrayidx276 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 0
  %151 = load i32, i32* %arrayidx276, align 4
  %add277 = add nsw i32 %mul275, %151
  store i32 %add277, i32* %index, align 4
  %152 = load i32, i32* %join, align 4
  %tobool278 = icmp ne i32 %152, 0
  br i1 %tobool278, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.268
  %153 = load i32, i32* %index, align 4
  %idxprom279 = sext i32 %153 to i64
  %154 = load i32*, i32** %block, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %154, i64 %idxprom279
  %155 = load i32, i32* %arrayidx280, align 4
  %156 = load i32, i32* %i_tmp1, align 4
  %cmp281 = icmp eq i32 %155, %156
  br i1 %cmp281, label %if.then.283, label %if.else

if.then.283:                                      ; preds = %land.lhs.true
  %157 = load i32, i32* %index, align 4
  %idxprom284 = sext i32 %157 to i64
  %158 = load i32*, i32** %block, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %158, i64 %idxprom284
  store i32 0, i32* %arrayidx285, align 4
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  %159 = load i32, i32* %arrayidx286, align 4
  %idxprom287 = sext i32 %159 to i64
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 %idxprom287
  %160 = load i32, i32* %arrayidx288, align 4
  %161 = load i32, i32* %i_tmp0, align 4
  %idxprom289 = sext i32 %161 to i64
  %162 = load i32*, i32** %block, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %162, i64 %idxprom289
  %163 = load i32, i32* %arrayidx290, align 4
  %add291 = add nsw i32 %163, %160
  store i32 %add291, i32* %arrayidx290, align 4
  br label %if.end.300

if.else:                                          ; preds = %land.lhs.true, %for.body.268
  %164 = load i32, i32* %index, align 4
  %idxprom292 = sext i32 %164 to i64
  %165 = load i32*, i32** %block, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %165, i64 %idxprom292
  %166 = load i32, i32* %arrayidx293, align 4
  %tobool294 = icmp ne i32 %166, 0
  br i1 %tobool294, label %if.then.295, label %if.else.298

if.then.295:                                      ; preds = %if.else
  %167 = load i32, i32* %index, align 4
  store i32 %167, i32* %i_tmp0, align 4
  %168 = load i32, i32* %index, align 4
  %idxprom296 = sext i32 %168 to i64
  %169 = load i32*, i32** %block, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %169, i64 %idxprom296
  %170 = load i32, i32* %arrayidx297, align 4
  store i32 %170, i32* %i_tmp1, align 4
  store i32 1, i32* %join, align 4
  br label %if.end.299

if.else.298:                                      ; preds = %if.else
  store i32 0, i32* %join, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.298, %if.then.295
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.then.283
  br label %for.inc.301

for.inc.301:                                      ; preds = %if.end.300
  %arrayidx302 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 0
  %171 = load i32, i32* %arrayidx302, align 4
  %idxprom303 = sext i32 %171 to i64
  %arrayidx304 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom303
  %172 = load i32, i32* %arrayidx304, align 4
  %inc305 = add nsw i32 %172, 1
  store i32 %inc305, i32* %arrayidx304, align 4
  br label %for.cond.259

for.end.306:                                      ; preds = %for.cond.259
  br label %for.inc.307

for.inc.307:                                      ; preds = %for.end.306
  %arrayidx308 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 1
  %173 = load i32, i32* %arrayidx308, align 4
  %idxprom309 = sext i32 %173 to i64
  %arrayidx310 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom309
  %174 = load i32, i32* %arrayidx310, align 4
  %inc311 = add nsw i32 %174, 1
  store i32 %inc311, i32* %arrayidx310, align 4
  br label %for.cond.246

for.end.312:                                      ; preds = %for.cond.246
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.end.312
  %arrayidx314 = getelementptr inbounds [3 x i32], [3 x i32]* %dd, i32 0, i64 2
  %175 = load i32, i32* %arrayidx314, align 4
  %idxprom315 = sext i32 %175 to i64
  %arrayidx316 = getelementptr inbounds [3 x i32], [3 x i32]* %ii, i32 0, i64 %idxprom315
  %176 = load i32, i32* %arrayidx316, align 4
  %inc317 = add nsw i32 %176, 1
  store i32 %inc317, i32* %arrayidx316, align 4
  br label %for.cond.233

for.end.318:                                      ; preds = %for.cond.233
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.end.318
  %177 = load i32, i32* %d, align 4
  %inc320 = add nsw i32 %177, 1
  store i32 %inc320, i32* %d, align 4
  br label %for.cond.215

for.end.321:                                      ; preds = %for.cond.215
  store i32 0, i32* %size, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.332, %for.end.321
  %178 = load i32, i32* %index, align 4
  %179 = load i32, i32* %block_volume, align 4
  %cmp323 = icmp slt i32 %178, %179
  br i1 %cmp323, label %for.body.325, label %for.end.334

for.body.325:                                     ; preds = %for.cond.322
  %180 = load i32, i32* %index, align 4
  %idxprom326 = sext i32 %180 to i64
  %181 = load i32*, i32** %block, align 8
  %arrayidx327 = getelementptr inbounds i32, i32* %181, i64 %idxprom326
  %182 = load i32, i32* %arrayidx327, align 4
  %tobool328 = icmp ne i32 %182, 0
  br i1 %tobool328, label %if.then.329, label %if.end.331

if.then.329:                                      ; preds = %for.body.325
  %183 = load i32, i32* %size, align 4
  %inc330 = add nsw i32 %183, 1
  store i32 %inc330, i32* %size, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.329, %for.body.325
  br label %for.inc.332

for.inc.332:                                      ; preds = %if.end.331
  %184 = load i32, i32* %index, align 4
  %inc333 = add nsw i32 %184, 1
  store i32 %inc333, i32* %index, align 4
  br label %for.cond.322

for.end.334:                                      ; preds = %for.cond.322
  %185 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %186 = load i32, i32* %size, align 4
  %call335 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %185, i32 %186)
  store i32 0, i32* %index, align 4
  store i32 0, i32* %size, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.336

for.cond.336:                                     ; preds = %for.inc.415, %for.end.334
  %187 = load i32, i32* %k, align 4
  %arrayidx337 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 2
  %188 = load i32, i32* %arrayidx337, align 4
  %cmp338 = icmp slt i32 %187, %188
  br i1 %cmp338, label %for.body.340, label %for.end.417

for.body.340:                                     ; preds = %for.cond.336
  store i32 0, i32* %j, align 4
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.412, %for.body.340
  %189 = load i32, i32* %j, align 4
  %arrayidx342 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 1
  %190 = load i32, i32* %arrayidx342, align 4
  %cmp343 = icmp slt i32 %189, %190
  br i1 %cmp343, label %for.body.345, label %for.end.414

for.body.345:                                     ; preds = %for.cond.341
  store i32 0, i32* %i, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.409, %for.body.345
  %191 = load i32, i32* %i, align 4
  %arrayidx347 = getelementptr inbounds [3 x i32], [3 x i32]* %block_sz, i32 0, i64 0
  %192 = load i32, i32* %arrayidx347, align 4
  %cmp348 = icmp slt i32 %191, %192
  br i1 %cmp348, label %for.body.350, label %for.end.411

for.body.350:                                     ; preds = %for.cond.346
  %193 = load i32, i32* %index, align 4
  %idxprom351 = sext i32 %193 to i64
  %194 = load i32*, i32** %block, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %194, i64 %idxprom351
  %195 = load i32, i32* %arrayidx352, align 4
  %tobool353 = icmp ne i32 %195, 0
  br i1 %tobool353, label %if.then.354, label %if.end.407

if.then.354:                                      ; preds = %for.body.350
  %196 = load i32, i32* %index, align 4
  %idxprom355 = sext i32 %196 to i64
  %197 = load i32*, i32** %block, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %197, i64 %idxprom355
  %198 = load i32, i32* %arrayidx356, align 4
  %arrayidx357 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 1
  %199 = load i32, i32* %arrayidx357, align 4
  %rem = srem i32 %198, %199
  store i32 %rem, i32* %ioff, align 4
  %200 = load i32, i32* %index, align 4
  %idxprom358 = sext i32 %200 to i64
  %201 = load i32*, i32** %block, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %201, i64 %idxprom358
  %202 = load i32, i32* %arrayidx359, align 4
  %arrayidx360 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 2
  %203 = load i32, i32* %arrayidx360, align 4
  %rem361 = srem i32 %202, %203
  %arrayidx362 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 1
  %204 = load i32, i32* %arrayidx362, align 4
  %div = sdiv i32 %rem361, %204
  store i32 %div, i32* %joff, align 4
  %205 = load i32, i32* %index, align 4
  %idxprom363 = sext i32 %205 to i64
  %206 = load i32*, i32** %block, align 8
  %arrayidx364 = getelementptr inbounds i32, i32* %206, i64 %idxprom363
  %207 = load i32, i32* %arrayidx364, align 4
  %arrayidx365 = getelementptr inbounds [3 x i32], [3 x i32]* %factor, i32 0, i64 2
  %208 = load i32, i32* %arrayidx365, align 4
  %div366 = sdiv i32 %207, %208
  store i32 %div366, i32* %koff, align 4
  %209 = load i32, i32* %size, align 4
  %idxprom367 = sext i32 %209 to i64
  %210 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %boxes368 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %210, i32 0, i32 0
  %211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes368, align 8
  %arrayidx369 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %211, i64 %idxprom367
  store %struct.hypre_Box_struct* %arrayidx369, %struct.hypre_Box_struct** %box, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom370 = sext i32 %212 to i64
  %arrayidx371 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 0
  %213 = load i32*, i32** %arrayidx371, align 8
  %arrayidx372 = getelementptr inbounds i32, i32* %213, i64 %idxprom370
  %214 = load i32, i32* %arrayidx372, align 4
  %215 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin373 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %215, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %imin373, i32 0, i64 0
  store i32 %214, i32* %arrayidx374, align 4
  %216 = load i32, i32* %j, align 4
  %idxprom375 = sext i32 %216 to i64
  %arrayidx376 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 1
  %217 = load i32*, i32** %arrayidx376, align 8
  %arrayidx377 = getelementptr inbounds i32, i32* %217, i64 %idxprom375
  %218 = load i32, i32* %arrayidx377, align 4
  %219 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin378 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %219, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [3 x i32], [3 x i32]* %imin378, i32 0, i64 1
  store i32 %218, i32* %arrayidx379, align 4
  %220 = load i32, i32* %k, align 4
  %idxprom380 = sext i32 %220 to i64
  %arrayidx381 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 2
  %221 = load i32*, i32** %arrayidx381, align 8
  %arrayidx382 = getelementptr inbounds i32, i32* %221, i64 %idxprom380
  %222 = load i32, i32* %arrayidx382, align 4
  %223 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin383 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %223, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %imin383, i32 0, i64 2
  store i32 %222, i32* %arrayidx384, align 4
  %224 = load i32, i32* %i, align 4
  %225 = load i32, i32* %ioff, align 4
  %add385 = add nsw i32 %224, %225
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 0
  %226 = load i32*, i32** %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %226, i64 %idxprom386
  %227 = load i32, i32* %arrayidx388, align 4
  %sub389 = sub nsw i32 %227, 1
  %228 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax390 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %228, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [3 x i32], [3 x i32]* %imax390, i32 0, i64 0
  store i32 %sub389, i32* %arrayidx391, align 4
  %229 = load i32, i32* %j, align 4
  %230 = load i32, i32* %joff, align 4
  %add392 = add nsw i32 %229, %230
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 1
  %231 = load i32*, i32** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %231, i64 %idxprom393
  %232 = load i32, i32* %arrayidx395, align 4
  %sub396 = sub nsw i32 %232, 1
  %233 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax397 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %233, i32 0, i32 1
  %arrayidx398 = getelementptr inbounds [3 x i32], [3 x i32]* %imax397, i32 0, i64 1
  store i32 %sub396, i32* %arrayidx398, align 4
  %234 = load i32, i32* %k, align 4
  %235 = load i32, i32* %koff, align 4
  %add399 = add nsw i32 %234, %235
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 2
  %236 = load i32*, i32** %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %236, i64 %idxprom400
  %237 = load i32, i32* %arrayidx402, align 4
  %sub403 = sub nsw i32 %237, 1
  %238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax404 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %238, i32 0, i32 1
  %arrayidx405 = getelementptr inbounds [3 x i32], [3 x i32]* %imax404, i32 0, i64 2
  store i32 %sub403, i32* %arrayidx405, align 4
  %239 = load i32, i32* %size, align 4
  %inc406 = add nsw i32 %239, 1
  store i32 %inc406, i32* %size, align 4
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.354, %for.body.350
  %240 = load i32, i32* %index, align 4
  %inc408 = add nsw i32 %240, 1
  store i32 %inc408, i32* %index, align 4
  br label %for.inc.409

for.inc.409:                                      ; preds = %if.end.407
  %241 = load i32, i32* %i, align 4
  %inc410 = add nsw i32 %241, 1
  store i32 %inc410, i32* %i, align 4
  br label %for.cond.346

for.end.411:                                      ; preds = %for.cond.346
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.end.411
  %242 = load i32, i32* %j, align 4
  %inc413 = add nsw i32 %242, 1
  store i32 %inc413, i32* %j, align 4
  br label %for.cond.341

for.end.414:                                      ; preds = %for.cond.341
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.end.414
  %243 = load i32, i32* %k, align 4
  %inc416 = add nsw i32 %243, 1
  store i32 %inc416, i32* %k, align 4
  br label %for.cond.336

for.end.417:                                      ; preds = %for.cond.336
  %arrayidx418 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 0
  %244 = load i32*, i32** %arrayidx418, align 8
  %245 = bitcast i32* %244 to i8*
  call void @hypre_Free(i8* %245)
  %arrayidx419 = getelementptr inbounds [3 x i32*], [3 x i32*]* %block_index, i32 0, i64 0
  store i32* null, i32** %arrayidx419, align 8
  %246 = load i32*, i32** %block, align 8
  %247 = bitcast i32* %246 to i8*
  call void @hypre_Free(i8* %247)
  store i32* null, i32** %block, align 8
  %248 = load i32, i32* %ierr, align 4
  store i32 %248, i32* %retval
  br label %return

return:                                           ; preds = %for.end.417, %if.then
  %249 = load i32, i32* %retval
  ret i32 %249
}

declare i8* @hypre_MAlloc(i32) #1

declare i8* @hypre_CAlloc(i32, i32) #1

declare void @hypre_Free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
