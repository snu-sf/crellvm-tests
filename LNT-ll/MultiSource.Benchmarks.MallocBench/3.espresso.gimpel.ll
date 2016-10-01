; ModuleID = './MultiSource.Benchmarks.MallocBench/3.espresso.gimpel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @gimpel_reduce(%struct.sm_matrix_struct* %A, %struct.solution_struct* %select, i32* %weight, i32 %lb, i32 %bound, i32 %depth, %struct.stats_struct* %stats, %struct.solution_struct** %best) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %select.addr = alloca %struct.solution_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %lb.addr = alloca i32, align 4
  %bound.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %stats.addr = alloca %struct.stats_struct*, align 8
  %best.addr = alloca %struct.solution_struct**, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %save_sec = alloca %struct.sm_row_struct*, align 8
  %c1 = alloca %struct.sm_col_struct*, align 8
  %c2 = alloca %struct.sm_col_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %p1 = alloca %struct.sm_element_struct*, align 8
  %c1_col_num = alloca i32, align 4
  %c2_col_num = alloca i32, align 4
  %primary_row_num = alloca i32, align 4
  %secondary_row_num = alloca i32, align 4
  %reduce_it = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.solution_struct* %select, %struct.solution_struct** %select.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %lb, i32* %lb.addr, align 4
  store i32 %bound, i32* %bound.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store %struct.stats_struct* %stats, %struct.stats_struct** %stats.addr, align 8
  store %struct.solution_struct** %best, %struct.solution_struct*** %best.addr, align 8
  store i32 0, i32* %reduce_it, align 4
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 4
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %1, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp = icmp ne %struct.sm_row_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %if.then, label %if.end.73

if.then:                                          ; preds = %for.body
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %5, i32 0, i32 3
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %col_num, align 4
  %cmp2 = icmp sge i32 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %8, i32 0, i32 3
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col3, align 8
  %col_num4 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %col_num4, align 4
  %11 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %11, i32 0, i32 3
  %12 = load i32, i32* %cols_size, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %13, i32 0, i32 3
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col6, align 8
  %col_num7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %col_num7, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 2
  %17 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %17, i64 %idxprom
  %18 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_col_struct* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct.sm_col_struct* %cond, %struct.sm_col_struct** %c1, align 8
  %19 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %19, i32 0, i32 4
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col, align 8
  %col_num8 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %col_num8, align 4
  %cmp9 = icmp sge i32 %21, 0
  br i1 %cmp9, label %land.lhs.true.10, label %cond.false.21

land.lhs.true.10:                                 ; preds = %cond.end
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col11 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %22, i32 0, i32 4
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col11, align 8
  %col_num12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %col_num12, align 4
  %25 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size13 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %25, i32 0, i32 3
  %26 = load i32, i32* %cols_size13, align 4
  %cmp14 = icmp slt i32 %24, %26
  br i1 %cmp14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %land.lhs.true.10
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 4
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col16, align 8
  %col_num17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %28, i32 0, i32 1
  %29 = load i32, i32* %col_num17, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %30, i32 0, i32 2
  %31 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols19, align 8
  %arrayidx20 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %31, i64 %idxprom18
  %32 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx20, align 8
  br label %cond.end.22

cond.false.21:                                    ; preds = %land.lhs.true.10, %cond.end
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.15
  %cond23 = phi %struct.sm_col_struct* [ %32, %cond.true.15 ], [ null, %cond.false.21 ]
  store %struct.sm_col_struct* %cond23, %struct.sm_col_struct** %c2, align 8
  %33 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c1, align 8
  %length24 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %33, i32 0, i32 1
  %34 = load i32, i32* %length24, align 4
  %cmp25 = icmp eq i32 %34, 2
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %cond.end.22
  store i32 1, i32* %reduce_it, align 4
  br label %if.end.64

if.else:                                          ; preds = %cond.end.22
  %35 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c2, align 8
  %length27 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %35, i32 0, i32 1
  %36 = load i32, i32* %length27, align 4
  %cmp28 = icmp eq i32 %36, 2
  br i1 %cmp28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else
  %37 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col30 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %37, i32 0, i32 4
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col30, align 8
  %col_num31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %38, i32 0, i32 1
  %39 = load i32, i32* %col_num31, align 4
  %cmp32 = icmp sge i32 %39, 0
  br i1 %cmp32, label %land.lhs.true.33, label %cond.false.44

