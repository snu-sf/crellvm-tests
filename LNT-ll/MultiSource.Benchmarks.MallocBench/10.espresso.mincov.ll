; ModuleID = './MultiSource.Benchmarks.MallocBench/10.espresso.mincov.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.solution_struct = type { %struct.sm_row_struct*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"**** heuristic covering ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"lower bound = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"matrix     = %d by %d with %d elements (%4.3f%%)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cover size = %d elements\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cover cost = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"time       = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"components = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gimpel     = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"nodes      = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"max_depth  = %d\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Fatal error: file %s, line %d\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [95 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/mincov.c\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"mincov: internal error -- cover verification failed\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"ABSMIN[%2d]%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c" %3dx%3d sel=%3d bnd=%3d lb=%3d %12s \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"bounded\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"BEST\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"new 'best' solution %d at level %d (time is %s)\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"comp %d %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"pick=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.sm_row_struct* @sm_minimum_cover(%struct.sm_matrix_struct* %A, i32* %weight, i32 %heuristic, i32 %debug_level) #0 {
entry:
  %retval = alloca %struct.sm_row_struct*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %heuristic.addr = alloca i32, align 4
  %debug_level.addr = alloca i32, align 4
  %stats = alloca %struct.stats_struct, align 8
  %best = alloca %struct.solution_struct*, align 8
  %select = alloca %struct.solution_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %sol = alloca %struct.sm_row_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %dup_A = alloca %struct.sm_matrix_struct*, align 8
  %nelem = alloca i32, align 4
  %bound = alloca i32, align 4
  %sparsity = alloca double, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %heuristic, i32* %heuristic.addr, align 4
  store i32 %debug_level, i32* %debug_level.addr, align 4
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i32 0, i32 6
  %1 = load i32, i32* %nrows, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sm_row_struct* (...) @sm_row_alloc()
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 (...) @util_cpu_time()
  %start_time = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 8
  store i64 %call1, i64* %start_time, align 8
  %2 = load i32, i32* %debug_level.addr, align 4
  %cmp2 = icmp sgt i32 %2, 0
  %conv = zext i1 %cmp2 to i32
  %debug = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 0
  store i32 %conv, i32* %debug, align 4
  %3 = load i32, i32* %debug_level.addr, align 4
  %max_print_depth = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 1
  store i32 %3, i32* %max_print_depth, align 4
  %max_depth = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 2
  store i32 -1, i32* %max_depth, align 4
  %nodes = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 3
  store i32 0, i32* %nodes, align 4
  %comp_count = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 5
  store i32 0, i32* %comp_count, align 4
  %component = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 4
  store i32 0, i32* %component, align 4
  %gimpel_count = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 6
  store i32 0, i32* %gimpel_count, align 4
  %gimpel = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 7
  store i32 0, i32* %gimpel, align 4
  %4 = load i32, i32* %heuristic.addr, align 4
  %cmp3 = icmp ne i32 %4, 0
  %conv4 = zext i1 %cmp3 to i32
  %no_branching = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 9
  store i32 %conv4, i32* %no_branching, align 4
  %lower_bound = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 10
  store i32 -1, i32* %lower_bound, align 4
  store i32 0, i32* %nelem, align 4
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %5, i32 0, i32 4
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %6, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp5 = icmp ne %struct.sm_row_struct* %7, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %length, align 4
  %10 = load i32, i32* %nelem, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %nelem, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %11, i32 0, i32 5
  %12 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %12, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %nelem, align 4
  %conv7 = sitofp i32 %13 to double
  %14 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows8 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %14, i32 0, i32 6
  %15 = load i32, i32* %nrows8, align 4
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 9
  %17 = load i32, i32* %ncols, align 4
  %mul = mul nsw i32 %15, %17
  %conv9 = sitofp i32 %mul to double
  %div = fdiv double %conv7, %conv9
  store double %div, double* %sparsity, align 8
  store i32 1, i32* %bound, align 4
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 7
  %19 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col, align 8
  store %struct.sm_col_struct* %19, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.17, %for.end
  %20 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp11 = icmp ne %struct.sm_col_struct* %20, null
  br i1 %cmp11, label %for.body.13, label %for.end.18

for.body.13:                                      ; preds = %for.cond.10
  %21 = load i32*, i32** %weight.addr, align 8
  %cmp14 = icmp eq i32* %21, null
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.13
  br label %cond.end

cond.false:                                       ; preds = %for.body.13
  %22 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %col_num, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %weight.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %25, %cond.false ]
  %26 = load i32, i32* %bound, align 4
  %add16 = add nsw i32 %26, %cond
  store i32 %add16, i32* %bound, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %cond.end
  %27 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %27, i32 0, i32 5
  %28 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col, align 8
  store %struct.sm_col_struct* %28, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.10

for.end.18:                                       ; preds = %for.cond.10
  %call19 = call %struct.solution_struct* (...) @solution_alloc()
  store %struct.solution_struct* %call19, %struct.solution_struct** %select, align 8
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %call20 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %29)
  store %struct.sm_matrix_struct* %call20, %struct.sm_matrix_struct** %dup_A, align 8
  %30 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %dup_A, align 8
  %31 = load %struct.solution_struct*, %struct.solution_struct** %select, align 8
  %32 = load i32*, i32** %weight.addr, align 8
  %33 = load i32, i32* %bound, align 4
  %call21 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* %30, %struct.solution_struct* %31, i32* %32, i32 0, i32 %33, i32 0, %struct.stats_struct* %stats)
  store %struct.solution_struct* %call21, %struct.solution_struct** %best, align 8
  %34 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %dup_A, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %34)
  %35 = load %struct.solution_struct*, %struct.solution_struct** %select, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %35)
  %debug22 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 0
  %36 = load i32, i32* %debug22, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.23, label %if.end.50

