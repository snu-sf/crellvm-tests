; ModuleID = './MultiSource.Benchmarks.MallocBench/2.espresso.indep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: nounwind uwtable
define %struct.solution_struct* @sm_maximal_independent_set(%struct.sm_matrix_struct* %A, i32* %weight) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %best_row = alloca %struct.sm_row_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %least_weight = alloca i32, align 4
  %save = alloca %struct.sm_row_struct*, align 8
  %B = alloca %struct.sm_matrix_struct*, align 8
  %indep = alloca %struct.solution_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  %call = call %struct.solution_struct* (...) @solution_alloc()
  store %struct.solution_struct* %call, %struct.solution_struct** %indep, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %call1 = call %struct.sm_matrix_struct* @build_intersection_matrix(%struct.sm_matrix_struct* %0)
  store %struct.sm_matrix_struct* %call1, %struct.sm_matrix_struct** %B, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.43, %entry
  %1 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %1, i32 0, i32 6
  %2 = load i32, i32* %nrows, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %3, i32 0, i32 4
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %4, %struct.sm_row_struct** %best_row, align 8
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %first_row2 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 4
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row2, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %6, i32 0, i32 5
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %7, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp3 = icmp ne %struct.sm_row_struct* %8, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %length, align 4
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %best_row, align 8
  %length4 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %length4, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  store %struct.sm_row_struct* %13, %struct.sm_row_struct** %best_row, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %14, i32 0, i32 5
  %15 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row6, align 8
  store %struct.sm_row_struct* %15, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32*, i32** %weight.addr, align 8
  %cmp7 = icmp eq i32* %16, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  store i32 1, i32* %least_weight, align 4
  br label %if.end.31

if.else:                                          ; preds = %for.end
  %17 = load %struct.sm_row_struct*, %struct.sm_row_struct** %best_row, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %row_num, align 4
  %cmp9 = icmp sge i32 %18, 0
  br i1 %cmp9, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct.sm_row_struct*, %struct.sm_row_struct** %best_row, align 8
  %row_num10 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %row_num10, align 4
  %21 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %21, i32 0, i32 1
  %22 = load i32, i32* %rows_size, align 4
  %cmp11 = icmp slt i32 %20, %22
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %23 = load %struct.sm_row_struct*, %struct.sm_row_struct** %best_row, align 8
  %row_num12 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %23, i32 0, i32 0
  %24 = load i32, i32* %row_num12, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %25, i32 0, i32 0
  %26 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %26, i64 %idxprom
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %prow, align 8
  %28 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %28, i32 0, i32 3
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 1
  %30 = load i32, i32* %col_num, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = load i32*, i32** %weight.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %31, i64 %idxprom13
  %32 = load i32, i32* %arrayidx14, align 4
  store i32 %32, i32* %least_weight, align 4
  %33 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col15 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %33, i32 0, i32 3
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col15, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %34, i32 0, i32 4
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %35, %struct.sm_element_struct** %p, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.28, %cond.end
  %36 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp17 = icmp ne %struct.sm_element_struct* %36, null
  br i1 %cmp17, label %for.body.18, label %for.end.30

for.body.18:                                      ; preds = %for.cond.16
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 1
  %38 = load i32, i32* %col_num19, align 4
  %idxprom20 = sext i32 %38 to i64
  %39 = load i32*, i32** %weight.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %39, i64 %idxprom20
  %40 = load i32, i32* %arrayidx21, align 4
  %41 = load i32, i32* %least_weight, align 4
  %cmp22 = icmp slt i32 %40, %41
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %for.body.18
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %42, i32 0, i32 1
  %43 = load i32, i32* %col_num24, align 4
  %idxprom25 = sext i32 %43 to i64
  %44 = load i32*, i32** %weight.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %44, i64 %idxprom25
  %45 = load i32, i32* %arrayidx26, align 4
  store i32 %45, i32* %least_weight, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %for.body.18
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col29 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %46, i32 0, i32 4
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col29, align 8
  store %struct.sm_element_struct* %47, %struct.sm_element_struct** %p, align 8
  br label %for.cond.16

