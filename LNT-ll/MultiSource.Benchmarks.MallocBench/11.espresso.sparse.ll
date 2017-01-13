; ModuleID = './MultiSource.Benchmarks.MallocBench/11.espresso.sparse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@force_irredundant = external global i32, align 4
@cube = external global %struct.cube_struct, align 8

; Function Attrs: nounwind uwtable
define %struct.set_family* @make_sparse(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %cost = alloca %struct.cost_struct, align 4
  %best_cost = alloca %struct.cost_struct, align 4
  %t = alloca i64, align 8
  %t3 = alloca i64, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %0, %struct.cost_struct* %best_cost)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %t, align 8
  %1 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %2 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call1 = call %struct.set_family* @mv_reduce(%struct.set_family* %1, %struct.set_family* %2)
  store %struct.set_family* %call1, %struct.set_family** %F.addr, align 8
  %3 = load i64, i64* %t, align 8
  %4 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %3, i32 12, %struct.set_family* %4, %struct.cost_struct* %cost)
  %total = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 4
  %5 = load i32, i32* %total, align 4
  %total2 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 4
  %6 = load i32, i32* %total2, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* %cost, %struct.cost_struct* %best_cost)
  %call4 = call i64 (...) @util_cpu_time()
  store i64 %call4, i64* %t3, align 8
  %7 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %8 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call5 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %7, %struct.set_family* %8, i32 1)
  store %struct.set_family* %call5, %struct.set_family** %F.addr, align 8
  %9 = load i64, i64* %t3, align 8
  %10 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %9, i32 13, %struct.set_family* %10, %struct.cost_struct* %cost)
  %total6 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %cost, i32 0, i32 4
  %11 = load i32, i32* %total6, align 4
  %total7 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %best_cost, i32 0, i32 4
  %12 = load i32, i32* %total7, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %do.end

if.end.10:                                        ; preds = %if.end
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* %cost, %struct.cost_struct* %best_cost)
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  %13 = load i32, i32* @force_irredundant, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.9, %if.then
  %14 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %14
}

declare void @cover_cost(...) #1

declare i64 @util_cpu_time(...) #1

declare void @totals(...) #1

declare void @copy_cost(...) #1

