; ModuleID = './MultiSource.Benchmarks.MallocBench/22.espresso.solution.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: nounwind uwtable
define %struct.solution_struct* @solution_alloc() #0 {
entry:
  %sol = alloca %struct.solution_struct*, align 8
  %call = call i8* @malloc(i64 16)
  %0 = bitcast i8* %call to %struct.solution_struct*
  store %struct.solution_struct* %0, %struct.solution_struct** %sol, align 8
  %1 = load %struct.solution_struct*, %struct.solution_struct** %sol, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i32 0, i32 1
  store i32 0, i32* %cost, align 4
  %call1 = call %struct.sm_row_struct* (...) @sm_row_alloc()
  %2 = load %struct.solution_struct*, %struct.solution_struct** %sol, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %2, i32 0, i32 0
  store %struct.sm_row_struct* %call1, %struct.sm_row_struct** %row, align 8
  %3 = load %struct.solution_struct*, %struct.solution_struct** %sol, align 8
  ret %struct.solution_struct* %3
}

declare i8* @malloc(i64) #1

declare %struct.sm_row_struct* @sm_row_alloc(...) #1

; Function Attrs: nounwind uwtable
define void @solution_free(%struct.solution_struct* %sol) #0 {
entry:
  %sol.addr = alloca %struct.solution_struct*, align 8
  store %struct.solution_struct* %sol, %struct.solution_struct** %sol.addr, align 8
  %0 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i32 0, i32 0
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %1)
  %2 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %tobool = icmp ne %struct.solution_struct* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %4 = bitcast %struct.solution_struct* %3 to i8*
  call void @free(i8* %4)
  store %struct.solution_struct* null, %struct.solution_struct** %sol.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @sm_row_free(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.solution_struct* @solution_dup(%struct.solution_struct* %sol) #0 {
entry:
  %sol.addr = alloca %struct.solution_struct*, align 8
  %new_sol = alloca %struct.solution_struct*, align 8
  store %struct.solution_struct* %sol, %struct.solution_struct** %sol.addr, align 8
  %call = call i8* @malloc(i64 16)
  %0 = bitcast i8* %call to %struct.solution_struct*
  store %struct.solution_struct* %0, %struct.solution_struct** %new_sol, align 8
  %1 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %cost, align 4
  %3 = load %struct.solution_struct*, %struct.solution_struct** %new_sol, align 8
  %cost1 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %3, i32 0, i32 1
  store i32 %2, i32* %cost1, align 4
  %4 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %4, i32 0, i32 0
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %call2 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %5)
  %6 = load %struct.solution_struct*, %struct.solution_struct** %new_sol, align 8
  %row3 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %6, i32 0, i32 0
  store %struct.sm_row_struct* %call2, %struct.sm_row_struct** %row3, align 8
  %7 = load %struct.solution_struct*, %struct.solution_struct** %new_sol, align 8
  ret %struct.solution_struct* %7
}

declare %struct.sm_row_struct* @sm_row_dup(...) #1

; Function Attrs: nounwind uwtable
define void @solution_add(%struct.solution_struct* %sol, i32* %weight, i32 %col) #0 {
entry:
  %sol.addr = alloca %struct.solution_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %col.addr = alloca i32, align 4
  store %struct.solution_struct* %sol, %struct.solution_struct** %sol.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i32 0, i32 0
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %2 = load i32, i32* %col.addr, align 4
  %call = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %1, i32 %2)
  %3 = load i32*, i32** %weight.addr, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %col.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %weight.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %6, %cond.false ]
  %7 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %cost, align 4
  %add = add nsw i32 %8, %cond
  store i32 %add, i32* %cost, align 4
  ret void
}

declare %struct.sm_element_struct* @sm_row_insert(...) #1

