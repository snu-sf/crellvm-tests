; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/24.SMG2000.struct_io.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }

@.str = private unnamed_addr constant [25 x i8] c"%d: (%d, %d, %d; %d) %e\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d: (%d, %d, %d; %d) %le\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_PrintBoxArrayData(%struct._IO_FILE* %file, %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct* %data_space, i32 %num_values, double* %data) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_space.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %num_values.addr = alloca i32, align 4
  %data.addr = alloca double*, align 8
  %ierr = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %data_box_volume = alloca i32, align 4
  %datai = alloca i32, align 4
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %stride = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store %struct.hypre_BoxArray_struct* %data_space, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  store i32 %num_values, i32* %num_values.addr, align 4
  store double* %data, double** %data.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.268, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.270

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 0
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx3 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx3, %struct.hypre_Box_struct** %box, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  %boxes5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes5, align 8
  %arrayidx6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom4
  store %struct.hypre_Box_struct* %arrayidx6, %struct.hypre_Box_struct** %data_box, align 8
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %sub = sub nsw i32 %11, %13
  %add = add nsw i32 %sub, 1
  %cmp10 = icmp slt i32 0, %add
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imax11, i32 0, i64 0
  %15 = load i32, i32* %arrayidx12, align 4
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 0
  %17 = load i32, i32* %arrayidx14, align 4
  %sub15 = sub nsw i32 %15, %17
  %add16 = add nsw i32 %sub15, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add16, %cond.true ], [ 0, %cond.false ]
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax17, i32 0, i64 1
  %19 = load i32, i32* %arrayidx18, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 1
  %21 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %19, %21
  %add22 = add nsw i32 %sub21, 1
  %cmp23 = icmp slt i32 0, %add22
  br i1 %cmp23, label %cond.true.24, label %cond.false.31

cond.true.24:                                     ; preds = %cond.end
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imax25, i32 0, i64 1
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 1
  %25 = load i32, i32* %arrayidx28, align 4
  %sub29 = sub nsw i32 %23, %25
  %add30 = add nsw i32 %sub29, 1
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.24
  %cond33 = phi i32 [ %add30, %cond.true.24 ], [ 0, %cond.false.31 ]
  %mul = mul nsw i32 %cond, %cond33
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 2
  %27 = load i32, i32* %arrayidx35, align 4
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imin36, i32 0, i64 2
  %29 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 %27, %29
  %add39 = add nsw i32 %sub38, 1
  %cmp40 = icmp slt i32 0, %add39
  br i1 %cmp40, label %cond.true.41, label %cond.false.48

cond.true.41:                                     ; preds = %cond.end.32
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imax42, i32 0, i64 2
  %31 = load i32, i32* %arrayidx43, align 4
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imin44, i32 0, i64 2
  %33 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %31, %33
  %add47 = add nsw i32 %sub46, 1
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.32
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.41
  %cond50 = phi i32 [ %add47, %cond.true.41 ], [ 0, %cond.false.48 ]
  %mul51 = mul nsw i32 %mul, %cond50
  store i32 %mul51, i32* %data_box_volume, align 4
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay52 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %34, i32* %arraydecay52)
  %35 = load i32*, i32** %start, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx53, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imin54, i32 0, i64 0
  %38 = load i32, i32* %arrayidx55, align 4
  %sub56 = sub nsw i32 %36, %38
  %39 = load i32*, i32** %start, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %39, i64 1
  %40 = load i32, i32* %arrayidx57, align 4
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 1
  %42 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %40, %42
  %43 = load i32*, i32** %start, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 2
  %44 = load i32, i32* %arrayidx61, align 4
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imin62, i32 0, i64 2
  %46 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %44, %46
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imax65, i32 0, i64 1
  %48 = load i32, i32* %arrayidx66, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i64 1
  %50 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %48, %50
  %add70 = add nsw i32 %sub69, 1
  %cmp71 = icmp slt i32 0, %add70
  br i1 %cmp71, label %cond.true.72, label %cond.false.79

cond.true.72:                                     ; preds = %cond.end.49
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imax73, i32 0, i64 1
  %52 = load i32, i32* %arrayidx74, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imin75, i32 0, i64 1
  %54 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %52, %54
  %add78 = add nsw i32 %sub77, 1
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.49
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.72
  %cond81 = phi i32 [ %add78, %cond.true.72 ], [ 0, %cond.false.79 ]
  %mul82 = mul nsw i32 %sub64, %cond81
  %add83 = add nsw i32 %sub60, %mul82
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 0
  %56 = load i32, i32* %arrayidx85, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imin86, i32 0, i64 0
  %58 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %56, %58
  %add89 = add nsw i32 %sub88, 1
  %cmp90 = icmp slt i32 0, %add89
  br i1 %cmp90, label %cond.true.91, label %cond.false.98

cond.true.91:                                     ; preds = %cond.end.80
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 0
  %60 = load i32, i32* %arrayidx93, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imin94, i32 0, i64 0
  %62 = load i32, i32* %arrayidx95, align 4
  %sub96 = sub nsw i32 %60, %62
  %add97 = add nsw i32 %sub96, 1
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.end.80
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.91
  %cond100 = phi i32 [ %add97, %cond.true.91 ], [ 0, %cond.false.98 ]
  %mul101 = mul nsw i32 %add83, %cond100
  %add102 = add nsw i32 %sub56, %mul101
  store i32 %add102, i32* %hypre__i1start, align 4
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %63 = load i32, i32* %arrayidx103, align 4
  store i32 %63, i32* %hypre__sx1, align 4
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %64 = load i32, i32* %arrayidx104, align 4
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imax105, i32 0, i64 0
  %66 = load i32, i32* %arrayidx106, align 4
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imin107, i32 0, i64 0
  %68 = load i32, i32* %arrayidx108, align 4
  %sub109 = sub nsw i32 %66, %68
  %add110 = add nsw i32 %sub109, 1
  %cmp111 = icmp slt i32 0, %add110
  br i1 %cmp111, label %cond.true.112, label %cond.false.119

