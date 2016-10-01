; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/49.SMG2000.grow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }

; Function Attrs: nounwind uwtable
define %struct.hypre_BoxArray_struct* @hypre_GrowBoxByStencil(%struct.hypre_Box_struct* %box, %struct.hypre_StructStencil_struct* %stencil, i32 %transpose) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %transpose.addr = alloca i32, align 4
  %grow_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %shift_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %shift_box = alloca %struct.hypre_Box_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store i32 %transpose, i32* %transpose.addr, align 4
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %0, i32 0, i32 0
  %1 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %1, [3 x i32]** %stencil_shape, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %3)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %call1 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call1, %struct.hypre_Box_struct** %shift_box, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %4 = load i32, i32* %s, align 4
  %5 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size2, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %transpose.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %d, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %8 = load i32, i32* %d, align 4
  %cmp4 = icmp slt i32 %8, 3
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %d, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32, i32* %s, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %15 = load i32, i32* %arrayidx9, align 4
  %sub = sub nsw i32 %11, %15
  %16 = load i32, i32* %d, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 %idxprom10
  store i32 %sub, i32* %arrayidx12, align 4
  %18 = load i32, i32* %d, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  %21 = load i32, i32* %d, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32, i32* %s, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  %24 = load i32, i32* %arrayidx18, align 4
  %sub19 = sub nsw i32 %20, %24
  %25 = load i32, i32* %d, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imax21, i32 0, i64 %idxprom20
  store i32 %sub19, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %27 = load i32, i32* %d, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %d, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.47, %if.else
  %28 = load i32, i32* %d, align 4
  %cmp24 = icmp slt i32 %28, 3
  br i1 %cmp24, label %for.body.25, label %for.end.49

for.body.25:                                      ; preds = %for.cond.23
  %29 = load i32, i32* %d, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 %idxprom26
  %31 = load i32, i32* %arrayidx28, align 4
  %32 = load i32, i32* %d, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i32, i32* %s, align 4
  %idxprom30 = sext i32 %33 to i64
  %34 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx31, i32 0, i64 %idxprom29
  %35 = load i32, i32* %arrayidx32, align 4
  %add = add nsw i32 %31, %35
  %36 = load i32, i32* %d, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imin34, i32 0, i64 %idxprom33
  store i32 %add, i32* %arrayidx35, align 4
  %38 = load i32, i32* %d, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imax37, i32 0, i64 %idxprom36
  %40 = load i32, i32* %arrayidx38, align 4
  %41 = load i32, i32* %d, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i32, i32* %s, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %43, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx41, i32 0, i64 %idxprom39
  %44 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %40, %44
  %45 = load i32, i32* %d, align 4
  %idxprom44 = sext i32 %45 to i64
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 %idxprom44
  store i32 %add43, i32* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.25
  %47 = load i32, i32* %d, align 4
  %inc48 = add nsw i32 %47, 1
  store i32 %inc48, i32* %d, align 4
  br label %for.cond.23

for.end.49:                                       ; preds = %for.cond.23
  br label %if.end

if.end:                                           ; preds = %for.end.49, %for.end
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 0
  %49 = load i32, i32* %arrayidx51, align 4
  %50 = load i32, i32* %s, align 4
  %idxprom52 = sext i32 %50 to i64
  %51 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %51, i32 0, i32 0
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i64 %idxprom52
  %imin54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imin54, i32 0, i64 0
  store i32 %49, i32* %arrayidx55, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imin56, i32 0, i64 1
  %54 = load i32, i32* %arrayidx57, align 4
  %55 = load i32, i32* %s, align 4
  %idxprom58 = sext i32 %55 to i64
  %56 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %boxes59 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %56, i32 0, i32 0
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes59, align 8
  %arrayidx60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i64 %idxprom58
  %imin61 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %imin61, i32 0, i64 1
  store i32 %54, i32* %arrayidx62, align 4
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imin63, i32 0, i64 2
  %59 = load i32, i32* %arrayidx64, align 4
  %60 = load i32, i32* %s, align 4
  %idxprom65 = sext i32 %60 to i64
  %61 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %boxes66 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %61, i32 0, i32 0
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes66, align 8
  %arrayidx67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i64 %idxprom65
  %imin68 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %imin68, i32 0, i64 2
  store i32 %59, i32* %arrayidx69, align 4
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imax70, i32 0, i64 0
  %64 = load i32, i32* %arrayidx71, align 4
  %65 = load i32, i32* %s, align 4
  %idxprom72 = sext i32 %65 to i64
  %66 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %boxes73 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %66, i32 0, i32 0
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes73, align 8
  %arrayidx74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i64 %idxprom72
  %imax75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx74, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imax75, i32 0, i64 0
  store i32 %64, i32* %arrayidx76, align 4
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imax77, i32 0, i64 1
  %69 = load i32, i32* %arrayidx78, align 4
  %70 = load i32, i32* %s, align 4
  %idxprom79 = sext i32 %70 to i64
  %71 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %boxes80 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %71, i32 0, i32 0
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes80, align 8
  %arrayidx81 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i64 %idxprom79
  %imax82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx81, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imax82, i32 0, i64 1
  store i32 %69, i32* %arrayidx83, align 4
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 2
  %74 = load i32, i32* %arrayidx85, align 4
  %75 = load i32, i32* %s, align 4
  %idxprom86 = sext i32 %75 to i64
  %76 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %boxes87 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %76, i32 0, i32 0
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes87, align 8
  %arrayidx88 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i64 %idxprom86
  %imax89 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx88, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %imax89, i32 0, i64 2
  store i32 %74, i32* %arrayidx90, align 4
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end
  %78 = load i32, i32* %s, align 4
  %inc92 = add nsw i32 %78, 1
  store i32 %inc92, i32* %s, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %call94 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %79)
  %80 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  %call95 = call i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct* %80)
  %81 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %shift_box_array, align 8
  store %struct.hypre_BoxArray_struct* %81, %struct.hypre_BoxArray_struct** %grow_box_array, align 8
  %82 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %grow_box_array, align 8
  ret %struct.hypre_BoxArray_struct* %82
}

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32) #1

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

declare i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_BoxArrayArray_struct* @hypre_GrowBoxArrayByStencil(%struct.hypre_BoxArray_struct* %box_array, %struct.hypre_StructStencil_struct* %stencil, i32 %transpose) #0 {
entry:
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %transpose.addr = alloca i32, align 4
  %grow_box_array_array = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store i32 %transpose, i32* %transpose.addr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %1)
  store %struct.hypre_BoxArrayArray_struct* %call, %struct.hypre_BoxArrayArray_struct** %grow_box_array_array, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %grow_box_array_array, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %6, i32 0, i32 0
  %7 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %7, i64 %idxprom
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  %call2 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %8)
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 0
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx4 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i64 %idxprom3
  %12 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %13 = load i32, i32* %transpose.addr, align 4
  %call5 = call %struct.hypre_BoxArray_struct* @hypre_GrowBoxByStencil(%struct.hypre_Box_struct* %arrayidx4, %struct.hypre_StructStencil_struct* %12, i32 %13)
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %grow_box_array_array, align 8
  %box_arrays7 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %15, i32 0, i32 0
  %16 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %16, i64 %idxprom6
  store %struct.hypre_BoxArray_struct* %call5, %struct.hypre_BoxArray_struct** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %grow_box_array_array, align 8
  ret %struct.hypre_BoxArrayArray_struct* %18
}

declare %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
