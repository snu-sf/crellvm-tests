; ModuleID = './MultiSource.Benchmarks.MallocBench/36.espresso.exact.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@debug = external global i32, align 4
@trace = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"PRIMES     \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ESSENTIALS \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PI-TABLE   \00", align 1
@cube = external global %struct.cube_struct, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MINCOV     \00", align 1
@skip_make_sparse = external global i32, align 4
@filename = external global i8*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s.primes\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"espresso: Unable to open %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.pi\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"# Essential primes are\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"# Totally redundant primes are\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"# Partially redundant primes are\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @minimize_exact(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, i32 %exact_cover) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %exact_cover.addr = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32 %exact_cover, i32* %exact_cover.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %2 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %3 = load i32, i32* %exact_cover.addr, align 4
  %call = call %struct.set_family* @do_minimize(%struct.set_family* %0, %struct.set_family* %1, %struct.set_family* %2, i32 %3, i32 0)
  ret %struct.set_family* %call
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @minimize_exact_literals(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, i32 %exact_cover) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %exact_cover.addr = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32 %exact_cover, i32* %exact_cover.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %2 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %3 = load i32, i32* %exact_cover.addr, align 4
  %call = call %struct.set_family* @do_minimize(%struct.set_family* %0, %struct.set_family* %1, %struct.set_family* %2, i32 %3, i32 1)
  ret %struct.set_family* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @do_minimize(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, i32 %exact_cover, i32 %weighted) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %exact_cover.addr = alloca i32, align 4
  %weighted.addr = alloca i32, align 4
  %newF = alloca %struct.set_family*, align 8
  %E = alloca %struct.set_family*, align 8
  %Rt = alloca %struct.set_family*, align 8
  %Rp = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %heur = alloca i32, align 4
  %level = alloca i32, align 4
  %weights = alloca i32*, align 8
  %table = alloca %struct.sm_matrix_struct*, align 8
  %cover = alloca %struct.sm_row_struct*, align 8
  %pe = alloca %struct.sm_element_struct*, align 8
  %debug_save = alloca i32, align 4
  %t = alloca i64, align 8
  %t10 = alloca i64, align 8
  %t17 = alloca i64, align 8
  %t38 = alloca i64, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32 %exact_cover, i32* %exact_cover.addr, align 4
  store i32 %weighted, i32* %weighted.addr, align 4
  %0 = load i32, i32* @debug, align 4
  store i32 %0, i32* %debug_save, align 4
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4
  %or = or i32 %2, 2080
  store i32 %or, i32* @debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @debug, align 4
  %and1 = and i32 %3, 2048
  %tobool2 = icmp ne i32 %and1, 0
  %cond = select i1 %tobool2, i32 4, i32 0
  store i32 %cond, i32* %level, align 4
  %4 = load i32, i32* %exact_cover.addr, align 4
  %tobool3 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %heur, align 4
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %t, align 8
  %5 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %6 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call4 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %5, %struct.set_family* %6)
  %call5 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @primes_consensus to %struct.set_family* (i32**, ...)*)(i32** %call4)
  store %struct.set_family* %call5, %struct.set_family** %F.addr, align 8
  %7 = load i32, i32* @trace, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %8 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call8 = call i64 (...) @util_cpu_time()
  %9 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call8, %9
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %sub)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %call11 = call i64 (...) @util_cpu_time()
  store i64 %call11, i64* %t10, align 8
  %10 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %11 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  call void (%struct.set_family*, %struct.set_family*, %struct.set_family**, %struct.set_family**, %struct.set_family**, ...) bitcast (void (...)* @irred_split_cover to void (%struct.set_family*, %struct.set_family*, %struct.set_family**, %struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family* %10, %struct.set_family* %11, %struct.set_family** %E, %struct.set_family** %Rt, %struct.set_family** %Rp)
  %12 = load i32, i32* @trace, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %13 = load %struct.set_family*, %struct.set_family** %E, align 8
  %call14 = call i64 (...) @util_cpu_time()
  %14 = load i64, i64* %t10, align 8
  %sub15 = sub nsw i64 %call14, %14
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %sub15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.9
  %call18 = call i64 (...) @util_cpu_time()
  store i64 %call18, i64* %t17, align 8
  %15 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %16 = load %struct.set_family*, %struct.set_family** %E, align 8
  %17 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %call19 = call %struct.sm_matrix_struct* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.sm_matrix_struct* (...)* @irred_derive_table to %struct.sm_matrix_struct* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %15, %struct.set_family* %16, %struct.set_family* %17)
  store %struct.sm_matrix_struct* %call19, %struct.sm_matrix_struct** %table, align 8
  %18 = load i32, i32* @trace, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.16
  %19 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %call22 = call i64 (...) @util_cpu_time()
  %20 = load i64, i64* %t17, align 8
  %sub23 = sub nsw i64 %call22, %20
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 %sub23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.16
  %21 = load i32, i32* %weighted.addr, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %22 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %23 = load i32, i32* %count, align 4
  %conv = sext i32 %23 to i64
  %mul = mul i64 4, %conv
  %call27 = call i8* @malloc(i64 %mul)
  %24 = bitcast i8* %call27 to i32*
  store i32* %24, i32** %weights, align 8
  %25 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data, align 8
  store i32* %26, i32** %p, align 8
  %27 = load i32*, i32** %p, align 8
  %28 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %count28 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count28, align 4
  %30 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize, align 4
  %mul29 = mul nsw i32 %29, %31
  %idx.ext = sext i32 %mul29 to i64
  %add.ptr = getelementptr inbounds i32, i32* %27, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %32 = load i32*, i32** %p, align 8
  %33 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %35 = load i32*, i32** %p, align 8
  %call31 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %35)
  %sub32 = sub nsw i32 %34, %call31
  %36 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %37, 16
  %idxprom = zext i32 %shr to i64
  %38 = load i32*, i32** %weights, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %38, i64 %idxprom
  store i32 %sub32, i32* %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %wsize34 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 0
  %40 = load i32, i32* %wsize34, align 4
  %41 = load i32*, i32** %p, align 8
  %idx.ext35 = sext i32 %40 to i64
  %add.ptr36 = getelementptr inbounds i32, i32* %41, i64 %idx.ext35
  store i32* %add.ptr36, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.37