declare %struct.set_family* @expand(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @mv_reduce(%struct.set_family* %F, %struct.set_family* %D) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %p = alloca i32*, align 8
  %p1 = alloca i32*, align 8
  %last = alloca i32*, align 8
  %index = alloca i32, align 4
  %F1 = alloca %struct.set_family*, align 8
  %D1 = alloca %struct.set_family*, align 8
  %F_cube_table = alloca i32**, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.135

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.132

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %var, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.129, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %var, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sle i32 %8, %11
  br i1 %cmp6, label %for.body.7, label %for.end.131

for.body.7:                                       ; preds = %for.cond.3
  %12 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %14 = bitcast i8* %call to i32**
  store i32** %14, i32*** %F_cube_table, align 8
  %15 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 3
  %16 = load i32, i32* %count8, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call9 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %16, i32 %17)
  store %struct.set_family* %call9, %struct.set_family** %F1, align 8
  %18 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 5
  %19 = load i32*, i32** %data, align 8
  store i32* %19, i32** %p, align 8
  %20 = load i32*, i32** %p, align 8
  %21 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 3
  %22 = load i32, i32* %count10, align 4
  %23 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 0
  %24 = load i32, i32* %wsize, align 4
  %mul11 = mul nsw i32 %22, %24
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds i32, i32* %20, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body.7
  %25 = load i32*, i32** %p, align 8
  %26 = load i32*, i32** %last, align 8
  %cmp13 = icmp ult i32* %25, %26
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %27 = load i32, i32* %i, align 4
  %shr = ashr i32 %27, 5
  %add = add nsw i32 %shr, 1
  %idxprom16 = sext i32 %add to i64
  %28 = load i32*, i32** %p, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %28, i64 %idxprom16
  %29 = load i32, i32* %arrayidx17, align 4
  %30 = load i32, i32* %i, align 4
  %and = and i32 %30, 31
  %shl = shl i32 1, %and
  %and18 = and i32 %29, %shl
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %for.body.15
  %31 = load i32*, i32** %p, align 8
  %32 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %count21 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count21, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load i32**, i32*** %F_cube_table, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %34, i64 %idxprom22
  store i32* %31, i32** %arrayidx23, align 8
  %35 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %data24 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 5
  %36 = load i32*, i32** %data24, align 8
  %37 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize25 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %38 = load i32, i32* %wsize25, align 4
  %39 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %count26 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 3
  %40 = load i32, i32* %count26, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %count26, align 4
  %mul27 = mul nsw i32 %38, %40
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %36, i64 %idx.ext28
  store i32* %add.ptr29, i32** %p1, align 8
  %41 = load i32*, i32** %p1, align 8
  %42 = load i32*, i32** %p, align 8
  %43 = load i32, i32* %var, align 4
  %idxprom30 = sext i32 %43 to i64
  %44 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %44, i64 %idxprom30
  %45 = load i32*, i32** %arrayidx31, align 8
  %call32 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %41, i32* %42, i32* %45)
  %46 = load i32, i32* %i, align 4
  %and33 = and i32 %46, 31
  %shl34 = shl i32 1, %and33
  %47 = load i32, i32* %i, align 4
  %shr35 = ashr i32 %47, 5
  %add36 = add nsw i32 %shr35, 1
  %idxprom37 = sext i32 %add36 to i64
  %48 = load i32*, i32** %p1, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 %idxprom37
  %49 = load i32, i32* %arrayidx38, align 4
  %or = or i32 %49, %shl34
  store i32 %or, i32* %arrayidx38, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %50 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize39 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 0
  %51 = load i32, i32* %wsize39, align 4
  %52 = load i32*, i32** %p, align 8
  %idx.ext40 = sext i32 %51 to i64
  %add.ptr41 = getelementptr inbounds i32, i32* %52, i64 %idx.ext40
  store i32* %add.ptr41, i32** %p, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %53 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %count42 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 3
  %54 = load i32, i32* %count42, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call43 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %54, i32 %55)
  store %struct.set_family* %call43, %struct.set_family** %D1, align 8
  %56 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %data44 = getelementptr inbounds %struct.set_family, %struct.set_family* %56, i32 0, i32 5
  %57 = load i32*, i32** %data44, align 8
  store i32* %57, i32** %p, align 8
  %58 = load i32*, i32** %p, align 8
  %59 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %count45 = getelementptr inbounds %struct.set_family, %struct.set_family* %59, i32 0, i32 3
  %60 = load i32, i32* %count45, align 4
  %61 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %wsize46 = getelementptr inbounds %struct.set_family, %struct.set_family* %61, i32 0, i32 0
  %62 = load i32, i32* %wsize46, align 4
  %mul47 = mul nsw i32 %60, %62
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds i32, i32* %58, i64 %idx.ext48
  store i32* %add.ptr49, i32** %last, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.81, %for.end
  %63 = load i32*, i32** %p, align 8
  %64 = load i32*, i32** %last, align 8
  %cmp51 = icmp ult i32* %63, %64
  br i1 %cmp51, label %for.body.53, label %for.end.85

for.body.53:                                      ; preds = %for.cond.50
  %65 = load i32, i32* %i, align 4
  %shr54 = ashr i32 %65, 5
  %add55 = add nsw i32 %shr54, 1
  %idxprom56 = sext i32 %add55 to i64
  %66 = load i32*, i32** %p, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %66, i64 %idxprom56
  %67 = load i32, i32* %arrayidx57, align 4
  %68 = load i32, i32* %i, align 4
  %and58 = and i32 %68, 31
  %shl59 = shl i32 1, %and58
  %and60 = and i32 %67, %shl59
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.80