if.then.23:                                       ; preds = %for.end.18
  %no_branching24 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 9
  %37 = load i32, i32* %no_branching24, align 4
  %tobool25 = icmp ne i32 %37, 0
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.then.23
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %lower_bound28 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 10
  %38 = load i32, i32* %lower_bound28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 %38)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.then.23
  %39 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows31 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %39, i32 0, i32 6
  %40 = load i32, i32* %nrows31, align 4
  %41 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols32 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %41, i32 0, i32 9
  %42 = load i32, i32* %ncols32, align 4
  %43 = load i32, i32* %nelem, align 4
  %44 = load double, double* %sparsity, align 8
  %mul33 = fmul double %44, 1.000000e+02
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i32 %40, i32 %42, i32 %43, double %mul33)
  %45 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %45, i32 0, i32 0
  %46 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %length35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %46, i32 0, i32 1
  %47 = load i32, i32* %length35, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i32 %47)
  %48 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %48, i32 0, i32 1
  %49 = load i32, i32* %cost, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %49)
  %call38 = call i64 (...) @util_cpu_time()
  %start_time39 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 8
  %50 = load i64, i64* %start_time39, align 8
  %sub = sub nsw i64 %call38, %50
  %call40 = call i8* @util_print_time(i64 %sub)
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %call40)
  %comp_count42 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 5
  %51 = load i32, i32* %comp_count42, align 4
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %51)
  %gimpel_count44 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 6
  %52 = load i32, i32* %gimpel_count44, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %52)
  %nodes46 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 3
  %53 = load i32, i32* %nodes46, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 %53)
  %max_depth48 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %stats, i32 0, i32 2
  %54 = load i32, i32* %max_depth48, align 4
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 %54)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.30, %for.end.18
  %55 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  %row51 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %55, i32 0, i32 0
  %56 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row51, align 8
  %call52 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %56)
  store %struct.sm_row_struct* %call52, %struct.sm_row_struct** %sol, align 8
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %58 = load %struct.sm_row_struct*, %struct.sm_row_struct** %sol, align 8
  %call53 = call i32 @verify_cover(%struct.sm_matrix_struct* %57, %struct.sm_row_struct* %58)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.58, label %if.then.55

if.then.55:                                       ; preds = %if.end.50
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i32 0, i32 0), i32 91, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fflush(%struct._IO_FILE* %60)
  call void @abort() #3
  unreachable

if.end.58:                                        ; preds = %if.end.50
  %61 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %61)
  %62 = load %struct.sm_row_struct*, %struct.sm_row_struct** %sol, align 8
  store %struct.sm_row_struct* %62, %struct.sm_row_struct** %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then
  %63 = load %struct.sm_row_struct*, %struct.sm_row_struct** %retval
  ret %struct.sm_row_struct* %63
}

declare %struct.sm_row_struct* @sm_row_alloc(...) #1

declare i64 @util_cpu_time(...) #1

declare %struct.solution_struct* @solution_alloc(...) #1

declare %struct.sm_matrix_struct* @sm_dup(...) #1

declare void @sm_free(...) #1