if.else:                                          ; preds = %if.end.24
  store i32* null, i32** %weights, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %for.end
  %call39 = call i64 (...) @util_cpu_time()
  store i64 %call39, i64* %t38, align 8
  %42 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %43 = load i32*, i32** %weights, align 8
  %44 = load i32, i32* %heur, align 4
  %45 = load i32, i32* %level, align 4
  %call40 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* %42, i32* %43, i32 %44, i32 %45)
  store %struct.sm_row_struct* %call40, %struct.sm_row_struct** %cover, align 8
  %46 = load i32, i32* @trace, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.37
  %47 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call43 = call i64 (...) @util_cpu_time()
  %48 = load i64, i64* %t38, align 8
  %sub44 = sub nsw i64 %call43, %48
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 %sub44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.37
  %49 = load i32*, i32** %weights, align 8
  %cmp46 = icmp ne i32* %49, null
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.end.45
  %50 = load i32*, i32** %weights, align 8
  %tobool49 = icmp ne i32* %50, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.48
  %51 = load i32*, i32** %weights, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52)
  store i32* null, i32** %weights, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.45
  %53 = load i32, i32* @debug, align 4
  %and53 = and i32 %53, 1024
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %54 = load %struct.set_family*, %struct.set_family** %E, align 8
  %55 = load %struct.set_family*, %struct.set_family** %Rt, align 8
  %56 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  call void @dump_irredundant(%struct.set_family* %54, %struct.set_family* %55, %struct.set_family* %56, %struct.sm_matrix_struct* %57)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %58 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call57 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 100, i32 %58)
  store %struct.set_family* %call57, %struct.set_family** %newF, align 8
  %59 = load %struct.set_family*, %struct.set_family** %E, align 8
  %data58 = getelementptr inbounds %struct.set_family, %struct.set_family* %59, i32 0, i32 5
  %60 = load i32*, i32** %data58, align 8
  store i32* %60, i32** %p, align 8
  %61 = load i32*, i32** %p, align 8
  %62 = load %struct.set_family*, %struct.set_family** %E, align 8
  %count59 = getelementptr inbounds %struct.set_family, %struct.set_family* %62, i32 0, i32 3
  %63 = load i32, i32* %count59, align 4
  %64 = load %struct.set_family*, %struct.set_family** %E, align 8
  %wsize60 = getelementptr inbounds %struct.set_family, %struct.set_family* %64, i32 0, i32 0
  %65 = load i32, i32* %wsize60, align 4
  %mul61 = mul nsw i32 %63, %65
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i32, i32* %61, i64 %idx.ext62
  store i32* %add.ptr63, i32** %last, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.69, %if.end.56
  %66 = load i32*, i32** %p, align 8
  %67 = load i32*, i32** %last, align 8
  %cmp65 = icmp ult i32* %66, %67
  br i1 %cmp65, label %for.body.67, label %for.end.73