cond.true.112:                                    ; preds = %cond.end.99
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %imax113, i32 0, i64 0
  %70 = load i32, i32* %arrayidx114, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %imin115, i32 0, i64 0
  %72 = load i32, i32* %arrayidx116, align 4
  %sub117 = sub nsw i32 %70, %72
  %add118 = add nsw i32 %sub117, 1
  br label %cond.end.120

cond.false.119:                                   ; preds = %cond.end.99
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.112
  %cond121 = phi i32 [ %add118, %cond.true.112 ], [ 0, %cond.false.119 ]
  %mul122 = mul nsw i32 %64, %cond121
  store i32 %mul122, i32* %hypre__sy1, align 4
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %73 = load i32, i32* %arrayidx123, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imax124, i32 0, i64 0
  %75 = load i32, i32* %arrayidx125, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %imin126, i32 0, i64 0
  %77 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 %75, %77
  %add129 = add nsw i32 %sub128, 1
  %cmp130 = icmp slt i32 0, %add129
  br i1 %cmp130, label %cond.true.131, label %cond.false.138

cond.true.131:                                    ; preds = %cond.end.120
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imax132, i32 0, i64 0
  %79 = load i32, i32* %arrayidx133, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 0
  %81 = load i32, i32* %arrayidx135, align 4
  %sub136 = sub nsw i32 %79, %81
  %add137 = add nsw i32 %sub136, 1
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.end.120
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.131
  %cond140 = phi i32 [ %add137, %cond.true.131 ], [ 0, %cond.false.138 ]
  %mul141 = mul nsw i32 %73, %cond140
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 1
  %83 = load i32, i32* %arrayidx143, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin144, i32 0, i64 1
  %85 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %83, %85
  %add147 = add nsw i32 %sub146, 1
  %cmp148 = icmp slt i32 0, %add147
  br i1 %cmp148, label %cond.true.149, label %cond.false.156

cond.true.149:                                    ; preds = %cond.end.139
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 1
  %87 = load i32, i32* %arrayidx151, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imin152, i32 0, i64 1
  %89 = load i32, i32* %arrayidx153, align 4
  %sub154 = sub nsw i32 %87, %89
  %add155 = add nsw i32 %sub154, 1
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.139
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.149
  %cond158 = phi i32 [ %add155, %cond.true.149 ], [ 0, %cond.false.156 ]
  %mul159 = mul nsw i32 %mul141, %cond158
  store i32 %mul159, i32* %hypre__sz1, align 4
  %arrayidx160 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %90 = load i32, i32* %arrayidx160, align 4
  store i32 %90, i32* %hypre__nx, align 4
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %91 = load i32, i32* %arrayidx161, align 4
  store i32 %91, i32* %hypre__ny, align 4
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %92 = load i32, i32* %arrayidx162, align 4
  store i32 %92, i32* %hypre__nz, align 4
  %93 = load i32, i32* %hypre__nx, align 4
  store i32 %93, i32* %hypre__mx, align 4
  %94 = load i32, i32* %hypre__ny, align 4
  store i32 %94, i32* %hypre__my, align 4
  %95 = load i32, i32* %hypre__nz, align 4
  store i32 %95, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %96 = load i32, i32* %hypre__nx, align 4
  store i32 %96, i32* %hypre__max, align 4
  %97 = load i32, i32* %hypre__ny, align 4
  %98 = load i32, i32* %hypre__max, align 4
  %cmp163 = icmp sgt i32 %97, %98
  br i1 %cmp163, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.157
  store i32 1, i32* %hypre__dir, align 4
  %99 = load i32, i32* %hypre__ny, align 4
  store i32 %99, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.157
  %100 = load i32, i32* %hypre__nz, align 4
  %101 = load i32, i32* %hypre__max, align 4
  %cmp164 = icmp sgt i32 %100, %101
  br i1 %cmp164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %102 = load i32, i32* %hypre__nz, align 4
  store i32 %102, i32* %hypre__max, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %103 = load i32, i32* %hypre__max, align 4
  %104 = load i32, i32* %hypre__num_blocks, align 4
  %cmp167 = icmp slt i32 %103, %104
  br i1 %cmp167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.166
  %105 = load i32, i32* %hypre__max, align 4
  store i32 %105, i32* %hypre__num_blocks, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.166
  %106 = load i32, i32* %hypre__num_blocks, align 4
  %cmp170 = icmp sgt i32 %106, 0
  br i1 %cmp170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.169
  %107 = load i32, i32* %hypre__max, align 4
  %108 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %107, %108
  store i32 %div, i32* %hypre__div, align 4
  %109 = load i32, i32* %hypre__max, align 4
  %110 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %109, %110
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.end.169
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.264, %if.end.172
  %111 = load i32, i32* %hypre__block, align 4
  %112 = load i32, i32* %hypre__num_blocks, align 4
  %cmp174 = icmp slt i32 %111, %112
  br i1 %cmp174, label %for.body.175, label %for.end.266

