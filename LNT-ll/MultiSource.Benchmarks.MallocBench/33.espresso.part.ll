; ModuleID = './MultiSource.Benchmarks.MallocBench/33.espresso.part.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: nounwind uwtable
define i32 @visit_col(%struct.sm_matrix_struct* %A, %struct.sm_col_struct* %pcol, i32* %rows_visited, i32* %cols_visited) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %pcol.addr = alloca %struct.sm_col_struct*, align 8
  %rows_visited.addr = alloca i32*, align 8
  %cols_visited.addr = alloca i32*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.sm_col_struct* %pcol, %struct.sm_col_struct** %pcol.addr, align 8
  store i32* %rows_visited, i32** %rows_visited.addr, align 8
  store i32* %cols_visited, i32** %cols_visited.addr, align 8
  %0 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol.addr, align 8
  %flag = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol.addr, align 8
  %flag1 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %2, i32 0, i32 2
  store i32 1, i32* %flag1, align 4
  %3 = load i32*, i32** %cols_visited.addr, align 8
  %4 = load i32, i32* %3, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %3, align 4
  %5 = load i32*, i32** %cols_visited.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %7, i32 0, i32 9
  %8 = load i32, i32* %ncols, align 4
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %9, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp3 = icmp ne %struct.sm_element_struct* %11, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %row_num, align 4
  %cmp4 = icmp sge i32 %13, 0
  br i1 %cmp4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %row_num5, align 4
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %rows_size, align 4
  %cmp6 = icmp slt i32 %15, %17
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i32 0, i32 0
  %19 = load i32, i32* %row_num7, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %20, i32 0, i32 0
  %21 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %21, i64 %idxprom
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %prow, align 8
  %23 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %flag8 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %23, i32 0, i32 2
  %24 = load i32, i32* %flag8, align 4
  %tobool9 = icmp ne i32 %24, 0
  br i1 %tobool9, label %if.end.14, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  %25 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %26 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %27 = load i32*, i32** %rows_visited.addr, align 8
  %28 = load i32*, i32** %cols_visited.addr, align 8
  %call = call i32 @visit_row(%struct.sm_matrix_struct* %25, %struct.sm_row_struct* %26, i32* %27, i32* %28)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 2
  %30 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %30, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.then.2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @visit_row(%struct.sm_matrix_struct* %A, %struct.sm_row_struct* %prow, i32* %rows_visited, i32* %cols_visited) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %rows_visited.addr = alloca i32*, align 8
  %cols_visited.addr = alloca i32*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  store i32* %rows_visited, i32** %rows_visited.addr, align 8
  store i32* %cols_visited, i32** %cols_visited.addr, align 8
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %flag = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %flag1 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 2
  store i32 1, i32* %flag1, align 4
  %3 = load i32*, i32** %rows_visited.addr, align 8
  %4 = load i32, i32* %3, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %3, align 4
  %5 = load i32*, i32** %rows_visited.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %7, i32 0, i32 6
  %8 = load i32, i32* %nrows, align 4
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %9, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp3 = icmp ne %struct.sm_element_struct* %11, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %col_num, align 4
  %cmp4 = icmp sge i32 %13, 0
  br i1 %cmp4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %col_num5, align 4
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 3
  %17 = load i32, i32* %cols_size, align 4
  %cmp6 = icmp slt i32 %15, %17
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %col_num7, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %20, i32 0, i32 2
  %21 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %21, i64 %idxprom
  %22 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_col_struct* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct.sm_col_struct* %cond, %struct.sm_col_struct** %pcol, align 8
  %23 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %flag8 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %23, i32 0, i32 2
  %24 = load i32, i32* %flag8, align 4
  %tobool9 = icmp ne i32 %24, 0
  br i1 %tobool9, label %if.end.14, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  %25 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %26 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %27 = load i32*, i32** %rows_visited.addr, align 8
  %28 = load i32*, i32** %cols_visited.addr, align 8
  %call = call i32 @visit_col(%struct.sm_matrix_struct* %25, %struct.sm_col_struct* %26, i32* %27, i32* %28)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 4
  %30 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %30, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.then.2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @sm_block_partition(%struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %L, %struct.sm_matrix_struct** %R) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %L.addr = alloca %struct.sm_matrix_struct**, align 8
  %R.addr = alloca %struct.sm_matrix_struct**, align 8
  %cols_visited = alloca i32, align 4
  %rows_visited = alloca i32, align 4
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.sm_matrix_struct** %L, %struct.sm_matrix_struct*** %L.addr, align 8
  store %struct.sm_matrix_struct** %R, %struct.sm_matrix_struct*** %R.addr, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 6
  %1 = load i32, i32* %nrows, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 4
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %3, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp1 = icmp ne %struct.sm_row_struct* %4, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %flag = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %5, i32 0, i32 2
  store i32 0, i32* %flag, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %6, i32 0, i32 5
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %7, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %8, i32 0, i32 7
  %9 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col, align 8
  store %struct.sm_col_struct* %9, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.6, %for.end
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp3 = icmp ne %struct.sm_col_struct* %10, null
  br i1 %cmp3, label %for.body.4, label %for.end.7

for.body.4:                                       ; preds = %for.cond.2
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %flag5 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %11, i32 0, i32 2
  store i32 0, i32* %flag5, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.4
  %12 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %12, i32 0, i32 5
  %13 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  store %struct.sm_col_struct* %13, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.2

for.end.7:                                        ; preds = %for.cond.2
  store i32 0, i32* %rows_visited, align 4
  store i32 0, i32* %cols_visited, align 4
  %14 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %15 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row8 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %15, i32 0, i32 4
  %16 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row8, align 8
  %call = call i32 @visit_row(%struct.sm_matrix_struct* %14, %struct.sm_row_struct* %16, i32* %rows_visited, i32* %cols_visited)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.end.7
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end.7
  %call10 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  %17 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %L.addr, align 8
  store %struct.sm_matrix_struct* %call10, %struct.sm_matrix_struct** %17, align 8
  %call11 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  %18 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %R.addr, align 8
  store %struct.sm_matrix_struct* %call11, %struct.sm_matrix_struct** %18, align 8
  %19 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row12 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %19, i32 0, i32 4
  %20 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row12, align 8
  store %struct.sm_row_struct* %20, %struct.sm_row_struct** %prow, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %if.else
  %21 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp14 = icmp ne %struct.sm_row_struct* %21, null
  br i1 %cmp14, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.13
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %flag16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %22, i32 0, i32 2
  %23 = load i32, i32* %flag16, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %for.body.15
  %24 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %L.addr, align 8
  %25 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %24, align 8
  %26 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  call void @copy_row(%struct.sm_matrix_struct* %25, %struct.sm_row_struct* %26)
  br label %if.end.20

if.else.19:                                       ; preds = %for.body.15
  %27 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %R.addr, align 8
  %28 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %27, align 8
  %29 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  call void @copy_row(%struct.sm_matrix_struct* %28, %struct.sm_row_struct* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row22 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %30, i32 0, i32 5
  %31 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row22, align 8
  store %struct.sm_row_struct* %31, %struct.sm_row_struct** %prow, align 8
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.23, %if.then.9, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare %struct.sm_matrix_struct* @sm_alloc(...) #1

; Function Attrs: nounwind uwtable
define internal void @copy_row(%struct.sm_matrix_struct* %A, %struct.sm_row_struct* %prow) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp = icmp ne %struct.sm_element_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %row_num, align 4
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %col_num, align 4
  %call = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* %3, i32 %5, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i32 0, i32 4
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %9, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.sm_element_struct* @sm_insert(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