for.body.67:                                      ; preds = %for.cond.64
  %68 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %69 = load i32*, i32** %p, align 8
  %call68 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %68, i32* %69)
  store %struct.set_family* %call68, %struct.set_family** %newF, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.67
  %70 = load %struct.set_family*, %struct.set_family** %E, align 8
  %wsize70 = getelementptr inbounds %struct.set_family, %struct.set_family* %70, i32 0, i32 0
  %71 = load i32, i32* %wsize70, align 4
  %72 = load i32*, i32** %p, align 8
  %idx.ext71 = sext i32 %71 to i64
  %add.ptr72 = getelementptr inbounds i32, i32* %72, i64 %idx.ext71
  store i32* %add.ptr72, i32** %p, align 8
  br label %for.cond.64

for.end.73:                                       ; preds = %for.cond.64
  %73 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %73, i32 0, i32 3
  %74 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %74, %struct.sm_element_struct** %pe, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.84, %for.end.73
  %75 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %cmp75 = icmp ne %struct.sm_element_struct* %75, null
  br i1 %cmp75, label %for.body.77, label %for.end.85

for.body.77:                                      ; preds = %for.cond.74
  %76 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %77 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data78 = getelementptr inbounds %struct.set_family, %struct.set_family* %77, i32 0, i32 5
  %78 = load i32*, i32** %data78, align 8
  %79 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize79 = getelementptr inbounds %struct.set_family, %struct.set_family* %79, i32 0, i32 0
  %80 = load i32, i32* %wsize79, align 4
  %81 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %81, i32 0, i32 1
  %82 = load i32, i32* %col_num, align 4
  %mul80 = mul nsw i32 %80, %82
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds i32, i32* %78, i64 %idx.ext81
  %call83 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %76, i32* %add.ptr82)
  store %struct.set_family* %call83, %struct.set_family** %newF, align 8
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.77
  %83 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %83, i32 0, i32 4
  %84 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %84, %struct.sm_element_struct** %pe, align 8
  br label %for.cond.74

for.end.85:                                       ; preds = %for.cond.74
  %85 = load %struct.set_family*, %struct.set_family** %E, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %85)
  %86 = load %struct.set_family*, %struct.set_family** %Rt, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %86)
  %87 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %87)
  %88 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %88)
  %89 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %89)
  %90 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %90)
  %91 = load i32, i32* @debug, align 4
  %and86 = and i32 %91, -10273
  store i32 %and86, i32* @debug, align 4
  %92 = load i32, i32* @skip_make_sparse, align 4
  %tobool87 = icmp ne i32 %92, 0
  br i1 %tobool87, label %if.end.92, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.85
  %93 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %cmp88 = icmp ne %struct.set_family* %93, null
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %land.lhs.true
  %94 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %95 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %96 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call91 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %94, %struct.set_family* %95, %struct.set_family* %96)
  store %struct.set_family* %call91, %struct.set_family** %newF, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %land.lhs.true, %for.end.85
  %97 = load i32, i32* %debug_save, align 4
  store i32 %97, i32* @debug, align 4
  %98 = load %struct.set_family*, %struct.set_family** %newF, align 8
  ret %struct.set_family* %98
}

