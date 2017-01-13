; ModuleID = './MultiSource.Benchmarks.MallocBench/26.espresso.dominate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: nounwind uwtable
define i32 @sm_row_dominance(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %prow1 = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %least_col = alloca %struct.sm_col_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %pnext = alloca %struct.sm_element_struct*, align 8
  %rowcnt = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 6
  %1 = load i32, i32* %nrows, align 4
  store i32 %1, i32* %rowcnt, align 4
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 4
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %3, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp = icmp ne %struct.sm_row_struct* %4, null
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %5, i32 0, i32 3
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %col_num, align 4
  %cmp1 = icmp sge i32 %7, 0
  br i1 %cmp1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col2 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %8, i32 0, i32 3
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col2, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %col_num3, align 4
  %11 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %11, i32 0, i32 3
  %12 = load i32, i32* %cols_size, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col5 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %13, i32 0, i32 3
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col5, align 8
  %col_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %col_num6, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 2
  %17 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %17, i64 %idxprom
  %18 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_col_struct* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct.sm_col_struct* %cond, %struct.sm_col_struct** %least_col, align 8
  %19 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col7 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %19, i32 0, i32 3
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col7, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 4
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %21, %struct.sm_element_struct** %p, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %cond.end
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp9 = icmp ne %struct.sm_element_struct* %22, null
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %col_num11, align 4
  %cmp12 = icmp sge i32 %24, 0
  br i1 %cmp12, label %land.lhs.true.13, label %cond.false.22

land.lhs.true.13:                                 ; preds = %for.body.10
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num14 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %25, i32 0, i32 1
  %26 = load i32, i32* %col_num14, align 4
  %27 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size15 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %27, i32 0, i32 3
  %28 = load i32, i32* %cols_size15, align 4
  %cmp16 = icmp slt i32 %26, %28
  br i1 %cmp16, label %cond.true.17, label %cond.false.22

cond.true.17:                                     ; preds = %land.lhs.true.13
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 1
  %30 = load i32, i32* %col_num18, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols20 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %31, i32 0, i32 2
  %32 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols20, align 8
  %arrayidx21 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %32, i64 %idxprom19
  %33 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %land.lhs.true.13, %for.body.10
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.17
  %cond24 = phi %struct.sm_col_struct* [ %33, %cond.true.17 ], [ null, %cond.false.22 ]
  store %struct.sm_col_struct* %cond24, %struct.sm_col_struct** %pcol, align 8
  %34 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %34, i32 0, i32 1
  %35 = load i32, i32* %length, align 4
  %36 = load %struct.sm_col_struct*, %struct.sm_col_struct** %least_col, align 8
  %length25 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %36, i32 0, i32 1
  %37 = load i32, i32* %length25, align 4
  %cmp26 = icmp slt i32 %35, %37
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.23
  %38 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  store %struct.sm_col_struct* %38, %struct.sm_col_struct** %least_col, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %39, i32 0, i32 4
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col27, align 8
  store %struct.sm_element_struct* %40, %struct.sm_element_struct** %p, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %41 = load %struct.sm_col_struct*, %struct.sm_col_struct** %least_col, align 8
  %first_row28 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %41, i32 0, i32 3
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row28, align 8
  store %struct.sm_element_struct* %42, %struct.sm_element_struct** %p, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.58, %for.end
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp30 = icmp ne %struct.sm_element_struct* %43, null
  br i1 %cmp30, label %for.body.31, label %for.end.59

for.body.31:                                      ; preds = %for.cond.29
  %44 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %44, i32 0, i32 2
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %45, %struct.sm_element_struct** %pnext, align 8
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %46, i32 0, i32 0
  %47 = load i32, i32* %row_num, align 4
  %cmp32 = icmp sge i32 %47, 0
  br i1 %cmp32, label %land.lhs.true.33, label %cond.false.40

land.lhs.true.33:                                 ; preds = %for.body.31
  %48 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %48, i32 0, i32 0
  %49 = load i32, i32* %row_num34, align 4
  %50 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %50, i32 0, i32 1
  %51 = load i32, i32* %rows_size, align 4
  %cmp35 = icmp slt i32 %49, %51
  br i1 %cmp35, label %cond.true.36, label %cond.false.40

cond.true.36:                                     ; preds = %land.lhs.true.33
  %52 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num37 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %52, i32 0, i32 0
  %53 = load i32, i32* %row_num37, align 4
  %idxprom38 = sext i32 %53 to i64
  %54 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %54, i32 0, i32 0
  %55 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx39 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %55, i64 %idxprom38
  %56 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %land.lhs.true.33, %for.body.31
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.36
  %cond42 = phi %struct.sm_row_struct* [ %56, %cond.true.36 ], [ null, %cond.false.40 ]
  store %struct.sm_row_struct* %cond42, %struct.sm_row_struct** %prow1, align 8
  %57 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %length43 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %57, i32 0, i32 1
  %58 = load i32, i32* %length43, align 4
  %59 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length44 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %59, i32 0, i32 1
  %60 = load i32, i32* %length44, align 4
  %cmp45 = icmp sgt i32 %58, %60
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.41
  %61 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %length46 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %61, i32 0, i32 1
  %62 = load i32, i32* %length46, align 4
  %63 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length47 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %63, i32 0, i32 1
  %64 = load i32, i32* %length47, align 4
  %cmp48 = icmp eq i32 %62, %64
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.57

land.lhs.true.49:                                 ; preds = %lor.lhs.false
  %65 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %row_num50 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %65, i32 0, i32 0
  %66 = load i32, i32* %row_num50, align 4
  %67 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num51 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %67, i32 0, i32 0
  %68 = load i32, i32* %row_num51, align 4
  %cmp52 = icmp sgt i32 %66, %68
  br i1 %cmp52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %land.lhs.true.49, %cond.end.41
  %69 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %70 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %call = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_contains to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %69, %struct.sm_row_struct* %70)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.53
  %71 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %72 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow1, align 8
  %row_num55 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %72, i32 0, i32 0
  %73 = load i32, i32* %row_num55, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %71, i32 %73)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.49, %lor.lhs.false
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %74 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pnext, align 8
  store %struct.sm_element_struct* %74, %struct.sm_element_struct** %p, align 8
  br label %for.cond.29