land.lhs.true.33:                                 ; preds = %if.then.29
  %40 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col34 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %40, i32 0, i32 4
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col34, align 8
  %col_num35 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 1
  %42 = load i32, i32* %col_num35, align 4
  %43 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size36 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %43, i32 0, i32 3
  %44 = load i32, i32* %cols_size36, align 4
  %cmp37 = icmp slt i32 %42, %44
  br i1 %cmp37, label %cond.true.38, label %cond.false.44

cond.true.38:                                     ; preds = %land.lhs.true.33
  %45 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col39 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i32 0, i32 4
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col39, align 8
  %col_num40 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %46, i32 0, i32 1
  %47 = load i32, i32* %col_num40, align 4
  %idxprom41 = sext i32 %47 to i64
  %48 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols42 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %48, i32 0, i32 2
  %49 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols42, align 8
  %arrayidx43 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %49, i64 %idxprom41
  %50 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx43, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %land.lhs.true.33, %if.then.29
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.38
  %cond46 = phi %struct.sm_col_struct* [ %50, %cond.true.38 ], [ null, %cond.false.44 ]
  store %struct.sm_col_struct* %cond46, %struct.sm_col_struct** %c1, align 8
  %51 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col47 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %51, i32 0, i32 3
  %52 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col47, align 8
  %col_num48 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %col_num48, align 4
  %cmp49 = icmp sge i32 %53, 0
  br i1 %cmp49, label %land.lhs.true.50, label %cond.false.61

land.lhs.true.50:                                 ; preds = %cond.end.45
  %54 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col51 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %54, i32 0, i32 3
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col51, align 8
  %col_num52 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %55, i32 0, i32 1
  %56 = load i32, i32* %col_num52, align 4
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size53 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %57, i32 0, i32 3
  %58 = load i32, i32* %cols_size53, align 4
  %cmp54 = icmp slt i32 %56, %58
  br i1 %cmp54, label %cond.true.55, label %cond.false.61

cond.true.55:                                     ; preds = %land.lhs.true.50
  %59 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col56 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %59, i32 0, i32 3
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col56, align 8
  %col_num57 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %60, i32 0, i32 1
  %61 = load i32, i32* %col_num57, align 4
  %idxprom58 = sext i32 %61 to i64
  %62 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols59 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %62, i32 0, i32 2
  %63 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols59, align 8
  %arrayidx60 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %63, i64 %idxprom58
  %64 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx60, align 8
  br label %cond.end.62

cond.false.61:                                    ; preds = %land.lhs.true.50, %cond.end.45
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.55
  %cond63 = phi %struct.sm_col_struct* [ %64, %cond.true.55 ], [ null, %cond.false.61 ]
  store %struct.sm_col_struct* %cond63, %struct.sm_col_struct** %c2, align 8
  store i32 1, i32* %reduce_it, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.62, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end, %if.then.26
  %65 = load i32, i32* %reduce_it, align 4
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.end.64
  %66 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %66, i32 0, i32 0
  %67 = load i32, i32* %row_num, align 4
  store i32 %67, i32* %primary_row_num, align 4
  %68 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c1, align 8
  %first_row66 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %68, i32 0, i32 3
  %69 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row66, align 8
  %row_num67 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %69, i32 0, i32 0
  %70 = load i32, i32* %row_num67, align 4
  store i32 %70, i32* %secondary_row_num, align 4
  %71 = load i32, i32* %secondary_row_num, align 4
  %72 = load i32, i32* %primary_row_num, align 4
  %cmp68 = icmp eq i32 %71, %72
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.65
  %73 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c1, align 8
  %last_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %73, i32 0, i32 4
  %74 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_row, align 8
  %row_num70 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %74, i32 0, i32 0
  %75 = load i32, i32* %row_num70, align 4
  store i32 %75, i32* %secondary_row_num, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.65
  br label %for.end

