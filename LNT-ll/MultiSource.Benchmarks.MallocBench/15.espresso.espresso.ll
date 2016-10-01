; ModuleID = './MultiSource.Benchmarks.MallocBench/15.espresso.espresso.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@recompute_onset = external global i32, align 4
@trace = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"SIMPLIFY   \00", align 1
@unwrap_onset = external global i32, align 4
@cube = external global %struct.cube_struct, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"SETUP      \00", align 1
@single_expand = external global i32, align 4
@remove_essential = external global i32, align 4
@use_super_gasp = external global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ADJUST     \00", align 1
@skip_make_sparse = external global i32, align 4

; Function Attrs: nounwind uwtable
define %struct.set_family* @espresso(%struct.set_family* %F, %struct.set_family* %D1, %struct.set_family* %R) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D1.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %E = alloca %struct.set_family*, align 8
  %D = alloca %struct.set_family*, align 8
  %Fsave = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %cost = alloca %struct.cost_struct, align 4
  %best_cost = alloca %struct.cost_struct, align 4
  %t = alloca i64, align 8
  %t20 = alloca i64, align 8
  %t37 = alloca i64, align 8
  %t40 = alloca i64, align 8
  %t47 = alloca i64, align 8
  %t53 = alloca i64, align 8
  %t56 = alloca i64, align 8
  %t59 = alloca i64, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D1, %struct.set_family** %D1.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  br label %begin

begin:                                            ; preds = %if.then.98, %entry
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %0)
  store %struct.set_family* %call, %struct.set_family** %Fsave, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D1.addr, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %1)
  store %struct.set_family* %call1, %struct.set_family** %D, align 8
  %2 = load i32, i32* @recompute_onset, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %begin
  %call2 = call i64 (...) @util_cpu_time()
  store i64 %call2, i64* %t, align 8
  %3 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call3 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %3)
  %call4 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @simplify to %struct.set_family* (i32**, ...)*)(i32** %call3)
  store %struct.set_family* %call4, %struct.set_family** %E, align 8
  %4 = load i32, i32* @trace, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %5 = load %struct.set_family*, %struct.set_family** %E, align 8
  %call7 = call i64 (...) @util_cpu_time()
  %6 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call7, %6
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %7 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  %8 = load %struct.set_family*, %struct.set_family** %E, align 8
  store %struct.set_family* %8, %struct.set_family** %F.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %begin
  %9 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %9, %struct.cost_struct* %cost)
  %10 = load i32, i32* @unwrap_onset, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.8
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub10 = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub10 to i64
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %land.lhs.true.11, label %if.end.30

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %out = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 2
  %14 = load i32, i32* %out, align 4
  %cubes = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 0
  %15 = load i32, i32* %cubes, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub12 = sub nsw i32 %16, 1
  %idxprom13 = sext i32 %sub12 to i64
  %17 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %17, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %mul = mul nsw i32 %15, %18
  %cmp15 = icmp ne i32 %14, %mul
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.30

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %out17 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 2
  %19 = load i32, i32* %out17, align 4
  %cmp18 = icmp slt i32 %19, 5000
  br i1 %cmp18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %land.lhs.true.16
  %call21 = call i64 (...) @util_cpu_time()
  store i64 %call21, i64* %t20, align 8
  %20 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub22 = sub nsw i32 %21, 1
  %call23 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @unravel to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %20, i32 %sub22)
  %call24 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call23)
  store %struct.set_family* %call24, %struct.set_family** %F.addr, align 8
  %22 = load i32, i32* @trace, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.then.19
  %23 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call27 = call i64 (...) @util_cpu_time()
  %24 = load i64, i64* %t20, align 8
  %sub28 = sub nsw i64 %call27, %24
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %sub28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true, %if.end.8
  %25 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data, align 8
  store i32* %26, i32** %p, align 8
  %27 = load i32*, i32** %p, align 8
  %28 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count, align 4
  %30 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize, align 4
  %mul31 = mul nsw i32 %29, %31
  %idx.ext = sext i32 %mul31 to i64
  %add.ptr = getelementptr inbounds i32, i32* %27, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %32 = load i32*, i32** %p, align 8
  %33 = load i32*, i32** %last, align 8
  %cmp32 = icmp ult i32* %32, %33
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32*, i32** %p, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx33, align 4
  %and = and i32 %35, -32769
  store i32 %and, i32* %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize34 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 0
  %37 = load i32, i32* %wsize34, align 4
  %38 = load i32*, i32** %p, align 8
  %idx.ext35 = sext i32 %37 to i64
  %add.ptr36 = getelementptr inbounds i32, i32* %38, i64 %idx.ext35
  store i32* %add.ptr36, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call38 = call i64 (...) @util_cpu_time()
  store i64 %call38, i64* %t37, align 8
  %39 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %40 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call39 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %39, %struct.set_family* %40, i32 0)
  store %struct.set_family* %call39, %struct.set_family** %F.addr, align 8
  %41 = load i64, i64* %t37, align 8
  %42 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %41, i32 4, %struct.set_family* %42, %struct.cost_struct* %cost)
  %call41 = call i64 (...) @util_cpu_time()
  store i64 %call41, i64* %t40, align 8
  %43 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %44 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call42 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %43, %struct.set_family* %44)
  store %struct.set_family* %call42, %struct.set_family** %F.addr, align 8
  %45 = load i64, i64* %t40, align 8
  %46 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %45, i32 5, %struct.set_family* %46, %struct.cost_struct* %cost)
  %47 = load i32, i32* @single_expand, align 4
  %tobool43 = icmp ne i32 %47, 0
  br i1 %tobool43, label %if.end.90, label %if.then.44

