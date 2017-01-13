; ModuleID = './MultiSource.Benchmarks.MallocBench/17.espresso.cvrmisc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@cube = external global %struct.cube_struct, align 8
@cdata = external global %struct.cdata_struct, align 8
@fmt_cost.s = internal global [200 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"c=%d in=%d out=%d tot=%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"c=%d in=%d mv=%d out=%d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"# %s\09Cost is %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"# %s\09Time was %s, cost is %s\0A\00", align 1
@total_time = external global [16 x i64], align 16
@total_calls = external global [16 x i32], align 16
@trace = external global i32, align 4
@total_name = external global [16 x i8*], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"espresso: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cover_cost(%struct.set_family* %F, %struct.cost_struct* %cost) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %cost.addr = alloca %struct.cost_struct*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %T = alloca i32**, align 8
  %var = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.cost_struct* %cost, %struct.cost_struct** %cost.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %0)
  store i32** %call, i32*** %T, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %call)
  %1 = load i32**, i32*** %T, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32**, i32*** %T, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %3, i64 0
  %4 = load i32*, i32** %arrayidx1, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5)
  %6 = load i32**, i32*** %T, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %6, i64 0
  store i32* null, i32** %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32**, i32*** %T, align 8
  %tobool3 = icmp ne i32** %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load i32**, i32*** %T, align 8
  %9 = bitcast i32** %8 to i8*
  call void @free(i8* %9)
  store i32** null, i32*** %T, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %10 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count, align 4
  %12 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %cubes = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 0
  store i32 %11, i32* %cubes, align 4
  %13 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %primes = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 5
  store i32 0, i32* %primes, align 4
  %14 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %mv = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %14, i32 0, i32 3
  store i32 0, i32* %mv, align 4
  %15 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %out = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %15, i32 0, i32 2
  store i32 0, i32* %out, align 4
  %16 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %in = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %16, i32 0, i32 1
  store i32 0, i32* %in, align 4
  %17 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %total = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %17, i32 0, i32 4
  store i32 0, i32* %total, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %18 = load i32, i32* %var, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %var, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx6, align 4
  %23 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %in7 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %in7, align 4
  %add = add nsw i32 %24, %22
  store i32 %add, i32* %in7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %var, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %26, i32* %var, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.28, %for.end
  %27 = load i32, i32* %var, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %28, 1
  %cmp9 = icmp slt i32 %27, %sub
  br i1 %cmp9, label %for.body.10, label %for.end.30

for.body.10:                                      ; preds = %for.cond.8
  %29 = load i32, i32* %var, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %30, i64 %idxprom11
  %31 = load i32, i32* %arrayidx12, align 4
  %tobool13 = icmp ne i32 %31, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body.10
  %32 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count15 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count15, align 4
  %34 = load i32, i32* %var, align 4
  %idxprom16 = sext i32 %34 to i64
  %35 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %35, i64 %idxprom16
  %36 = load i32, i32* %arrayidx17, align 4
  %mul = mul nsw i32 %33, %36
  %37 = load i32, i32* %var, align 4
  %idxprom18 = sext i32 %37 to i64
  %38 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %38, i64 %idxprom18
  %39 = load i32, i32* %arrayidx19, align 4
  %sub20 = sub nsw i32 %mul, %39
  %40 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %mv21 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %40, i32 0, i32 3
  %41 = load i32, i32* %mv21, align 4
  %add22 = add nsw i32 %41, %sub20
  store i32 %add22, i32* %mv21, align 4
  br label %if.end.27

if.else:                                          ; preds = %for.body.10
  %42 = load i32, i32* %var, align 4
  %idxprom23 = sext i32 %42 to i64
  %43 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %43, i64 %idxprom23
  %44 = load i32, i32* %arrayidx24, align 4
  %45 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %mv25 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %45, i32 0, i32 3
  %46 = load i32, i32* %mv25, align 4
  %add26 = add nsw i32 %46, %44
  store i32 %add26, i32* %mv25, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.14
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %47 = load i32, i32* %var, align 4
  %inc29 = add nsw i32 %47, 1
  store i32 %inc29, i32* %var, align 4
  br label %for.cond.8