if.end.72:                                        ; preds = %if.end.64
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %76 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %76, i32 0, i32 5
  %77 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %77, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.71, %for.cond
  %78 = load i32, i32* %reduce_it, align 4
  %tobool74 = icmp ne i32 %78, 0
  br i1 %tobool74, label %if.then.75, label %if.else.119

if.then.75:                                       ; preds = %for.end
  %79 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c1, align 8
  %col_num76 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %79, i32 0, i32 0
  %80 = load i32, i32* %col_num76, align 4
  store i32 %80, i32* %c1_col_num, align 4
  %81 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c2, align 8
  %col_num77 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %81, i32 0, i32 0
  %82 = load i32, i32* %col_num77, align 4
  store i32 %82, i32* %c2_col_num, align 4
  %83 = load i32, i32* %secondary_row_num, align 4
  %cmp78 = icmp sge i32 %83, 0
  br i1 %cmp78, label %land.lhs.true.79, label %cond.false.84

land.lhs.true.79:                                 ; preds = %if.then.75
  %84 = load i32, i32* %secondary_row_num, align 4
  %85 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %85, i32 0, i32 1
  %86 = load i32, i32* %rows_size, align 4
  %cmp80 = icmp slt i32 %84, %86
  br i1 %cmp80, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %land.lhs.true.79
  %87 = load i32, i32* %secondary_row_num, align 4
  %idxprom82 = sext i32 %87 to i64
  %88 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %88, i32 0, i32 0
  %89 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx83 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %89, i64 %idxprom82
  %90 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx83, align 8
  br label %cond.end.85

cond.false.84:                                    ; preds = %land.lhs.true.79, %if.then.75
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.81
  %cond86 = phi %struct.sm_row_struct* [ %90, %cond.true.81 ], [ null, %cond.false.84 ]
  %call = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %cond86)
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %save_sec, align 8
  %91 = load %struct.sm_row_struct*, %struct.sm_row_struct** %save_sec, align 8
  %92 = load i32, i32* %c1_col_num, align 4
  call void (%struct.sm_row_struct*, i32, ...) bitcast (void (...)* @sm_row_remove to void (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %91, i32 %92)
  %93 = load %struct.sm_col_struct*, %struct.sm_col_struct** %c2, align 8
  %first_row87 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %93, i32 0, i32 3
  %94 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row87, align 8
  store %struct.sm_element_struct* %94, %struct.sm_element_struct** %p, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.104, %cond.end.85
  %95 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp89 = icmp ne %struct.sm_element_struct* %95, null
  br i1 %cmp89, label %for.body.90, label %for.end.106

for.body.90:                                      ; preds = %for.cond.88
  %96 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num91 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %96, i32 0, i32 0
  %97 = load i32, i32* %row_num91, align 4
  %98 = load i32, i32* %primary_row_num, align 4
  %cmp92 = icmp ne i32 %97, %98
  br i1 %cmp92, label %if.then.93, label %if.end.103

if.then.93:                                       ; preds = %for.body.90
  %99 = load %struct.sm_row_struct*, %struct.sm_row_struct** %save_sec, align 8
  %first_col94 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %99, i32 0, i32 3
  %100 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col94, align 8
  store %struct.sm_element_struct* %100, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.101, %if.then.93
  %101 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %cmp96 = icmp ne %struct.sm_element_struct* %101, null
  br i1 %cmp96, label %for.body.97, label %for.end.102

for.body.97:                                      ; preds = %for.cond.95
  %102 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %103 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num98 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %103, i32 0, i32 0
  %104 = load i32, i32* %row_num98, align 4
  %105 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %col_num99 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %105, i32 0, i32 1
  %106 = load i32, i32* %col_num99, align 4
  %call100 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* %102, i32 %104, i32 %106)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.97
  %107 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %107, i32 0, i32 4
  %108 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %108, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.95

for.end.102:                                      ; preds = %for.cond.95
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %for.body.90
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %109 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row105 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %109, i32 0, i32 2
  %110 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row105, align 8
  store %struct.sm_element_struct* %110, %struct.sm_element_struct** %p, align 8
  br label %for.cond.88