for.end.59:                                       ; preds = %for.cond.29
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %75 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row61 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %75, i32 0, i32 5
  %76 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row61, align 8
  store %struct.sm_row_struct* %76, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  %77 = load i32, i32* %rowcnt, align 4
  %78 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows63 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %78, i32 0, i32 6
  %79 = load i32, i32* %nrows63, align 4
  %sub = sub nsw i32 %77, %79
  ret i32 %sub
}

declare i32 @sm_row_contains(...) #1

declare void @sm_delrow(...) #1

; Function Attrs: nounwind uwtable
define i32 @sm_col_dominance(%struct.sm_matrix_struct* %A, i32* %weight) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %pcol1 = alloca %struct.sm_col_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %least_row = alloca %struct.sm_row_struct*, align 8
  %next_col = alloca %struct.sm_col_struct*, align 8
  %colcnt = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 9
  %1 = load i32, i32* %ncols, align 4
  store i32 %1, i32* %colcnt, align 4
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 7
  %3 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col, align 8
  store %struct.sm_col_struct* %3, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %4 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp = icmp ne %struct.sm_col_struct* %4, null
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col1 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %5, i32 0, i32 5
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col1, align 8
  store %struct.sm_col_struct* %6, %struct.sm_col_struct** %next_col, align 8
  %7 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %7, i32 0, i32 3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i32 0, i32 0
  %9 = load i32, i32* %row_num, align 4
  %cmp2 = icmp sge i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row3 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %10, i32 0, i32 3
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row3, align 8
  %row_num4 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 0
  %12 = load i32, i32* %row_num4, align 4
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %rows_size, align 4
  %cmp5 = icmp slt i32 %12, %14
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %15 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row6 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %15, i32 0, i32 3
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row6, align 8
  %row_num7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %row_num7, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 0
  %19 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %19, i64 %idxprom
  %20 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %least_row, align 8
  %21 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row8 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %21, i32 0, i32 3
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row8, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 2
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %23, %struct.sm_element_struct** %p, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %cond.end
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp10 = icmp ne %struct.sm_element_struct* %24, null
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %25, i32 0, i32 0
  %26 = load i32, i32* %row_num12, align 4
  %cmp13 = icmp sge i32 %26, 0
  br i1 %cmp13, label %land.lhs.true.14, label %cond.false.23

land.lhs.true.14:                                 ; preds = %for.body.11
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %27, i32 0, i32 0
  %28 = load i32, i32* %row_num15, align 4
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size16 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %29, i32 0, i32 1
  %30 = load i32, i32* %rows_size16, align 4
  %cmp17 = icmp slt i32 %28, %30
  br i1 %cmp17, label %cond.true.18, label %cond.false.23

cond.true.18:                                     ; preds = %land.lhs.true.14
  %31 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %31, i32 0, i32 0
  %32 = load i32, i32* %row_num19, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows21 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %33, i32 0, i32 0
  %34 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows21, align 8
  %arrayidx22 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %34, i64 %idxprom20
  %35 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx22, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %land.lhs.true.14, %for.body.11
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.18
  %cond25 = phi %struct.sm_row_struct* [ %35, %cond.true.18 ], [ null, %cond.false.23 ]
  store %struct.sm_row_struct* %cond25, %struct.sm_row_struct** %prow, align 8
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 1
  %37 = load i32, i32* %length, align 4
  %38 = load %struct.sm_row_struct*, %struct.sm_row_struct** %least_row, align 8
  %length26 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %38, i32 0, i32 1
  %39 = load i32, i32* %length26, align 4
  %cmp27 = icmp slt i32 %37, %39
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.24
  %40 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  store %struct.sm_row_struct* %40, %struct.sm_row_struct** %least_row, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row28 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 2
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row28, align 8
  store %struct.sm_element_struct* %42, %struct.sm_element_struct** %p, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %43 = load %struct.sm_row_struct*, %struct.sm_row_struct** %least_row, align 8
  %first_col29 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %43, i32 0, i32 3
  %44 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col29, align 8
  store %struct.sm_element_struct* %44, %struct.sm_element_struct** %p, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.70, %for.end
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp31 = icmp ne %struct.sm_element_struct* %45, null
  br i1 %cmp31, label %for.body.32, label %for.end.72