for.end.30:                                       ; preds = %for.cond.8
  %48 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp31 = icmp ne i32 %48, %49
  br i1 %cmp31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.end.30
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub33 = sub nsw i32 %50, 1
  store i32 %sub33, i32* %var, align 4
  %51 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count34 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 3
  %52 = load i32, i32* %count34, align 4
  %53 = load i32, i32* %var, align 4
  %idxprom35 = sext i32 %53 to i64
  %54 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %54, i64 %idxprom35
  %55 = load i32, i32* %arrayidx36, align 4
  %mul37 = mul nsw i32 %52, %55
  %56 = load i32, i32* %var, align 4
  %idxprom38 = sext i32 %56 to i64
  %57 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %57, i64 %idxprom38
  %58 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %mul37, %58
  %59 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %out41 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %59, i32 0, i32 2
  store i32 %sub40, i32* %out41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %for.end.30
  %60 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 5
  %61 = load i32*, i32** %data, align 8
  store i32* %61, i32** %p, align 8
  %62 = load i32*, i32** %p, align 8
  %63 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count43 = getelementptr inbounds %struct.set_family, %struct.set_family* %63, i32 0, i32 3
  %64 = load i32, i32* %count43, align 4
  %65 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 0
  %66 = load i32, i32* %wsize, align 4
  %mul44 = mul nsw i32 %64, %66
  %idx.ext = sext i32 %mul44 to i64
  %add.ptr = getelementptr inbounds i32, i32* %62, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.52, %if.end.42
  %67 = load i32*, i32** %p, align 8
  %68 = load i32*, i32** %last, align 8
  %cmp46 = icmp ult i32* %67, %68
  br i1 %cmp46, label %for.body.47, label %for.end.56

for.body.47:                                      ; preds = %for.cond.45
  %69 = load i32*, i32** %p, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx48, align 4
  %and = and i32 %70, 32768
  %cmp49 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp49 to i32
  %71 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %primes50 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %71, i32 0, i32 5
  %72 = load i32, i32* %primes50, align 4
  %add51 = add nsw i32 %72, %conv
  store i32 %add51, i32* %primes50, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.47
  %73 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize53 = getelementptr inbounds %struct.set_family, %struct.set_family* %73, i32 0, i32 0
  %74 = load i32, i32* %wsize53, align 4
  %75 = load i32*, i32** %p, align 8
  %idx.ext54 = sext i32 %74 to i64
  %add.ptr55 = getelementptr inbounds i32, i32* %75, i64 %idx.ext54
  store i32* %add.ptr55, i32** %p, align 8
  br label %for.cond.45

for.end.56:                                       ; preds = %for.cond.45
  %76 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %in57 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %76, i32 0, i32 1
  %77 = load i32, i32* %in57, align 4
  %78 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %out58 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %78, i32 0, i32 2
  %79 = load i32, i32* %out58, align 4
  %add59 = add nsw i32 %77, %79
  %80 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %mv60 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %80, i32 0, i32 3
  %81 = load i32, i32* %mv60, align 4
  %add61 = add nsw i32 %add59, %81
  %82 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %total62 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %82, i32 0, i32 4
  store i32 %add61, i32* %total62, align 4
  ret void
}

declare void @massive_count(...) #1

declare i32** @cube1list(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @fmt_cost(%struct.cost_struct* %cost) #0 {
entry:
  %cost.addr = alloca %struct.cost_struct*, align 8
  store %struct.cost_struct* %cost, %struct.cost_struct** %cost.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp eq i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %cubes = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %cubes, align 4
  %4 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %in = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %in, align 4
  %6 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %out = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %out, align 4
  %8 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %total = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %total, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %3, i32 %5, i32 %7, i32 %9) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %cubes1 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %cubes1, align 4
  %12 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %in2 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %in2, align 4
  %14 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %mv = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %14, i32 0, i32 3
  %15 = load i32, i32* %mv, align 4
  %16 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %out3 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %16, i32 0, i32 2
  %17 = load i32, i32* %out3, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %11, i32 %13, i32 %15, i32 %17) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @print_cost(%struct.set_family* %F) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %cost = alloca %struct.cost_struct, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void @cover_cost(%struct.set_family* %0, %struct.cost_struct* %cost)
  %call = call i8* @fmt_cost(%struct.cost_struct* %cost)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @copy_cost(%struct.cost_struct* %s, %struct.cost_struct* %d) #0 {