declare void @solution_free(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @util_print_time(i64) #1

declare %struct.sm_row_struct* @sm_row_dup(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noreturn
declare void @abort() #2

; Function Attrs: nounwind uwtable
define %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* %A, %struct.solution_struct* %select, i32* %weight, i32 %lb, i32 %bound, i32 %depth, %struct.stats_struct* %stats) #0 {
entry:
  %retval = alloca %struct.solution_struct*, align 8
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %select.addr = alloca %struct.solution_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %lb.addr = alloca i32, align 4
  %bound.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %stats.addr = alloca %struct.stats_struct*, align 8
  %A1 = alloca %struct.sm_matrix_struct*, align 8
  %A2 = alloca %struct.sm_matrix_struct*, align 8
  %L = alloca %struct.sm_matrix_struct*, align 8
  %R = alloca %struct.sm_matrix_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %select1 = alloca %struct.solution_struct*, align 8
  %select2 = alloca %struct.solution_struct*, align 8
  %best = alloca %struct.solution_struct*, align 8
  %best1 = alloca %struct.solution_struct*, align 8
  %best2 = alloca %struct.solution_struct*, align 8
  %indep = alloca %struct.solution_struct*, align 8
  %pick = alloca i32, align 4
  %lb_new = alloca i32, align 4
  %debug = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.solution_struct* %select, %struct.solution_struct** %select.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %lb, i32* %lb.addr, align 4
  store i32 %bound, i32* %bound.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store %struct.stats_struct* %stats, %struct.stats_struct** %stats.addr, align 8
  %0 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %nodes = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %nodes, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %nodes, align 4
  %2 = load i32, i32* %depth.addr, align 4
  %3 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %max_depth = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %max_depth, align 4
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %depth.addr, align 4
  %6 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %max_depth1 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i32 0, i32 2
  store i32 %5, i32* %max_depth1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %debug2 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %debug2, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %9 = load i32, i32* %depth.addr, align 4
  %10 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %max_print_depth = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %max_print_depth, align 4
  %cmp3 = icmp sle i32 %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %12 = phi i1 [ false, %if.end ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %debug, align 4
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %14 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %15 = load i32*, i32** %weight.addr, align 8
  %16 = load i32, i32* %bound.addr, align 4
  call void @select_essential(%struct.sm_matrix_struct* %13, %struct.solution_struct* %14, i32* %15, i32 %16)
  %17 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %cost, align 4
  %19 = load i32, i32* %bound.addr, align 4
  %cmp4 = icmp sge i32 %18, %19
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.end
  store %struct.solution_struct* null, %struct.solution_struct** %retval
  br label %return

if.end.6:                                         ; preds = %land.end
  %20 = load i32*, i32** %weight.addr, align 8
  %cmp7 = icmp eq i32* %20, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.6
  %21 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %22 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %23 = load i32*, i32** %weight.addr, align 8
  %24 = load i32, i32* %lb.addr, align 4
  %25 = load i32, i32* %bound.addr, align 4
  %26 = load i32, i32* %depth.addr, align 4
  %27 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %call = call i32 (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, %struct.solution_struct**, ...) bitcast (i32 (...)* @gimpel_reduce to i32 (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, %struct.solution_struct**, ...)*)(%struct.sm_matrix_struct* %21, %struct.solution_struct* %22, i32* %23, i32 %24, i32 %25, i32 %26, %struct.stats_struct* %27, %struct.solution_struct** %best)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %28 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  store %struct.solution_struct* %28, %struct.solution_struct** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.6
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %30 = load i32*, i32** %weight.addr, align 8
  %call13 = call %struct.solution_struct* (%struct.sm_matrix_struct*, i32*, ...) bitcast (%struct.solution_struct* (...)* @sm_maximal_independent_set to %struct.solution_struct* (%struct.sm_matrix_struct*, i32*, ...)*)(%struct.sm_matrix_struct* %29, i32* %30)
  store %struct.solution_struct* %call13, %struct.solution_struct** %indep, align 8
  %31 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %cost14 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %31, i32 0, i32 1
  %32 = load i32, i32* %cost14, align 4
  %33 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  %cost15 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %33, i32 0, i32 1
  %34 = load i32, i32* %cost15, align 4
  %add = add nsw i32 %32, %34
  %35 = load i32, i32* %lb.addr, align 4
  %cmp16 = icmp sgt i32 %add, %35
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %36 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %cost17 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %36, i32 0, i32 1
  %37 = load i32, i32* %cost17, align 4
  %38 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  %cost18 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %38, i32 0, i32 1
  %39 = load i32, i32* %cost18, align 4
  %add19 = add nsw i32 %37, %39
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %40 = load i32, i32* %lb.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add19, %cond.true ], [ %40, %cond.false ]
  store i32 %cond, i32* %lb_new, align 4
  %41 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %42 = load i32*, i32** %weight.addr, align 8
  %43 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  %call20 = call i32 @select_column(%struct.sm_matrix_struct* %41, i32* %42, %struct.solution_struct* %43)
  store i32 %call20, i32* %pick, align 4
  %44 = load %struct.solution_struct*, %struct.solution_struct** %indep, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %44)
  %45 = load i32, i32* %depth.addr, align 4
  %cmp21 = icmp eq i32 %45, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %46 = load i32, i32* %lb_new, align 4
  %47 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %47, i32 0, i32 7
  %48 = load i32, i32* %gimpel, align 4
  %add23 = add nsw i32 %46, %48
  %49 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %lower_bound = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %49, i32 0, i32 10
  store i32 %add23, i32* %lower_bound, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %50 = load i32, i32* %debug, align 4
  %tobool25 = icmp ne i32 %50, 0
  br i1 %tobool25, label %if.then.26, label %if.end.40

if.then.26:                                       ; preds = %if.end.24
  %51 = load i32, i32* %depth.addr, align 4
  %52 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %component = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %52, i32 0, i32 4
  %53 = load i32, i32* %component, align 4
  %tobool27 = icmp ne i32 %53, 0
  %cond28 = select i1 %tobool27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %51, i8* %cond28)
  %54 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %54, i32 0, i32 6
  %55 = load i32, i32* %nrows, align 4
  %56 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %56, i32 0, i32 9
  %57 = load i32, i32* %ncols, align 4
  %58 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %cost30 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %58, i32 0, i32 1
  %59 = load i32, i32* %cost30, align 4
  %60 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel31 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %60, i32 0, i32 7
  %61 = load i32, i32* %gimpel31, align 4
  %add32 = add nsw i32 %59, %61
  %62 = load i32, i32* %bound.addr, align 4
  %63 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel33 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %63, i32 0, i32 7
  %64 = load i32, i32* %gimpel33, align 4
  %add34 = add nsw i32 %62, %64
  %65 = load i32, i32* %lb_new, align 4
  %66 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel35 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %66, i32 0, i32 7
  %67 = load i32, i32* %gimpel35, align 4
  %add36 = add nsw i32 %65, %67
  %call37 = call i64 (...) @util_cpu_time()
  %68 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %start_time = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %68, i32 0, i32 8
  %69 = load i64, i64* %start_time, align 8
  %sub = sub nsw i64 %call37, %69
  %call38 = call i8* @util_print_time(i64 %sub)
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i32 %55, i32 %57, i32 %add32, i32 %add34, i32 %add36, i8* %call38)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.26, %if.end.24
  %70 = load i32, i32* %lb_new, align 4
  %71 = load i32, i32* %bound.addr, align 4
  %cmp41 = icmp sge i32 %70, %71
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.40
  %72 = load i32, i32* %debug, align 4
  %tobool43 = icmp ne i32 %72, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.42
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.42
  store %struct.solution_struct* null, %struct.solution_struct** %best, align 8
  br label %if.end.132