for.body.175:                                     ; preds = %for.cond.173
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %113 = load i32, i32* %hypre__mx, align 4
  store i32 %113, i32* %hypre__nx, align 4
  %114 = load i32, i32* %hypre__my, align 4
  store i32 %114, i32* %hypre__ny, align 4
  %115 = load i32, i32* %hypre__mz, align 4
  store i32 %115, i32* %hypre__nz, align 4
  %116 = load i32, i32* %hypre__num_blocks, align 4
  %cmp176 = icmp sgt i32 %116, 1
  br i1 %cmp176, label %if.then.177, label %if.end.218

if.then.177:                                      ; preds = %for.body.175
  %117 = load i32, i32* %hypre__dir, align 4
  %cmp178 = icmp eq i32 %117, 0
  br i1 %cmp178, label %if.then.179, label %if.else

if.then.179:                                      ; preds = %if.then.177
  %118 = load i32, i32* %hypre__block, align 4
  %119 = load i32, i32* %hypre__div, align 4
  %mul180 = mul nsw i32 %118, %119
  %120 = load i32, i32* %hypre__mod, align 4
  %121 = load i32, i32* %hypre__block, align 4
  %cmp181 = icmp slt i32 %120, %121
  br i1 %cmp181, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %if.then.179
  %122 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.184

cond.false.183:                                   ; preds = %if.then.179
  %123 = load i32, i32* %hypre__block, align 4
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.182
  %cond185 = phi i32 [ %122, %cond.true.182 ], [ %123, %cond.false.183 ]
  %add186 = add nsw i32 %mul180, %cond185
  store i32 %add186, i32* %loopi, align 4
  %124 = load i32, i32* %hypre__div, align 4
  %125 = load i32, i32* %hypre__mod, align 4
  %126 = load i32, i32* %hypre__block, align 4
  %cmp187 = icmp sgt i32 %125, %126
  %cond188 = select i1 %cmp187, i32 1, i32 0
  %add189 = add nsw i32 %124, %cond188
  store i32 %add189, i32* %hypre__nx, align 4
  br label %if.end.217

if.else:                                          ; preds = %if.then.177
  %127 = load i32, i32* %hypre__dir, align 4
  %cmp190 = icmp eq i32 %127, 1
  br i1 %cmp190, label %if.then.191, label %if.else.202

if.then.191:                                      ; preds = %if.else
  %128 = load i32, i32* %hypre__block, align 4
  %129 = load i32, i32* %hypre__div, align 4
  %mul192 = mul nsw i32 %128, %129
  %130 = load i32, i32* %hypre__mod, align 4
  %131 = load i32, i32* %hypre__block, align 4
  %cmp193 = icmp slt i32 %130, %131
  br i1 %cmp193, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %if.then.191
  %132 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.196

cond.false.195:                                   ; preds = %if.then.191
  %133 = load i32, i32* %hypre__block, align 4
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.194
  %cond197 = phi i32 [ %132, %cond.true.194 ], [ %133, %cond.false.195 ]
  %add198 = add nsw i32 %mul192, %cond197
  store i32 %add198, i32* %loopj, align 4
  %134 = load i32, i32* %hypre__div, align 4
  %135 = load i32, i32* %hypre__mod, align 4
  %136 = load i32, i32* %hypre__block, align 4
  %cmp199 = icmp sgt i32 %135, %136
  %cond200 = select i1 %cmp199, i32 1, i32 0
  %add201 = add nsw i32 %134, %cond200
  store i32 %add201, i32* %hypre__ny, align 4
  br label %if.end.216

if.else.202:                                      ; preds = %if.else
  %137 = load i32, i32* %hypre__dir, align 4
  %cmp203 = icmp eq i32 %137, 2
  br i1 %cmp203, label %if.then.204, label %if.end.215

if.then.204:                                      ; preds = %if.else.202
  %138 = load i32, i32* %hypre__block, align 4
  %139 = load i32, i32* %hypre__div, align 4
  %mul205 = mul nsw i32 %138, %139
  %140 = load i32, i32* %hypre__mod, align 4
  %141 = load i32, i32* %hypre__block, align 4
  %cmp206 = icmp slt i32 %140, %141
  br i1 %cmp206, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %if.then.204
  %142 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.then.204
  %143 = load i32, i32* %hypre__block, align 4
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.207
  %cond210 = phi i32 [ %142, %cond.true.207 ], [ %143, %cond.false.208 ]
  %add211 = add nsw i32 %mul205, %cond210
  store i32 %add211, i32* %loopk, align 4
  %144 = load i32, i32* %hypre__div, align 4
  %145 = load i32, i32* %hypre__mod, align 4
  %146 = load i32, i32* %hypre__block, align 4
  %cmp212 = icmp sgt i32 %145, %146
  %cond213 = select i1 %cmp212, i32 1, i32 0
  %add214 = add nsw i32 %144, %cond213
  store i32 %add214, i32* %hypre__nz, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %cond.end.209, %if.else.202
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %cond.end.196
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %cond.end.184
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.body.175
  %147 = load i32, i32* %hypre__i1start, align 4
  %148 = load i32, i32* %loopi, align 4
  %149 = load i32, i32* %hypre__sx1, align 4
  %mul219 = mul nsw i32 %148, %149
  %add220 = add nsw i32 %147, %mul219
  %150 = load i32, i32* %loopj, align 4
  %151 = load i32, i32* %hypre__sy1, align 4
  %mul221 = mul nsw i32 %150, %151
  %add222 = add nsw i32 %add220, %mul221
  %152 = load i32, i32* %loopk, align 4
  %153 = load i32, i32* %hypre__sz1, align 4
  %mul223 = mul nsw i32 %152, %153
  %add224 = add nsw i32 %add222, %mul223
  store i32 %add224, i32* %datai, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.261, %if.end.218
  %154 = load i32, i32* %loopk, align 4
  %155 = load i32, i32* %hypre__nz, align 4
  %cmp226 = icmp slt i32 %154, %155
  br i1 %cmp226, label %for.body.227, label %for.end.263