declare i64 @util_cpu_time(...) #1

declare %struct.set_family* @primes_consensus(...) #1

declare i32** @cube2list(...) #1

declare void @print_trace(...) #1

declare void @irred_split_cover(...) #1

declare %struct.sm_matrix_struct* @irred_derive_table(...) #1

declare i8* @malloc(i64) #1

declare i32 @set_ord(...) #1

declare %struct.sm_row_struct* @sm_minimum_cover(...) #1

declare void @free(i8*) #1

declare %struct.set_family* @sf_new(...) #1

declare %struct.set_family* @sf_addset(...) #1

declare void @sf_free(...) #1

declare void @sm_free(...) #1

declare void @sm_row_free(...) #1

declare %struct.set_family* @make_sparse(...) #1

; Function Attrs: nounwind uwtable
define internal void @dump_irredundant(%struct.set_family* %E, %struct.set_family* %Rt, %struct.set_family* %Rp, %struct.sm_matrix_struct* %table) #0 {
entry:
  %E.addr = alloca %struct.set_family*, align 8
  %Rt.addr = alloca %struct.set_family*, align 8
  %Rp.addr = alloca %struct.set_family*, align 8
  %table.addr = alloca %struct.sm_matrix_struct*, align 8
  %fp_pi_table = alloca %struct._IO_FILE*, align 8
  %fp_primes = alloca %struct._IO_FILE*, align 8
  %PLA = alloca %struct.PLA_t*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %file = alloca i8*, align 8
  store %struct.set_family* %E, %struct.set_family** %E.addr, align 8
  store %struct.set_family* %Rt, %struct.set_family** %Rt.addr, align 8
  store %struct.set_family* %Rp, %struct.set_family** %Rp.addr, align 8
  store %struct.sm_matrix_struct* %table, %struct.sm_matrix_struct** %table.addr, align 8
  %0 = load i8*, i8** @filename, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @filename, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp_primes, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp_pi_table, align 8
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i8*, i8** @filename, align 8
  %call2 = call i64 @strlen(i8* %3) #4
  %add = add i64 %call2, 20
  %mul = mul i64 1, %add
  %call3 = call i8* @malloc(i64 %mul)
  store i8* %call3, i8** %file, align 8
  %4 = load i8*, i8** %file, align 8
  %5 = load i8*, i8** @filename, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %5) #5
  %6 = load i8*, i8** %file, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fp_primes, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** %fp_primes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  %10 = load i8*, i8** %file, align 8
  %11 = load i8*, i8** @filename, align 8
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %11) #5
  %12 = load i8*, i8** %file, align 8
  %call10 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp_pi_table, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %file, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %15, %struct._IO_FILE** %fp_pi_table, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %16 = load i8*, i8** %file, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.14
  %17 = load i8*, i8** %file, align 8
  call void @free(i8* %17)
  store i8* null, i8** %file, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %call18 = call %struct.PLA_t* (...) @new_PLA()
  store %struct.PLA_t* %call18, %struct.PLA_t** %PLA, align 8
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call19 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @PLA_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...) bitcast (void (...)* @fpr_header to void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...)*)(%struct._IO_FILE* %19, %struct.PLA_t* %20, i32 1)
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  %23 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 5
  %24 = load i32*, i32** %data, align 8
  store i32* %24, i32** %p, align 8
  %25 = load i32*, i32** %p, align 8
  %26 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 3
  %27 = load i32, i32* %count, align 4
  %28 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 0
  %29 = load i32, i32* %wsize, align 4
  %mul21 = mul nsw i32 %27, %29
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i32, i32* %25, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %30 = load i32*, i32** %p, align 8
  %31 = load i32*, i32** %last, align 8
  %cmp22 = icmp ult i32* %30, %31
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %33 = load i32*, i32** %p, align 8
  %call23 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %33)
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %wsize25 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %35 = load i32, i32* %wsize25, align 4
  %36 = load i32*, i32** %p, align 8
  %idx.ext26 = sext i32 %35 to i64
  %add.ptr27 = getelementptr inbounds i32, i32* %36, i64 %idx.ext26
  store i32* %add.ptr27, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  %38 = load %struct.set_family*, %struct.set_family** %Rt.addr, align 8
  %data29 = getelementptr inbounds %struct.set_family, %struct.set_family* %38, i32 0, i32 5
  %39 = load i32*, i32** %data29, align 8
  store i32* %39, i32** %p, align 8
  %40 = load i32*, i32** %p, align 8
  %41 = load %struct.set_family*, %struct.set_family** %Rt.addr, align 8
  %count30 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 3
  %42 = load i32, i32* %count30, align 4
  %43 = load %struct.set_family*, %struct.set_family** %Rt.addr, align 8
  %wsize31 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 0
  %44 = load i32, i32* %wsize31, align 4
  %mul32 = mul nsw i32 %42, %44
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i32, i32* %40, i64 %idx.ext33
  store i32* %add.ptr34, i32** %last, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.40, %for.end
  %45 = load i32*, i32** %p, align 8
  %46 = load i32*, i32** %last, align 8
  %cmp36 = icmp ult i32* %45, %46
  br i1 %cmp36, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.35
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %48 = load i32*, i32** %p, align 8
  %call38 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %48)
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call38)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.37
  %49 = load %struct.set_family*, %struct.set_family** %Rt.addr, align 8
  %wsize41 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 0
  %50 = load i32, i32* %wsize41, align 4
  %51 = load i32*, i32** %p, align 8
  %idx.ext42 = sext i32 %50 to i64
  %add.ptr43 = getelementptr inbounds i32, i32* %51, i64 %idx.ext42
  store i32* %add.ptr43, i32** %p, align 8
  br label %for.cond.35