if.then.44:                                       ; preds = %for.end
  %48 = load i32, i32* @remove_essential, align 4
  %tobool45 = icmp ne i32 %48, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.44
  %call48 = call i64 (...) @util_cpu_time()
  store i64 %call48, i64* %t47, align 8
  %call49 = call %struct.set_family* (%struct.set_family**, %struct.set_family**, ...) bitcast (%struct.set_family* (...)* @essential to %struct.set_family* (%struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family** %F.addr, %struct.set_family** %D)
  store %struct.set_family* %call49, %struct.set_family** %E, align 8
  %49 = load i64, i64* %t47, align 8
  %50 = load %struct.set_family*, %struct.set_family** %E, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %49, i32 3, %struct.set_family* %50, %struct.cost_struct* %cost)
  br label %if.end.51

if.else:                                          ; preds = %if.then.44
  %51 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call50 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %51)
  store %struct.set_family* %call50, %struct.set_family** %E, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.46
  %52 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %52, %struct.cost_struct* %cost)
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end.51
  br label %do.body.52

do.body.52:                                       ; preds = %do.cond, %do.body
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* %cost, %struct.cost_struct* %best_cost)
  %call54 = call i64 (...) @util_cpu_time()
  store i64 %call54, i64* %t53, align 8
  %53 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %54 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call55 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @reduce to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %53, %struct.set_family* %54)
  store %struct.set_family* %call55, %struct.set_family** %F.addr, align 8
  %55 = load i64, i64* %t53, align 8
  %56 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %55, i32 6, %struct.set_family* %56, %struct.cost_struct* %cost)
  %call57 = call i64 (...) @util_cpu_time()
  store i64 %call57, i64* %t56, align 8
  %57 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %58 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call58 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %57, %struct.set_family* %58, i32 0)
  store %struct.set_family* %call58, %struct.set_family** %F.addr, align 8
  %59 = load i64, i64* %t56, align 8
  %60 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %59, i32 4, %struct.set_family* %60, %struct.cost_struct* %cost)
  %call60 = call i64 (...) @util_cpu_time()
  store i64 %call60, i64* %t59, align 8
  %61 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %62 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call61 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %61, %struct.set_family* %62)
  store %struct.set_family* %call61, %struct.set_family** %F.addr, align 8
  %63 = load i64, i64* %t59, align 8
  %64 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %63, i32 5, %struct.set_family* %64, %struct.cost_struct* %cost)
  br label %do.cond

do.cond:                                          ; preds = %do.body.52
  %cubes62 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 0
  %65 = load i32, i32* %cubes62, align 4
  %cubes63 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 0
  %66 = load i32, i32* %cubes63, align 4
  %cmp64 = icmp slt i32 %65, %66
  br i1 %cmp64, label %do.body.52, label %do.end

do.end:                                           ; preds = %do.cond
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* %cost, %struct.cost_struct* %best_cost)
  %67 = load i32, i32* @use_super_gasp, align 4
  %tobool65 = icmp ne i32 %67, 0
  br i1 %tobool65, label %if.then.66, label %if.else.73

