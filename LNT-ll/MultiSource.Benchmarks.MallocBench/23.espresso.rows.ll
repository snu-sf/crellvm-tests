; ModuleID = './MultiSource.Benchmarks.MallocBench/23.espresso.rows.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: nounwind uwtable
define %struct.sm_row_struct* @sm_row_alloc() #0 {
entry:
  %prow = alloca %struct.sm_row_struct*, align 8
  %call = call i8* @malloc(i64 56)
  %0 = bitcast i8* %call to %struct.sm_row_struct*
  store %struct.sm_row_struct* %0, %struct.sm_row_struct** %prow, align 8
  %1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i32 0, i32 0
  store i32 0, i32* %row_num, align 4
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %3, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %last_col, align 8
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %4, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %first_col, align 8
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %prev_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %5, i32 0, i32 6
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %prev_row, align 8
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %6, i32 0, i32 5
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %next_row, align 8
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %flag = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %7, i32 0, i32 2
  store i32 0, i32* %flag, align 4
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %user_word = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %8, i32 0, i32 7
  store i8* null, i8** %user_word, align 8
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  ret %struct.sm_row_struct* %9
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @sm_row_free(%struct.sm_row_struct* %prow) #0 {
entry:
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %pnext = alloca %struct.sm_element_struct*, align 8
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
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %3, i32 0, i32 4
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %4, %struct.sm_element_struct** %pnext, align 8
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %tobool = icmp ne %struct.sm_element_struct* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %7 = bitcast %struct.sm_element_struct* %6 to i8*
  call void @free(i8* %7)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pnext, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %tobool1 = icmp ne %struct.sm_row_struct* %9, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.end
  %10 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %11 = bitcast %struct.sm_row_struct* %10 to i8*
  call void @free(i8* %11)
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %prow.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %for.end
  ret void
}

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sm_row_struct* @sm_row_dup(%struct.sm_row_struct* %prow) #0 {
entry:
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %pnew = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  %call = call %struct.sm_row_struct* @sm_row_alloc()
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %pnew, align 8
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
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %pnew, align 8
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %col_num, align 4
  %call1 = call %struct.sm_element_struct* @sm_row_insert(%struct.sm_row_struct* %3, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 4
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %7, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %pnew, align 8
  ret %struct.sm_row_struct* %8
}

; Function Attrs: nounwind uwtable
define %struct.sm_element_struct* @sm_row_insert(%struct.sm_row_struct* %prow, i32 %col) #0 {
entry:
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %col.addr = alloca i32, align 4
  %test = alloca %struct.sm_element_struct*, align 8
  %element = alloca %struct.sm_element_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %call = call i8* @malloc(i64 48)
  %0 = bitcast i8* %call to %struct.sm_element_struct*
  store %struct.sm_element_struct* %0, %struct.sm_element_struct** %element, align 8
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %user_word = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i32 0, i32 6
  store i8* null, i8** %user_word, align 8
  %2 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  store %struct.sm_element_struct* %2, %struct.sm_element_struct** %test, align 8
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %3, i32 0, i32 4
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col, align 8
  %cmp = icmp eq %struct.sm_element_struct* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %col.addr, align 4
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  store i32 %5, i32* %col_num, align 4
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %8, i32 0, i32 3
  store %struct.sm_element_struct* %7, %struct.sm_element_struct** %first_col, align 8
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %10 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col1 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %10, i32 0, i32 4
  store %struct.sm_element_struct* %9, %struct.sm_element_struct** %last_col1, align 8
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %next_col, align 8
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %prev_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 5
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %prev_col, align 8
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %length, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %length, align 4
  br label %if.end.50

if.else:                                          ; preds = %entry
  %15 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col2 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %15, i32 0, i32 4
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col2, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %col_num3, align 4
  %18 = load i32, i32* %col.addr, align 4
  %cmp4 = icmp slt i32 %17, %18
  br i1 %cmp4, label %if.then.5, label %if.else.15

if.then.5:                                        ; preds = %if.else
  %19 = load i32, i32* %col.addr, align 4
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %col_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 1
  store i32 %19, i32* %col_num6, align 4
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col7 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %22, i32 0, i32 4
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col7, align 8
  %next_col8 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 4
  store %struct.sm_element_struct* %21, %struct.sm_element_struct** %next_col8, align 8
  %24 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col9 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %24, i32 0, i32 4
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %last_col9, align 8
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %prev_col10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %26, i32 0, i32 5
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %prev_col10, align 8
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %28 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col11 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %28, i32 0, i32 4
  store %struct.sm_element_struct* %27, %struct.sm_element_struct** %last_col11, align 8
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %next_col12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %next_col12, align 8
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %length13 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %30, i32 0, i32 1
  %31 = load i32, i32* %length13, align 4
  %inc14 = add nsw i32 %31, 1
  store i32 %inc14, i32* %length13, align 4
  br label %if.end.49