for.body.227:                                     ; preds = %for.cond.225
  store i32 0, i32* %loopj, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.255, %for.body.227
  %156 = load i32, i32* %loopj, align 4
  %157 = load i32, i32* %hypre__ny, align 4
  %cmp229 = icmp slt i32 %156, %157
  br i1 %cmp229, label %for.body.230, label %for.end.257

for.body.230:                                     ; preds = %for.cond.228
  store i32 0, i32* %loopi, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.249, %for.body.230
  %158 = load i32, i32* %loopi, align 4
  %159 = load i32, i32* %hypre__nx, align 4
  %cmp232 = icmp slt i32 %158, %159
  br i1 %cmp232, label %for.body.233, label %for.end.251

for.body.233:                                     ; preds = %for.cond.231
  store i32 0, i32* %j, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc, %for.body.233
  %160 = load i32, i32* %j, align 4
  %161 = load i32, i32* %num_values.addr, align 4
  %cmp235 = icmp slt i32 %160, %161
  br i1 %cmp235, label %for.body.236, label %for.end

for.body.236:                                     ; preds = %for.cond.234
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %163 = load i32, i32* %i, align 4
  %164 = load i32*, i32** %start, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %164, i64 0
  %165 = load i32, i32* %arrayidx237, align 4
  %166 = load i32, i32* %loopi, align 4
  %add238 = add nsw i32 %165, %166
  %167 = load i32*, i32** %start, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %167, i64 1
  %168 = load i32, i32* %arrayidx239, align 4
  %169 = load i32, i32* %loopj, align 4
  %add240 = add nsw i32 %168, %169
  %170 = load i32*, i32** %start, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %170, i64 2
  %171 = load i32, i32* %arrayidx241, align 4
  %172 = load i32, i32* %loopk, align 4
  %add242 = add nsw i32 %171, %172
  %173 = load i32, i32* %j, align 4
  %174 = load i32, i32* %datai, align 4
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %data_box_volume, align 4
  %mul243 = mul nsw i32 %175, %176
  %add244 = add nsw i32 %174, %mul243
  %idxprom245 = sext i32 %add244 to i64
  %177 = load double*, double** %data.addr, align 8
  %arrayidx246 = getelementptr inbounds double, double* %177, i64 %idxprom245
  %178 = load double, double* %arrayidx246, align 8
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %163, i32 %add238, i32 %add240, i32 %add242, i32 %173, double %178)
  br label %for.inc

for.inc:                                          ; preds = %for.body.236
  %179 = load i32, i32* %j, align 4
  %inc = add nsw i32 %179, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.234

for.end:                                          ; preds = %for.cond.234
  %180 = load i32, i32* %hypre__sx1, align 4
  %181 = load i32, i32* %datai, align 4
  %add248 = add nsw i32 %181, %180
  store i32 %add248, i32* %datai, align 4
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end
  %182 = load i32, i32* %loopi, align 4
  %inc250 = add nsw i32 %182, 1
  store i32 %inc250, i32* %loopi, align 4
  br label %for.cond.231

for.end.251:                                      ; preds = %for.cond.231
  %183 = load i32, i32* %hypre__sy1, align 4
  %184 = load i32, i32* %hypre__nx, align 4
  %185 = load i32, i32* %hypre__sx1, align 4
  %mul252 = mul nsw i32 %184, %185
  %sub253 = sub nsw i32 %183, %mul252
  %186 = load i32, i32* %datai, align 4
  %add254 = add nsw i32 %186, %sub253
  store i32 %add254, i32* %datai, align 4
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.end.251
  %187 = load i32, i32* %loopj, align 4
  %inc256 = add nsw i32 %187, 1
  store i32 %inc256, i32* %loopj, align 4
  br label %for.cond.228

for.end.257:                                      ; preds = %for.cond.228
  %188 = load i32, i32* %hypre__sz1, align 4
  %189 = load i32, i32* %hypre__ny, align 4
  %190 = load i32, i32* %hypre__sy1, align 4
  %mul258 = mul nsw i32 %189, %190
  %sub259 = sub nsw i32 %188, %mul258
  %191 = load i32, i32* %datai, align 4
  %add260 = add nsw i32 %191, %sub259
  store i32 %add260, i32* %datai, align 4
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.end.257
  %192 = load i32, i32* %loopk, align 4
  %inc262 = add nsw i32 %192, 1
  store i32 %inc262, i32* %loopk, align 4
  br label %for.cond.225

for.end.263:                                      ; preds = %for.cond.225
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.end.263
  %193 = load i32, i32* %hypre__block, align 4
  %inc265 = add nsw i32 %193, 1
  store i32 %inc265, i32* %hypre__block, align 4
  br label %for.cond.173