if.else:                                          ; preds = %if.end.40
  %73 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %nrows47 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %73, i32 0, i32 6
  %74 = load i32, i32* %nrows47, align 4
  %cmp48 = icmp eq i32 %74, 0
  br i1 %cmp48, label %if.then.49, label %if.else.69

if.then.49:                                       ; preds = %if.else
  %75 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %call50 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* %75)
  store %struct.solution_struct* %call50, %struct.solution_struct** %best, align 8
  %76 = load i32, i32* %debug, align 4
  %tobool51 = icmp ne i32 %76, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.49
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.49
  %77 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %debug55 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %77, i32 0, i32 0
  %78 = load i32, i32* %debug55, align 4
  %tobool56 = icmp ne i32 %78, 0
  br i1 %tobool56, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end.54
  %79 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %component57 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %79, i32 0, i32 4
  %80 = load i32, i32* %component57, align 4
  %cmp58 = icmp eq i32 %80, 0
  br i1 %cmp58, label %if.then.59, label %if.end.68

if.then.59:                                       ; preds = %land.lhs.true
  %81 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  %cost60 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %81, i32 0, i32 1
  %82 = load i32, i32* %cost60, align 4
  %83 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %gimpel61 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %83, i32 0, i32 7
  %84 = load i32, i32* %gimpel61, align 4
  %add62 = add nsw i32 %82, %84
  %85 = load i32, i32* %depth.addr, align 4
  %call63 = call i64 (...) @util_cpu_time()
  %86 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %start_time64 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %86, i32 0, i32 8
  %87 = load i64, i64* %start_time64, align 8
  %sub65 = sub nsw i64 %call63, %87
  %call66 = call i8* @util_print_time(i64 %sub65)
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), i32 %add62, i32 %85, i8* %call66)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.59, %land.lhs.true, %if.end.54
  br label %if.end.131

if.else.69:                                       ; preds = %if.else
  %88 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %call70 = call i32 (%struct.sm_matrix_struct*, %struct.sm_matrix_struct**, %struct.sm_matrix_struct**, ...) bitcast (i32 (...)* @sm_block_partition to i32 (%struct.sm_matrix_struct*, %struct.sm_matrix_struct**, %struct.sm_matrix_struct**, ...)*)(%struct.sm_matrix_struct* %88, %struct.sm_matrix_struct** %L, %struct.sm_matrix_struct** %R)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.else.100

if.then.72:                                       ; preds = %if.else.69
  %89 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %L, align 8
  %ncols73 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %89, i32 0, i32 9
  %90 = load i32, i32* %ncols73, align 4
  %91 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %R, align 8
  %ncols74 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %91, i32 0, i32 9
  %92 = load i32, i32* %ncols74, align 4
  %cmp75 = icmp sgt i32 %90, %92
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.72
  %93 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %L, align 8
  store %struct.sm_matrix_struct* %93, %struct.sm_matrix_struct** %A1, align 8
  %94 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %R, align 8
  store %struct.sm_matrix_struct* %94, %struct.sm_matrix_struct** %L, align 8
  %95 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A1, align 8
  store %struct.sm_matrix_struct* %95, %struct.sm_matrix_struct** %R, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.72
  %96 = load i32, i32* %debug, align 4
  %tobool78 = icmp ne i32 %96, 0
  br i1 %tobool78, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.77
  %97 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %L, align 8
  %nrows80 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %97, i32 0, i32 6
  %98 = load i32, i32* %nrows80, align 4
  %99 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %R, align 8
  %nrows81 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %99, i32 0, i32 6
  %100 = load i32, i32* %nrows81, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 %98, i32 %100)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.end.77
  %101 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %comp_count = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %101, i32 0, i32 5
  %102 = load i32, i32* %comp_count, align 4
  %inc84 = add nsw i32 %102, 1
  store i32 %inc84, i32* %comp_count, align 4
  %call85 = call %struct.solution_struct* (...) @solution_alloc()
  store %struct.solution_struct* %call85, %struct.solution_struct** %select1, align 8
  %103 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %component86 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %103, i32 0, i32 4
  %104 = load i32, i32* %component86, align 4
  %inc87 = add nsw i32 %104, 1
  store i32 %inc87, i32* %component86, align 4
  %105 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %L, align 8
  %106 = load %struct.solution_struct*, %struct.solution_struct** %select1, align 8
  %107 = load i32*, i32** %weight.addr, align 8
  %108 = load i32, i32* %bound.addr, align 4
  %109 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %cost88 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %109, i32 0, i32 1
  %110 = load i32, i32* %cost88, align 4
  %sub89 = sub nsw i32 %108, %110
  %111 = load i32, i32* %depth.addr, align 4
  %add90 = add nsw i32 %111, 1
  %112 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %call91 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* %105, %struct.solution_struct* %106, i32* %107, i32 0, i32 %sub89, i32 %add90, %struct.stats_struct* %112)
  store %struct.solution_struct* %call91, %struct.solution_struct** %best1, align 8
  %113 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %component92 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %113, i32 0, i32 4
  %114 = load i32, i32* %component92, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %component92, align 4
  %115 = load %struct.solution_struct*, %struct.solution_struct** %select1, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %115)
  %116 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %L, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %116)
  %117 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %cmp93 = icmp eq %struct.solution_struct* %117, null
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.end.83
  store %struct.solution_struct* null, %struct.solution_struct** %best, align 8
  br label %if.end.99