if.then.62:                                       ; preds = %for.body.53
  %69 = load %struct.set_family*, %struct.set_family** %D1, align 8
  %data63 = getelementptr inbounds %struct.set_family, %struct.set_family* %69, i32 0, i32 5
  %70 = load i32*, i32** %data63, align 8
  %71 = load %struct.set_family*, %struct.set_family** %D1, align 8
  %wsize64 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 0
  %72 = load i32, i32* %wsize64, align 4
  %73 = load %struct.set_family*, %struct.set_family** %D1, align 8
  %count65 = getelementptr inbounds %struct.set_family, %struct.set_family* %73, i32 0, i32 3
  %74 = load i32, i32* %count65, align 4
  %inc66 = add nsw i32 %74, 1
  store i32 %inc66, i32* %count65, align 4
  %mul67 = mul nsw i32 %72, %74
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds i32, i32* %70, i64 %idx.ext68
  store i32* %add.ptr69, i32** %p1, align 8
  %75 = load i32*, i32** %p1, align 8
  %76 = load i32*, i32** %p, align 8
  %77 = load i32, i32* %var, align 4
  %idxprom70 = sext i32 %77 to i64
  %78 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %78, i64 %idxprom70
  %79 = load i32*, i32** %arrayidx71, align 8
  %call72 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %75, i32* %76, i32* %79)
  %80 = load i32, i32* %i, align 4
  %and73 = and i32 %80, 31
  %shl74 = shl i32 1, %and73
  %81 = load i32, i32* %i, align 4
  %shr75 = ashr i32 %81, 5
  %add76 = add nsw i32 %shr75, 1
  %idxprom77 = sext i32 %add76 to i64
  %82 = load i32*, i32** %p1, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %82, i64 %idxprom77
  %83 = load i32, i32* %arrayidx78, align 4
  %or79 = or i32 %83, %shl74
  store i32 %or79, i32* %arrayidx78, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.62, %for.body.53
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %84 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %wsize82 = getelementptr inbounds %struct.set_family, %struct.set_family* %84, i32 0, i32 0
  %85 = load i32, i32* %wsize82, align 4
  %86 = load i32*, i32** %p, align 8
  %idx.ext83 = sext i32 %85 to i64
  %add.ptr84 = getelementptr inbounds i32, i32* %86, i64 %idx.ext83
  store i32* %add.ptr84, i32** %p, align 8
  br label %for.cond.50

for.end.85:                                       ; preds = %for.cond.50
  %87 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %88 = load %struct.set_family*, %struct.set_family** %D1, align 8
  call void (%struct.set_family*, %struct.set_family*, ...) bitcast (void (...)* @mark_irredundant to void (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %87, %struct.set_family* %88)
  store i32 0, i32* %index, align 4
  %89 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %data86 = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 5
  %90 = load i32*, i32** %data86, align 8
  store i32* %90, i32** %p1, align 8
  %91 = load i32*, i32** %p1, align 8
  %92 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %count87 = getelementptr inbounds %struct.set_family, %struct.set_family* %92, i32 0, i32 3
  %93 = load i32, i32* %count87, align 4
  %94 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize88 = getelementptr inbounds %struct.set_family, %struct.set_family* %94, i32 0, i32 0
  %95 = load i32, i32* %wsize88, align 4
  %mul89 = mul nsw i32 %93, %95
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i32, i32* %91, i64 %idx.ext90
  store i32* %add.ptr91, i32** %last, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.121, %for.end.85
  %96 = load i32*, i32** %p1, align 8
  %97 = load i32*, i32** %last, align 8
  %cmp93 = icmp ult i32* %96, %97
  br i1 %cmp93, label %for.body.95, label %for.end.125

for.body.95:                                      ; preds = %for.cond.92
  %98 = load i32*, i32** %p1, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %98, i64 0
  %99 = load i32, i32* %arrayidx96, align 4
  %and97 = and i32 %99, 8192
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end.119, label %if.then.99

if.then.99:                                       ; preds = %for.body.95
  %100 = load i32, i32* %index, align 4
  %idxprom100 = sext i32 %100 to i64
  %101 = load i32**, i32*** %F_cube_table, align 8
  %arrayidx101 = getelementptr inbounds i32*, i32** %101, i64 %idxprom100
  %102 = load i32*, i32** %arrayidx101, align 8
  store i32* %102, i32** %p, align 8
  %103 = load i32, i32* %var, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %104, 1
  %cmp102 = icmp eq i32 %103, %sub
  br i1 %cmp102, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.99
  %105 = load i32, i32* %var, align 4
  %idxprom104 = sext i32 %105 to i64
  %106 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %106, i64 %idxprom104
  %107 = load i32*, i32** %arrayidx105, align 8
  %108 = load i32*, i32** %p, align 8
  %call106 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %107, i32* %108)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end.116, label %if.then.108