for.end.266:                                      ; preds = %for.cond.173
  %194 = load i32, i32* %num_values.addr, align 4
  %195 = load i32, i32* %data_box_volume, align 4
  %mul267 = mul nsw i32 %194, %195
  %196 = load double*, double** %data.addr, align 8
  %idx.ext = sext i32 %mul267 to i64
  %add.ptr = getelementptr inbounds double, double* %196, i64 %idx.ext
  store double* %add.ptr, double** %data.addr, align 8
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.end.266
  %197 = load i32, i32* %i, align 4
  %inc269 = add nsw i32 %197, 1
  store i32 %inc269, i32* %i, align 4
  br label %for.cond

for.end.270:                                      ; preds = %for.cond
  %198 = load i32, i32* %ierr, align 4
  ret i32 %198
}

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_ReadBoxArrayData(%struct._IO_FILE* %file, %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct* %data_space, i32 %num_values, double* %data) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_space.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %num_values.addr = alloca i32, align 4
  %data.addr = alloca double*, align 8
  %ierr = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %data_box_volume = alloca i32, align 4
  %datai = alloca i32, align 4
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %stride = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idummy = alloca i32, align 4
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
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store %struct.hypre_BoxArray_struct* %data_space, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  store i32 %num_values, i32* %num_values.addr, align 4
  store double* %data, double** %data.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.262, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.264

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 0
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx3 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx3, %struct.hypre_Box_struct** %box, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  %boxes5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes5, align 8
  %arrayidx6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom4
  store %struct.hypre_Box_struct* %arrayidx6, %struct.hypre_Box_struct** %data_box, align 8
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %sub = sub nsw i32 %11, %13
  %add = add nsw i32 %sub, 1
  %cmp10 = icmp slt i32 0, %add
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imax11, i32 0, i64 0
  %15 = load i32, i32* %arrayidx12, align 4
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 0
  %17 = load i32, i32* %arrayidx14, align 4
  %sub15 = sub nsw i32 %15, %17
  %add16 = add nsw i32 %sub15, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add16, %cond.true ], [ 0, %cond.false ]
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax17, i32 0, i64 1
  %19 = load i32, i32* %arrayidx18, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 1
  %21 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %19, %21
  %add22 = add nsw i32 %sub21, 1
  %cmp23 = icmp slt i32 0, %add22
  br i1 %cmp23, label %cond.true.24, label %cond.false.31

cond.true.24:                                     ; preds = %cond.end
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imax25, i32 0, i64 1
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 1
  %25 = load i32, i32* %arrayidx28, align 4
  %sub29 = sub nsw i32 %23, %25
  %add30 = add nsw i32 %sub29, 1
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.24
  %cond33 = phi i32 [ %add30, %cond.true.24 ], [ 0, %cond.false.31 ]
  %mul = mul nsw i32 %cond, %cond33
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 2
  %27 = load i32, i32* %arrayidx35, align 4
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imin36, i32 0, i64 2
  %29 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 %27, %29
  %add39 = add nsw i32 %sub38, 1
  %cmp40 = icmp slt i32 0, %add39
  br i1 %cmp40, label %cond.true.41, label %cond.false.48

cond.true.41:                                     ; preds = %cond.end.32
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imax42, i32 0, i64 2
  %31 = load i32, i32* %arrayidx43, align 4
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imin44, i32 0, i64 2
  %33 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %31, %33
  %add47 = add nsw i32 %sub46, 1
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.32
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.41
  %cond50 = phi i32 [ %add47, %cond.true.41 ], [ 0, %cond.false.48 ]
  %mul51 = mul nsw i32 %mul, %cond50
  store i32 %mul51, i32* %data_box_volume, align 4
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay52 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %34, i32* %arraydecay52)
  %35 = load i32*, i32** %start, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx53, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imin54, i32 0, i64 0
  %38 = load i32, i32* %arrayidx55, align 4
  %sub56 = sub nsw i32 %36, %38
  %39 = load i32*, i32** %start, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %39, i64 1
  %40 = load i32, i32* %arrayidx57, align 4
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 1
  %42 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %40, %42
  %43 = load i32*, i32** %start, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 2
  %44 = load i32, i32* %arrayidx61, align 4
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imin62, i32 0, i64 2
  %46 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %44, %46
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imax65, i32 0, i64 1
  %48 = load i32, i32* %arrayidx66, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i64 1
  %50 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %48, %50
  %add70 = add nsw i32 %sub69, 1
  %cmp71 = icmp slt i32 0, %add70
  br i1 %cmp71, label %cond.true.72, label %cond.false.79

cond.true.72:                                     ; preds = %cond.end.49
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imax73, i32 0, i64 1
  %52 = load i32, i32* %arrayidx74, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imin75, i32 0, i64 1
  %54 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %52, %54
  %add78 = add nsw i32 %sub77, 1
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.49
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.72
  %cond81 = phi i32 [ %add78, %cond.true.72 ], [ 0, %cond.false.79 ]
  %mul82 = mul nsw i32 %sub64, %cond81
  %add83 = add nsw i32 %sub60, %mul82
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 0
  %56 = load i32, i32* %arrayidx85, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imin86, i32 0, i64 0
  %58 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %56, %58
  %add89 = add nsw i32 %sub88, 1
  %cmp90 = icmp slt i32 0, %add89
  br i1 %cmp90, label %cond.true.91, label %cond.false.98