if.else.95:                                       ; preds = %if.end.83
  %118 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %118, i32 0, i32 0
  %119 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %119, i32 0, i32 3
  %120 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %120, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.95
  %121 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp96 = icmp ne %struct.sm_element_struct* %121, null
  br i1 %cmp96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %122 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %123 = load i32*, i32** %weight.addr, align 8
  %124 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %124, i32 0, i32 1
  %125 = load i32, i32* %col_num, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* %122, i32* %123, i32 %125)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %126 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %126, i32 0, i32 4
  %127 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %127, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %128 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %128)
  %129 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %R, align 8
  %130 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %131 = load i32*, i32** %weight.addr, align 8
  %132 = load i32, i32* %lb_new, align 4
  %133 = load i32, i32* %bound.addr, align 4
  %134 = load i32, i32* %depth.addr, align 4
  %add97 = add nsw i32 %134, 1
  %135 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %call98 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* %129, %struct.solution_struct* %130, i32* %131, i32 %132, i32 %133, i32 %add97, %struct.stats_struct* %135)
  store %struct.solution_struct* %call98, %struct.solution_struct** %best, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %for.end, %if.then.94
  %136 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %R, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %136)
  br label %if.end.130

if.else.100:                                      ; preds = %if.else.69
  %137 = load i32, i32* %debug, align 4
  %tobool101 = icmp ne i32 %137, 0
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.else.100
  %138 = load i32, i32* %pick, align 4
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %138)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.else.100
  %139 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %call105 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %139)
  store %struct.sm_matrix_struct* %call105, %struct.sm_matrix_struct** %A1, align 8
  %140 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %call106 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* %140)
  store %struct.solution_struct* %call106, %struct.solution_struct** %select1, align 8
  %141 = load %struct.solution_struct*, %struct.solution_struct** %select1, align 8
  %142 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A1, align 8
  %143 = load i32*, i32** %weight.addr, align 8
  %144 = load i32, i32* %pick, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_accept to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* %141, %struct.sm_matrix_struct* %142, i32* %143, i32 %144)
  %145 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A1, align 8
  %146 = load %struct.solution_struct*, %struct.solution_struct** %select1, align 8
  %147 = load i32*, i32** %weight.addr, align 8
  %148 = load i32, i32* %lb_new, align 4
  %149 = load i32, i32* %bound.addr, align 4
  %150 = load i32, i32* %depth.addr, align 4
  %add107 = add nsw i32 %150, 1
  %151 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %call108 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* %145, %struct.solution_struct* %146, i32* %147, i32 %148, i32 %149, i32 %add107, %struct.stats_struct* %151)
  store %struct.solution_struct* %call108, %struct.solution_struct** %best1, align 8
  %152 = load %struct.solution_struct*, %struct.solution_struct** %select1, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %152)
  %153 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A1, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %153)
  %154 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %cmp109 = icmp ne %struct.solution_struct* %154, null
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.115

land.lhs.true.110:                                ; preds = %if.end.104
  %155 = load i32, i32* %bound.addr, align 4
  %156 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %cost111 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %156, i32 0, i32 1
  %157 = load i32, i32* %cost111, align 4
  %cmp112 = icmp sgt i32 %155, %157
  br i1 %cmp112, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.110
  %158 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %cost114 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %158, i32 0, i32 1
  %159 = load i32, i32* %cost114, align 4
  store i32 %159, i32* %bound.addr, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %land.lhs.true.110, %if.end.104
  %160 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %no_branching = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %160, i32 0, i32 9
  %161 = load i32, i32* %no_branching, align 4
  %tobool116 = icmp ne i32 %161, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.115
  %162 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  store %struct.solution_struct* %162, %struct.solution_struct** %retval
  br label %return

if.end.118:                                       ; preds = %if.end.115
  %163 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %cmp119 = icmp ne %struct.solution_struct* %163, null
  br i1 %cmp119, label %land.lhs.true.120, label %if.end.124

land.lhs.true.120:                                ; preds = %if.end.118
  %164 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %cost121 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %164, i32 0, i32 1
  %165 = load i32, i32* %cost121, align 4
  %166 = load i32, i32* %lb_new, align 4
  %cmp122 = icmp eq i32 %165, %166
  br i1 %cmp122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %land.lhs.true.120
  %167 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  store %struct.solution_struct* %167, %struct.solution_struct** %retval
  br label %return