for.end.44:                                       ; preds = %for.cond.35
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0))
  %53 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %data46 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 5
  %54 = load i32*, i32** %data46, align 8
  store i32* %54, i32** %p, align 8
  %55 = load i32*, i32** %p, align 8
  %56 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %count47 = getelementptr inbounds %struct.set_family, %struct.set_family* %56, i32 0, i32 3
  %57 = load i32, i32* %count47, align 4
  %58 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %wsize48 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 0
  %59 = load i32, i32* %wsize48, align 4
  %mul49 = mul nsw i32 %57, %59
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i32, i32* %55, i64 %idx.ext50
  store i32* %add.ptr51, i32** %last, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.57, %for.end.44
  %60 = load i32*, i32** %p, align 8
  %61 = load i32*, i32** %last, align 8
  %cmp53 = icmp ult i32* %60, %61
  br i1 %cmp53, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.52
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %63 = load i32*, i32** %p, align 8
  %call55 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %63)
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call55)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.54
  %64 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %wsize58 = getelementptr inbounds %struct.set_family, %struct.set_family* %64, i32 0, i32 0
  %65 = load i32, i32* %wsize58, align 4
  %66 = load i32*, i32** %p, align 8
  %idx.ext59 = sext i32 %65 to i64
  %add.ptr60 = getelementptr inbounds i32, i32* %66, i64 %idx.ext59
  store i32* %add.ptr60, i32** %p, align 8
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp62 = icmp ne %struct._IO_FILE* %67, %68
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %for.end.61
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_primes, align 8
  %call64 = call i32 @fclose(%struct._IO_FILE* %69)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %for.end.61
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_pi_table, align 8
  %71 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  call void (%struct._IO_FILE*, %struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_write to void (%struct._IO_FILE*, %struct.sm_matrix_struct*, ...)*)(%struct._IO_FILE* %70, %struct.sm_matrix_struct* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_pi_table, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp66 = icmp ne %struct._IO_FILE* %72, %73
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.65
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_pi_table, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* %74)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.65
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.PLA_t* @new_PLA(...) #1

declare i32 @PLA_labels(...) #1

declare void @fpr_header(...) #1

declare void @free_PLA(...) #1

declare i8* @pc1(...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @sm_write(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
