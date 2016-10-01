; ModuleID = './MultiSource.Benchmarks.MallocBench/14.espresso.matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%3d:\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"%s %d rows by %d cols\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.sm_matrix_struct* @sm_alloc() #0 {
entry:
  %A = alloca %struct.sm_matrix_struct*, align 8
  %call = call i8* @malloc(i64 88)
  %0 = bitcast i8* %call to %struct.sm_matrix_struct*
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %A, align 8
  %1 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %1, i32 0, i32 0
  store %struct.sm_row_struct** null, %struct.sm_row_struct*** %rows, align 8
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 2
  store %struct.sm_col_struct** null, %struct.sm_col_struct*** %cols, align 8
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %3, i32 0, i32 9
  store i32 0, i32* %ncols, align 4
  %4 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %4, i32 0, i32 6
  store i32 0, i32* %nrows, align 4
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 3
  store i32 0, i32* %cols_size, align 4
  %6 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %6, i32 0, i32 1
  store i32 0, i32* %rows_size, align 4
  %7 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %last_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %7, i32 0, i32 5
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %last_row, align 8
  %8 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %8, i32 0, i32 4
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %first_row, align 8
  %9 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %last_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %9, i32 0, i32 8
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %last_col, align 8
  %10 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %10, i32 0, i32 7
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %first_col, align 8
  %11 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %user_word = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %11, i32 0, i32 10
  store i8* null, i8** %user_word, align 8
  %12 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  ret %struct.sm_matrix_struct* %12
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.sm_matrix_struct* @sm_alloc_size(i32 %row, i32 %col) #0 {
entry:
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %A = alloca %struct.sm_matrix_struct*, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %call = call %struct.sm_matrix_struct* @sm_alloc()
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %A, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  %1 = load i32, i32* %row.addr, align 4
  %2 = load i32, i32* %col.addr, align 4
  call void @sm_resize(%struct.sm_matrix_struct* %0, i32 %1, i32 %2)
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A, align 8
  ret %struct.sm_matrix_struct* %3
}

; Function Attrs: nounwind uwtable
define void @sm_free(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %pnext_row = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %pnext_col = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
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
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %3, i32 0, i32 5
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %4, %struct.sm_row_struct** %pnext_row, align 8
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %pnext_row, align 8
  store %struct.sm_row_struct* %6, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %7, i32 0, i32 7
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col, align 8
  store %struct.sm_col_struct* %8, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.5, %for.end
  %9 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp2 = icmp ne %struct.sm_col_struct* %9, null
  br i1 %cmp2, label %for.body.3, label %for.end.6

for.body.3:                                       ; preds = %for.cond.1
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %10, i32 0, i32 5
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  store %struct.sm_col_struct* %11, %struct.sm_col_struct** %pnext_col, align 8
  %12 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %12, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %last_row, align 8
  %13 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row4 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %13, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %first_row4, align 8
  %14 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  call void (%struct.sm_col_struct*, ...) bitcast (void (...)* @sm_col_free to void (%struct.sm_col_struct*, ...)*)(%struct.sm_col_struct* %14)
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.body.3
  %15 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pnext_col, align 8
  store %struct.sm_col_struct* %15, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.1

for.end.6:                                        ; preds = %for.cond.1
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 0
  %17 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %tobool = icmp ne %struct.sm_row_struct** %17, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.6
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows7 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 0
  %19 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows7, align 8
  %20 = bitcast %struct.sm_row_struct** %19 to i8*
  call void @free(i8* %20)
  %21 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows8 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %21, i32 0, i32 0
  store %struct.sm_row_struct** null, %struct.sm_row_struct*** %rows8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.6
  %22 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %22, i32 0, i32 2
  %23 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %tobool9 = icmp ne %struct.sm_col_struct** %23, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 2
  %25 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols11, align 8
  %26 = bitcast %struct.sm_col_struct** %25 to i8*
  call void @free(i8* %26)
  %27 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols12 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %27, i32 0, i32 2
  store %struct.sm_col_struct** null, %struct.sm_col_struct*** %cols12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  %28 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %tobool14 = icmp ne %struct.sm_matrix_struct* %28, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %30 = bitcast %struct.sm_matrix_struct* %29 to i8*
  call void @free(i8* %30)
  store %struct.sm_matrix_struct* null, %struct.sm_matrix_struct** %A.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  ret void
}

declare void @sm_row_free(...) #1

declare void @sm_col_free(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sm_matrix_struct* @sm_dup(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %B = alloca %struct.sm_matrix_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  %call = call %struct.sm_matrix_struct* @sm_alloc()
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %B, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 5
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row, align 8
  %cmp = icmp ne %struct.sm_row_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row1 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %3, i32 0, i32 5
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row1, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %row_num, align 4
  %6 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %6, i32 0, i32 8
  %7 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col, align 8
  %col_num = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %col_num, align 4
  call void @sm_resize(%struct.sm_matrix_struct* %2, i32 %5, i32 %8)
  %9 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %9, i32 0, i32 4
  %10 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %10, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %if.then
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp2 = icmp ne %struct.sm_row_struct* %11, null
  br i1 %cmp2, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %12, i32 0, i32 3
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %p, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp4 = icmp ne %struct.sm_element_struct* %14, null
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %15 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %row_num6, align 4
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %col_num7, align 4
  %call8 = call %struct.sm_element_struct* @sm_insert(%struct.sm_matrix_struct* %15, i32 %17, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 4
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %21, %struct.sm_element_struct** %p, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %22, i32 0, i32 5
  %23 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %23, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.10, %entry
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %B, align 8
  ret %struct.sm_matrix_struct* %24
}

; Function Attrs: nounwind uwtable
define void @sm_resize(%struct.sm_matrix_struct* %A, i32 %row, i32 %col) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %new_size = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %1 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %rows_size, align 4
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size1 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %rows_size1, align 4
  %mul = mul nsw i32 %4, 2
  %5 = load i32, i32* %row.addr, align 4
  %add = add nsw i32 %5, 1
  %cmp2 = icmp sgt i32 %mul, %add
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size3 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %rows_size3, align 4
  %mul4 = mul nsw i32 %7, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load i32, i32* %row.addr, align 4
  %add5 = add nsw i32 %8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul4, %cond.true ], [ %add5, %cond.false ]
  store i32 %cond, i32* %new_size, align 4
  %9 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %9, i32 0, i32 0
  %10 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %tobool = icmp ne %struct.sm_row_struct** %10, null
  br i1 %tobool, label %cond.true.6, label %cond.false.9

cond.true.6:                                      ; preds = %cond.end
  %11 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows7 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %11, i32 0, i32 0
  %12 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows7, align 8
  %13 = bitcast %struct.sm_row_struct** %12 to i8*
  %14 = load i32, i32* %new_size, align 4
  %conv = sext i32 %14 to i64
  %mul8 = mul i64 8, %conv
  %call = call i8* @realloc(i8* %13, i64 %mul8)
  %15 = bitcast i8* %call to %struct.sm_row_struct**
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %16 = load i32, i32* %new_size, align 4
  %conv10 = sext i32 %16 to i64
  %mul11 = mul i64 8, %conv10
  %call12 = call i8* @malloc(i64 %mul11)
  %17 = bitcast i8* %call12 to %struct.sm_row_struct**
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.6
  %cond14 = phi %struct.sm_row_struct** [ %15, %cond.true.6 ], [ %17, %cond.false.9 ]
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows15 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 0
  store %struct.sm_row_struct** %cond14, %struct.sm_row_struct*** %rows15, align 8
  %19 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size16 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %19, i32 0, i32 1
  %20 = load i32, i32* %rows_size16, align 4
  store i32 %20, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.13
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %new_size, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 0
  %25 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows19, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %25, i64 %idxprom
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %new_size, align 4
  %28 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size20 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %28, i32 0, i32 1
  store i32 %27, i32* %rows_size20, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %29 = load i32, i32* %col.addr, align 4
  %30 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %30, i32 0, i32 3
  %31 = load i32, i32* %cols_size, align 4
  %cmp21 = icmp sge i32 %29, %31
  br i1 %cmp21, label %if.then.23, label %if.end.61

if.then.23:                                       ; preds = %if.end
  %32 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size24 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %32, i32 0, i32 3
  %33 = load i32, i32* %cols_size24, align 4
  %mul25 = mul nsw i32 %33, 2
  %34 = load i32, i32* %col.addr, align 4
  %add26 = add nsw i32 %34, 1
  %cmp27 = icmp sgt i32 %mul25, %add26
  br i1 %cmp27, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %if.then.23
  %35 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size30 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %35, i32 0, i32 3
  %36 = load i32, i32* %cols_size30, align 4
  %mul31 = mul nsw i32 %36, 2
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.then.23
  %37 = load i32, i32* %col.addr, align 4
  %add33 = add nsw i32 %37, 1
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.29
  %cond35 = phi i32 [ %mul31, %cond.true.29 ], [ %add33, %cond.false.32 ]
  store i32 %cond35, i32* %new_size, align 4
  %38 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %38, i32 0, i32 2
  %39 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %tobool36 = icmp ne %struct.sm_col_struct** %39, null
  br i1 %tobool36, label %cond.true.37, label %cond.false.42

cond.true.37:                                     ; preds = %cond.end.34
  %40 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %40, i32 0, i32 2
  %41 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols38, align 8
  %42 = bitcast %struct.sm_col_struct** %41 to i8*
  %43 = load i32, i32* %new_size, align 4
  %conv39 = sext i32 %43 to i64
  %mul40 = mul i64 8, %conv39
  %call41 = call i8* @realloc(i8* %42, i64 %mul40)
  %44 = bitcast i8* %call41 to %struct.sm_col_struct**
  br label %cond.end.46

cond.false.42:                                    ; preds = %cond.end.34
  %45 = load i32, i32* %new_size, align 4
  %conv43 = sext i32 %45 to i64
  %mul44 = mul i64 8, %conv43
  %call45 = call i8* @malloc(i64 %mul44)
  %46 = bitcast i8* %call45 to %struct.sm_col_struct**
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.42, %cond.true.37
  %cond47 = phi %struct.sm_col_struct** [ %44, %cond.true.37 ], [ %46, %cond.false.42 ]
  %47 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols48 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %47, i32 0, i32 2
  store %struct.sm_col_struct** %cond47, %struct.sm_col_struct*** %cols48, align 8
  %48 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size49 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %48, i32 0, i32 3
  %49 = load i32, i32* %cols_size49, align 4
  store i32 %49, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.57, %cond.end.46
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %new_size, align 4
  %cmp51 = icmp slt i32 %50, %51
  br i1 %cmp51, label %for.body.53, label %for.end.59

for.body.53:                                      ; preds = %for.cond.50
  %52 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols55 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %53, i32 0, i32 2
  %54 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols55, align 8
  %arrayidx56 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %54, i64 %idxprom54
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %arrayidx56, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.53
  %55 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %55, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.50

for.end.59:                                       ; preds = %for.cond.50
  %56 = load i32, i32* %new_size, align 4
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size60 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %57, i32 0, i32 3
  store i32 %56, i32* %cols_size60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %for.end.59, %if.end
  ret void
}

declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.sm_element_struct* @sm_insert(%struct.sm_matrix_struct* %A, i32 %row, i32 %col) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %element = alloca %struct.sm_element_struct*, align 8
  %save_element = alloca %struct.sm_element_struct*, align 8
  %p = alloca %struct.sm_row_struct*, align 8
  %p104 = alloca %struct.sm_col_struct*, align 8
  %p171 = alloca %struct.sm_element_struct*, align 8
  %p239 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %1 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %rows_size, align 4
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %col.addr, align 4
  %4 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %4, i32 0, i32 3
  %5 = load i32, i32* %cols_size, align 4
  %cmp1 = icmp sge i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %7 = load i32, i32* %row.addr, align 4
  %8 = load i32, i32* %col.addr, align 4
  call void @sm_resize(%struct.sm_matrix_struct* %6, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i32, i32* %row.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %10, i32 0, i32 0
  %11 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %11, i64 %idxprom
  %12 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  store %struct.sm_row_struct* %12, %struct.sm_row_struct** %prow, align 8
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp2 = icmp eq %struct.sm_row_struct* %13, null
  br i1 %cmp2, label %if.then.3, label %if.end.61

if.then.3:                                        ; preds = %if.end
  %call = call %struct.sm_row_struct* (...) @sm_row_alloc()
  %14 = load i32, i32* %row.addr, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows5 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %15, i32 0, i32 0
  %16 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows5, align 8
  %arrayidx6 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %16, i64 %idxprom4
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %arrayidx6, align 8
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %prow, align 8
  %17 = load i32, i32* %row.addr, align 4
  %18 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %18, i32 0, i32 0
  store i32 %17, i32* %row_num, align 4
  %19 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %19, i32 0, i32 5
  %20 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row, align 8
  %cmp7 = icmp eq %struct.sm_row_struct* %20, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.3
  %21 = load i32, i32* %row.addr, align 4
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num9 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %22, i32 0, i32 0
  store i32 %21, i32* %row_num9, align 4
  %23 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 4
  store %struct.sm_row_struct* %23, %struct.sm_row_struct** %first_row, align 8
  %25 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %26 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row10 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %26, i32 0, i32 5
  store %struct.sm_row_struct* %25, %struct.sm_row_struct** %last_row10, align 8
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 5
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %next_row, align 8
  %28 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %28, i32 0, i32 6
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %prev_row, align 8
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %29, i32 0, i32 6
  %30 = load i32, i32* %nrows, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %nrows, align 4
  br label %if.end.60

if.else:                                          ; preds = %if.then.3
  %31 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %31, i32 0, i32 5
  %32 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row11, align 8
  %row_num12 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %32, i32 0, i32 0
  %33 = load i32, i32* %row_num12, align 4
  %34 = load i32, i32* %row.addr, align 4
  %cmp13 = icmp slt i32 %33, %34
  br i1 %cmp13, label %if.then.14, label %if.else.24

if.then.14:                                       ; preds = %if.else
  %35 = load i32, i32* %row.addr, align 4
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num15 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 0
  store i32 %35, i32* %row_num15, align 4
  %37 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %38 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row16 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %38, i32 0, i32 5
  %39 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row16, align 8
  %next_row17 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %39, i32 0, i32 5
  store %struct.sm_row_struct* %37, %struct.sm_row_struct** %next_row17, align 8
  %40 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row18 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %40, i32 0, i32 5
  %41 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row18, align 8
  %42 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row19 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %42, i32 0, i32 6
  store %struct.sm_row_struct* %41, %struct.sm_row_struct** %prev_row19, align 8
  %43 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %44 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row20 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %44, i32 0, i32 5
  store %struct.sm_row_struct* %43, %struct.sm_row_struct** %last_row20, align 8
  %45 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row21 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i32 0, i32 5
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %next_row21, align 8
  %46 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows22 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %46, i32 0, i32 6
  %47 = load i32, i32* %nrows22, align 4
  %inc23 = add nsw i32 %47, 1
  store i32 %inc23, i32* %nrows22, align 4
  br label %if.end.59

if.else.24:                                       ; preds = %if.else
  %48 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %48, i32 0, i32 4
  %49 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row25, align 8
  %row_num26 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %49, i32 0, i32 0
  %50 = load i32, i32* %row_num26, align 4
  %51 = load i32, i32* %row.addr, align 4
  %cmp27 = icmp sgt i32 %50, %51
  br i1 %cmp27, label %if.then.28, label %if.else.38

if.then.28:                                       ; preds = %if.else.24
  %52 = load i32, i32* %row.addr, align 4
  %53 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num29 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %53, i32 0, i32 0
  store i32 %52, i32* %row_num29, align 4
  %54 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %55 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row30 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %55, i32 0, i32 4
  %56 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row30, align 8
  %prev_row31 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %56, i32 0, i32 6
  store %struct.sm_row_struct* %54, %struct.sm_row_struct** %prev_row31, align 8
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row32 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %57, i32 0, i32 4
  %58 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row32, align 8
  %59 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row33 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %59, i32 0, i32 5
  store %struct.sm_row_struct* %58, %struct.sm_row_struct** %next_row33, align 8
  %60 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %61 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row34 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %61, i32 0, i32 4
  store %struct.sm_row_struct* %60, %struct.sm_row_struct** %first_row34, align 8
  %62 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %62, i32 0, i32 6
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %prev_row35, align 8
  %63 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows36 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %63, i32 0, i32 6
  %64 = load i32, i32* %nrows36, align 4
  %inc37 = add nsw i32 %64, 1
  store i32 %inc37, i32* %nrows36, align 4
  br label %if.end.58

if.else.38:                                       ; preds = %if.else.24
  %65 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row39 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %65, i32 0, i32 4
  %66 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row39, align 8
  store %struct.sm_row_struct* %66, %struct.sm_row_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.38
  %67 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %row_num40 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %67, i32 0, i32 0
  %68 = load i32, i32* %row_num40, align 4
  %69 = load i32, i32* %row.addr, align 4
  %cmp41 = icmp slt i32 %68, %69
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %next_row42 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %70, i32 0, i32 5
  %71 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row42, align 8
  store %struct.sm_row_struct* %71, %struct.sm_row_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %row_num43 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %72, i32 0, i32 0
  %73 = load i32, i32* %row_num43, align 4
  %74 = load i32, i32* %row.addr, align 4
  %cmp44 = icmp sgt i32 %73, %74
  br i1 %cmp44, label %if.then.45, label %if.else.56

if.then.45:                                       ; preds = %for.end
  %75 = load i32, i32* %row.addr, align 4
  %76 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num46 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %76, i32 0, i32 0
  store i32 %75, i32* %row_num46, align 4
  %77 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %prev_row47 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %77, i32 0, i32 6
  %78 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prev_row47, align 8
  store %struct.sm_row_struct* %78, %struct.sm_row_struct** %p, align 8
  %79 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %80 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %next_row48 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %80, i32 0, i32 5
  %81 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row48, align 8
  %prev_row49 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %81, i32 0, i32 6
  store %struct.sm_row_struct* %79, %struct.sm_row_struct** %prev_row49, align 8
  %82 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %next_row50 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %82, i32 0, i32 5
  %83 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row50, align 8
  %84 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row51 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %84, i32 0, i32 5
  store %struct.sm_row_struct* %83, %struct.sm_row_struct** %next_row51, align 8
  %85 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %86 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %next_row52 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %86, i32 0, i32 5
  store %struct.sm_row_struct* %85, %struct.sm_row_struct** %next_row52, align 8
  %87 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  %88 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row53 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %88, i32 0, i32 6
  store %struct.sm_row_struct* %87, %struct.sm_row_struct** %prev_row53, align 8
  %89 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows54 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %89, i32 0, i32 6
  %90 = load i32, i32* %nrows54, align 4
  %inc55 = add nsw i32 %90, 1
  store i32 %inc55, i32* %nrows54, align 4
  br label %if.end.57

if.else.56:                                       ; preds = %for.end
  %91 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p, align 8
  store %struct.sm_row_struct* %91, %struct.sm_row_struct** %prow, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.45
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.28
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.14
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %92 = load i32, i32* %col.addr, align 4
  %idxprom62 = sext i32 %92 to i64
  %93 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %93, i32 0, i32 2
  %94 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx63 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %94, i64 %idxprom62
  %95 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx63, align 8
  store %struct.sm_col_struct* %95, %struct.sm_col_struct** %pcol, align 8
  %96 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp64 = icmp eq %struct.sm_col_struct* %96, null
  br i1 %cmp64, label %if.then.65, label %if.end.131

if.then.65:                                       ; preds = %if.end.61
  %call66 = call %struct.sm_col_struct* (...) @sm_col_alloc()
  %97 = load i32, i32* %col.addr, align 4
  %idxprom67 = sext i32 %97 to i64
  %98 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols68 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %98, i32 0, i32 2
  %99 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols68, align 8
  %arrayidx69 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %99, i64 %idxprom67
  store %struct.sm_col_struct* %call66, %struct.sm_col_struct** %arrayidx69, align 8
  store %struct.sm_col_struct* %call66, %struct.sm_col_struct** %pcol, align 8
  %100 = load i32, i32* %col.addr, align 4
  %101 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %101, i32 0, i32 0
  store i32 %100, i32* %col_num, align 4
  %102 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %102, i32 0, i32 8
  %103 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col, align 8
  %cmp70 = icmp eq %struct.sm_col_struct* %103, null
  br i1 %cmp70, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %if.then.65
  %104 = load i32, i32* %col.addr, align 4
  %105 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num72 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %105, i32 0, i32 0
  store i32 %104, i32* %col_num72, align 4
  %106 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %107 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %107, i32 0, i32 7
  store %struct.sm_col_struct* %106, %struct.sm_col_struct** %first_col, align 8
  %108 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %109 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col73 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %109, i32 0, i32 8
  store %struct.sm_col_struct* %108, %struct.sm_col_struct** %last_col73, align 8
  %110 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %110, i32 0, i32 5
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %next_col, align 8
  %111 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %111, i32 0, i32 6
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %prev_col, align 8
  %112 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %112, i32 0, i32 9
  %113 = load i32, i32* %ncols, align 4
  %inc74 = add nsw i32 %113, 1
  store i32 %inc74, i32* %ncols, align 4
  br label %if.end.130

if.else.75:                                       ; preds = %if.then.65
  %114 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col76 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %114, i32 0, i32 8
  %115 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col76, align 8
  %col_num77 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %115, i32 0, i32 0
  %116 = load i32, i32* %col_num77, align 4
  %117 = load i32, i32* %col.addr, align 4
  %cmp78 = icmp slt i32 %116, %117
  br i1 %cmp78, label %if.then.79, label %if.else.89

if.then.79:                                       ; preds = %if.else.75
  %118 = load i32, i32* %col.addr, align 4
  %119 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num80 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %119, i32 0, i32 0
  store i32 %118, i32* %col_num80, align 4
  %120 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %121 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col81 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %121, i32 0, i32 8
  %122 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col81, align 8
  %next_col82 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %122, i32 0, i32 5
  store %struct.sm_col_struct* %120, %struct.sm_col_struct** %next_col82, align 8
  %123 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col83 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %123, i32 0, i32 8
  %124 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col83, align 8
  %125 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col84 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %125, i32 0, i32 6
  store %struct.sm_col_struct* %124, %struct.sm_col_struct** %prev_col84, align 8
  %126 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %127 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col85 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %127, i32 0, i32 8
  store %struct.sm_col_struct* %126, %struct.sm_col_struct** %last_col85, align 8
  %128 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col86 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %128, i32 0, i32 5
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %next_col86, align 8
  %129 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols87 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %129, i32 0, i32 9
  %130 = load i32, i32* %ncols87, align 4
  %inc88 = add nsw i32 %130, 1
  store i32 %inc88, i32* %ncols87, align 4
  br label %if.end.129

if.else.89:                                       ; preds = %if.else.75
  %131 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col90 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %131, i32 0, i32 7
  %132 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col90, align 8
  %col_num91 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %132, i32 0, i32 0
  %133 = load i32, i32* %col_num91, align 4
  %134 = load i32, i32* %col.addr, align 4
  %cmp92 = icmp sgt i32 %133, %134
  br i1 %cmp92, label %if.then.93, label %if.else.103

if.then.93:                                       ; preds = %if.else.89
  %135 = load i32, i32* %col.addr, align 4
  %136 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num94 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %136, i32 0, i32 0
  store i32 %135, i32* %col_num94, align 4
  %137 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %138 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col95 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %138, i32 0, i32 7
  %139 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col95, align 8
  %prev_col96 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %139, i32 0, i32 6
  store %struct.sm_col_struct* %137, %struct.sm_col_struct** %prev_col96, align 8
  %140 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col97 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %140, i32 0, i32 7
  %141 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col97, align 8
  %142 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col98 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %142, i32 0, i32 5
  store %struct.sm_col_struct* %141, %struct.sm_col_struct** %next_col98, align 8
  %143 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %144 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col99 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %144, i32 0, i32 7
  store %struct.sm_col_struct* %143, %struct.sm_col_struct** %first_col99, align 8
  %145 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col100 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %145, i32 0, i32 6
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %prev_col100, align 8
  %146 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols101 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %146, i32 0, i32 9
  %147 = load i32, i32* %ncols101, align 4
  %inc102 = add nsw i32 %147, 1
  store i32 %inc102, i32* %ncols101, align 4
  br label %if.end.128

if.else.103:                                      ; preds = %if.else.89
  %148 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col105 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %148, i32 0, i32 7
  %149 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col105, align 8
  store %struct.sm_col_struct* %149, %struct.sm_col_struct** %p104, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.110, %if.else.103
  %150 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %col_num107 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %150, i32 0, i32 0
  %151 = load i32, i32* %col_num107, align 4
  %152 = load i32, i32* %col.addr, align 4
  %cmp108 = icmp slt i32 %151, %152
  br i1 %cmp108, label %for.body.109, label %for.end.112

for.body.109:                                     ; preds = %for.cond.106
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.109
  %153 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %next_col111 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %153, i32 0, i32 5
  %154 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col111, align 8
  store %struct.sm_col_struct* %154, %struct.sm_col_struct** %p104, align 8
  br label %for.cond.106

for.end.112:                                      ; preds = %for.cond.106
  %155 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %col_num113 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %155, i32 0, i32 0
  %156 = load i32, i32* %col_num113, align 4
  %157 = load i32, i32* %col.addr, align 4
  %cmp114 = icmp sgt i32 %156, %157
  br i1 %cmp114, label %if.then.115, label %if.else.126

if.then.115:                                      ; preds = %for.end.112
  %158 = load i32, i32* %col.addr, align 4
  %159 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num116 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %159, i32 0, i32 0
  store i32 %158, i32* %col_num116, align 4
  %160 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %prev_col117 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %160, i32 0, i32 6
  %161 = load %struct.sm_col_struct*, %struct.sm_col_struct** %prev_col117, align 8
  store %struct.sm_col_struct* %161, %struct.sm_col_struct** %p104, align 8
  %162 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %163 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %next_col118 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %163, i32 0, i32 5
  %164 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col118, align 8
  %prev_col119 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %164, i32 0, i32 6
  store %struct.sm_col_struct* %162, %struct.sm_col_struct** %prev_col119, align 8
  %165 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %next_col120 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %165, i32 0, i32 5
  %166 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col120, align 8
  %167 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col121 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %167, i32 0, i32 5
  store %struct.sm_col_struct* %166, %struct.sm_col_struct** %next_col121, align 8
  %168 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %169 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %next_col122 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %169, i32 0, i32 5
  store %struct.sm_col_struct* %168, %struct.sm_col_struct** %next_col122, align 8
  %170 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  %171 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col123 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %171, i32 0, i32 6
  store %struct.sm_col_struct* %170, %struct.sm_col_struct** %prev_col123, align 8
  %172 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols124 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %172, i32 0, i32 9
  %173 = load i32, i32* %ncols124, align 4
  %inc125 = add nsw i32 %173, 1
  store i32 %inc125, i32* %ncols124, align 4
  br label %if.end.127

if.else.126:                                      ; preds = %for.end.112
  %174 = load %struct.sm_col_struct*, %struct.sm_col_struct** %p104, align 8
  store %struct.sm_col_struct* %174, %struct.sm_col_struct** %pcol, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.126, %if.then.115
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.93
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.79
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.71
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.61
  %call132 = call i8* @malloc(i64 48)
  %175 = bitcast i8* %call132 to %struct.sm_element_struct*
  store %struct.sm_element_struct* %175, %struct.sm_element_struct** %element, align 8
  %176 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %user_word = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %176, i32 0, i32 6
  store i8* null, i8** %user_word, align 8
  %177 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  store %struct.sm_element_struct* %177, %struct.sm_element_struct** %save_element, align 8
  %178 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col133 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %178, i32 0, i32 4
  %179 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col133, align 8
  %cmp134 = icmp eq %struct.sm_element_struct* %179, null
  br i1 %cmp134, label %if.then.135, label %if.else.142

if.then.135:                                      ; preds = %if.end.131
  %180 = load i32, i32* %col.addr, align 4
  %181 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %col_num136 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %181, i32 0, i32 1
  store i32 %180, i32* %col_num136, align 4
  %182 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %183 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col137 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %183, i32 0, i32 3
  store %struct.sm_element_struct* %182, %struct.sm_element_struct** %first_col137, align 8
  %184 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %185 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col138 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %185, i32 0, i32 4
  store %struct.sm_element_struct* %184, %struct.sm_element_struct** %last_col138, align 8
  %186 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_col139 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %186, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %next_col139, align 8
  %187 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_col140 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %187, i32 0, i32 5
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %prev_col140, align 8
  %188 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %188, i32 0, i32 1
  %189 = load i32, i32* %length, align 4
  %inc141 = add nsw i32 %189, 1
  store i32 %inc141, i32* %length, align 4
  br label %if.end.197

if.else.142:                                      ; preds = %if.end.131
  %190 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col143 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %190, i32 0, i32 4
  %191 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col143, align 8
  %col_num144 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %191, i32 0, i32 1
  %192 = load i32, i32* %col_num144, align 4
  %193 = load i32, i32* %col.addr, align 4
  %cmp145 = icmp slt i32 %192, %193
  br i1 %cmp145, label %if.then.146, label %if.else.156

if.then.146:                                      ; preds = %if.else.142
  %194 = load i32, i32* %col.addr, align 4
  %195 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %col_num147 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %195, i32 0, i32 1
  store i32 %194, i32* %col_num147, align 4
  %196 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %197 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col148 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %197, i32 0, i32 4
  %198 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col148, align 8
  %next_col149 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %198, i32 0, i32 4
  store %struct.sm_element_struct* %196, %struct.sm_element_struct** %next_col149, align 8
  %199 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col150 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %199, i32 0, i32 4
  %200 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col150, align 8
  %201 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_col151 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %201, i32 0, i32 5
  store %struct.sm_element_struct* %200, %struct.sm_element_struct** %prev_col151, align 8
  %202 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %203 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col152 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %203, i32 0, i32 4
  store %struct.sm_element_struct* %202, %struct.sm_element_struct** %last_col152, align 8
  %204 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_col153 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %204, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %next_col153, align 8
  %205 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length154 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %205, i32 0, i32 1
  %206 = load i32, i32* %length154, align 4
  %inc155 = add nsw i32 %206, 1
  store i32 %inc155, i32* %length154, align 4
  br label %if.end.196

if.else.156:                                      ; preds = %if.else.142
  %207 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col157 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %207, i32 0, i32 3
  %208 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col157, align 8
  %col_num158 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %208, i32 0, i32 1
  %209 = load i32, i32* %col_num158, align 4
  %210 = load i32, i32* %col.addr, align 4
  %cmp159 = icmp sgt i32 %209, %210
  br i1 %cmp159, label %if.then.160, label %if.else.170

if.then.160:                                      ; preds = %if.else.156
  %211 = load i32, i32* %col.addr, align 4
  %212 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %col_num161 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %212, i32 0, i32 1
  store i32 %211, i32* %col_num161, align 4
  %213 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %214 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col162 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %214, i32 0, i32 3
  %215 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col162, align 8
  %prev_col163 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %215, i32 0, i32 5
  store %struct.sm_element_struct* %213, %struct.sm_element_struct** %prev_col163, align 8
  %216 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col164 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %216, i32 0, i32 3
  %217 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col164, align 8
  %218 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_col165 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %218, i32 0, i32 4
  store %struct.sm_element_struct* %217, %struct.sm_element_struct** %next_col165, align 8
  %219 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %220 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col166 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %220, i32 0, i32 3
  store %struct.sm_element_struct* %219, %struct.sm_element_struct** %first_col166, align 8
  %221 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_col167 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %221, i32 0, i32 5
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %prev_col167, align 8
  %222 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length168 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %222, i32 0, i32 1
  %223 = load i32, i32* %length168, align 4
  %inc169 = add nsw i32 %223, 1
  store i32 %inc169, i32* %length168, align 4
  br label %if.end.195

if.else.170:                                      ; preds = %if.else.156
  %224 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col172 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %224, i32 0, i32 3
  %225 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col172, align 8
  store %struct.sm_element_struct* %225, %struct.sm_element_struct** %p171, align 8
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.177, %if.else.170
  %226 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %col_num174 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %226, i32 0, i32 1
  %227 = load i32, i32* %col_num174, align 4
  %228 = load i32, i32* %col.addr, align 4
  %cmp175 = icmp slt i32 %227, %228
  br i1 %cmp175, label %for.body.176, label %for.end.179

for.body.176:                                     ; preds = %for.cond.173
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.176
  %229 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %next_col178 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %229, i32 0, i32 4
  %230 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col178, align 8
  store %struct.sm_element_struct* %230, %struct.sm_element_struct** %p171, align 8
  br label %for.cond.173

for.end.179:                                      ; preds = %for.cond.173
  %231 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %col_num180 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %231, i32 0, i32 1
  %232 = load i32, i32* %col_num180, align 4
  %233 = load i32, i32* %col.addr, align 4
  %cmp181 = icmp sgt i32 %232, %233
  br i1 %cmp181, label %if.then.182, label %if.else.193

if.then.182:                                      ; preds = %for.end.179
  %234 = load i32, i32* %col.addr, align 4
  %235 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %col_num183 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %235, i32 0, i32 1
  store i32 %234, i32* %col_num183, align 4
  %236 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %prev_col184 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %236, i32 0, i32 5
  %237 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col184, align 8
  store %struct.sm_element_struct* %237, %struct.sm_element_struct** %p171, align 8
  %238 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %239 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %next_col185 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %239, i32 0, i32 4
  %240 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col185, align 8
  %prev_col186 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %240, i32 0, i32 5
  store %struct.sm_element_struct* %238, %struct.sm_element_struct** %prev_col186, align 8
  %241 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %next_col187 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %241, i32 0, i32 4
  %242 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col187, align 8
  %243 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_col188 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %243, i32 0, i32 4
  store %struct.sm_element_struct* %242, %struct.sm_element_struct** %next_col188, align 8
  %244 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %245 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %next_col189 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %245, i32 0, i32 4
  store %struct.sm_element_struct* %244, %struct.sm_element_struct** %next_col189, align 8
  %246 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  %247 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_col190 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %247, i32 0, i32 5
  store %struct.sm_element_struct* %246, %struct.sm_element_struct** %prev_col190, align 8
  %248 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length191 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %248, i32 0, i32 1
  %249 = load i32, i32* %length191, align 4
  %inc192 = add nsw i32 %249, 1
  store i32 %inc192, i32* %length191, align 4
  br label %if.end.194

if.else.193:                                      ; preds = %for.end.179
  %250 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p171, align 8
  store %struct.sm_element_struct* %250, %struct.sm_element_struct** %element, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.182
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.160
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.146
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.135
  %251 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %252 = load %struct.sm_element_struct*, %struct.sm_element_struct** %save_element, align 8
  %cmp198 = icmp eq %struct.sm_element_struct* %251, %252
  br i1 %cmp198, label %if.then.199, label %if.else.266

if.then.199:                                      ; preds = %if.end.197
  %253 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row200 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %253, i32 0, i32 4
  %254 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_row200, align 8
  %cmp201 = icmp eq %struct.sm_element_struct* %254, null
  br i1 %cmp201, label %if.then.202, label %if.else.210

if.then.202:                                      ; preds = %if.then.199
  %255 = load i32, i32* %row.addr, align 4
  %256 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %row_num203 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %256, i32 0, i32 0
  store i32 %255, i32* %row_num203, align 4
  %257 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %258 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row204 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %258, i32 0, i32 3
  store %struct.sm_element_struct* %257, %struct.sm_element_struct** %first_row204, align 8
  %259 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %260 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row205 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %260, i32 0, i32 4
  store %struct.sm_element_struct* %259, %struct.sm_element_struct** %last_row205, align 8
  %261 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_row206 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %261, i32 0, i32 2
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %next_row206, align 8
  %262 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_row207 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %262, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %prev_row207, align 8
  %263 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length208 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %263, i32 0, i32 1
  %264 = load i32, i32* %length208, align 4
  %inc209 = add nsw i32 %264, 1
  store i32 %inc209, i32* %length208, align 4
  br label %if.end.265

if.else.210:                                      ; preds = %if.then.199
  %265 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row211 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %265, i32 0, i32 4
  %266 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_row211, align 8
  %row_num212 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %266, i32 0, i32 0
  %267 = load i32, i32* %row_num212, align 4
  %268 = load i32, i32* %row.addr, align 4
  %cmp213 = icmp slt i32 %267, %268
  br i1 %cmp213, label %if.then.214, label %if.else.224

if.then.214:                                      ; preds = %if.else.210
  %269 = load i32, i32* %row.addr, align 4
  %270 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %row_num215 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %270, i32 0, i32 0
  store i32 %269, i32* %row_num215, align 4
  %271 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %272 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row216 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %272, i32 0, i32 4
  %273 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_row216, align 8
  %next_row217 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %273, i32 0, i32 2
  store %struct.sm_element_struct* %271, %struct.sm_element_struct** %next_row217, align 8
  %274 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row218 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %274, i32 0, i32 4
  %275 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_row218, align 8
  %276 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_row219 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %276, i32 0, i32 3
  store %struct.sm_element_struct* %275, %struct.sm_element_struct** %prev_row219, align 8
  %277 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %278 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row220 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %278, i32 0, i32 4
  store %struct.sm_element_struct* %277, %struct.sm_element_struct** %last_row220, align 8
  %279 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_row221 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %279, i32 0, i32 2
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %next_row221, align 8
  %280 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length222 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %280, i32 0, i32 1
  %281 = load i32, i32* %length222, align 4
  %inc223 = add nsw i32 %281, 1
  store i32 %inc223, i32* %length222, align 4
  br label %if.end.264

if.else.224:                                      ; preds = %if.else.210
  %282 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row225 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %282, i32 0, i32 3
  %283 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row225, align 8
  %row_num226 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %283, i32 0, i32 0
  %284 = load i32, i32* %row_num226, align 4
  %285 = load i32, i32* %row.addr, align 4
  %cmp227 = icmp sgt i32 %284, %285
  br i1 %cmp227, label %if.then.228, label %if.else.238

if.then.228:                                      ; preds = %if.else.224
  %286 = load i32, i32* %row.addr, align 4
  %287 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %row_num229 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %287, i32 0, i32 0
  store i32 %286, i32* %row_num229, align 4
  %288 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %289 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row230 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %289, i32 0, i32 3
  %290 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row230, align 8
  %prev_row231 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %290, i32 0, i32 3
  store %struct.sm_element_struct* %288, %struct.sm_element_struct** %prev_row231, align 8
  %291 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row232 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %291, i32 0, i32 3
  %292 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row232, align 8
  %293 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_row233 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %293, i32 0, i32 2
  store %struct.sm_element_struct* %292, %struct.sm_element_struct** %next_row233, align 8
  %294 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %295 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row234 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %295, i32 0, i32 3
  store %struct.sm_element_struct* %294, %struct.sm_element_struct** %first_row234, align 8
  %296 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_row235 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %296, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %prev_row235, align 8
  %297 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length236 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %297, i32 0, i32 1
  %298 = load i32, i32* %length236, align 4
  %inc237 = add nsw i32 %298, 1
  store i32 %inc237, i32* %length236, align 4
  br label %if.end.263

if.else.238:                                      ; preds = %if.else.224
  %299 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row240 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %299, i32 0, i32 3
  %300 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row240, align 8
  store %struct.sm_element_struct* %300, %struct.sm_element_struct** %p239, align 8
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.245, %if.else.238
  %301 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %row_num242 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %301, i32 0, i32 0
  %302 = load i32, i32* %row_num242, align 4
  %303 = load i32, i32* %row.addr, align 4
  %cmp243 = icmp slt i32 %302, %303
  br i1 %cmp243, label %for.body.244, label %for.end.247

for.body.244:                                     ; preds = %for.cond.241
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.244
  %304 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %next_row246 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %304, i32 0, i32 2
  %305 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row246, align 8
  store %struct.sm_element_struct* %305, %struct.sm_element_struct** %p239, align 8
  br label %for.cond.241

for.end.247:                                      ; preds = %for.cond.241
  %306 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %row_num248 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %306, i32 0, i32 0
  %307 = load i32, i32* %row_num248, align 4
  %308 = load i32, i32* %row.addr, align 4
  %cmp249 = icmp sgt i32 %307, %308
  br i1 %cmp249, label %if.then.250, label %if.else.261

if.then.250:                                      ; preds = %for.end.247
  %309 = load i32, i32* %row.addr, align 4
  %310 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %row_num251 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %310, i32 0, i32 0
  store i32 %309, i32* %row_num251, align 4
  %311 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %prev_row252 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %311, i32 0, i32 3
  %312 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_row252, align 8
  store %struct.sm_element_struct* %312, %struct.sm_element_struct** %p239, align 8
  %313 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %314 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %next_row253 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %314, i32 0, i32 2
  %315 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row253, align 8
  %prev_row254 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %315, i32 0, i32 3
  store %struct.sm_element_struct* %313, %struct.sm_element_struct** %prev_row254, align 8
  %316 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %next_row255 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %316, i32 0, i32 2
  %317 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row255, align 8
  %318 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %next_row256 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %318, i32 0, i32 2
  store %struct.sm_element_struct* %317, %struct.sm_element_struct** %next_row256, align 8
  %319 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %320 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %next_row257 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %320, i32 0, i32 2
  store %struct.sm_element_struct* %319, %struct.sm_element_struct** %next_row257, align 8
  %321 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  %322 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %prev_row258 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %322, i32 0, i32 3
  store %struct.sm_element_struct* %321, %struct.sm_element_struct** %prev_row258, align 8
  %323 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length259 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %323, i32 0, i32 1
  %324 = load i32, i32* %length259, align 4
  %inc260 = add nsw i32 %324, 1
  store i32 %inc260, i32* %length259, align 4
  br label %if.end.262

if.else.261:                                      ; preds = %for.end.247
  %325 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p239, align 8
  store %struct.sm_element_struct* %325, %struct.sm_element_struct** %element, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.261, %if.then.250
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.228
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.214
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.202
  br label %if.end.269

if.else.266:                                      ; preds = %if.end.197
  %326 = load %struct.sm_element_struct*, %struct.sm_element_struct** %save_element, align 8
  %tobool = icmp ne %struct.sm_element_struct* %326, null
  br i1 %tobool, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.else.266
  %327 = load %struct.sm_element_struct*, %struct.sm_element_struct** %save_element, align 8
  %328 = bitcast %struct.sm_element_struct* %327 to i8*
  call void @free(i8* %328)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %save_element, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.else.266
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.265
  %329 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  ret %struct.sm_element_struct* %329
}