if.end.124:                                       ; preds = %land.lhs.true.120, %if.end.118
  %168 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %call125 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %168)
  store %struct.sm_matrix_struct* %call125, %struct.sm_matrix_struct** %A2, align 8
  %169 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %call126 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* %169)
  store %struct.solution_struct* %call126, %struct.solution_struct** %select2, align 8
  %170 = load %struct.solution_struct*, %struct.solution_struct** %select2, align 8
  %171 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A2, align 8
  %172 = load i32*, i32** %weight.addr, align 8
  %173 = load i32, i32* %pick, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_reject to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* %170, %struct.sm_matrix_struct* %171, i32* %172, i32 %173)
  %174 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A2, align 8
  %175 = load %struct.solution_struct*, %struct.solution_struct** %select2, align 8
  %176 = load i32*, i32** %weight.addr, align 8
  %177 = load i32, i32* %lb_new, align 4
  %178 = load i32, i32* %bound.addr, align 4
  %179 = load i32, i32* %depth.addr, align 4
  %add127 = add nsw i32 %179, 1
  %180 = load %struct.stats_struct*, %struct.stats_struct** %stats.addr, align 8
  %call128 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* %174, %struct.solution_struct* %175, i32* %176, i32 %177, i32 %178, i32 %add127, %struct.stats_struct* %180)
  store %struct.solution_struct* %call128, %struct.solution_struct** %best2, align 8
  %181 = load %struct.solution_struct*, %struct.solution_struct** %select2, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* %181)
  %182 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A2, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %182)
  %183 = load %struct.solution_struct*, %struct.solution_struct** %best1, align 8
  %184 = load %struct.solution_struct*, %struct.solution_struct** %best2, align 8
  %call129 = call %struct.solution_struct* (%struct.solution_struct*, %struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_choose_best to %struct.solution_struct* (%struct.solution_struct*, %struct.solution_struct*, ...)*)(%struct.solution_struct* %183, %struct.solution_struct* %184)
  store %struct.solution_struct* %call129, %struct.solution_struct** %best, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.124, %if.end.99
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.68
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.46
  %185 = load %struct.solution_struct*, %struct.solution_struct** %best, align 8
  store %struct.solution_struct* %185, %struct.solution_struct** %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.123, %if.then.117, %if.then.10, %if.then.5
  %186 = load %struct.solution_struct*, %struct.solution_struct** %retval
  ret %struct.solution_struct* %186
}

declare i32 @gimpel_reduce(...) #1

declare %struct.solution_struct* @sm_maximal_independent_set(...) #1

declare %struct.solution_struct* @solution_dup(...) #1

declare i32 @sm_block_partition(...) #1

declare void @solution_add(...) #1

declare void @solution_accept(...) #1

declare void @solution_reject(...) #1

declare %struct.solution_struct* @solution_choose_best(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @select_column(%struct.sm_matrix_struct* %A, i32* %weight, %struct.solution_struct* %indep) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %indep.addr = alloca %struct.solution_struct*, align 8
  %pcol = alloca %struct.sm_col_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %indep_cols = alloca %struct.sm_row_struct*, align 8
  %p = alloca %struct.sm_element_struct*, align 8
  %p1 = alloca %struct.sm_element_struct*, align 8
  %w = alloca double, align 8
  %best = alloca double, align 8
  %best_col = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store %struct.solution_struct* %indep, %struct.solution_struct** %indep.addr, align 8
  %call = call %struct.sm_row_struct* (...) @sm_row_alloc()
  store %struct.sm_row_struct* %call, %struct.sm_row_struct** %indep_cols, align 8
  %0 = load %struct.solution_struct*, %struct.solution_struct** %indep.addr, align 8
  %cmp = icmp ne %struct.solution_struct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.solution_struct*, %struct.solution_struct** %indep.addr, align 8
  %row = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i32 0, i32 0
  %2 = load %struct.sm_row_struct*, %struct.sm_row_struct** %row, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i32 0, i32 3
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %3, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.then
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp1 = icmp ne %struct.sm_element_struct* %4, null
  br i1 %cmp1, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %col_num, align 4
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %col_num3, align 4
  %9 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %rows_size, align 4
  %cmp4 = icmp slt i32 %8, %10
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %col_num5, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %13, i32 0, i32 0
  %14 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %14, i64 %idxprom
  %15 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sm_row_struct* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct.sm_row_struct* %cond, %struct.sm_row_struct** %prow, align 8
  %16 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %16, i32 0, i32 3
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col6, align 8
  store %struct.sm_element_struct* %17, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %cond.end
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %cmp8 = icmp ne %struct.sm_element_struct* %18, null
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %19 = load %struct.sm_row_struct*, %struct.sm_row_struct** %indep_cols, align 8
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %col_num10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %col_num10, align 4
  %call11 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %19, i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 4
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %23, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i32 0, i32 4
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col13, align 8
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %p, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_col15 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %26, i32 0, i32 7
  %27 = load %struct.sm_col_struct*, %struct.sm_col_struct** %first_col15, align 8
  store %struct.sm_col_struct* %27, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.21, %if.else
  %28 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %cmp17 = icmp ne %struct.sm_col_struct* %28, null
  br i1 %cmp17, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.16
  %29 = load %struct.sm_row_struct*, %struct.sm_row_struct** %indep_cols, align 8
  %30 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num19 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %col_num19, align 4
  %call20 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %29, i32 %31)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %32 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %next_col22 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %32, i32 0, i32 5
  %33 = load %struct.sm_col_struct*, %struct.sm_col_struct** %next_col22, align 8
  store %struct.sm_col_struct* %33, %struct.sm_col_struct** %pcol, align 8
  br label %for.cond.16

for.end.23:                                       ; preds = %for.cond.16
  br label %if.end

if.end:                                           ; preds = %for.end.23, %for.end.14
  store i32 -1, i32* %best_col, align 4
  store double -1.000000e+00, double* %best, align 8
  %34 = load %struct.sm_row_struct*, %struct.sm_row_struct** %indep_cols, align 8
  %first_col24 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %34, i32 0, i32 3
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col24, align 8
  store %struct.sm_element_struct* %35, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.74, %if.end
  %36 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %cmp26 = icmp ne %struct.sm_element_struct* %36, null
  br i1 %cmp26, label %for.body.27, label %for.end.76