if.then.108:                                      ; preds = %lor.lhs.false, %if.then.99
  %109 = load i32, i32* %i, align 4
  %and109 = and i32 %109, 31
  %shl110 = shl i32 1, %and109
  %neg = xor i32 %shl110, -1
  %110 = load i32, i32* %i, align 4
  %shr111 = ashr i32 %110, 5
  %add112 = add nsw i32 %shr111, 1
  %idxprom113 = sext i32 %add112 to i64
  %111 = load i32*, i32** %p, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %111, i64 %idxprom113
  %112 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %112, %neg
  store i32 %and115, i32* %arrayidx114, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.108, %lor.lhs.false
  %113 = load i32*, i32** %p, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx117, align 4
  %and118 = and i32 %114, -32769
  store i32 %and118, i32* %arrayidx117, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.116, %for.body.95
  %115 = load i32, i32* %index, align 4
  %inc120 = add nsw i32 %115, 1
  store i32 %inc120, i32* %index, align 4
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.119
  %116 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize122 = getelementptr inbounds %struct.set_family, %struct.set_family* %116, i32 0, i32 0
  %117 = load i32, i32* %wsize122, align 4
  %118 = load i32*, i32** %p1, align 8
  %idx.ext123 = sext i32 %117 to i64
  %add.ptr124 = getelementptr inbounds i32, i32* %118, i64 %idx.ext123
  store i32* %add.ptr124, i32** %p1, align 8
  br label %for.cond.92

for.end.125:                                      ; preds = %for.cond.92
  %119 = load %struct.set_family*, %struct.set_family** %F1, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %119)
  %120 = load %struct.set_family*, %struct.set_family** %D1, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %120)
  %121 = load i32**, i32*** %F_cube_table, align 8
  %tobool126 = icmp ne i32** %121, null
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.125
  %122 = load i32**, i32*** %F_cube_table, align 8
  %123 = bitcast i32** %122 to i8*
  call void @free(i8* %123)
  store i32** null, i32*** %F_cube_table, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.end.125
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %124 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %124, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.3

for.end.131:                                      ; preds = %for.cond.3
  br label %if.end.132

if.end.132:                                       ; preds = %for.end.131, %for.body
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %125 = load i32, i32* %var, align 4
  %inc134 = add nsw i32 %125, 1
  store i32 %inc134, i32* %var, align 4
  br label %for.cond

for.end.135:                                      ; preds = %for.cond
  %126 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call136 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %126)
  store i32 0, i32* %var, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.174, %for.end.135
  %127 = load i32, i32* %var, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp138 = icmp slt i32 %127, %128
  br i1 %cmp138, label %for.body.140, label %for.end.176

for.body.140:                                     ; preds = %for.cond.137
  %129 = load i32, i32* %var, align 4
  %idxprom141 = sext i32 %129 to i64
  %130 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %130, i64 %idxprom141
  %131 = load i32, i32* %arrayidx142, align 4
  %tobool143 = icmp ne i32 %131, 0
  br i1 %tobool143, label %if.then.144, label %if.end.173