declare %struct.sm_row_struct* @sm_row_alloc(...) #1

declare %struct.sm_col_struct* @sm_col_alloc(...) #1

; Function Attrs: nounwind uwtable
define %struct.sm_element_struct* @sm_find(%struct.sm_matrix_struct* %A, i32 %rownum, i32 %colnum) #0 {
entry:
  %retval = alloca %struct.sm_element_struct*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %rownum.addr = alloca i32, align 4
  %colnum.addr = alloca i32, align 4
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 %rownum, i32* %rownum.addr, align 4
  store i32 %colnum, i32* %colnum.addr, align 4
  %0 = load i32, i32* %rownum.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %rownum.addr, align 4
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %rows_size, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %rownum.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 0
  %6 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %6, i64 %idxprom
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %7, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %prow, align 8
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp2 = icmp eq %struct.sm_row_struct* %8, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %9 = load i32, i32* %colnum.addr, align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %land.lhs.true.4, label %cond.false.9

land.lhs.true.4:                                  ; preds = %if.else
  %10 = load i32, i32* %colnum.addr, align 4
  %11 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %11, i32 0, i32 3
  %12 = load i32, i32* %cols_size, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %cond.true.6, label %cond.false.9

cond.true.6:                                      ; preds = %land.lhs.true.4
  %13 = load i32, i32* %colnum.addr, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %14, i32 0, i32 2
  %15 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx8 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %15, i64 %idxprom7
  %16 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx8, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %land.lhs.true.4, %if.else
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.6
  %cond11 = phi %struct.sm_col_struct* [ %16, %cond.true.6 ], [ null, %cond.false.9 ]
  store %struct.sm_col_struct* %cond11, %struct.sm_col_struct** %pcol, align 8
  %17 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp12 = icmp eq %struct.sm_col_struct* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %cond.end.10
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %retval
  br label %return