if.else.15:                                       ; preds = %if.else
  %32 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %32, i32 0, i32 3
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col16, align 8
  %col_num17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %33, i32 0, i32 1
  %34 = load i32, i32* %col_num17, align 4
  %35 = load i32, i32* %col.addr, align 4
  %cmp18 = icmp sgt i32 %34, %35
  br i1 %cmp18, label %if.then.19, label %if.else.29

if.then.19:                                       ; preds = %if.else.15
  %36 = load i32, i32* %col.addr, align 4
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %col_num20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 1
  store i32 %36, i32* %col_num20, align 4
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %39 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col21 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %39, i32 0, i32 3
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col21, align 8
  %prev_col22 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %40, i32 0, i32 5
  store %struct.sm_element_struct* %38, %struct.sm_element_struct** %prev_col22, align 8
  %41 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col23 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %41, i32 0, i32 3
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col23, align 8
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %next_col24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %43, i32 0, i32 4
  store %struct.sm_element_struct* %42, %struct.sm_element_struct** %next_col24, align 8
  %44 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %45 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col25 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i32 0, i32 3
  store %struct.sm_element_struct* %44, %struct.sm_element_struct** %first_col25, align 8
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %prev_col26 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %46, i32 0, i32 5
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %prev_col26, align 8
  %47 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %length27 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %47, i32 0, i32 1
  %48 = load i32, i32* %length27, align 4
  %inc28 = add nsw i32 %48, 1
  store i32 %inc28, i32* %length27, align 4
  br label %if.end.48

if.else.29:                                       ; preds = %if.else.15
  %49 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col30 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %49, i32 0, i32 3
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col30, align 8
  store %struct.sm_element_struct* %50, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.29
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %51, i32 0, i32 1
  %52 = load i32, i32* %col_num31, align 4
  %53 = load i32, i32* %col.addr, align 4
  %cmp32 = icmp slt i32 %52, %53
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col33 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %54, i32 0, i32 4
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col33, align 8
  store %struct.sm_element_struct* %55, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %56, i32 0, i32 1
  %57 = load i32, i32* %col_num34, align 4
  %58 = load i32, i32* %col.addr, align 4
  %cmp35 = icmp sgt i32 %57, %58
  br i1 %cmp35, label %if.then.36, label %if.else.47

if.then.36:                                       ; preds = %for.end
  %59 = load i32, i32* %col.addr, align 4
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %col_num37 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %60, i32 0, i32 1
  store i32 %59, i32* %col_num37, align 4
  %61 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %prev_col38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %61, i32 0, i32 5
  %62 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col38, align 8
  store %struct.sm_element_struct* %62, %struct.sm_element_struct** %p, align 8
  %63 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %64 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col39 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %64, i32 0, i32 4
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col39, align 8
  %prev_col40 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 5
  store %struct.sm_element_struct* %63, %struct.sm_element_struct** %prev_col40, align 8
  %66 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %66, i32 0, i32 4
  %67 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col41, align 8
  %68 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %next_col42 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %68, i32 0, i32 4
  store %struct.sm_element_struct* %67, %struct.sm_element_struct** %next_col42, align 8
  %69 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %70 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col43 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %70, i32 0, i32 4
  store %struct.sm_element_struct* %69, %struct.sm_element_struct** %next_col43, align 8
  %71 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %72 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %prev_col44 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %72, i32 0, i32 5
  store %struct.sm_element_struct* %71, %struct.sm_element_struct** %prev_col44, align 8
  %73 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %length45 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %73, i32 0, i32 1
  %74 = load i32, i32* %length45, align 4
  %inc46 = add nsw i32 %74, 1
  store i32 %inc46, i32* %length45, align 4
  br label %if.end