for.body.32:                                      ; preds = %for.cond.30
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %46, i32 0, i32 1
  %47 = load i32, i32* %col_num, align 4
  %cmp33 = icmp sge i32 %47, 0
  br i1 %cmp33, label %land.lhs.true.34, label %cond.false.41

land.lhs.true.34:                                 ; preds = %for.body.32
  %48 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num35 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %48, i32 0, i32 1
  %49 = load i32, i32* %col_num35, align 4
  %50 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %50, i32 0, i32 3
  %51 = load i32, i32* %cols_size, align 4
  %cmp36 = icmp slt i32 %49, %51
  br i1 %cmp36, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %land.lhs.true.34
  %52 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %col_num38, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %54, i32 0, i32 2
  %55 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx40 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %55, i64 %idxprom39
  %56 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx40, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %land.lhs.true.34, %for.body.32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.37
  %cond43 = phi %struct.sm_col_struct* [ %56, %cond.true.37 ], [ null, %cond.false.41 ]
  store %struct.sm_col_struct* %cond43, %struct.sm_col_struct** %pcol1, align 8
  %57 = load i32*, i32** %weight.addr, align 8
  %cmp44 = icmp ne i32* %57, null
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.54

land.lhs.true.45:                                 ; preds = %cond.end.42
  %58 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol1, align 8
  %col_num46 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %58, i32 0, i32 0
  %59 = load i32, i32* %col_num46, align 4
  %idxprom47 = sext i32 %59 to i64
  %60 = load i32*, i32** %weight.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %60, i64 %idxprom47
  %61 = load i32, i32* %arrayidx48, align 4
  %62 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num49 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %62, i32 0, i32 0
  %63 = load i32, i32* %col_num49, align 4
  %idxprom50 = sext i32 %63 to i64
  %64 = load i32*, i32** %weight.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %64, i64 %idxprom50
  %65 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp sgt i32 %61, %65
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true.45
  br label %for.inc.70

if.end.54:                                        ; preds = %land.lhs.true.45, %cond.end.42
  %66 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol1, align 8
  %length55 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %66, i32 0, i32 1
  %67 = load i32, i32* %length55, align 4
  %68 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length56 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %68, i32 0, i32 1
  %69 = load i32, i32* %length56, align 4
  %cmp57 = icmp sgt i32 %67, %69
  br i1 %cmp57, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %70 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol1, align 8
  %length58 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %70, i32 0, i32 1
  %71 = load i32, i32* %length58, align 4
  %72 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length59 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %length59, align 4
  %cmp60 = icmp eq i32 %71, %73
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.69

land.lhs.true.61:                                 ; preds = %lor.lhs.false
  %74 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol1, align 8
  %col_num62 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %74, i32 0, i32 0
  %75 = load i32, i32* %col_num62, align 4
  %76 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num63 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %76, i32 0, i32 0
  %77 = load i32, i32* %col_num63, align 4
  %cmp64 = icmp sgt i32 %75, %77
  br i1 %cmp64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %land.lhs.true.61, %if.end.54
  %78 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %79 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol1, align 8
  %call = call i32 (%struct.sm_col_struct*, %struct.sm_col_struct*, ...) bitcast (i32 (...)* @sm_col_contains to i32 (%struct.sm_col_struct*, %struct.sm_col_struct*, ...)*)(%struct.sm_col_struct* %78, %struct.sm_col_struct* %79)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.65
  %80 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %81 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num67 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %81, i32 0, i32 0
  %82 = load i32, i32* %col_num67, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %80, i32 %82)
  br label %for.end.72

if.end.68:                                        ; preds = %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true.61, %lor.lhs.false
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69, %if.then.53
  %83 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col71 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %83, i32 0, i32 4
  %84 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col71, align 8
  store %struct.sm_element_struct* %84, %struct.sm_element_struct** %p, align 8
  br label %for.cond.30

for.end.72:                                       ; preds = %if.then.66, %for.cond.30
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72
  %85 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  store %struct.sm_col_struct* %85, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  %86 = load i32, i32* %colcnt, align 4
  %87 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols75 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %87, i32 0, i32 9
  %88 = load i32, i32* %ncols75, align 4
  %sub = sub nsw i32 %86, %88
  ret i32 %sub
}

declare i32 @sm_col_contains(...) #1

declare void @sm_delcol(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