if.end:                                           ; preds = %cond.end.10
  %18 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %length, align 4
  %20 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length14 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %length14, align 4
  %cmp15 = icmp slt i32 %19, %21
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %23 = load i32, i32* %colnum.addr, align 4
  %call = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_find to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %22, i32 %23)
  store %struct.sm_element_struct* %call, %struct.sm_element_struct** %retval
  br label %return

if.else.17:                                       ; preds = %if.end
  %24 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %25 = load i32, i32* %rownum.addr, align 4
  %call18 = call %struct.sm_element_struct* (%struct.sm_col_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_col_find to %struct.sm_element_struct* (%struct.sm_col_struct*, i32, ...)*)(%struct.sm_col_struct* %24, i32 %25)
  store %struct.sm_element_struct* %call18, %struct.sm_element_struct** %retval
  br label %return

return:                                           ; preds = %if.else.17, %if.then.16, %if.then.13, %if.then
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %retval
  ret %struct.sm_element_struct* %26
}

declare %struct.sm_element_struct* @sm_row_find(...) #1

declare %struct.sm_element_struct* @sm_col_find(...) #1

; Function Attrs: nounwind uwtable
define void @sm_remove(%struct.sm_matrix_struct* %A, i32 %rownum, i32 %colnum) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %rownum.addr = alloca i32, align 4
  %colnum.addr = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 %rownum, i32* %rownum.addr, align 4
  store i32 %colnum, i32* %colnum.addr, align 4
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %1 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %2 = load i32, i32* %rownum.addr, align 4
  %3 = load i32, i32* %colnum.addr, align 4
  %call = call %struct.sm_element_struct* @sm_find(%struct.sm_matrix_struct* %1, i32 %2, i32 %3)
  call void @sm_remove_element(%struct.sm_matrix_struct* %0, %struct.sm_element_struct* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sm_remove_element(%struct.sm_matrix_struct* %A, %struct.sm_element_struct* %p) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %p.addr = alloca %struct.sm_element_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.sm_element_struct* %p, %struct.sm_element_struct** %p.addr, align 8
  %0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %cmp = icmp eq %struct.sm_element_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.60

if.end:                                           ; preds = %entry
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %row_num, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %row_num2 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %row_num2, align 4
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %rows_size, align 4
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %row_num4 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %row_num4, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %9, i32 0, i32 0
  %10 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %10, i64 %idxprom
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %prow, align 8
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 5
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col, align 8
  %cmp5 = icmp eq %struct.sm_element_struct* %13, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %cond.end
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 4
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  %16 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %16, i32 0, i32 3
  store %struct.sm_element_struct* %15, %struct.sm_element_struct** %first_col, align 8
  br label %if.end.10

if.else:                                          ; preds = %cond.end
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %17, i32 0, i32 4
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col7, align 8
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col8 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %19, i32 0, i32 5
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col8, align 8
  %next_col9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 4
  store %struct.sm_element_struct* %18, %struct.sm_element_struct** %next_col9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %21, i32 0, i32 4
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col11, align 8
  %cmp12 = icmp eq %struct.sm_element_struct* %22, null
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.10
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col14 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 5
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col14, align 8
  %25 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %25, i32 0, i32 4
  store %struct.sm_element_struct* %24, %struct.sm_element_struct** %last_col, align 8
  br label %if.end.19

if.else.15:                                       ; preds = %if.end.10
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col16 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %26, i32 0, i32 5
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col16, align 8
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %28, i32 0, i32 4
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col17, align 8
  %prev_col18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 5
  store %struct.sm_element_struct* %27, %struct.sm_element_struct** %prev_col18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.15, %if.then.13
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %30, i32 0, i32 1
  %31 = load i32, i32* %length, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %length, align 4
  %32 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col20 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %32, i32 0, i32 3
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col20, align 8
  %cmp21 = icmp eq %struct.sm_element_struct* %33, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %34 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %row_num23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %35, i32 0, i32 0
  %36 = load i32, i32* %row_num23, align 4
  call void @sm_delrow(%struct.sm_matrix_struct* %34, i32 %36)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 1
  %38 = load i32, i32* %col_num, align 4
  %cmp25 = icmp sge i32 %38, 0
  br i1 %cmp25, label %land.lhs.true.26, label %cond.false.33

land.lhs.true.26:                                 ; preds = %if.end.24
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %col_num27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %39, i32 0, i32 1
  %40 = load i32, i32* %col_num27, align 4
  %41 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %41, i32 0, i32 3
  %42 = load i32, i32* %cols_size, align 4
  %cmp28 = icmp slt i32 %40, %42
  br i1 %cmp28, label %cond.true.29, label %cond.false.33

cond.true.29:                                     ; preds = %land.lhs.true.26
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %col_num30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %43, i32 0, i32 1
  %44 = load i32, i32* %col_num30, align 4
  %idxprom31 = sext i32 %44 to i64
  %45 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %45, i32 0, i32 2
  %46 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx32 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %46, i64 %idxprom31
  %47 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx32, align 8
  br label %cond.end.34

cond.false.33:                                    ; preds = %land.lhs.true.26, %if.end.24
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.29
  %cond35 = phi %struct.sm_col_struct* [ %47, %cond.true.29 ], [ null, %cond.false.33 ]
  store %struct.sm_col_struct* %cond35, %struct.sm_col_struct** %pcol, align 8
  %48 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %48, i32 0, i32 3
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_row, align 8
  %cmp36 = icmp eq %struct.sm_element_struct* %49, null
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %cond.end.34
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %50, i32 0, i32 2
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  %52 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %52, i32 0, i32 3
  store %struct.sm_element_struct* %51, %struct.sm_element_struct** %first_row, align 8
  br label %if.end.42

if.else.38:                                       ; preds = %cond.end.34
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_row39 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %53, i32 0, i32 2
  %54 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row39, align 8
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_row40 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %55, i32 0, i32 3
  %56 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_row40, align 8
  %next_row41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %56, i32 0, i32 2
  store %struct.sm_element_struct* %54, %struct.sm_element_struct** %next_row41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.37
  %57 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_row43 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %57, i32 0, i32 2
  %58 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row43, align 8
  %cmp44 = icmp eq %struct.sm_element_struct* %58, null
  br i1 %cmp44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.end.42
  %59 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_row46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %59, i32 0, i32 3
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_row46, align 8
  %61 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %61, i32 0, i32 4
  store %struct.sm_element_struct* %60, %struct.sm_element_struct** %last_row, align 8
  br label %if.end.51

if.else.47:                                       ; preds = %if.end.42
  %62 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_row48 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %62, i32 0, i32 3
  %63 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_row48, align 8
  %64 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_row49 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %64, i32 0, i32 2
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row49, align 8
  %prev_row50 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 3
  store %struct.sm_element_struct* %63, %struct.sm_element_struct** %prev_row50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.47, %if.then.45
  %66 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length52 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %66, i32 0, i32 1
  %67 = load i32, i32* %length52, align 4
  %dec53 = add nsw i32 %67, -1
  store i32 %dec53, i32* %length52, align 4
  %68 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row54 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %68, i32 0, i32 3
  %69 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row54, align 8
  %cmp55 = icmp eq %struct.sm_element_struct* %69, null
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.51
  %70 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %71 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %col_num57 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %71, i32 0, i32 1
  %72 = load i32, i32* %col_num57, align 4
  call void @sm_delcol(%struct.sm_matrix_struct* %70, i32 %72)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.51
  %73 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %tobool = icmp ne %struct.sm_element_struct* %73, null
  br i1 %tobool, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.58
  %74 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %75 = bitcast %struct.sm_element_struct* %74 to i8*
  call void @free(i8* %75)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %p.addr, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then, %if.then.59, %if.end.58
  ret void
}