for.body.27:                                      ; preds = %for.cond.25
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %col_num28 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 1
  %38 = load i32, i32* %col_num28, align 4
  %cmp29 = icmp sge i32 %38, 0
  br i1 %cmp29, label %land.lhs.true.30, label %cond.false.37

land.lhs.true.30:                                 ; preds = %for.body.27
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %col_num31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %39, i32 0, i32 1
  %40 = load i32, i32* %col_num31, align 4
  %41 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols_size = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %41, i32 0, i32 3
  %42 = load i32, i32* %cols_size, align 4
  %cmp32 = icmp slt i32 %40, %42
  br i1 %cmp32, label %cond.true.33, label %cond.false.37

cond.true.33:                                     ; preds = %land.lhs.true.30
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %col_num34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %43, i32 0, i32 1
  %44 = load i32, i32* %col_num34, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %cols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %45, i32 0, i32 2
  %46 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %cols, align 8
  %arrayidx36 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %46, i64 %idxprom35
  %47 = load %struct.sm_col_struct*, %struct.sm_col_struct** %arrayidx36, align 8
  br label %cond.end.38

cond.false.37:                                    ; preds = %land.lhs.true.30, %for.body.27
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.33
  %cond39 = phi %struct.sm_col_struct* [ %47, %cond.true.33 ], [ null, %cond.false.37 ]
  store %struct.sm_col_struct* %cond39, %struct.sm_col_struct** %pcol, align 8
  store double 0.000000e+00, double* %w, align 8
  %48 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %first_row = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %48, i32 0, i32 3
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_row, align 8
  store %struct.sm_element_struct* %49, %struct.sm_element_struct** %p, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.56, %cond.end.38
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp41 = icmp ne %struct.sm_element_struct* %50, null
  br i1 %cmp41, label %for.body.42, label %for.end.57

for.body.42:                                      ; preds = %for.cond.40
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %51, i32 0, i32 0
  %52 = load i32, i32* %row_num, align 4
  %cmp43 = icmp sge i32 %52, 0
  br i1 %cmp43, label %land.lhs.true.44, label %cond.false.53

land.lhs.true.44:                                 ; preds = %for.body.42
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num45 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %53, i32 0, i32 0
  %54 = load i32, i32* %row_num45, align 4
  %55 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows_size46 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %55, i32 0, i32 1
  %56 = load i32, i32* %rows_size46, align 4
  %cmp47 = icmp slt i32 %54, %56
  br i1 %cmp47, label %cond.true.48, label %cond.false.53

cond.true.48:                                     ; preds = %land.lhs.true.44
  %57 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %row_num49 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %57, i32 0, i32 0
  %58 = load i32, i32* %row_num49, align 4
  %idxprom50 = sext i32 %58 to i64
  %59 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %rows51 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %59, i32 0, i32 0
  %60 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %rows51, align 8
  %arrayidx52 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %60, i64 %idxprom50
  %61 = load %struct.sm_row_struct*, %struct.sm_row_struct** %arrayidx52, align 8
  br label %cond.end.54

cond.false.53:                                    ; preds = %land.lhs.true.44, %for.body.42
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.48
  %cond55 = phi %struct.sm_row_struct* [ %61, %cond.true.48 ], [ null, %cond.false.53 ]
  store %struct.sm_row_struct* %cond55, %struct.sm_row_struct** %prow, align 8
  %62 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %62, i32 0, i32 1
  %63 = load i32, i32* %length, align 4
  %conv = sitofp i32 %63 to double
  %sub = fsub double %conv, 1.000000e+00
  %div = fdiv double 1.000000e+00, %sub
  %64 = load double, double* %w, align 8
  %add = fadd double %64, %div
  store double %add, double* %w, align 8
  br label %for.inc.56

for.inc.56:                                       ; preds = %cond.end.54
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_row = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 2
  %66 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_row, align 8
  store %struct.sm_element_struct* %66, %struct.sm_element_struct** %p, align 8
  br label %for.cond.40

for.end.57:                                       ; preds = %for.cond.40
  %67 = load double, double* %w, align 8
  %68 = load i32*, i32** %weight.addr, align 8
  %cmp58 = icmp eq i32* %68, null
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.end.57
  br label %cond.end.65

cond.false.61:                                    ; preds = %for.end.57
  %69 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num62 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %69, i32 0, i32 0
  %70 = load i32, i32* %col_num62, align 4
  %idxprom63 = sext i32 %70 to i64
  %71 = load i32*, i32** %weight.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %71, i64 %idxprom63
  %72 = load i32, i32* %arrayidx64, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.61, %cond.true.60
  %cond66 = phi i32 [ 1, %cond.true.60 ], [ %72, %cond.false.61 ]
  %conv67 = sitofp i32 %cond66 to double
  %div68 = fdiv double %67, %conv67
  store double %div68, double* %w, align 8
  %73 = load double, double* %w, align 8
  %74 = load double, double* %best, align 8
  %cmp69 = fcmp ogt double %73, %74
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %cond.end.65
  %75 = load %struct.sm_col_struct*, %struct.sm_col_struct** %pcol, align 8
  %col_num72 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %75, i32 0, i32 0
  %76 = load i32, i32* %col_num72, align 4
  store i32 %76, i32* %best_col, align 4
  %77 = load double, double* %w, align 8
  store double %77, double* %best, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %cond.end.65
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %78 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p1, align 8
  %next_col75 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %78, i32 0, i32 4
  %79 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col75, align 8
  store %struct.sm_element_struct* %79, %struct.sm_element_struct** %p1, align 8
  br label %for.cond.25