if.then.144:                                      ; preds = %for.body.140
  %132 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data145 = getelementptr inbounds %struct.set_family, %struct.set_family* %132, i32 0, i32 5
  %133 = load i32*, i32** %data145, align 8
  store i32* %133, i32** %p, align 8
  %134 = load i32*, i32** %p, align 8
  %135 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count146 = getelementptr inbounds %struct.set_family, %struct.set_family* %135, i32 0, i32 3
  %136 = load i32, i32* %count146, align 4
  %137 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize147 = getelementptr inbounds %struct.set_family, %struct.set_family* %137, i32 0, i32 0
  %138 = load i32, i32* %wsize147, align 4
  %mul148 = mul nsw i32 %136, %138
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds i32, i32* %134, i64 %idx.ext149
  store i32* %add.ptr150, i32** %last, align 8
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.168, %if.then.144
  %139 = load i32*, i32** %p, align 8
  %140 = load i32*, i32** %last, align 8
  %cmp152 = icmp ult i32* %139, %140
  br i1 %cmp152, label %for.body.154, label %for.end.172

for.body.154:                                     ; preds = %for.cond.151
  %141 = load i32*, i32** %p, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %141, i64 0
  %142 = load i32, i32* %arrayidx155, align 4
  %and156 = and i32 %142, 8192
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.167

if.then.158:                                      ; preds = %for.body.154
  %143 = load i32*, i32** %p, align 8
  %144 = load i32, i32* %var, align 4
  %idxprom159 = sext i32 %144 to i64
  %145 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %145, i64 %idxprom159
  %146 = load i32*, i32** %arrayidx160, align 8
  %call161 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %143, i32* %146)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %if.then.158
  %147 = load i32*, i32** %p, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %147, i64 0
  %148 = load i32, i32* %arrayidx164, align 4
  %and165 = and i32 %148, -8193
  store i32 %and165, i32* %arrayidx164, align 4
  %149 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %149, i32 0, i32 4
  %150 = load i32, i32* %active_count, align 4
  %dec = add nsw i32 %150, -1
  store i32 %dec, i32* %active_count, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %if.then.158
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %for.body.154
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %151 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize169 = getelementptr inbounds %struct.set_family, %struct.set_family* %151, i32 0, i32 0
  %152 = load i32, i32* %wsize169, align 4
  %153 = load i32*, i32** %p, align 8
  %idx.ext170 = sext i32 %152 to i64
  %add.ptr171 = getelementptr inbounds i32, i32* %153, i64 %idx.ext170
  store i32* %add.ptr171, i32** %p, align 8
  br label %for.cond.151

for.end.172:                                      ; preds = %for.cond.151
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %for.body.140
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %154 = load i32, i32* %var, align 4
  %inc175 = add nsw i32 %154, 1
  store i32 %inc175, i32* %var, align 4
  br label %for.cond.137

for.end.176:                                      ; preds = %for.cond.137
  %155 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count177 = getelementptr inbounds %struct.set_family, %struct.set_family* %155, i32 0, i32 3
  %156 = load i32, i32* %count177, align 4
  %157 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %active_count178 = getelementptr inbounds %struct.set_family, %struct.set_family* %157, i32 0, i32 4
  %158 = load i32, i32* %active_count178, align 4
  %cmp179 = icmp ne i32 %156, %158
  br i1 %cmp179, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %for.end.176
  %159 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call182 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %159)
  store %struct.set_family* %call182, %struct.set_family** %F.addr, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %for.end.176
  %160 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %160
}

declare i8* @malloc(i64) #1

declare %struct.set_family* @sf_new(...) #1

declare i32* @set_diff(...) #1

declare void @mark_irredundant(...) #1

declare i32 @setp_implies(...) #1

declare void @sf_free(...) #1

declare void @free(i8*) #1

declare %struct.set_family* @sf_active(...) #1

declare i32 @setp_disjoint(...) #1

declare %struct.set_family* @sf_inactive(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