; Function Attrs: nounwind uwtable
define void @sm_delrow(%struct.sm_matrix_struct* %A, i32 %i) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %i.addr = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  %pnext = alloca %struct.sm_element_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %rows_size, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 0
  %6 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %6, i64 %idxprom
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %7, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %prow, align 8
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp2 = icmp ne %struct.sm_row_struct* %8, null
  br i1 %cmp2, label %if.then, label %if.end.38

if.then:                                          ; preds = %cond.end
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %9, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp3 = icmp ne %struct.sm_element_struct* %11, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 4
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %pnext, align 8
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %col_num, align 4
  %cmp4 = icmp sge i32 %15, 0
  br i1 %cmp4, label %land.lhs.true.5, label %cond.false.12

land.lhs.true.5:                                  ; preds = %for.body
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %col_num6, align 4
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 3
  %19 = load i32, i32* %cols_size, align 4
  %cmp7 = icmp slt i32 %17, %19
  br i1 %cmp7, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %land.lhs.true.5
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %col_num9, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %22, i32 0, i32 2
  %23 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx11 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %23, i64 %idxprom10
  %24 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx11, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %land.lhs.true.5, %for.body
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.8
  %cond14 = phi %struct.sm_col_struct* [ %24, %cond.true.8 ], [ null, %cond.false.12 ]
  store %struct.sm_col_struct* %cond14, %struct.sm_col_struct** %pcol, align 8
  %25 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  call void (%struct.sm_col_struct*, %struct.sm_element_struct*, ...) bitcast (void (...)* @sm_col_remove_element to void (%struct.sm_col_struct*, %struct.sm_element_struct*, ...)*)(%struct.sm_col_struct* %25, %struct.sm_element_struct* %26)
  %27 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %27, i32 0, i32 3
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  %cmp15 = icmp eq %struct.sm_element_struct* %28, null
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %cond.end.13
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %30 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num17 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %col_num17, align 4
  call void @sm_delcol(%struct.sm_matrix_struct* %29, i32 %31)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %cond.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pnext, align 8
  store %struct.sm_element_struct* %32, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %i.addr, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %34, i32 0, i32 0
  %35 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows19, align 8
  %arrayidx20 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %35, i64 %idxprom18
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %arrayidx20, align 8
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 6
  %37 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prev_row, align 8
  %cmp21 = icmp eq %struct.sm_row_struct* %37, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.end
  %38 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %38, i32 0, i32 5
  %39 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  %40 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row23 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %40, i32 0, i32 4
  store %struct.sm_row_struct* %39, %struct.sm_row_struct** %first_row23, align 8
  br label %if.end.27