; Function Attrs: nounwind uwtable
define void @solution_accept(%struct.solution_struct* %sol, %struct.sm_matrix_struct* %A, i32* %weight, i32 %col) #0 {
entry:
  %sol.addr = alloca %struct.solution_struct*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %col.addr = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  %pnext = alloca %struct.sm_element_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  store %struct.solution_struct* %sol, %struct.solution_struct** %sol.addr, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.solution_struct*, %struct.solution_struct** %sol.addr, align 8
  %1 = load i32*, i32** %weight.addr, align 8
  %2 = load i32, i32* %col.addr, align 4
  call void @solution_add(%struct.solution_struct* %0, i32* %1, i32 %2)
  %3 = load i32, i32* %col.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %col.addr, align 4
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 3
  %6 = load i32, i32* %cols_size, align 4
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %col.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %8, i32 0, i32 2
  %9 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %9, i64 %idxprom
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_col_struct* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct.sm_col_struct* %cond, %struct.sm_col_struct** %pcol, align 8
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %11, i32 0, i32 3
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp2 = icmp ne %struct.sm_element_struct* %13, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 2
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %15, %struct.sm_element_struct** %pnext, align 8
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %row_num, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %16, i32 %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pnext, align 8
  store %struct.sm_element_struct* %19, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @sm_delrow(...) #1

; Function Attrs: nounwind uwtable
define void @solution_reject(%struct.solution_struct* %sol, %struct.sm_matrix_struct* %A, i32* %weight, i32 %col) #0 {
entry:
  %sol.addr = alloca %struct.solution_struct*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %col.addr = alloca i32, align 4
  store %struct.solution_struct* %sol, %struct.solution_struct** %sol.addr, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %1 = load i32, i32* %col.addr, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* %0, i32 %1)
  ret void
}

declare void @sm_delcol(...) #1

; Function Attrs: nounwind uwtable
define %struct.solution_struct* @solution_choose_best(%struct.solution_struct* %best1, %struct.solution_struct* %best2) #0 {
entry:
  %retval = alloca %struct.solution_struct*, align 8
  %best1.addr = alloca %struct.solution_struct*, align 8
  %best2.addr = alloca %struct.solution_struct*, align 8
  store %struct.solution_struct* %best1, %struct.solution_struct** %best1.addr, align 8
  store %struct.solution_struct* %best2, %struct.solution_struct** %best2.addr, align 8
  %0 = load %struct.solution_struct*, %struct.solution_struct** %best1.addr, align 8
  %cmp = icmp ne %struct.solution_struct* %0, null
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %1 = load %struct.solution_struct*, %struct.solution_struct** %best2.addr, align 8
  %cmp1 = icmp ne %struct.solution_struct* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.solution_struct*, %struct.solution_struct** %best1.addr, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %cost, align 4
  %4 = load %struct.solution_struct*, %struct.solution_struct** %best2.addr, align 8
  %cost3 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %cost3, align 4
  %cmp4 = icmp sle i32 %3, %5
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %6 = load %struct.solution_struct*, %struct.solution_struct** %best2.addr, align 8
  call void @solution_free(%struct.solution_struct* %6)
  %7 = load %struct.solution_struct*, %struct.solution_struct** %best1.addr, align 8
  store %struct.solution_struct* %7, %struct.solution_struct** %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %8 = load %struct.solution_struct*, %struct.solution_struct** %best1.addr, align 8
  call void @solution_free(%struct.solution_struct* %8)
  %9 = load %struct.solution_struct*, %struct.solution_struct** %best2.addr, align 8
  store %struct.solution_struct* %9, %struct.solution_struct** %retval
  br label %return

if.else.6:                                        ; preds = %if.then
  %10 = load %struct.solution_struct*, %struct.solution_struct** %best1.addr, align 8
  store %struct.solution_struct* %10, %struct.solution_struct** %retval
  br label %return

if.else.7:                                        ; preds = %entry
  %11 = load %struct.solution_struct*, %struct.solution_struct** %best2.addr, align 8
  %cmp8 = icmp ne %struct.solution_struct* %11, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  %12 = load %struct.solution_struct*, %struct.solution_struct** %best2.addr, align 8
  store %struct.solution_struct* %12, %struct.solution_struct** %retval
  br label %return

if.else.10:                                       ; preds = %if.else.7
  store %struct.solution_struct* null, %struct.solution_struct** %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.9, %if.else.6, %if.else, %if.then.5
  %13 = load %struct.solution_struct*, %struct.solution_struct** %retval
  ret %struct.solution_struct* %13
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