for.end.30:                                       ; preds = %for.cond.16
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.then.8
  %48 = load i32, i32* %least_weight, align 4
  %49 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %49, i32 0, i32 1
  %50 = load i32, i32* %cost, align 4
  %add = add nsw i32 %50, %48
  store i32 %add, i32* %cost, align 4
  %51 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %51, i32 0, i32 0
  %52 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %53 = load %struct.sm_row_struct*, %struct.sm_row_struct** %best_row, align 8
  %row_num32 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %53, i32 0, i32 0
  %54 = load i32, i32* %row_num32, align 4
  %call33 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %52, i32 %54)
  %55 = load %struct.sm_row_struct*, %struct.sm_row_struct** %best_row, align 8
  %call34 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %55)
  store %struct.sm_row_struct* %call34, %struct.sm_row_struct** %save, align 8
  %56 = load %struct.sm_row_struct*, %struct.sm_row_struct** %save, align 8
  %first_col35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %56, i32 0, i32 3
  %57 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col35, align 8
  store %struct.sm_element_struct* %57, %struct.sm_element_struct** %p, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.41, %if.end.31
  %58 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp37 = icmp ne %struct.sm_element_struct* %58, null
  br i1 %cmp37, label %for.body.38, label %for.end.43

for.body.38:                                      ; preds = %for.cond.36
  %59 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num39 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %60, i32 0, i32 1
  %61 = load i32, i32* %col_num39, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %59, i32 %61)
  %62 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %63 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num40 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %63, i32 0, i32 1
  %64 = load i32, i32* %col_num40, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %62, i32 %64)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.38
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col42 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 4
  %66 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col42, align 8
  store %struct.sm_element_struct* %66, %struct.sm_element_struct** %p, align 8
  br label %for.cond.36

for.end.43:                                       ; preds = %for.cond.36
  %67 = load %struct.sm_row_struct*, %struct.sm_row_struct** %save, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %67)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %68)
  %69 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  ret %struct.solution_struct* %69
}

declare %struct.solution_struct* @solution_alloc(...) #1

declare %struct.sm_element_struct* @sm_row_insert(...) #1

declare %struct.sm_row_struct* @sm_row_dup(...) #1

declare void @sm_delrow(...) #1

declare void @sm_delcol(...) #1

declare void @sm_row_free(...) #1