cond.true.91:                                     ; preds = %cond.end.80
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 0
  %60 = load i32, i32* %arrayidx93, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imin94, i32 0, i64 0
  %62 = load i32, i32* %arrayidx95, align 4
  %sub96 = sub nsw i32 %60, %62
  %add97 = add nsw i32 %sub96, 1
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.end.80
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.91
  %cond100 = phi i32 [ %add97, %cond.true.91 ], [ 0, %cond.false.98 ]
  %mul101 = mul nsw i32 %add83, %cond100
  %add102 = add nsw i32 %sub56, %mul101
  store i32 %add102, i32* %hypre__i1start, align 4
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %63 = load i32, i32* %arrayidx103, align 4
  store i32 %63, i32* %hypre__sx1, align 4
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %64 = load i32, i32* %arrayidx104, align 4
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imax105, i32 0, i64 0
  %66 = load i32, i32* %arrayidx106, align 4
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imin107, i32 0, i64 0
  %68 = load i32, i32* %arrayidx108, align 4
  %sub109 = sub nsw i32 %66, %68
  %add110 = add nsw i32 %sub109, 1
  %cmp111 = icmp slt i32 0, %add110
  br i1 %cmp111, label %cond.true.112, label %cond.false.119

cond.true.112:                                    ; preds = %cond.end.99
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %imax113, i32 0, i64 0
  %70 = load i32, i32* %arrayidx114, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %imin115, i32 0, i64 0
  %72 = load i32, i32* %arrayidx116, align 4
  %sub117 = sub nsw i32 %70, %72
  %add118 = add nsw i32 %sub117, 1
  br label %cond.end.120

cond.false.119:                                   ; preds = %cond.end.99
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.112
  %cond121 = phi i32 [ %add118, %cond.true.112 ], [ 0, %cond.false.119 ]
  %mul122 = mul nsw i32 %64, %cond121
  store i32 %mul122, i32* %hypre__sy1, align 4
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %73 = load i32, i32* %arrayidx123, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imax124, i32 0, i64 0
  %75 = load i32, i32* %arrayidx125, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %imin126, i32 0, i64 0
  %77 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 %75, %77
  %add129 = add nsw i32 %sub128, 1
  %cmp130 = icmp slt i32 0, %add129
  br i1 %cmp130, label %cond.true.131, label %cond.false.138

cond.true.131:                                    ; preds = %cond.end.120
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imax132, i32 0, i64 0
  %79 = load i32, i32* %arrayidx133, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 0
  %81 = load i32, i32* %arrayidx135, align 4
  %sub136 = sub nsw i32 %79, %81
  %add137 = add nsw i32 %sub136, 1
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.end.120
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.131
  %cond140 = phi i32 [ %add137, %cond.true.131 ], [ 0, %cond.false.138 ]
  %mul141 = mul nsw i32 %73, %cond140
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 1
  %83 = load i32, i32* %arrayidx143, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin144, i32 0, i64 1
  %85 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %83, %85
  %add147 = add nsw i32 %sub146, 1
  %cmp148 = icmp slt i32 0, %add147
  br i1 %cmp148, label %cond.true.149, label %cond.false.156

cond.true.149:                                    ; preds = %cond.end.139
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 1
  %87 = load i32, i32* %arrayidx151, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imin152, i32 0, i64 1
  %89 = load i32, i32* %arrayidx153, align 4
  %sub154 = sub nsw i32 %87, %89
  %add155 = add nsw i32 %sub154, 1
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.139
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.149
  %cond158 = phi i32 [ %add155, %cond.true.149 ], [ 0, %cond.false.156 ]
  %mul159 = mul nsw i32 %mul141, %cond158
  store i32 %mul159, i32* %hypre__sz1, align 4
  %arrayidx160 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %90 = load i32, i32* %arrayidx160, align 4
  store i32 %90, i32* %hypre__nx, align 4
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %91 = load i32, i32* %arrayidx161, align 4
  store i32 %91, i32* %hypre__ny, align 4
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %92 = load i32, i32* %arrayidx162, align 4
  store i32 %92, i32* %hypre__nz, align 4
  %93 = load i32, i32* %hypre__nx, align 4
  store i32 %93, i32* %hypre__mx, align 4
  %94 = load i32, i32* %hypre__ny, align 4
  store i32 %94, i32* %hypre__my, align 4
  %95 = load i32, i32* %hypre__nz, align 4
  store i32 %95, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %96 = load i32, i32* %hypre__nx, align 4
  store i32 %96, i32* %hypre__max, align 4
  %97 = load i32, i32* %hypre__ny, align 4
  %98 = load i32, i32* %hypre__max, align 4
  %cmp163 = icmp sgt i32 %97, %98
  br i1 %cmp163, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.157
  store i32 1, i32* %hypre__dir, align 4
  %99 = load i32, i32* %hypre__ny, align 4
  store i32 %99, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.157
  %100 = load i32, i32* %hypre__nz, align 4
  %101 = load i32, i32* %hypre__max, align 4
  %cmp164 = icmp sgt i32 %100, %101
  br i1 %cmp164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %102 = load i32, i32* %hypre__nz, align 4
  store i32 %102, i32* %hypre__max, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %103 = load i32, i32* %hypre__max, align 4
  %104 = load i32, i32* %hypre__num_blocks, align 4
  %cmp167 = icmp slt i32 %103, %104
  br i1 %cmp167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.166
  %105 = load i32, i32* %hypre__max, align 4
  store i32 %105, i32* %hypre__num_blocks, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.166
  %106 = load i32, i32* %hypre__num_blocks, align 4
  %cmp170 = icmp sgt i32 %106, 0
  br i1 %cmp170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.169
  %107 = load i32, i32* %hypre__max, align 4
  %108 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %107, %108
  store i32 %div, i32* %hypre__div, align 4
  %109 = load i32, i32* %hypre__max, align 4
  %110 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %109, %110
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.end.169
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.258, %if.end.172
  %111 = load i32, i32* %hypre__block, align 4
  %112 = load i32, i32* %hypre__num_blocks, align 4
  %cmp174 = icmp slt i32 %111, %112
  br i1 %cmp174, label %for.body.175, label %for.end.260