if.else.47:                                       ; preds = %for.end
  %75 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  store %struct.sm_element_struct* %75, %struct.sm_element_struct** %test, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.47, %if.then.36
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %if.then.19
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.5
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then
  %76 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %77 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  %cmp51 = icmp ne %struct.sm_element_struct* %76, %77
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.50
  %78 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %tobool = icmp ne %struct.sm_element_struct* %78, null
  br i1 %tobool, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.52
  %79 = load %struct.sm_element_struct*, %struct.sm_element_struct** %element, align 8
  %80 = bitcast %struct.sm_element_struct* %79 to i8*
  call void @free(i8* %80)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %element, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.52
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.50
  %81 = load %struct.sm_element_struct*, %struct.sm_element_struct** %test, align 8
  ret %struct.sm_element_struct* %81
}

; Function Attrs: nounwind uwtable
define void @sm_row_remove(%struct.sm_row_struct* %prow, i32 %col) #0 {
entry:
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %col.addr = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp = icmp ne %struct.sm_element_struct* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %col_num, align 4
  %5 = load i32, i32* %col.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp2 = icmp ne %struct.sm_element_struct* %9, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.end
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %col_num3, align 4
  %12 = load i32, i32* %col.addr, align 4
  %cmp4 = icmp eq i32 %11, %12
  br i1 %cmp4, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %prev_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %13, i32 0, i32 5
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col, align 8
  %cmp5 = icmp eq %struct.sm_element_struct* %14, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %15, i32 0, i32 4
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col7, align 8
  %17 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col8 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %17, i32 0, i32 3
  store %struct.sm_element_struct* %16, %struct.sm_element_struct** %first_col8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i32 0, i32 4
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col9, align 8
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %prev_col10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 5
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col10, align 8
  %next_col11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %21, i32 0, i32 4
  store %struct.sm_element_struct* %19, %struct.sm_element_struct** %next_col11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 4
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col12, align 8
  %cmp13 = icmp eq %struct.sm_element_struct* %23, null
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.end
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %prev_col15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i32 0, i32 5
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col15, align 8
  %26 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %26, i32 0, i32 4
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %last_col, align 8
  br label %if.end.20

if.else.16:                                       ; preds = %if.end
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %prev_col17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %27, i32 0, i32 5
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col17, align 8
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 4
  %30 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col18, align 8
  %prev_col19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %30, i32 0, i32 5
  store %struct.sm_element_struct* %28, %struct.sm_element_struct** %prev_col19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.16, %if.then.14
  %31 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %31, i32 0, i32 1
  %32 = load i32, i32* %length, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %length, align 4
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %tobool = icmp ne %struct.sm_element_struct* %33, null
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.20
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %35 = bitcast %struct.sm_element_struct* %34 to i8*
  call void @free(i8* %35)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %p, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sm_element_struct* @sm_row_find(%struct.sm_row_struct* %prow, i32 %col) #0 {
entry:
  %retval = alloca %struct.sm_element_struct*, align 8
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %col.addr = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp = icmp ne %struct.sm_element_struct* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %col_num, align 4
  %5 = load i32, i32* %col.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp2 = icmp ne %struct.sm_element_struct* %9, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %col_num3, align 4
  %12 = load i32, i32* %col.addr, align 4
  %cmp4 = icmp eq i32 %11, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.end
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %retval
  ret %struct.sm_element_struct* %14
}