for.end.76:                                       ; preds = %for.cond.25
  %80 = load %struct.sm_row_struct*, %struct.sm_row_struct** %indep_cols, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %80)
  %81 = load i32, i32* %best_col, align 4
  ret i32 %81
}

declare %struct.sm_element_struct* @sm_row_insert(...) #1

declare void @sm_row_free(...) #1

; Function Attrs: nounwind uwtable
define internal void @select_essential(%struct.sm_matrix_struct* %A, %struct.solution_struct* %select, i32* %weight, i32 %bound) #0 {
entry:
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %select.addr = alloca %struct.solution_struct*, align 8
  %weight.addr = alloca i32*, align 8
  %bound.addr = alloca i32, align 4
  %p = alloca %struct.sm_element_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  %essen = alloca %struct.sm_row_struct*, align 8
  %delcols = alloca i32, align 4
  %delrows = alloca i32, align 4
  %essen_count = alloca i32, align 4
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.solution_struct* %select, %struct.solution_struct** %select.addr, align 8
  store i32* %weight, i32** %weight.addr, align 8
  store i32 %bound, i32* %bound.addr, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %1 = load i32*, i32** %weight.addr, align 8
  %call = call i32 (%struct.sm_matrix_struct*, i32*, ...) bitcast (i32 (...)* @sm_col_dominance to i32 (%struct.sm_matrix_struct*, i32*, ...)*)(%struct.sm_matrix_struct* %0, i32* %1)
  store i32 %call, i32* %delcols, align 4
  %call1 = call %struct.sm_row_struct* (...) @sm_row_alloc()
  store %struct.sm_row_struct* %call1, %struct.sm_row_struct** %essen, align 8
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %first_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %2, i32 0, i32 4
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %first_row, align 8
  store %struct.sm_row_struct* %3, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %cmp = icmp ne %struct.sm_row_struct* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %length, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %essen, align 8
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %8, i32 0, i32 3
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %col_num, align 4
  %call3 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* %7, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %11, i32 0, i32 5
  %12 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %12, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %essen, align 8
  %first_col4 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %13, i32 0, i32 3
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col4, align 8
  store %struct.sm_element_struct* %14, %struct.sm_element_struct** %p, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.12, %for.end
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %cmp6 = icmp ne %struct.sm_element_struct* %15, null
  br i1 %cmp6, label %for.body.7, label %for.end.13

for.body.7:                                       ; preds = %for.cond.5
  %16 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %17 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %18 = load i32*, i32** %weight.addr, align 8
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %col_num8 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %19, i32 0, i32 1
  %20 = load i32, i32* %col_num8, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_accept to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* %16, %struct.sm_matrix_struct* %17, i32* %18, i32 %20)
  %21 = load %struct.solution_struct*, %struct.solution_struct** %select.addr, align 8
  %cost = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %21, i32 0, i32 1
  %22 = load i32, i32* %cost, align 4
  %23 = load i32, i32* %bound.addr, align 4
  %cmp9 = icmp sge i32 %22, %23
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body.7
  %24 = load %struct.sm_row_struct*, %struct.sm_row_struct** %essen, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %24)
  br label %do.end

if.end.11:                                        ; preds = %for.body.7
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end.11
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %p, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %25, i32 0, i32 4
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %26, %struct.sm_element_struct** %p, align 8
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %essen, align 8
  %length14 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %length14, align 4
  store i32 %28, i32* %essen_count, align 4
  %29 = load %struct.sm_row_struct*, %struct.sm_row_struct** %essen, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %29)
  %30 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %A.addr, align 8
  %call15 = call i32 (%struct.sm_matrix_struct*, ...) bitcast (i32 (...)* @sm_row_dominance to i32 (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %30)
  store i32 %call15, i32* %delrows, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end.13
  %31 = load i32, i32* %delcols, align 4
  %cmp16 = icmp sgt i32 %31, 0
  br i1 %cmp16, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %32 = load i32, i32* %delrows, align 4
  %cmp17 = icmp sgt i32 %32, 0
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %33 = load i32, i32* %essen_count, align 4
  %cmp18 = icmp sgt i32 %33, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %34 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp18, %lor.rhs ]
  br i1 %34, label %do.body, label %do.end

do.end:                                           ; preds = %if.then.10, %lor.end
  ret void
}

declare i32 @sm_col_dominance(...) #1

declare i32 @sm_row_dominance(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @verify_cover(%struct.sm_matrix_struct* %A, %struct.sm_row_struct* %cover) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca %struct.sm_matrix_struct*, align 8
  %cover.addr = alloca %struct.sm_row_struct*, align 8
  %prow = alloca %struct.sm_row_struct*, align 8
  store %struct.sm_matrix_struct* %A, %struct.sm_matrix_struct** %A.addr, align 8
  store %struct.sm_row_struct* %cover, %struct.sm_row_struct** %cover.addr, align 8
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
  %4 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover.addr, align 8
  %call = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_intersects to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %3, %struct.sm_row_struct* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %prow, align 8
  %next_row = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %5, i32 0, i32 5
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %next_row, align 8
  store %struct.sm_row_struct* %6, %struct.sm_row_struct** %prow, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @sm_row_intersects(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