entry:
  %s.addr = alloca %struct.cost_struct*, align 8
  %d.addr = alloca %struct.cost_struct*, align 8
  store %struct.cost_struct* %s, %struct.cost_struct** %s.addr, align 8
  store %struct.cost_struct* %d, %struct.cost_struct** %d.addr, align 8
  %0 = load %struct.cost_struct*, %struct.cost_struct** %s.addr, align 8
  %cubes = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %cubes, align 4
  %2 = load %struct.cost_struct*, %struct.cost_struct** %d.addr, align 8
  %cubes1 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %2, i32 0, i32 0
  store i32 %1, i32* %cubes1, align 4
  %3 = load %struct.cost_struct*, %struct.cost_struct** %s.addr, align 8
  %in = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %in, align 4
  %5 = load %struct.cost_struct*, %struct.cost_struct** %d.addr, align 8
  %in2 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %5, i32 0, i32 1
  store i32 %4, i32* %in2, align 4
  %6 = load %struct.cost_struct*, %struct.cost_struct** %s.addr, align 8
  %out = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %out, align 4
  %8 = load %struct.cost_struct*, %struct.cost_struct** %d.addr, align 8
  %out3 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %8, i32 0, i32 2
  store i32 %7, i32* %out3, align 4
  %9 = load %struct.cost_struct*, %struct.cost_struct** %s.addr, align 8
  %mv = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %9, i32 0, i32 3
  %10 = load i32, i32* %mv, align 4
  %11 = load %struct.cost_struct*, %struct.cost_struct** %d.addr, align 8
  %mv4 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %11, i32 0, i32 3
  store i32 %10, i32* %mv4, align 4
  %12 = load %struct.cost_struct*, %struct.cost_struct** %s.addr, align 8
  %total = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %total, align 4
  %14 = load %struct.cost_struct*, %struct.cost_struct** %d.addr, align 8
  %total5 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %14, i32 0, i32 4
  store i32 %13, i32* %total5, align 4
  %15 = load %struct.cost_struct*, %struct.cost_struct** %s.addr, align 8
  %primes = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %15, i32 0, i32 5
  %16 = load i32, i32* %primes, align 4
  %17 = load %struct.cost_struct*, %struct.cost_struct** %d.addr, align 8
  %primes6 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %17, i32 0, i32 5
  store i32 %16, i32* %primes6, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @size_stamp(%struct.set_family* %T, i8* %name) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call = call i8* @print_cost(%struct.set_family* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* %0, i8* %call)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @print_trace(%struct.set_family* %T, i8* %name, i64 %time) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %name.addr = alloca i8*, align 8
  %time.addr = alloca i64, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %time, i64* %time.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i64, i64* %time.addr, align 8
  %call = call i8* @util_print_time(i64 %1)
  %2 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call1 = call i8* @print_cost(%struct.set_family* %2)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %0, i8* %call, i8* %call1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  ret void
}

declare i8* @util_print_time(i64) #1

; Function Attrs: nounwind uwtable
define void @totals(i64 %time, i32 %i, %struct.set_family* %T, %struct.cost_struct* %cost) #0 {
entry:
  %time.addr = alloca i64, align 8
  %i.addr = alloca i32, align 4
  %T.addr = alloca %struct.set_family*, align 8
  %cost.addr = alloca %struct.cost_struct*, align 8
  store i64 %time, i64* %time.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store %struct.cost_struct* %cost, %struct.cost_struct** %cost.addr, align 8
  %call = call i64 (...) @util_cpu_time()
  %0 = load i64, i64* %time.addr, align 8
  %sub = sub nsw i64 %call, %0
  store i64 %sub, i64* %time.addr, align 8
  %1 = load i64, i64* %time.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* @total_time, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add nsw i64 %3, %1
  store i64 %add, i64* %arrayidx, align 8
  %4 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* @total_calls, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx2, align 4
  %6 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %7 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void @cover_cost(%struct.set_family* %6, %struct.cost_struct* %7)
  %8 = load i32, i32* @trace, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [16 x i8*], [16 x i8*]* @total_name, i32 0, i64 %idxprom3
  %10 = load i8*, i8** %arrayidx4, align 8
  %11 = load i64, i64* %time.addr, align 8
  %call5 = call i8* @util_print_time(i64 %11)
  %12 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  %call6 = call i8* @fmt_cost(%struct.cost_struct* %12)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %10, i8* %call5, i8* %call6)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @util_cpu_time(...) #1

; Function Attrs: nounwind uwtable
define void @fatal(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