declare void @sm_free(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.sm_matrix_struct* @build_intersection_matrix(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %prow1 = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %p1 = alloca %struct.sm_element_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %B = alloca %struct.sm_matrix_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  %call = call %struct.sm_matrix_struct* (...) @sm_alloc()
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %B, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 4
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %1, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %entry
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp = icmp ne %struct.sm_row_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %3, i32 0, i32 3
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %4, %struct.sm_element_struct** %p, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.23, %for.body
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp2 = icmp ne %struct.sm_element_struct* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end.24

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %col_num, align 4
  %cmp4 = icmp sge i32 %7, 0
  br i1 %cmp4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body.3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %col_num5, align 4
  %10 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %10, i32 0, i32 3
  %11 = load i32, i32* %cols_size, align 4
  %cmp6 = icmp slt i32 %9, %11
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %col_num7, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %14, i32 0, i32 2
  %15 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %15, i64 %idxprom
  %16 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_col_struct* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct.sm_col_struct* %cond, %struct.sm_col_struct** %pcol, align 8
  %17 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row8 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %17, i32 0, i32 3
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row8, align 8
  store %struct.sm_element_struct* %18, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %cond.end
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %cmp10 = icmp ne %struct.sm_element_struct* %19, null
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 0
  %21 = load i32, i32* %row_num, align 4
  %cmp12 = icmp sge i32 %21, 0
  br i1 %cmp12, label %land.lhs.true.13, label %cond.false.20

land.lhs.true.13:                                 ; preds = %for.body.11
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %row_num14 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %row_num14, align 4
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 1
  %25 = load i32, i32* %rows_size, align 4
  %cmp15 = icmp slt i32 %23, %25
  br i1 %cmp15, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %land.lhs.true.13
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %row_num17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %row_num17, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %28, i32 0, i32 0
  %29 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx19 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %29, i64 %idxprom18
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx19, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %land.lhs.true.13, %for.body.11
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.16
  %cond22 = phi %struct.sm_row_struct* [ %30, %cond.true.16 ], [ null, %cond.false.20 ]
  store %struct.sm_row_struct* %cond22, %struct.sm_row_struct** %prow1, align 8
  %31 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %flag = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %31, i32 0, i32 2
  store i32 0, i32* %flag, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.21
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %32, i32 0, i32 2
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %33, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %34, i32 0, i32 4
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %35, %struct.sm_element_struct** %p, align 8
  br label %for.cond.1

for.end.24:                                       ; preds = %for.cond.1
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col25 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 3
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col25, align 8
  store %struct.sm_element_struct* %37, %struct.sm_element_struct** %p, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.69, %for.end.24
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp27 = icmp ne %struct.sm_element_struct* %38, null
  br i1 %cmp27, label %for.body.28, label %for.end.71

for.body.28:                                      ; preds = %for.cond.26
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num29 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %39, i32 0, i32 1
  %40 = load i32, i32* %col_num29, align 4
  %cmp30 = icmp sge i32 %40, 0
  br i1 %cmp30, label %land.lhs.true.31, label %cond.false.40

land.lhs.true.31:                                 ; preds = %for.body.28
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num32 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 1
  %42 = load i32, i32* %col_num32, align 4
  %43 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size33 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %43, i32 0, i32 3
  %44 = load i32, i32* %cols_size33, align 4
  %cmp34 = icmp slt i32 %42, %44
  br i1 %cmp34, label %cond.true.35, label %cond.false.40

cond.true.35:                                     ; preds = %land.lhs.true.31
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num36 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i32 0, i32 1
  %46 = load i32, i32* %col_num36, align 4
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %47, i32 0, i32 2
  %48 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols38, align 8
  %arrayidx39 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %48, i64 %idxprom37
  %49 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %land.lhs.true.31, %for.body.28
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.35
  %cond42 = phi %struct.sm_col_struct* [ %49, %cond.true.35 ], [ null, %cond.false.40 ]
  store %struct.sm_col_struct* %cond42, %struct.sm_col_struct** %pcol, align 8
  %50 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row43 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %50, i32 0, i32 3
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row43, align 8
  store %struct.sm_element_struct* %51, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.66, %cond.end.41
  %52 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %cmp45 = icmp ne %struct.sm_element_struct* %52, null
  br i1 %cmp45, label %for.body.46, label %for.end.68

for.body.46:                                      ; preds = %for.cond.44
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %row_num47 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %53, i32 0, i32 0
  %54 = load i32, i32* %row_num47, align 4
  %cmp48 = icmp sge i32 %54, 0
  br i1 %cmp48, label %land.lhs.true.49, label %cond.false.58

land.lhs.true.49:                                 ; preds = %for.body.46
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %row_num50 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %55, i32 0, i32 0
  %56 = load i32, i32* %row_num50, align 4
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size51 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %57, i32 0, i32 1
  %58 = load i32, i32* %rows_size51, align 4
  %cmp52 = icmp slt i32 %56, %58
  br i1 %cmp52, label %cond.true.53, label %cond.false.58

cond.true.53:                                     ; preds = %land.lhs.true.49
  %59 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %row_num54 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %59, i32 0, i32 0
  %60 = load i32, i32* %row_num54, align 4
  %idxprom55 = sext i32 %60 to i64
  %61 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows56 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %61, i32 0, i32 0
  %62 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows56, align 8
  %arrayidx57 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %62, i64 %idxprom55
  %63 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx57, align 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %land.lhs.true.49, %for.body.46
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.53
  %cond60 = phi %struct.sm_row_struct* [ %63, %cond.true.53 ], [ null, %cond.false.58 ]
  store %struct.sm_row_struct* %cond60, %struct.sm_row_struct** %prow1, align 8
  %64 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %flag61 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %64, i32 0, i32 2
  %65 = load i32, i32* %flag61, align 4
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.59
  %66 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %flag62 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %66, i32 0, i32 2
  store i32 1, i32* %flag62, align 4
  %67 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %68 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num63 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %68, i32 0, i32 0
  %69 = load i32, i32* %row_num63, align 4
  %70 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %row_num64 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %70, i32 0, i32 0
  %71 = load i32, i32* %row_num64, align 4
  %call65 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* %67, i32 %69, i32 %71)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.59
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end
  %72 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %next_row67 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %72, i32 0, i32 2
  %73 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row67, align 8
  store %struct.sm_element_struct* %73, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.44

for.end.68:                                       ; preds = %for.cond.44
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %74 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col70 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %74, i32 0, i32 4
  %75 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col70, align 8
  store %struct.sm_element_struct* %75, %struct.sm_element_struct** %p, align 8
  br label %for.cond.26

for.end.71:                                       ; preds = %for.cond.26
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %76 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row73 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %76, i32 0, i32 5
  %77 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row73, align 8
  store %struct.sm_row_struct* %77, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  %78 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  ret %struct.sm_matrix_struct* %78
}

declare %struct.sm_matrix_struct* @sm_alloc(...) #1

declare %struct.sm_element_struct* @sm_insert(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