if.then.66:                                       ; preds = %do.end
  %68 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %69 = load %struct.set_family*, %struct.set_family** %D, align 8
  %70 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call67 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @super_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %68, %struct.set_family* %69, %struct.set_family* %70, %struct.cost_struct* %cost)
  store %struct.set_family* %call67, %struct.set_family** %F.addr, align 8
  %cubes68 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 0
  %71 = load i32, i32* %cubes68, align 4
  %cubes69 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 0
  %72 = load i32, i32* %cubes69, align 4
  %cmp70 = icmp sge i32 %71, %72
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.66
  br label %do.end.85

if.end.72:                                        ; preds = %if.then.66
  br label %if.end.75

if.else.73:                                       ; preds = %do.end
  %73 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %74 = load %struct.set_family*, %struct.set_family** %D, align 8
  %75 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call74 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @last_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %73, %struct.set_family* %74, %struct.set_family* %75, %struct.cost_struct* %cost)
  store %struct.set_family* %call74, %struct.set_family** %F.addr, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.end.72
  br label %do.cond.76

do.cond.76:                                       ; preds = %if.end.75
  %cubes77 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 0
  %76 = load i32, i32* %cubes77, align 4
  %cubes78 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 0
  %77 = load i32, i32* %cubes78, align 4
  %cmp79 = icmp slt i32 %76, %77
  br i1 %cmp79, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond.76
  %cubes80 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 0
  %78 = load i32, i32* %cubes80, align 4
  %cubes81 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 0
  %79 = load i32, i32* %cubes81, align 4
  %cmp82 = icmp eq i32 %78, %79
  br i1 %cmp82, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %total = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 4
  %80 = load i32, i32* %total, align 4
  %total83 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 4
  %81 = load i32, i32* %total83, align 4
  %cmp84 = icmp slt i32 %80, %81
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %82 = phi i1 [ false, %lor.rhs ], [ %cmp84, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.cond.76
  %83 = phi i1 [ true, %do.cond.76 ], [ %82, %land.end ]
  br i1 %83, label %do.body, label %do.end.85

do.end.85:                                        ; preds = %lor.end, %if.then.71
  %84 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %85 = load %struct.set_family*, %struct.set_family** %E, align 8
  %call86 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %84, %struct.set_family* %85)
  store %struct.set_family* %call86, %struct.set_family** %F.addr, align 8
  %86 = load i32, i32* @trace, align 4
  %tobool87 = icmp ne i32 %86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %do.end.85
  %87 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, i8*, ...) bitcast (void (...)* @size_stamp to void (%struct.set_family*, i8*, ...)*)(%struct.set_family* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %do.end.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.end
  %88 = load %struct.set_family*, %struct.set_family** %D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %88)
  %89 = load i32, i32* @skip_make_sparse, align 4
  %tobool91 = icmp ne i32 %89, 0
  br i1 %tobool91, label %if.end.94, label %if.then.92

if.then.92:                                       ; preds = %if.end.90
  %90 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %91 = load %struct.set_family*, %struct.set_family** %D1.addr, align 8
  %92 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call93 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %90, %struct.set_family* %91, %struct.set_family* %92)
  store %struct.set_family* %call93, %struct.set_family** %F.addr, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.90
  %93 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  %count95 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %94 = load i32, i32* %count95, align 4
  %95 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count96 = getelementptr inbounds %struct.set_family, %struct.set_family* %95, i32 0, i32 3
  %96 = load i32, i32* %count96, align 4
  %cmp97 = icmp slt i32 %94, %96
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.end.94
  %97 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %97)
  %98 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  store %struct.set_family* %98, %struct.set_family** %F.addr, align 8
  store i32 0, i32* @unwrap_onset, align 4
  br label %begin

if.else.99:                                       ; preds = %if.end.94
  %99 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %99)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99
  %100 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %100
}

declare %struct.set_family* @sf_save(...) #1

declare i64 @util_cpu_time(...) #1

declare %struct.set_family* @simplify(...) #1

declare i32** @cube1list(...) #1

declare void @print_trace(...) #1

declare void @sf_free(...) #1

declare void @cover_cost(...) #1

declare %struct.set_family* @sf_contain(...) #1

declare %struct.set_family* @unravel(...) #1

declare %struct.set_family* @expand(...) #1

declare void @totals(...) #1

declare %struct.set_family* @irredundant(...) #1

declare %struct.set_family* @essential(...) #1

declare %struct.set_family* @sf_new(...) #1

declare void @copy_cost(...) #1

declare %struct.set_family* @reduce(...) #1

declare %struct.set_family* @super_gasp(...) #1

declare %struct.set_family* @last_gasp(...) #1

declare %struct.set_family* @sf_append(...) #1

declare void @size_stamp(...) #1

declare %struct.set_family* @make_sparse(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