if.else:                                          ; preds = %for.end
  %41 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row24 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %41, i32 0, i32 5
  %42 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row24, align 8
  %43 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row25 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %43, i32 0, i32 6
  %44 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prev_row25, align 8
  %next_row26 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %44, i32 0, i32 5
  store %struct.sm_row_struct* %42, %struct.sm_row_struct** %next_row26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.22
  %45 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row28 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i32 0, i32 5
  %46 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row28, align 8
  %cmp29 = icmp eq %struct.sm_row_struct* %46, null
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.27
  %47 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row31 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %47, i32 0, i32 6
  %48 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prev_row31, align 8
  %49 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %49, i32 0, i32 5
  store %struct.sm_row_struct* %48, %struct.sm_row_struct** %last_row, align 8
  br label %if.end.36

if.else.32:                                       ; preds = %if.end.27
  %50 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row33 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %50, i32 0, i32 6
  %51 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prev_row33, align 8
  %52 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row34 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %52, i32 0, i32 5
  %53 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row34, align 8
  %prev_row35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %53, i32 0, i32 6
  store %struct.sm_row_struct* %51, %struct.sm_row_struct** %prev_row35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.32, %if.then.30
  %54 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %54, i32 0, i32 6
  %55 = load i32, i32* %nrows, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %nrows, align 4
  %56 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %56, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %last_col, align 8
  %57 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col37 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %57, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %first_col37, align 8
  %58 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %58)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %cond.end
  ret void
}