for.body.175:                                     ; preds = %for.cond.173
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %113 = load i32, i32* %hypre__mx, align 4
  store i32 %113, i32* %hypre__nx, align 4
  %114 = load i32, i32* %hypre__my, align 4
  store i32 %114, i32* %hypre__ny, align 4
  %115 = load i32, i32* %hypre__mz, align 4
  store i32 %115, i32* %hypre__nz, align 4
  %116 = load i32, i32* %hypre__num_blocks, align 4
  %cmp176 = icmp sgt i32 %116, 1
  br i1 %cmp176, label %if.then.177, label %if.end.218

if.then.177:                                      ; preds = %for.body.175
  %117 = load i32, i32* %hypre__dir, align 4
  %cmp178 = icmp eq i32 %117, 0
  br i1 %cmp178, label %if.then.179, label %if.else

if.then.179:                                      ; preds = %if.then.177
  %118 = load i32, i32* %hypre__block, align 4
  %119 = load i32, i32* %hypre__div, align 4
  %mul180 = mul nsw i32 %118, %119
  %120 = load i32, i32* %hypre__mod, align 4
  %121 = load i32, i32* %hypre__block, align 4
  %cmp181 = icmp slt i32 %120, %121
  br i1 %cmp181, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %if.then.179
  %122 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.184

cond.false.183:                                   ; preds = %if.then.179
  %123 = load i32, i32* %hypre__block, align 4
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.182
  %cond185 = phi i32 [ %122, %cond.true.182 ], [ %123, %cond.false.183 ]
  %add186 = add nsw i32 %mul180, %cond185
  store i32 %add186, i32* %loopi, align 4
  %124 = load i32, i32* %hypre__div, align 4
  %125 = load i32, i32* %hypre__mod, align 4
  %126 = load i32, i32* %hypre__block, align 4
  %cmp187 = icmp sgt i32 %125, %126
  %cond188 = select i1 %cmp187, i32 1, i32 0
  %add189 = add nsw i32 %124, %cond188
  store i32 %add189, i32* %hypre__nx, align 4
  br label %if.end.217

if.else:                                          ; preds = %if.then.177
  %127 = load i32, i32* %hypre__dir, align 4
  %cmp190 = icmp eq i32 %127, 1
  br i1 %cmp190, label %if.then.191, label %if.else.202

if.then.191:                                      ; preds = %if.else
  %128 = load i32, i32* %hypre__block, align 4
  %129 = load i32, i32* %hypre__div, align 4
  %mul192 = mul nsw i32 %128, %129
  %130 = load i32, i32* %hypre__mod, align 4
  %131 = load i32, i32* %hypre__block, align 4
  %cmp193 = icmp slt i32 %130, %131
  br i1 %cmp193, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %if.then.191
  %132 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.196

cond.false.195:                                   ; preds = %if.then.191
  %133 = load i32, i32* %hypre__block, align 4
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.194
  %cond197 = phi i32 [ %132, %cond.true.194 ], [ %133, %cond.false.195 ]
  %add198 = add nsw i32 %mul192, %cond197
  store i32 %add198, i32* %loopj, align 4
  %134 = load i32, i32* %hypre__div, align 4
  %135 = load i32, i32* %hypre__mod, align 4
  %136 = load i32, i32* %hypre__block, align 4
  %cmp199 = icmp sgt i32 %135, %136
  %cond200 = select i1 %cmp199, i32 1, i32 0
  %add201 = add nsw i32 %134, %cond200
  store i32 %add201, i32* %hypre__ny, align 4
  br label %if.end.216

if.else.202:                                      ; preds = %if.else
  %137 = load i32, i32* %hypre__dir, align 4
  %cmp203 = icmp eq i32 %137, 2
  br i1 %cmp203, label %if.then.204, label %if.end.215

if.then.204:                                      ; preds = %if.else.202
  %138 = load i32, i32* %hypre__block, align 4
  %139 = load i32, i32* %hypre__div, align 4
  %mul205 = mul nsw i32 %138, %139
  %140 = load i32, i32* %hypre__mod, align 4
  %141 = load i32, i32* %hypre__block, align 4
  %cmp206 = icmp slt i32 %140, %141
  br i1 %cmp206, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %if.then.204
  %142 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.then.204
  %143 = load i32, i32* %hypre__block, align 4
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.207
  %cond210 = phi i32 [ %142, %cond.true.207 ], [ %143, %cond.false.208 ]
  %add211 = add nsw i32 %mul205, %cond210
  store i32 %add211, i32* %loopk, align 4
  %144 = load i32, i32* %hypre__div, align 4
  %145 = load i32, i32* %hypre__mod, align 4
  %146 = load i32, i32* %hypre__block, align 4
  %cmp212 = icmp sgt i32 %145, %146
  %cond213 = select i1 %cmp212, i32 1, i32 0
  %add214 = add nsw i32 %144, %cond213
  store i32 %add214, i32* %hypre__nz, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %cond.end.209, %if.else.202
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %cond.end.196
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %cond.end.184
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.body.175
  %147 = load i32, i32* %hypre__i1start, align 4
  %148 = load i32, i32* %loopi, align 4
  %149 = load i32, i32* %hypre__sx1, align 4
  %mul219 = mul nsw i32 %148, %149
  %add220 = add nsw i32 %147, %mul219
  %150 = load i32, i32* %loopj, align 4
  %151 = load i32, i32* %hypre__sy1, align 4
  %mul221 = mul nsw i32 %150, %151
  %add222 = add nsw i32 %add220, %mul221
  %152 = load i32, i32* %loopk, align 4
  %153 = load i32, i32* %hypre__sz1, align 4
  %mul223 = mul nsw i32 %152, %153
  %add224 = add nsw i32 %add222, %mul223
  store i32 %add224, i32* %datai, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.255, %if.end.218
  %154 = load i32, i32* %loopk, align 4
  %155 = load i32, i32* %hypre__nz, align 4
  %cmp226 = icmp slt i32 %154, %155
  br i1 %cmp226, label %for.body.227, label %for.end.257