; Function Attrs: nounwind uwtable
define i32 @sm_row_contains(%struct.sm_row_struct* %p1, %struct.sm_row_struct* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca %struct.sm_row_struct*, align 8
  %p2.addr = alloca %struct.sm_row_struct*, align 8
  %q1 = alloca %struct.sm_element_struct*, align 8
  %q2 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %p1, %struct.sm_row_struct** %p1.addr, align 8
  store %struct.sm_row_struct* %p2, %struct.sm_row_struct** %p2.addr, align 8
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p1.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %q1, align 8
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p2.addr, align 8
  %first_col1 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 3
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col1, align 8
  store %struct.sm_element_struct* %3, %struct.sm_element_struct** %q2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %cmp = icmp ne %struct.sm_element_struct* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %cmp2 = icmp eq %struct.sm_element_struct* %5, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %col_num, align 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %col_num3, align 4
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %col_num5, align 4
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %col_num6, align 4
  %cmp7 = icmp eq i32 %11, %13
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 4
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %15, %struct.sm_element_struct** %q1, align 8
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %next_col9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 4
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col9, align 8
  store %struct.sm_element_struct* %17, %struct.sm_element_struct** %q2, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %next_col11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i32 0, i32 4
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col11, align 8
  store %struct.sm_element_struct* %19, %struct.sm_element_struct** %q2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @sm_row_intersects(%struct.sm_row_struct* %p1, %struct.sm_row_struct* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca %struct.sm_row_struct*, align 8
  %p2.addr = alloca %struct.sm_row_struct*, align 8
  %q1 = alloca %struct.sm_element_struct*, align 8
  %q2 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %p1, %struct.sm_row_struct** %p1.addr, align 8
  store %struct.sm_row_struct* %p2, %struct.sm_row_struct** %p2.addr, align 8
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p1.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %q1, align 8
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p2.addr, align 8
  %first_col1 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 3
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col1, align 8
  store %struct.sm_element_struct* %3, %struct.sm_element_struct** %q2, align 8
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %cmp = icmp eq %struct.sm_element_struct* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %cmp2 = icmp eq %struct.sm_element_struct* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end.19, %if.end
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %col_num, align 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %col_num3, align 4
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.cond
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %10, i32 0, i32 4
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %11, %struct.sm_element_struct** %q1, align 8
  %cmp6 = icmp eq %struct.sm_element_struct* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.19

if.else:                                          ; preds = %for.cond
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %col_num9, align 4
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %col_num10, align 4
  %cmp11 = icmp sgt i32 %13, %15
  br i1 %cmp11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.else
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %next_col13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 4
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col13, align 8
  store %struct.sm_element_struct* %17, %struct.sm_element_struct** %q2, align 8
  %cmp14 = icmp eq %struct.sm_element_struct* %17, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.18

if.else.17:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.8
  br label %for.cond

return:                                           ; preds = %if.else.17, %if.then.15, %if.then.7, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @sm_row_compare(%struct.sm_row_struct* %p1, %struct.sm_row_struct* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca %struct.sm_row_struct*, align 8
  %p2.addr = alloca %struct.sm_row_struct*, align 8
  %q1 = alloca %struct.sm_element_struct*, align 8
  %q2 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %p1, %struct.sm_row_struct** %p1.addr, align 8
  store %struct.sm_row_struct* %p2, %struct.sm_row_struct** %p2.addr, align 8
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p1.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %q1, align 8
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p2.addr, align 8
  %first_col1 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 3
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col1, align 8
  store %struct.sm_element_struct* %3, %struct.sm_element_struct** %q2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %cmp = icmp ne %struct.sm_element_struct* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %cmp2 = icmp ne %struct.sm_element_struct* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %col_num, align 4
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %col_num3, align 4
  %cmp4 = icmp ne i32 %8, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %col_num5, align 4
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %col_num6, align 4
  %sub = sub nsw i32 %12, %14
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %15, i32 0, i32 4
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %16, %struct.sm_element_struct** %q1, align 8
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %next_col7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %17, i32 0, i32 4
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col7, align 8
  store %struct.sm_element_struct* %18, %struct.sm_element_struct** %q2, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %cmp8 = icmp ne %struct.sm_element_struct* %19, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %cmp10 = icmp ne %struct.sm_element_struct* %20, null
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.then.11, %if.then.9, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define %struct.sm_row_struct* @sm_row_and(%struct.sm_row_struct* %p1, %struct.sm_row_struct* %p2) #0 {
entry:
  %retval = alloca %struct.sm_row_struct*, align 8
  %p1.addr = alloca %struct.sm_row_struct*, align 8
  %p2.addr = alloca %struct.sm_row_struct*, align 8
  %q1 = alloca %struct.sm_element_struct*, align 8
  %q2 = alloca %struct.sm_element_struct*, align 8
  %result = alloca %struct.sm_row_struct*, align 8
  store %struct.sm_row_struct* %p1, %struct.sm_row_struct** %p1.addr, align 8
  store %struct.sm_row_struct* %p2, %struct.sm_row_struct** %p2.addr, align 8
  %call = call %struct.sm_row_struct* @sm_row_alloc()
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %result, align 8
  %0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p1.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i32 0, i32 3
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %q1, align 8
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %p2.addr, align 8
  %first_col1 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 3
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col1, align 8
  store %struct.sm_element_struct* %3, %struct.sm_element_struct** %q2, align 8
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %cmp = icmp eq %struct.sm_element_struct* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %cmp2 = icmp eq %struct.sm_element_struct* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %result, align 8
  store %struct.sm_row_struct* %6, %struct.sm_row_struct** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end.29, %if.end
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %col_num, align 4
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %col_num3, align 4
  %cmp4 = icmp slt i32 %8, %10
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.cond
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 4
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %q1, align 8
  %cmp6 = icmp eq %struct.sm_element_struct* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %result, align 8
  store %struct.sm_row_struct* %13, %struct.sm_row_struct** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.29

if.else:                                          ; preds = %for.cond
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %col_num9, align 4
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %col_num10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %col_num10, align 4
  %cmp11 = icmp sgt i32 %15, %17
  br i1 %cmp11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.else
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %next_col13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i32 0, i32 4
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col13, align 8
  store %struct.sm_element_struct* %19, %struct.sm_element_struct** %q2, align 8
  %cmp14 = icmp eq %struct.sm_element_struct* %19, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %20 = load %struct.sm_row_struct*, %struct.sm_row_struct** %result, align 8
  store %struct.sm_row_struct* %20, %struct.sm_row_struct** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.28

if.else.17:                                       ; preds = %if.else
  %21 = load %struct.sm_row_struct*, %struct.sm_row_struct** %result, align 8
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %col_num18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %col_num18, align 4
  %call19 = call %struct.sm_element_struct* @sm_row_insert(%struct.sm_row_struct* %21, i32 %23)
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q1, align 8
  %next_col20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i32 0, i32 4
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col20, align 8
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %q1, align 8
  %cmp21 = icmp eq %struct.sm_element_struct* %25, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.17
  %26 = load %struct.sm_row_struct*, %struct.sm_row_struct** %result, align 8
  store %struct.sm_row_struct* %26, %struct.sm_row_struct** %retval
  br label %return

if.end.23:                                        ; preds = %if.else.17
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %q2, align 8
  %next_col24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %27, i32 0, i32 4
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col24, align 8
  store %struct.sm_element_struct* %28, %struct.sm_element_struct** %q2, align 8
  %cmp25 = icmp eq %struct.sm_element_struct* %28, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %29 = load %struct.sm_row_struct*, %struct.sm_row_struct** %result, align 8
  store %struct.sm_row_struct* %29, %struct.sm_row_struct** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.16
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.8
  br label %for.cond

return:                                           ; preds = %if.then.26, %if.then.22, %if.then.15, %if.then.7, %if.then
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %retval
  ret %struct.sm_row_struct* %30
}

; Function Attrs: nounwind uwtable
define i32 @sm_row_hash(%struct.sm_row_struct* %prow, i32 %modulus) #0 {
entry:
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %modulus.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  store i32 %modulus, i32* %modulus.addr, align 4
  store i32 0, i32* %sum, align 4
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
  %3 = load i32, i32* %sum, align 4
  %mul = mul nsw i32 %3, 17
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %col_num, align 4
  %add = add nsw i32 %mul, %5
  %6 = load i32, i32* %modulus.addr, align 4
  %rem = srem i32 %add, %6
  store i32 %rem, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %sum, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @sm_row_remove_element(%struct.sm_row_struct* %prow, %struct.sm_element_struct* %p) #0 {
entry:
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %p.addr = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_row_struct* %prow, %struct.sm_row_struct** %prow.addr, align 8
  store %struct.sm_element_struct* %p, %struct.sm_element_struct** %p.addr, align 8
  %0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %0, i32 0, i32 5
  %1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col, align 8
  %cmp = icmp eq %struct.sm_element_struct* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %2, i32 0, i32 4
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %4, i32 0, i32 3
  store %struct.sm_element_struct* %3, %struct.sm_element_struct** %first_col, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col1 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %5, i32 0, i32 4
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col1, align 8
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col2 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 5
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col2, align 8
  %next_col3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i32 0, i32 4
  store %struct.sm_element_struct* %6, %struct.sm_element_struct** %next_col3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col4 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 4
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col4, align 8
  %cmp5 = icmp eq %struct.sm_element_struct* %10, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.end
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 5
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col7, align 8
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %last_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %13, i32 0, i32 4
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %last_col, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %if.end
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %prev_col9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 5
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %prev_col9, align 8
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %next_col10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 4
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col10, align 8
  %prev_col11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %17, i32 0, i32 5
  store %struct.sm_element_struct* %15, %struct.sm_element_struct** %prev_col11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.6
  %18 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow.addr, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %length, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %length, align 4
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %tobool = icmp ne %struct.sm_element_struct* %20, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.12
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p.addr, align 8
  %22 = bitcast %struct.sm_element_struct* %21 to i8*
  call void @free(i8* %22)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %p.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define void @sm_row_print(%struct._IO_FILE* %fp, %struct.sm_row_struct* %prow) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %prow.addr = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
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
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %col_num, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %6, i32 0, i32 4
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %7, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