declare void @sm_col_remove_element(...) #1

; Function Attrs: nounwind uwtable
define void @sm_delcol(%struct.sm_matrix_struct* %A, i32 %i) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %i.addr = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  %pnext = alloca %struct.sm_element_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %cols_size, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 2
  %6 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %6, i64 %idxprom
  %7 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_col_struct* [ %7, %cond.true ], [ null, %cond.false ]
  store %struct.sm_col_struct* %cond, %struct.sm_col_struct** %pcol, align 8
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp2 = icmp ne %struct.sm_col_struct* %8, null
  br i1 %cmp2, label %if.then, label %if.end.38

if.then:                                          ; preds = %cond.end
  %9 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %9, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp3 = icmp ne %struct.sm_element_struct* %11, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 2
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %pnext, align 8
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %row_num, align 4
  %cmp4 = icmp sge i32 %15, 0
  br i1 %cmp4, label %land.lhs.true.5, label %cond.false.12

land.lhs.true.5:                                  ; preds = %for.body
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %row_num6, align 4
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %rows_size, align 4
  %cmp7 = icmp slt i32 %17, %19
  br i1 %cmp7, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %land.lhs.true.5
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 0
  %21 = load i32, i32* %row_num9, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %22, i32 0, i32 0
  %23 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx11 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %23, i64 %idxprom10
  %24 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx11, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %land.lhs.true.5, %for.body
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.8
  %cond14 = phi %struct.sm_row_struct* [ %24, %cond.true.8 ], [ null, %cond.false.12 ]
  store %struct.sm_row_struct* %cond14, %struct.sm_row_struct** %prow, align 8
  %25 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  call void (%struct.sm_row_struct*, %struct.sm_element_struct*, ...) bitcast (void (...)* @sm_row_remove_element to void (%struct.sm_row_struct*, %struct.sm_element_struct*, ...)*)(%struct.sm_row_struct* %25, %struct.sm_element_struct* %26)
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 3
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  %cmp15 = icmp eq %struct.sm_element_struct* %28, null
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %cond.end.13
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num17 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %row_num17, align 4
  call void @sm_delrow(%struct.sm_matrix_struct* %29, i32 %31)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %cond.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pnext, align 8
  store %struct.sm_element_struct* %32, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %i.addr, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %34, i32 0, i32 2
  %35 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols19, align 8
  %arrayidx20 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %35, i64 %idxprom18
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %arrayidx20, align 8
  %36 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %36, i32 0, i32 6
  %37 = load %struct.sm_col_struct*, %struct.sm_col_struct** %prev_col, align 8
  %cmp21 = icmp eq %struct.sm_col_struct* %37, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.end
  %38 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %38, i32 0, i32 5
  %39 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  %40 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col23 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %40, i32 0, i32 7
  store %struct.sm_col_struct* %39, %struct.sm_col_struct** %first_col23, align 8
  br label %if.end.27

if.else:                                          ; preds = %for.end
  %41 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col24 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %41, i32 0, i32 5
  %42 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col24, align 8
  %43 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col25 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %43, i32 0, i32 6
  %44 = load %struct.sm_col_struct*, %struct.sm_col_struct** %prev_col25, align 8
  %next_col26 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %44, i32 0, i32 5
  store %struct.sm_col_struct* %42, %struct.sm_col_struct** %next_col26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.22
  %45 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col28 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %45, i32 0, i32 5
  %46 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col28, align 8
  %cmp29 = icmp eq %struct.sm_col_struct* %46, null
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.27
  %47 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col31 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %47, i32 0, i32 6
  %48 = load %struct.sm_col_struct*, %struct.sm_col_struct** %prev_col31, align 8
  %49 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %49, i32 0, i32 8
  store %struct.sm_col_struct* %48, %struct.sm_col_struct** %last_col, align 8
  br label %if.end.36

if.else.32:                                       ; preds = %if.end.27
  %50 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %prev_col33 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %50, i32 0, i32 6
  %51 = load %struct.sm_col_struct*, %struct.sm_col_struct** %prev_col33, align 8
  %52 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col34 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %52, i32 0, i32 5
  %53 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col34, align 8
  %prev_col35 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %53, i32 0, i32 6
  store %struct.sm_col_struct* %51, %struct.sm_col_struct** %prev_col35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.32, %if.then.30
  %54 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %54, i32 0, i32 9
  %55 = load i32, i32* %ncols, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %ncols, align 4
  %56 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %last_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %56, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %last_row, align 8
  %57 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row37 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %57, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %first_row37, align 8
  %58 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  call void (%struct.sm_col_struct*, ...) bitcast (void (...)* @sm_col_free to void (%struct.sm_col_struct*, ...)*)(%struct.sm_col_struct* %58)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %cond.end
  ret void
}

declare void @sm_row_remove_element(...) #1