for.body.227:                                     ; preds = %for.cond.225
  store i32 0, i32* %loopj, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.249, %for.body.227
  %156 = load i32, i32* %loopj, align 4
  %157 = load i32, i32* %hypre__ny, align 4
  %cmp229 = icmp slt i32 %156, %157
  br i1 %cmp229, label %for.body.230, label %for.end.251

for.body.230:                                     ; preds = %for.cond.228
  store i32 0, i32* %loopi, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.243, %for.body.230
  %158 = load i32, i32* %loopi, align 4
  %159 = load i32, i32* %hypre__nx, align 4
  %cmp232 = icmp slt i32 %158, %159
  br i1 %cmp232, label %for.body.233, label %for.end.245

for.body.233:                                     ; preds = %for.cond.231
  store i32 0, i32* %j, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc, %for.body.233
  %160 = load i32, i32* %j, align 4
  %161 = load i32, i32* %num_values.addr, align 4
  %cmp235 = icmp slt i32 %160, %161
  br i1 %cmp235, label %for.body.236, label %for.end

for.body.236:                                     ; preds = %for.cond.234
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %163 = load i32, i32* %datai, align 4
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* %data_box_volume, align 4
  %mul237 = mul nsw i32 %164, %165
  %add238 = add nsw i32 %163, %mul237
  %idxprom239 = sext i32 %add238 to i64
  %166 = load double*, double** %data.addr, align 8
  %arrayidx240 = getelementptr inbounds double, double* %166, i64 %idxprom239
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32* %idummy, i32* %idummy, i32* %idummy, i32* %idummy, i32* %idummy, double* %arrayidx240)
  br label %for.inc

for.inc:                                          ; preds = %for.body.236
  %167 = load i32, i32* %j, align 4
  %inc = add nsw i32 %167, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.234

for.end:                                          ; preds = %for.cond.234
  %168 = load i32, i32* %hypre__sx1, align 4
  %169 = load i32, i32* %datai, align 4
  %add242 = add nsw i32 %169, %168
  store i32 %add242, i32* %datai, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end
  %170 = load i32, i32* %loopi, align 4
  %inc244 = add nsw i32 %170, 1
  store i32 %inc244, i32* %loopi, align 4
  br label %for.cond.231

for.end.245:                                      ; preds = %for.cond.231
  %171 = load i32, i32* %hypre__sy1, align 4
  %172 = load i32, i32* %hypre__nx, align 4
  %173 = load i32, i32* %hypre__sx1, align 4
  %mul246 = mul nsw i32 %172, %173
  %sub247 = sub nsw i32 %171, %mul246
  %174 = load i32, i32* %datai, align 4
  %add248 = add nsw i32 %174, %sub247
  store i32 %add248, i32* %datai, align 4
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.245
  %175 = load i32, i32* %loopj, align 4
  %inc250 = add nsw i32 %175, 1
  store i32 %inc250, i32* %loopj, align 4
  br label %for.cond.228

for.end.251:                                      ; preds = %for.cond.228
  %176 = load i32, i32* %hypre__sz1, align 4
  %177 = load i32, i32* %hypre__ny, align 4
  %178 = load i32, i32* %hypre__sy1, align 4
  %mul252 = mul nsw i32 %177, %178
  %sub253 = sub nsw i32 %176, %mul252
  %179 = load i32, i32* %datai, align 4
  %add254 = add nsw i32 %179, %sub253
  store i32 %add254, i32* %datai, align 4
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.end.251
  %180 = load i32, i32* %loopk, align 4
  %inc256 = add nsw i32 %180, 1
  store i32 %inc256, i32* %loopk, align 4
  br label %for.cond.225

for.end.257:                                      ; preds = %for.cond.225
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.end.257
  %181 = load i32, i32* %hypre__block, align 4
  %inc259 = add nsw i32 %181, 1
  store i32 %inc259, i32* %hypre__block, align 4
  br label %for.cond.173

for.end.260:                                      ; preds = %for.cond.173
  %182 = load i32, i32* %num_values.addr, align 4
  %183 = load i32, i32* %data_box_volume, align 4
  %mul261 = mul nsw i32 %182, %183
  %184 = load double*, double** %data.addr, align 8
  %idx.ext = sext i32 %mul261 to i64
  %add.ptr = getelementptr inbounds double, double* %184, i64 %idx.ext
  store double* %add.ptr, double** %data.addr, align 8
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.end.260
  %185 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %185, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond

for.end.264:                                      ; preds = %for.cond
  %186 = load i32, i32* %ierr, align 4
  ret i32 %186
}

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