for.end.106:                                      ; preds = %for.cond.88
  %111 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %112 = load i32, i32* %c1_col_num, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %111, i32 %112)
  %113 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %114 = load i32, i32* %c2_col_num, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %113, i32 %114)
  %115 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %116 = load i32, i32* %primary_row_num, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %115, i32 %116)
  %117 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %118 = load i32, i32* %secondary_row_num, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %117, i32 %118)
  %119 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel_count = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %119, i32 0, i32 6
  %120 = load i32, i32* %gimpel_count, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %gimpel_count, align 4
  %121 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %121, i32 0, i32 7
  %122 = load i32, i32* %gimpel, align 4
  %inc107 = add nsw i32 %122, 1
  store i32 %inc107, i32* %gimpel, align 4
  %123 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %124 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %125 = load i32*, i32** %weight.addr, align 8
  %126 = load i32, i32* %lb.addr, align 4
  %sub = sub nsw i32 %126, 1
  %127 = load i32, i32* %bound.addr, align 4
  %sub108 = sub nsw i32 %127, 1
  %128 = load i32, i32* %depth.addr, align 4
  %129 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %call109 = call %struct.solution_struct* (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, ...) bitcast (%struct.solution_struct* (...)* @sm_mincov to %struct.solution_struct* (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, ...)*)(%struct.sm_matrix_struct* %123, %struct.solution_struct* %124, i32* %125, i32 %sub, i32 %sub108, i32 %128, %struct.stats_struct* %129)
  %130 = load %struct.solution_struct**, %struct.solution_struct*** %best.addr, align 8
  store %struct.solution_struct* %call109, %struct.solution_struct** %130, align 8
  %131 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel110 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %131, i32 0, i32 7
  %132 = load i32, i32* %gimpel110, align 4
  %dec = add nsw i32 %132, -1
  store i32 %dec, i32* %gimpel110, align 4
  %133 = load %struct.solution_struct**, %struct.solution_struct*** %best.addr, align 8
  %134 = load %struct.solution_struct*, %struct.solution_struct** %133, align 8
  %cmp111 = icmp ne %struct.solution_struct* %134, null
  br i1 %cmp111, label %if.then.112, label %if.end.118

if.then.112:                                      ; preds = %for.end.106
  %135 = load %struct.sm_row_struct*, %struct.sm_row_struct** %save_sec, align 8
  %136 = load %struct.solution_struct**, %struct.solution_struct*** %best.addr, align 8
  %137 = load %struct.solution_struct*, %struct.solution_struct** %136, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %137, i32 0, i32 0
  %138 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %call113 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_intersects to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %135, %struct.sm_row_struct* %138)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %if.then.112
  %139 = load %struct.solution_struct**, %struct.solution_struct*** %best.addr, align 8
  %140 = load %struct.solution_struct*, %struct.solution_struct** %139, align 8
  %141 = load i32*, i32** %weight.addr, align 8
  %142 = load i32, i32* %c2_col_num, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* %140, i32* %141, i32 %142)
  br label %if.end.117

if.else.116:                                      ; preds = %if.then.112
  %143 = load %struct.solution_struct**, %struct.solution_struct*** %best.addr, align 8
  %144 = load %struct.solution_struct*, %struct.solution_struct** %143, align 8
  %145 = load i32*, i32** %weight.addr, align 8
  %146 = load i32, i32* %c1_col_num, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* %144, i32* %145, i32 %146)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.116, %if.then.115
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %for.end.106
  %147 = load %struct.sm_row_struct*, %struct.sm_row_struct** %save_sec, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %147)
  store i32 1, i32* %retval
  br label %return

if.else.119:                                      ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.119, %if.end.118
  %148 = load i32, i32* %retval
  ret i32 %148
}

declare %struct.sm_row_struct* @sm_row_dup(...) #1

declare void @sm_row_remove(...) #1

declare %struct.sm_element_struct* @sm_insert(...) #1

declare void @sm_delcol(...) #1

declare void @sm_delrow(...) #1

declare %struct.solution_struct* @sm_mincov(...) #1

declare i32 @sm_row_intersects(...) #1

declare void @solution_add(...) #1

declare void @sm_row_free(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