; Function Attrs: nounwind uwtable
define void @sm_copy_row(%struct.sm_matrix_struct* %dest, i32 %dest_row, %struct.sm_row_struct* %prow) #0 {
entry:
  %dest.addr = alloca %struct.sm_matrix_struct*, align 8
  %dest_row.addr = alloca i32, align 4
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_matrix_struct* %dest, %struct.sm_matrix_struct** %dest.addr, align 8
  store i32 %dest_row, i32* %dest_row.addr, align 4
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
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %dest.addr, align 8
  %4 = load i32, i32* %dest_row.addr, align 4
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %col_num, align 4
  %call = call %struct.sm_element_struct* @sm_insert(%struct.sm_matrix_struct* %3, i32 %4, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sm_copy_col(%struct.sm_matrix_struct* %dest, i32 %dest_col, %struct.sm_col_struct* %pcol) #0 {
entry:
  %dest.addr = alloca %struct.sm_matrix_struct*, align 8
  %dest_col.addr = alloca i32, align 4
  %pcol.addr = alloca %struct.sm_col_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_matrix_struct* %dest, %struct.sm_matrix_struct** %dest.addr, align 8
  store i32 %dest_col, i32* %dest_col.addr, align 4
  store %struct.sm_col_struct* %pcol, %struct.sm_col_struct** %pcol.addr, align 8
  %0 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp = icmp ne %struct.sm_element_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %dest.addr, align 8
  %4 = load i32, i32* %dest_col.addr, align 4
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %row_num, align 4
  %call = call %struct.sm_element_struct* @sm_insert(%struct.sm_matrix_struct* %3, i32 %4, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 2
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sm_row_struct* @sm_longest_row(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %large_row = alloca %struct.sm_row_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %max_length = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 0, i32* %max_length, align 4
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %large_row, align 8
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
  %5 = load i32, i32* %max_length, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length2 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %length2, align 4
  store i32 %7, i32* %max_length, align 4
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  store %struct.sm_row_struct* %8, %struct.sm_row_struct** %large_row, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %9, i32 0, i32 5
  %10 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %10, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %large_row, align 8
  ret %struct.sm_row_struct* %11
}

; Function Attrs: nounwind uwtable
define %struct.sm_col_struct* @sm_longest_col(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %large_col = alloca %struct.sm_col_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %max_length = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 0, i32* %max_length, align 4
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %large_col, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 7
  %1 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp = icmp ne %struct.sm_col_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %5 = load i32, i32* %max_length, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %length2 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %length2, align 4
  store i32 %7, i32* %max_length, align 4
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  store %struct.sm_col_struct* %8, %struct.sm_col_struct** %large_col, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %9, i32 0, i32 5
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  store %struct.sm_col_struct* %10, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %large_col, align 8
  ret %struct.sm_col_struct* %11
}

; Function Attrs: nounwind uwtable
define i32 @sm_num_elements(%struct.sm_matrix_struct* %A) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %num = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32 0, i32* %num, align 4
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
  %5 = load i32, i32* %num, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %num, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %6, i32 0, i32 5
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %7, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %num, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @sm_read(%struct._IO_FILE* %fp, %struct.sm_matrix_struct** %A) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %A.addr = alloca %struct.sm_matrix_struct**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.sm_matrix_struct** %A, %struct.sm_matrix_struct*** %A.addr, align 8
  %call = call %struct.sm_matrix_struct* @sm_alloc()
  %0 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %A.addr, align 8
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %0, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %1) #3
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %i, i32* %j)
  store i32 %call2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %4 = load i32, i32* %err, align 4
  %cmp3 = icmp ne i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %A.addr, align 8
  %6 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %call6 = call %struct.sm_element_struct* @sm_insert(%struct.sm_matrix_struct* %6, i32 %7, i32 %8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @sm_read_compressed(%struct._IO_FILE* %fp, %struct.sm_matrix_struct** %A) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %A.addr = alloca %struct.sm_matrix_struct**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nrows = alloca i32, align 4
  %ncols = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.sm_matrix_struct** %A, %struct.sm_matrix_struct*** %A.addr, align 8
  %call = call %struct.sm_matrix_struct* @sm_alloc()
  %0 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %A.addr, align 8
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %0, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %nrows, i32* %ncols)
  %cmp = icmp ne i32 %call1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %A.addr, align 8
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %4 = load i32, i32* %nrows, align 4
  %5 = load i32, i32* %ncols, align 4
  call void @sm_resize(%struct.sm_matrix_struct* %3, i32 %4, i32 %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nrows, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64* %x)
  %cmp4 = icmp ne i32 %call3, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.20, %if.end.6
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %ncols, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body.9, label %for.end.21

for.body.9:                                       ; preds = %for.cond.7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64* %x)
  %cmp11 = icmp ne i32 %call10, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.9
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body.9
  %12 = load i32, i32* %j, align 4
  store i32 %12, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.13
  %13 = load i64, i64* %x, align 8
  %cmp15 = icmp ne i64 %13, 0
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %14 = load i64, i64* %x, align 8
  %and = and i64 %14, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body.16
  %15 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %A.addr, align 8
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %15, align 8
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %k, align 4
  %call18 = call %struct.sm_element_struct* @sm_insert(%struct.sm_matrix_struct* %16, i32 %17, i32 %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %19 = load i64, i64* %x, align 8
  %shr = lshr i64 %19, 1
  store i64 %shr, i64* %x, align 8
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %add = add nsw i32 %21, 32
  store i32 %add, i32* %j, align 4
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %22 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.24, %if.then.12, %if.then.5, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @sm_write(%struct._IO_FILE* %fp, %struct.sm_matrix_struct* %A) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 4
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %1, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp = icmp ne %struct.sm_row_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end.5

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %3, i32 0, i32 3
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %4, %struct.sm_element_struct** %p, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp2 = icmp ne %struct.sm_element_struct* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %row_num, align 4
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %col_num, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %8, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 4
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %p, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %13, i32 0, i32 5
  %14 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %14, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end.5:                                        ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @sm_print(%struct._IO_FILE* %fp, %struct.sm_matrix_struct* %A) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 8
  %1 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col, align 8
  %col_num = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %col_num, align 4
  %cmp = icmp sge i32 %2, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %4, i32 0, i32 7
  %5 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col, align 8
  store %struct.sm_col_struct* %5, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp1 = icmp ne %struct.sm_col_struct* %6, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num2 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %8, i32 0, i32 0
  %9 = load i32, i32* %col_num2, align 4
  %div = sdiv i32 %9, 100
  %rem = srem i32 %div, 10
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %rem)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %10, i32 0, i32 5
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  store %struct.sm_col_struct* %11, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %last_col5 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %13, i32 0, i32 8
  %14 = load %struct.sm_col_struct*, %struct.sm_col_struct** %last_col5, align 8
  %col_num6 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %col_num6, align 4
  %cmp7 = icmp sge i32 %15, 10
  br i1 %cmp7, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %17 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col10 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %17, i32 0, i32 7
  %18 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col10, align 8
  store %struct.sm_col_struct* %18, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %if.then.8
  %19 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp12 = icmp ne %struct.sm_col_struct* %19, null
  br i1 %cmp12, label %for.body.13, label %for.end.20

for.body.13:                                      ; preds = %for.cond.11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %21 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num14 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %21, i32 0, i32 0
  %22 = load i32, i32* %col_num14, align 4
  %div15 = sdiv i32 %22, 10
  %rem16 = srem i32 %div15, 10
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %rem16)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.13
  %23 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col19 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %23, i32 0, i32 5
  %24 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col19, align 8
  store %struct.sm_col_struct* %24, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %for.end.20, %if.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %27 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col24 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %27, i32 0, i32 7
  %28 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col24, align 8
  store %struct.sm_col_struct* %28, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.31, %if.end.22
  %29 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp26 = icmp ne %struct.sm_col_struct* %29, null
  br i1 %cmp26, label %for.body.27, label %for.end.33

for.body.27:                                      ; preds = %for.cond.25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %31 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num28 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %31, i32 0, i32 0
  %32 = load i32, i32* %col_num28, align 4
  %rem29 = srem i32 %32, 10
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %rem29)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.27
  %33 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col32 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %33, i32 0, i32 5
  %34 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col32, align 8
  store %struct.sm_col_struct* %34, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.25

for.end.33:                                       ; preds = %for.cond.25
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call34 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %37 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col36 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %37, i32 0, i32 7
  %38 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col36, align 8
  store %struct.sm_col_struct* %38, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.41, %for.end.33
  %39 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp38 = icmp ne %struct.sm_col_struct* %39, null
  br i1 %cmp38, label %for.body.39, label %for.end.43

for.body.39:                                      ; preds = %for.cond.37
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.39
  %41 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col42 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %41, i32 0, i32 5
  %42 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col42, align 8
  store %struct.sm_col_struct* %42, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.37

for.end.43:                                       ; preds = %for.cond.37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call44 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %43)
  %44 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %44, i32 0, i32 4
  %45 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %45, %struct.sm_row_struct** %prow, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.60, %for.end.43
  %46 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp46 = icmp ne %struct.sm_row_struct* %46, null
  br i1 %cmp46, label %for.body.47, label %for.end.61

for.body.47:                                      ; preds = %for.cond.45
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %48 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %48, i32 0, i32 0
  %49 = load i32, i32* %row_num, align 4
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %49)
  %50 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col49 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %50, i32 0, i32 7
  %51 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col49, align 8
  store %struct.sm_col_struct* %51, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.56, %for.body.47
  %52 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp51 = icmp ne %struct.sm_col_struct* %52, null
  br i1 %cmp51, label %for.body.52, label %for.end.58

for.body.52:                                      ; preds = %for.cond.50
  %53 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %54 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num53 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %54, i32 0, i32 0
  %55 = load i32, i32* %col_num53, align 4
  %call54 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_find to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %53, i32 %55)
  %tobool = icmp ne %struct.sm_element_struct* %call54, null
  %cond = select i1 %tobool, i32 49, i32 46
  store i32 %cond, i32* %c, align 4
  %56 = load i32, i32* %c, align 4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call55 = call i32 @_IO_putc(i32 %56, %struct._IO_FILE* %57)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.52
  %58 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col57 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %58, i32 0, i32 5
  %59 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col57, align 8
  store %struct.sm_col_struct* %59, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.50

for.end.58:                                       ; preds = %for.cond.50
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call59 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %60)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.58
  %61 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %61, i32 0, i32 5
  %62 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %62, %struct.sm_row_struct** %prow, align 8
  br label %for.cond.45

for.end.61:                                       ; preds = %for.cond.45
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @sm_dump(%struct.sm_matrix_struct* %A, i8* %s, i32 %max) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %s.addr = alloca i8*, align 8
  %max.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %max, i32* %max.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %3, i32 0, i32 6
  %4 = load i32, i32* %nrows, align 4
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 9
  %6 = load i32, i32* %ncols, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* %2, i32 %4, i32 %6)
  %7 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows1 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %7, i32 0, i32 6
  %8 = load i32, i32* %nrows1, align 4
  %9 = load i32, i32* %max.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  call void @sm_print(%struct._IO_FILE* %10, %struct.sm_matrix_struct* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @sm_cleanup() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
