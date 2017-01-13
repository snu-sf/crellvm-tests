; ModuleID = './MultiSource.Benchmarks.MallocBench/20.espresso.cvrm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@cube = external global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [34 x i8] c"unreasonable expansion in unravel\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"COMPONENT_REDUCTION: split into %d %d\0A\00", align 1
@Fmin = internal global %struct.set_family* null, align 8
@phase = internal global i32* null, align 8
@skip_make_sparse = external global i32, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ESPRESSO-POS(%d)\00", align 1
@summary = external global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"EXACT-POS(%d)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ESPRESSO-NEG(%d)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXACT-NEG(%d)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @unravel_range(%struct.set_family* %B, i32 %start, i32 %end) #0 {
entry:
  %B.addr = alloca %struct.set_family*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %B1 = alloca %struct.set_family*, align 8
  %var = alloca i32, align 4
  %total_size = alloca i32, align 4
  %expansion = alloca i32, align 4
  %size = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %startbase = alloca i32*, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 1
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %startbase, align 8
  %2 = load i32*, i32** %startbase, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %2, i32* %3)
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %var, align 4
  %5 = load i32, i32* %start.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32*, i32** %startbase, align 8
  %7 = load i32*, i32** %startbase, align 8
  %8 = load i32, i32* %var, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  %10 = load i32*, i32** %arrayidx1, align 8
  %call2 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %6, i32* %7, i32* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %var, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %end.addr, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %var, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %13 = load i32, i32* %var, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp4 = icmp slt i32 %13, %14
  br i1 %cmp4, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.3
  %15 = load i32*, i32** %startbase, align 8
  %16 = load i32*, i32** %startbase, align 8
  %17 = load i32, i32* %var, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %18, i64 %idxprom6
  %19 = load i32*, i32** %arrayidx7, align 8
  %call8 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %15, i32* %16, i32* %19)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %20 = load i32, i32* %var, align 4
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %var, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  store i32 0, i32* %total_size, align 4
  %21 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 5
  %22 = load i32*, i32** %data, align 8
  store i32* %22, i32** %p, align 8
  %23 = load i32*, i32** %p, align 8
  %24 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 3
  %25 = load i32, i32* %count, align 4
  %26 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 0
  %27 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %25, %27
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.30, %for.end.11
  %28 = load i32*, i32** %p, align 8
  %29 = load i32*, i32** %last, align 8
  %cmp13 = icmp ult i32* %28, %29
  br i1 %cmp13, label %for.body.14, label %for.end.34

for.body.14:                                      ; preds = %for.cond.12
  store i32 1, i32* %expansion, align 4
  %30 = load i32, i32* %start.addr, align 4
  store i32 %30, i32* %var, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.26, %for.body.14
  %31 = load i32, i32* %var, align 4
  %32 = load i32, i32* %end.addr, align 4
  %cmp16 = icmp sle i32 %31, %32
  br i1 %cmp16, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.15
  %33 = load i32*, i32** %p, align 8
  %34 = load i32, i32* %var, align 4
  %idxprom18 = sext i32 %34 to i64
  %35 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %35, i64 %idxprom18
  %36 = load i32*, i32** %arrayidx19, align 8
  %call20 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @set_dist to i32 (i32*, i32*, ...)*)(i32* %33, i32* %36)
  store i32 %call20, i32* %size, align 4
  %cmp21 = icmp sge i32 %call20, 2
  br i1 %cmp21, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body.17
  %37 = load i32, i32* %size, align 4
  %38 = load i32, i32* %expansion, align 4
  %mul22 = mul nsw i32 %38, %37
  store i32 %mul22, i32* %expansion, align 4
  %cmp23 = icmp sgt i32 %mul22, 1000000
  br i1 %cmp23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %for.body.17
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %39 = load i32, i32* %var, align 4
  %inc27 = add nsw i32 %39, 1
  store i32 %inc27, i32* %var, align 4
  br label %for.cond.15

for.end.28:                                       ; preds = %for.cond.15
  %40 = load i32, i32* %expansion, align 4
  %41 = load i32, i32* %total_size, align 4
  %add29 = add nsw i32 %41, %40
  store i32 %add29, i32* %total_size, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.28
  %42 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize31 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 0
  %43 = load i32, i32* %wsize31, align 4
  %44 = load i32*, i32** %p, align 8
  %idx.ext32 = sext i32 %43 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %44, i64 %idx.ext32
  store i32* %add.ptr33, i32** %p, align 8
  br label %for.cond.12

for.end.34:                                       ; preds = %for.cond.12
  %45 = load i32, i32* %total_size, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call35 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %45, i32 %46)
  store %struct.set_family* %call35, %struct.set_family** %B1, align 8
  %47 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data36 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 5
  %48 = load i32*, i32** %data36, align 8
  store i32* %48, i32** %p, align 8
  %49 = load i32*, i32** %p, align 8
  %50 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count37 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 3
  %51 = load i32, i32* %count37, align 4
  %52 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize38 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 0
  %53 = load i32, i32* %wsize38, align 4
  %mul39 = mul nsw i32 %51, %53
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds i32, i32* %49, i64 %idx.ext40
  store i32* %add.ptr41, i32** %last, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.45, %for.end.34
  %54 = load i32*, i32** %p, align 8
  %55 = load i32*, i32** %last, align 8
  %cmp43 = icmp ult i32* %54, %55
  br i1 %cmp43, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %for.cond.42
  %56 = load i32*, i32** %p, align 8
  %57 = load i32, i32* %start.addr, align 4
  %58 = load i32, i32* %end.addr, align 4
  %59 = load i32*, i32** %startbase, align 8
  %60 = load %struct.set_family*, %struct.set_family** %B1, align 8
  call void @cb_unravel(i32* %56, i32 %57, i32 %58, i32* %59, %struct.set_family* %60)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.44
  %61 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize46 = getelementptr inbounds %struct.set_family, %struct.set_family* %61, i32 0, i32 0
  %62 = load i32, i32* %wsize46, align 4
  %63 = load i32*, i32** %p, align 8
  %idx.ext47 = sext i32 %62 to i64
  %add.ptr48 = getelementptr inbounds i32, i32* %63, i64 %idx.ext47
  store i32* %add.ptr48, i32** %p, align 8
  br label %for.cond.42

for.end.49:                                       ; preds = %for.cond.42
  %64 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %64)
  %65 = load %struct.set_family*, %struct.set_family** %B1, align 8
  ret %struct.set_family* %65
}

declare i32* @set_copy(...) #1

declare i32* @set_or(...) #1

declare i32 @set_dist(...) #1

declare void @fatal(...) #1

declare %struct.set_family* @sf_new(...) #1

; Function Attrs: nounwind uwtable
define internal void @cb_unravel(i32* %c, i32 %start, i32 %end, i32* %startbase, %struct.set_family* %B1) #0 {
entry:
  %c.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %startbase.addr = alloca i32*, align 8
  %B1.addr = alloca %struct.set_family*, align 8
  %base = alloca i32*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %expansion = alloca i32, align 4
  %place = alloca i32, align 4
  %skip = alloca i32, align 4
  %var = alloca i32, align 4
  %size = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %i_ = alloca i32, align 4
  store i32* %c, i32** %c.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32* %startbase, i32** %startbase.addr, align 8
  store %struct.set_family* %B1, %struct.set_family** %B1.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %base, align 8
  store i32 1, i32* %expansion, align 4
  %2 = load i32*, i32** %base, align 8
  %3 = load i32*, i32** %startbase.addr, align 8
  %call = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %2, i32* %3)
  %4 = load i32, i32* %start.addr, align 4
  store i32 %4, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %var, align 4
  %6 = load i32, i32* %end.addr, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %c.addr, align 8
  %8 = load i32, i32* %var, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  %10 = load i32*, i32** %arrayidx1, align 8
  %call2 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @set_dist to i32 (i32*, i32*, ...)*)(i32* %7, i32* %10)
  store i32 %call2, i32* %size, align 4
  %cmp3 = icmp slt i32 %call2, 2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %base, align 8
  %12 = load i32*, i32** %base, align 8
  %13 = load i32, i32* %var, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %call6 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %11, i32* %12, i32* %15)
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %size, align 4
  %17 = load i32, i32* %expansion, align 4
  %mul = mul nsw i32 %17, %16
  store i32 %mul, i32* %expansion, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %var, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32*, i32** %base, align 8
  %20 = load i32*, i32** %c.addr, align 8
  %21 = load i32*, i32** %base, align 8
  %call7 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %19, i32* %20, i32* %21)
  %22 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %23 = load i32, i32* %count, align 4
  store i32 %23, i32* %offset, align 4
  %24 = load i32, i32* %expansion, align 4
  %25 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count8, align 4
  %add = add nsw i32 %26, %24
  store i32 %add, i32* %count8, align 4
  %27 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %28 = load i32*, i32** %data, align 8
  %29 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 0
  %30 = load i32, i32* %wsize, align 4
  %31 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 %31, 1
  %mul9 = mul nsw i32 %30, %sub
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %28, i64 %idx.ext
  %32 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %wsize10 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize10, align 4
  %idx.ext11 = sext i32 %33 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.ext11
  store i32* %add.ptr12, i32** %p, align 8
  %34 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %data13 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 5
  %35 = load i32*, i32** %data13, align 8
  %36 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %count14 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 3
  %37 = load i32, i32* %count14, align 4
  %38 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %wsize15 = getelementptr inbounds %struct.set_family, %struct.set_family* %38, i32 0, i32 0
  %39 = load i32, i32* %wsize15, align 4
  %mul16 = mul nsw i32 %37, %39
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %35, i64 %idx.ext17
  store i32* %add.ptr18, i32** %last, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.28, %for.end
  %40 = load i32*, i32** %p, align 8
  %41 = load i32*, i32** %last, align 8
  %cmp20 = icmp ult i32* %40, %41
  br i1 %cmp20, label %for.body.21, label %for.end.32

for.body.21:                                      ; preds = %for.cond.19
  %42 = load i32*, i32** %base, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx22, align 4
  %and = and i32 %43, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.21
  %44 = load i32, i32* %i_, align 4
  %idxprom23 = sext i32 %44 to i64
  %45 = load i32*, i32** %base, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %45, i64 %idxprom23
  %46 = load i32, i32* %arrayidx24, align 4
  %47 = load i32, i32* %i_, align 4
  %idxprom25 = sext i32 %47 to i64
  %48 = load i32*, i32** %p, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %48, i64 %idxprom25
  store i32 %46, i32* %arrayidx26, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %49 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %i_, align 4
  %cmp27 = icmp sge i32 %dec, 0
  br i1 %cmp27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.28

for.inc.28:                                       ; preds = %do.end
  %50 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %wsize29 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 0
  %51 = load i32, i32* %wsize29, align 4
  %52 = load i32*, i32** %p, align 8
  %idx.ext30 = sext i32 %51 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %52, i64 %idx.ext30
  store i32* %add.ptr31, i32** %p, align 8
  br label %for.cond.19

for.end.32:                                       ; preds = %for.cond.19
  %53 = load i32, i32* %expansion, align 4
  store i32 %53, i32* %place, align 4
  %54 = load i32, i32* %start.addr, align 4
  store i32 %54, i32* %var, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.85, %for.end.32
  %55 = load i32, i32* %var, align 4
  %56 = load i32, i32* %end.addr, align 4
  %cmp34 = icmp sle i32 %55, %56
  br i1 %cmp34, label %for.body.35, label %for.end.87

for.body.35:                                      ; preds = %for.cond.33
  %57 = load i32*, i32** %c.addr, align 8
  %58 = load i32, i32* %var, align 4
  %idxprom36 = sext i32 %58 to i64
  %59 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %59, i64 %idxprom36
  %60 = load i32*, i32** %arrayidx37, align 8
  %call38 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @set_dist to i32 (i32*, i32*, ...)*)(i32* %57, i32* %60)
  store i32 %call38, i32* %size, align 4
  %cmp39 = icmp sgt i32 %call38, 1
  br i1 %cmp39, label %if.then.40, label %if.end.84

if.then.40:                                       ; preds = %for.body.35
  %61 = load i32, i32* %place, align 4
  store i32 %61, i32* %skip, align 4
  %62 = load i32, i32* %place, align 4
  %63 = load i32, i32* %size, align 4
  %div = sdiv i32 %62, %63
  store i32 %div, i32* %place, align 4
  store i32 0, i32* %n, align 4
  %64 = load i32, i32* %var, align 4
  %idxprom41 = sext i32 %64 to i64
  %65 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %65, i64 %idxprom41
  %66 = load i32, i32* %arrayidx42, align 4
  store i32 %66, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.81, %if.then.40
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %var, align 4
  %idxprom44 = sext i32 %68 to i64
  %69 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %69, i64 %idxprom44
  %70 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp sle i32 %67, %70
  br i1 %cmp46, label %for.body.47, label %for.end.83

for.body.47:                                      ; preds = %for.cond.43
  %71 = load i32, i32* %i, align 4
  %shr = ashr i32 %71, 5
  %add48 = add nsw i32 %shr, 1
  %idxprom49 = sext i32 %add48 to i64
  %72 = load i32*, i32** %c.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %72, i64 %idxprom49
  %73 = load i32, i32* %arrayidx50, align 4
  %74 = load i32, i32* %i, align 4
  %and51 = and i32 %74, 31
  %shl = shl i32 1, %and51
  %and52 = and i32 %73, %shl
  %tobool = icmp ne i32 %and52, 0
  br i1 %tobool, label %if.then.53, label %if.end.80

if.then.53:                                       ; preds = %for.body.47
  %75 = load i32, i32* %n, align 4
  store i32 %75, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.76, %if.then.53
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %expansion, align 4
  %cmp55 = icmp slt i32 %76, %77
  br i1 %cmp55, label %for.body.56, label %for.end.78

for.body.56:                                      ; preds = %for.cond.54
  store i32 0, i32* %k, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.73, %for.body.56
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %place, align 4
  %cmp58 = icmp slt i32 %78, %79
  br i1 %cmp58, label %for.body.59, label %for.end.75

for.body.59:                                      ; preds = %for.cond.57
  %80 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %data60 = getelementptr inbounds %struct.set_family, %struct.set_family* %80, i32 0, i32 5
  %81 = load i32*, i32** %data60, align 8
  %82 = load %struct.set_family*, %struct.set_family** %B1.addr, align 8
  %wsize61 = getelementptr inbounds %struct.set_family, %struct.set_family* %82, i32 0, i32 0
  %83 = load i32, i32* %wsize61, align 4
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %k, align 4
  %add62 = add nsw i32 %84, %85
  %86 = load i32, i32* %offset, align 4
  %add63 = add nsw i32 %add62, %86
  %mul64 = mul nsw i32 %83, %add63
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds i32, i32* %81, i64 %idx.ext65
  store i32* %add.ptr66, i32** %p, align 8
  %87 = load i32, i32* %i, align 4
  %and67 = and i32 %87, 31
  %shl68 = shl i32 1, %and67
  %88 = load i32, i32* %i, align 4
  %shr69 = ashr i32 %88, 5
  %add70 = add nsw i32 %shr69, 1
  %idxprom71 = sext i32 %add70 to i64
  %89 = load i32*, i32** %p, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %89, i64 %idxprom71
  %90 = load i32, i32* %arrayidx72, align 4
  %or = or i32 %90, %shl68
  store i32 %or, i32* %arrayidx72, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.59
  %91 = load i32, i32* %k, align 4
  %inc74 = add nsw i32 %91, 1
  store i32 %inc74, i32* %k, align 4
  br label %for.cond.57

for.end.75:                                       ; preds = %for.cond.57
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %92 = load i32, i32* %skip, align 4
  %93 = load i32, i32* %j, align 4
  %add77 = add nsw i32 %93, %92
  store i32 %add77, i32* %j, align 4
  br label %for.cond.54

for.end.78:                                       ; preds = %for.cond.54
  %94 = load i32, i32* %place, align 4
  %95 = load i32, i32* %n, align 4
  %add79 = add nsw i32 %95, %94
  store i32 %add79, i32* %n, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.78, %for.body.47
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %96 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %96, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.43

for.end.83:                                       ; preds = %for.cond.43
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %for.body.35
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %97 = load i32, i32* %var, align 4
  %inc86 = add nsw i32 %97, 1
  store i32 %inc86, i32* %var, align 4
  br label %for.cond.33

for.end.87:                                       ; preds = %for.cond.33
  ret void
}

declare void @sf_free(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @unravel(%struct.set_family* %B, i32 %start) #0 {
entry:
  %B.addr = alloca %struct.set_family*, align 8
  %start.addr = alloca i32, align 4
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %1 = load i32, i32* %start.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %2, 1
  %call = call %struct.set_family* @unravel_range(%struct.set_family* %0, i32 %1, i32 %sub)
  ret %struct.set_family* %call
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @lex_sort(%struct.set_family* %T) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %T1 = alloca %struct.set_family*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call = call i32** (%struct.set_family*, i32 (...)*, ...) bitcast (i32** (...)* @sf_sort to i32** (%struct.set_family*, i32 (...)*, ...)*)(%struct.set_family* %0, i32 (...)* @lex_order)
  %1 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size, align 4
  %call1 = call %struct.set_family* (i32**, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_unlist to %struct.set_family* (i32**, i32, i32, ...)*)(i32** %call, i32 %2, i32 %4)
  store %struct.set_family* %call1, %struct.set_family** %T1, align 8
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %5)
  %6 = load %struct.set_family*, %struct.set_family** %T1, align 8
  ret %struct.set_family* %6
}

declare %struct.set_family* @sf_unlist(...) #1

declare i32** @sf_sort(...) #1

declare i32 @lex_order(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @size_sort(%struct.set_family* %T) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %T1 = alloca %struct.set_family*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call = call i32** (%struct.set_family*, i32 (...)*, ...) bitcast (i32** (...)* @sf_sort to i32** (%struct.set_family*, i32 (...)*, ...)*)(%struct.set_family* %0, i32 (...)* @descend)
  %1 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size, align 4
  %call1 = call %struct.set_family* (i32**, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_unlist to %struct.set_family* (i32**, i32, i32, ...)*)(i32** %call, i32 %2, i32 %4)
  store %struct.set_family* %call1, %struct.set_family** %T1, align 8
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %5)
  %6 = load %struct.set_family*, %struct.set_family** %T1, align 8
  ret %struct.set_family* %6
}

declare i32 @descend(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @mini_sort(%struct.set_family* %F, i32 (...)* %compare) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %compare.addr = alloca i32 (...)*, align 8
  %count = alloca i32*, align 8
  %cnt = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %F_sorted = alloca %struct.set_family*, align 8
  %F1 = alloca i32**, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store i32 (...)* %compare, i32 (...)** %compare.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  store i32 %0, i32* %n, align 4
  %1 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call = call i32* (%struct.set_family*, ...) bitcast (i32* (...)* @sf_count to i32* (%struct.set_family*, ...)*)(%struct.set_family* %1)
  store i32* %call, i32** %count, align 8
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 5
  %3 = load i32*, i32** %data, align 8
  store i32* %3, i32** %p, align 8
  %4 = load i32*, i32** %p, align 8
  %5 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  %6 = load i32, i32* %count1, align 4
  %7 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %6, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %9 = load i32*, i32** %p, align 8
  %10 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n, align 4
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %i, align 4
  %shr = ashr i32 %13, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %14 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %16 = load i32, i32* %i, align 4
  %and = and i32 %16, 31
  %shl = shl i32 1, %and
  %and5 = and i32 %15, %shl
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load i32*, i32** %count, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %18, i64 %idxprom6
  %19 = load i32, i32* %arrayidx7, align 4
  %20 = load i32, i32* %cnt, align 4
  %add8 = add nsw i32 %20, %19
  store i32 %add8, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %22 = load i32*, i32** %p, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %23, 65535
  store i32 %and10, i32* %arrayidx9, align 4
  %24 = load i32, i32* %cnt, align 4
  %shl11 = shl i32 %24, 16
  %25 = load i32*, i32** %p, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx12, align 4
  %or = or i32 %26, %shl11
  store i32 %or, i32* %arrayidx12, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %27 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize14 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize14, align 4
  %29 = load i32*, i32** %p, align 8
  %idx.ext15 = sext i32 %28 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %29, i64 %idx.ext15
  store i32* %add.ptr16, i32** %p, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %30 = load i32*, i32** %count, align 8
  %tobool18 = icmp ne i32* %30, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end.17
  %31 = load i32*, i32** %count, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* %32)
  store i32* null, i32** %count, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.end.17
  %33 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call21 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @sf_list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %33)
  store i32** %call21, i32*** %F1, align 8
  %34 = bitcast i32** %call21 to i8*
  %35 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count22 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 3
  %36 = load i32, i32* %count22, align 4
  %conv = sext i32 %36 to i64
  %37 = load i32 (...)*, i32 (...)** %compare.addr, align 8
  %38 = bitcast i32 (...)* %37 to i32 (i8*, i8*)*
  call void @qsort(i8* %34, i64 %conv, i64 8, i32 (i8*, i8*)* %38)
  %39 = load i32**, i32*** %F1, align 8
  %40 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count23 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 3
  %41 = load i32, i32* %count23, align 4
  %42 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 1
  %43 = load i32, i32* %sf_size, align 4
  %call24 = call %struct.set_family* (i32**, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_unlist to %struct.set_family* (i32**, i32, i32, ...)*)(i32** %39, i32 %41, i32 %43)
  store %struct.set_family* %call24, %struct.set_family** %F_sorted, align 8
  %44 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %44)
  %45 = load %struct.set_family*, %struct.set_family** %F_sorted, align 8
  ret %struct.set_family* %45
}

declare i32* @sf_count(...) #1

declare void @free(i8*) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare i32** @sf_list(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sort_reduce(%struct.set_family* %T) #0 {
entry:
  %retval = alloca %struct.set_family*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %largest = alloca i32*, align 8
  %bestsize = alloca i32, align 4
  %size = alloca i32, align 4
  %n = alloca i32, align 4
  %T_sorted = alloca %struct.set_family*, align 8
  %T1 = alloca i32**, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32* null, i32** %largest, align 8
  store i32 -1, i32* %bestsize, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  store i32 %0, i32* %n, align 4
  %1 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  store %struct.set_family* %3, %struct.set_family** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %p, align 8
  %6 = load i32*, i32** %p, align 8
  %7 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count1, align 4
  %9 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32*, i32** %p, align 8
  %12 = load i32*, i32** %last, align 8
  %cmp2 = icmp ult i32* %11, %12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %p, align 8
  %call = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %13)
  store i32 %call, i32* %size, align 4
  %14 = load i32, i32* %bestsize, align 4
  %cmp3 = icmp sgt i32 %call, %14
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %15 = load i32*, i32** %p, align 8
  store i32* %15, i32** %largest, align 8
  %16 = load i32, i32* %size, align 4
  store i32 %16, i32* %bestsize, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %17 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 0
  %18 = load i32, i32* %wsize6, align 4
  %19 = load i32*, i32** %p, align 8
  %idx.ext7 = sext i32 %18 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %19, i64 %idx.ext7
  store i32* %add.ptr8, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data9 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 5
  %21 = load i32*, i32** %data9, align 8
  store i32* %21, i32** %p, align 8
  %22 = load i32*, i32** %p, align 8
  %23 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 3
  %24 = load i32, i32* %count10, align 4
  %25 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize11 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %26 = load i32, i32* %wsize11, align 4
  %mul12 = mul nsw i32 %24, %26
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %22, i64 %idx.ext13
  store i32* %add.ptr14, i32** %last, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %for.end
  %27 = load i32*, i32** %p, align 8
  %28 = load i32*, i32** %last, align 8
  %cmp16 = icmp ult i32* %27, %28
  br i1 %cmp16, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.15
  %29 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx, align 4
  %and = and i32 %30, 65535
  store i32 %and, i32* %arrayidx, align 4
  %31 = load i32, i32* %n, align 4
  %32 = load i32*, i32** %largest, align 8
  %33 = load i32*, i32** %p, align 8
  %call18 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist to i32 (i32*, i32*, ...)*)(i32* %32, i32* %33)
  %sub = sub nsw i32 %31, %call18
  %shl = shl i32 %sub, 7
  %34 = load i32*, i32** %p, align 8
  %call19 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %34)
  %cmp20 = icmp slt i32 %call19, 127
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.17
  %35 = load i32*, i32** %p, align 8
  %call21 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %35)
  br label %cond.end

cond.false:                                       ; preds = %for.body.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ 127, %cond.false ]
  %add = add nsw i32 %shl, %cond
  %shl22 = shl i32 %add, 16
  %36 = load i32*, i32** %p, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx23, align 4
  %or = or i32 %37, %shl22
  store i32 %or, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %cond.end
  %38 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize25 = getelementptr inbounds %struct.set_family, %struct.set_family* %38, i32 0, i32 0
  %39 = load i32, i32* %wsize25, align 4
  %40 = load i32*, i32** %p, align 8
  %idx.ext26 = sext i32 %39 to i64
  %add.ptr27 = getelementptr inbounds i32, i32* %40, i64 %idx.ext26
  store i32* %add.ptr27, i32** %p, align 8
  br label %for.cond.15

for.end.28:                                       ; preds = %for.cond.15
  %41 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call29 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @sf_list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %41)
  store i32** %call29, i32*** %T1, align 8
  %42 = bitcast i32** %call29 to i8*
  %43 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count30 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 3
  %44 = load i32, i32* %count30, align 4
  %conv = sext i32 %44 to i64
  call void @qsort(i8* %42, i64 %conv, i64 8, i32 (i8*, i8*)* bitcast (i32 (...)* @descend to i32 (i8*, i8*)*))
  %45 = load i32**, i32*** %T1, align 8
  %46 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count31 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 3
  %47 = load i32, i32* %count31, align 4
  %48 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 1
  %49 = load i32, i32* %sf_size, align 4
  %call32 = call %struct.set_family* (i32**, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_unlist to %struct.set_family* (i32**, i32, i32, ...)*)(i32** %45, i32 %47, i32 %49)
  store %struct.set_family* %call32, %struct.set_family** %T_sorted, align 8
  %50 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %50)
  %51 = load %struct.set_family*, %struct.set_family** %T_sorted, align 8
  store %struct.set_family* %51, %struct.set_family** %retval
  br label %return

return:                                           ; preds = %for.end.28, %if.then
  %52 = load %struct.set_family*, %struct.set_family** %retval
  ret %struct.set_family* %52
}

declare i32 @set_ord(...) #1

declare i32 @cdist(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @random_order(%struct.set_family* %F) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %temp = alloca i32*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %cmp = icmp sle i32 %1, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size1, align 4
  %sub = sub nsw i32 %3, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %sf_size3 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size3, align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %4, i32 %6)
  store i32* %call4, i32** %temp, align 8
  %7 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %sub5 = sub nsw i32 %8, 1
  store i32 %sub5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %10, 23
  %add9 = add nsw i32 %mul8, 997
  %11 = load i32, i32* %i, align 4
  %rem = srem i32 %add9, %11
  store i32 %rem, i32* %k, align 4
  %12 = load i32*, i32** %temp, align 8
  %13 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 5
  %14 = load i32*, i32** %data, align 8
  %15 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %16 = load i32, i32* %wsize, align 4
  %17 = load i32, i32* %k, align 4
  %mul10 = mul nsw i32 %16, %17
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %14, i64 %idx.ext
  %call11 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %12, i32* %add.ptr)
  %18 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data12 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 5
  %19 = load i32*, i32** %data12, align 8
  %20 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize13 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 0
  %21 = load i32, i32* %wsize13, align 4
  %22 = load i32, i32* %k, align 4
  %mul14 = mul nsw i32 %21, %22
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %19, i64 %idx.ext15
  %23 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data17 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 5
  %24 = load i32*, i32** %data17, align 8
  %25 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize18 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %26 = load i32, i32* %wsize18, align 4
  %27 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %26, %27
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, i32* %24, i64 %idx.ext20
  %call22 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr16, i32* %add.ptr21)
  %28 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data23 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data23, align 8
  %30 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize24 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize24, align 4
  %32 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 %31, %32
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i32, i32* %29, i64 %idx.ext26
  %33 = load i32*, i32** %temp, align 8
  %call28 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr27, i32* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32*, i32** %temp, align 8
  %tobool = icmp ne i32* %35, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %36 = load i32*, i32** %temp, align 8
  %37 = bitcast i32* %36 to i8*
  call void @free(i8* %37)
  store i32* null, i32** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %38 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %38
}

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @cubelist_partition(i32** %T, i32*** %A, i32*** %B, i32 %comp_debug) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %A.addr = alloca i32***, align 8
  %B.addr = alloca i32***, align 8
  %comp_debug.addr = alloca i32, align 4
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %seed = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %A1 = alloca i32**, align 8
  %B1 = alloca i32**, align 8
  %change = alloca i32, align 4
  %count = alloca i32, align 4
  %numcube = alloca i32, align 4
  %i_ = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store i32*** %A, i32**** %A.addr, align 8
  store i32*** %B, i32**** %B.addr, align 8
  store i32 %comp_debug, i32* %comp_debug.addr, align 4
  %0 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 1
  %1 = load i32*, i32** %arrayidx, align 8
  %2 = bitcast i32* %1 to i32**
  %3 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %numcube, align 4
  %4 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %4, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %5 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %p, align 8
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %8, -2049
  store i32 %and, i32* %arrayidx2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32**, i32*** %T.addr, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %9, i64 2
  %10 = load i32*, i32** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 %11, 1023
  %mul = mul i32 32, %and5
  %cmp6 = icmp ule i32 %mul, 32
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %12 = load i32**, i32*** %T.addr, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %12, i64 2
  %13 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %14, 1023
  %mul11 = mul i32 32, %and10
  %sub12 = sub i32 %mul11, 1
  %shr = lshr i32 %sub12, 5
  %add = add i32 %shr, 1
  %add13 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add13, %cond.false ]
  %conv14 = zext i32 %cond to i64
  %mul15 = mul i64 4, %conv14
  %call = call i8* @malloc(i64 %mul15)
  %15 = bitcast i8* %call to i32*
  %16 = load i32**, i32*** %T.addr, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %16, i64 2
  %17 = load i32*, i32** %arrayidx16, align 8
  %call17 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %15, i32* %17)
  store i32* %call17, i32** %seed, align 8
  %18 = load i32**, i32*** %T.addr, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %18, i64 0
  %19 = load i32*, i32** %arrayidx18, align 8
  store i32* %19, i32** %cof, align 8
  %20 = load i32**, i32*** %T.addr, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %20, i64 2
  %21 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx20, align 4
  %or = or i32 %22, 2048
  store i32 %or, i32* %arrayidx20, align 4
  store i32 1, i32* %count, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.49, %cond.end
  store i32 0, i32* %change, align 4
  %23 = load i32**, i32*** %T.addr, align 8
  %add.ptr21 = getelementptr inbounds i32*, i32** %23, i64 2
  store i32** %add.ptr21, i32*** %T1, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %if.end, %do.body
  %24 = load i32**, i32*** %T1, align 8
  %incdec.ptr23 = getelementptr inbounds i32*, i32** %24, i32 1
  store i32** %incdec.ptr23, i32*** %T1, align 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %p, align 8
  %cmp24 = icmp ne i32* %25, null
  br i1 %cmp24, label %for.body.26, label %for.end.48

for.body.26:                                      ; preds = %for.cond.22
  %26 = load i32*, i32** %p, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %27, 2048
  %tobool = icmp ne i32 %and28, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.26
  %28 = load i32*, i32** %p, align 8
  %29 = load i32*, i32** %seed, align 8
  %30 = load i32*, i32** %cof, align 8
  %call29 = call i32 (i32*, i32*, i32*, ...) bitcast (i32 (...)* @ccommon to i32 (i32*, i32*, i32*, ...)*)(i32* %28, i32* %29, i32* %30)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %31 = load i32*, i32** %seed, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx31, align 4
  %and32 = and i32 %32, 1023
  store i32 %and32, i32* %i_, align 4
  %33 = load i32*, i32** %seed, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx33, align 4
  %and34 = and i32 %34, -1024
  store i32 %and34, i32* %arrayidx33, align 4
  %35 = load i32, i32* %i_, align 4
  %36 = load i32*, i32** %seed, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx35, align 4
  %or36 = or i32 %37, %35
  store i32 %or36, i32* %arrayidx35, align 4
  br label %do.body.37

do.body.37:                                       ; preds = %do.cond, %if.then
  %38 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i32*, i32** %seed, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %39, i64 %idxprom
  %40 = load i32, i32* %arrayidx38, align 4
  %41 = load i32, i32* %i_, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i32*, i32** %p, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %42, i64 %idxprom39
  %43 = load i32, i32* %arrayidx40, align 4
  %and41 = and i32 %40, %43
  %44 = load i32, i32* %i_, align 4
  %idxprom42 = sext i32 %44 to i64
  %45 = load i32*, i32** %seed, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %45, i64 %idxprom42
  store i32 %and41, i32* %arrayidx43, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.37
  %46 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i_, align 4
  %cmp44 = icmp sgt i32 %dec, 0
  br i1 %cmp44, label %do.body.37, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load i32*, i32** %p, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx46, align 4
  %or47 = or i32 %48, 2048
  store i32 %or47, i32* %arrayidx46, align 4
  store i32 1, i32* %change, align 4
  %49 = load i32, i32* %count, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %for.body.26
  br label %for.cond.22

for.end.48:                                       ; preds = %for.cond.22
  br label %do.cond.49

do.cond.49:                                       ; preds = %for.end.48
  %50 = load i32, i32* %change, align 4
  %tobool50 = icmp ne i32 %50, 0
  br i1 %tobool50, label %do.body, label %do.end.51

do.end.51:                                        ; preds = %do.cond.49
  %51 = load i32*, i32** %seed, align 8
  %tobool52 = icmp ne i32* %51, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %do.end.51
  %52 = load i32*, i32** %seed, align 8
  %53 = bitcast i32* %52 to i8*
  call void @free(i8* %53)
  store i32* null, i32** %seed, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %do.end.51
  %54 = load i32, i32* %comp_debug.addr, align 4
  %tobool55 = icmp ne i32 %54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.54
  %55 = load i32, i32* %count, align 4
  %56 = load i32, i32* %numcube, align 4
  %57 = load i32, i32* %count, align 4
  %sub57 = sub nsw i32 %56, %57
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i32 %55, i32 %sub57)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.54
  %58 = load i32, i32* %count, align 4
  %59 = load i32, i32* %numcube, align 4
  %cmp60 = icmp ne i32 %58, %59
  br i1 %cmp60, label %if.then.62, label %if.end.139

if.then.62:                                       ; preds = %if.end.59
  %60 = load i32, i32* %numcube, align 4
  %add63 = add nsw i32 %60, 3
  %conv64 = sext i32 %add63 to i64
  %mul65 = mul i64 8, %conv64
  %call66 = call i8* @malloc(i64 %mul65)
  %61 = bitcast i8* %call66 to i32**
  store i32** %61, i32*** %A1, align 8
  %62 = load i32***, i32**** %A.addr, align 8
  store i32** %61, i32*** %62, align 8
  %63 = load i32, i32* %numcube, align 4
  %add67 = add nsw i32 %63, 3
  %conv68 = sext i32 %add67 to i64
  %mul69 = mul i64 8, %conv68
  %call70 = call i8* @malloc(i64 %mul69)
  %64 = bitcast i8* %call70 to i32**
  store i32** %64, i32*** %B1, align 8
  %65 = load i32***, i32**** %B.addr, align 8
  store i32** %64, i32*** %65, align 8
  %66 = load i32**, i32*** %T.addr, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %66, i64 0
  %67 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx72, align 4
  %and73 = and i32 %68, 1023
  %mul74 = mul i32 32, %and73
  %cmp75 = icmp ule i32 %mul74, 32
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.then.62
  br label %cond.end.87

cond.false.78:                                    ; preds = %if.then.62
  %69 = load i32**, i32*** %T.addr, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %69, i64 0
  %70 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx80, align 4
  %and81 = and i32 %71, 1023
  %mul82 = mul i32 32, %and81
  %sub83 = sub i32 %mul82, 1
  %shr84 = lshr i32 %sub83, 5
  %add85 = add i32 %shr84, 1
  %add86 = add i32 %add85, 1
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.78, %cond.true.77
  %cond88 = phi i32 [ 2, %cond.true.77 ], [ %add86, %cond.false.78 ]
  %conv89 = zext i32 %cond88 to i64
  %mul90 = mul i64 4, %conv89
  %call91 = call i8* @malloc(i64 %mul90)
  %72 = bitcast i8* %call91 to i32*
  %73 = load i32**, i32*** %T.addr, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %73, i64 0
  %74 = load i32*, i32** %arrayidx92, align 8
  %call93 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %72, i32* %74)
  %75 = load i32***, i32**** %A.addr, align 8
  %76 = load i32**, i32*** %75, align 8
  %arrayidx94 = getelementptr inbounds i32*, i32** %76, i64 0
  store i32* %call93, i32** %arrayidx94, align 8
  %77 = load i32**, i32*** %T.addr, align 8
  %arrayidx95 = getelementptr inbounds i32*, i32** %77, i64 0
  %78 = load i32*, i32** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx96, align 4
  %and97 = and i32 %79, 1023
  %mul98 = mul i32 32, %and97
  %cmp99 = icmp ule i32 %mul98, 32
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.end.87
  br label %cond.end.111

cond.false.102:                                   ; preds = %cond.end.87
  %80 = load i32**, i32*** %T.addr, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %80, i64 0
  %81 = load i32*, i32** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx104, align 4
  %and105 = and i32 %82, 1023
  %mul106 = mul i32 32, %and105
  %sub107 = sub i32 %mul106, 1
  %shr108 = lshr i32 %sub107, 5
  %add109 = add i32 %shr108, 1
  %add110 = add i32 %add109, 1
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.102, %cond.true.101
  %cond112 = phi i32 [ 2, %cond.true.101 ], [ %add110, %cond.false.102 ]
  %conv113 = zext i32 %cond112 to i64
  %mul114 = mul i64 4, %conv113
  %call115 = call i8* @malloc(i64 %mul114)
  %83 = bitcast i8* %call115 to i32*
  %84 = load i32**, i32*** %T.addr, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %84, i64 0
  %85 = load i32*, i32** %arrayidx116, align 8
  %call117 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %83, i32* %85)
  %86 = load i32***, i32**** %B.addr, align 8
  %87 = load i32**, i32*** %86, align 8
  %arrayidx118 = getelementptr inbounds i32*, i32** %87, i64 0
  store i32* %call117, i32** %arrayidx118, align 8
  %88 = load i32***, i32**** %A.addr, align 8
  %89 = load i32**, i32*** %88, align 8
  %add.ptr119 = getelementptr inbounds i32*, i32** %89, i64 2
  store i32** %add.ptr119, i32*** %A1, align 8
  %90 = load i32***, i32**** %B.addr, align 8
  %91 = load i32**, i32*** %90, align 8
  %add.ptr120 = getelementptr inbounds i32*, i32** %91, i64 2
  store i32** %add.ptr120, i32*** %B1, align 8
  %92 = load i32**, i32*** %T.addr, align 8
  %add.ptr121 = getelementptr inbounds i32*, i32** %92, i64 2
  store i32** %add.ptr121, i32*** %T1, align 8
  br label %for.cond.122

for.cond.122:                                     ; preds = %if.end.133, %cond.end.111
  %93 = load i32**, i32*** %T1, align 8
  %incdec.ptr123 = getelementptr inbounds i32*, i32** %93, i32 1
  store i32** %incdec.ptr123, i32*** %T1, align 8
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %p, align 8
  %cmp124 = icmp ne i32* %94, null
  br i1 %cmp124, label %for.body.126, label %for.end.134

for.body.126:                                     ; preds = %for.cond.122
  %95 = load i32*, i32** %p, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx127, align 4
  %and128 = and i32 %96, 2048
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %for.body.126
  %97 = load i32*, i32** %p, align 8
  %98 = load i32**, i32*** %A1, align 8
  %incdec.ptr131 = getelementptr inbounds i32*, i32** %98, i32 1
  store i32** %incdec.ptr131, i32*** %A1, align 8
  store i32* %97, i32** %98, align 8
  br label %if.end.133

if.else:                                          ; preds = %for.body.126
  %99 = load i32*, i32** %p, align 8
  %100 = load i32**, i32*** %B1, align 8
  %incdec.ptr132 = getelementptr inbounds i32*, i32** %100, i32 1
  store i32** %incdec.ptr132, i32*** %B1, align 8
  store i32* %99, i32** %100, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else, %if.then.130
  br label %for.cond.122

for.end.134:                                      ; preds = %for.cond.122
  %101 = load i32**, i32*** %A1, align 8
  %incdec.ptr135 = getelementptr inbounds i32*, i32** %101, i32 1
  store i32** %incdec.ptr135, i32*** %A1, align 8
  store i32* null, i32** %101, align 8
  %102 = load i32**, i32*** %A1, align 8
  %103 = bitcast i32** %102 to i32*
  %104 = load i32***, i32**** %A.addr, align 8
  %105 = load i32**, i32*** %104, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* %103, i32** %arrayidx136, align 8
  %106 = load i32**, i32*** %B1, align 8
  %incdec.ptr137 = getelementptr inbounds i32*, i32** %106, i32 1
  store i32** %incdec.ptr137, i32*** %B1, align 8
  store i32* null, i32** %106, align 8
  %107 = load i32**, i32*** %B1, align 8
  %108 = bitcast i32** %107 to i32*
  %109 = load i32***, i32**** %B.addr, align 8
  %110 = load i32**, i32*** %109, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %108, i32** %arrayidx138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.134, %if.end.59
  %111 = load i32, i32* %numcube, align 4
  %112 = load i32, i32* %count, align 4
  %sub140 = sub nsw i32 %111, %112
  ret i32 %sub140
}

declare i32 @ccommon(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cof_output(%struct.set_family* %T, i32 %i) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %i.addr = alloca i32, align 4
  %T1 = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %mask, align 8
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %4, i32 %5)
  store %struct.set_family* %call, %struct.set_family** %T1, align 8
  %6 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count1, align 4
  %11 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %10, %12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i.addr, align 4
  %shr = ashr i32 %15, 5
  %add = add nsw i32 %shr, 1
  %idxprom2 = sext i32 %add to i64
  %16 = load i32*, i32** %p, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %16, i64 %idxprom2
  %17 = load i32, i32* %arrayidx3, align 4
  %18 = load i32, i32* %i.addr, align 4
  %and = and i32 %18, 31
  %shl = shl i32 1, %and
  %and4 = and i32 %17, %shl
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load %struct.set_family*, %struct.set_family** %T1, align 8
  %data5 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 5
  %20 = load i32*, i32** %data5, align 8
  %21 = load %struct.set_family*, %struct.set_family** %T1, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize6, align 4
  %23 = load %struct.set_family*, %struct.set_family** %T1, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 3
  %24 = load i32, i32* %count7, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %count7, align 4
  %mul8 = mul nsw i32 %22, %24
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %20, i64 %idx.ext9
  store i32* %add.ptr10, i32** %pdest, align 8
  %25 = load i32*, i32** %p, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx11, align 4
  %and12 = and i32 %26, 1023
  store i32 %and12, i32* %i_, align 4
  %27 = load i32*, i32** %pdest, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %28, -1024
  store i32 %and14, i32* %arrayidx13, align 4
  %29 = load i32, i32* %i_, align 4
  %30 = load i32*, i32** %pdest, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx15, align 4
  %or = or i32 %31, %29
  store i32 %or, i32* %arrayidx15, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %32 = load i32, i32* %i_, align 4
  %idxprom16 = sext i32 %32 to i64
  %33 = load i32*, i32** %p, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %33, i64 %idxprom16
  %34 = load i32, i32* %arrayidx17, align 4
  %35 = load i32, i32* %i_, align 4
  %idxprom18 = sext i32 %35 to i64
  %36 = load i32*, i32** %mask, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %36, i64 %idxprom18
  %37 = load i32, i32* %arrayidx19, align 4
  %or20 = or i32 %34, %37
  %38 = load i32, i32* %i_, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load i32*, i32** %pdest, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %39, i64 %idxprom21
  store i32 %or20, i32* %arrayidx22, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %40 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i_, align 4
  %cmp23 = icmp sgt i32 %dec, 0
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load i32*, i32** %pdest, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx24, align 4
  %and25 = and i32 %42, -32769
  store i32 %and25, i32* %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize26 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 0
  %44 = load i32, i32* %wsize26, align 4
  %45 = load i32*, i32** %p, align 8
  %idx.ext27 = sext i32 %44 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %45, i64 %idx.ext27
  store i32* %add.ptr28, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.set_family*, %struct.set_family** %T1, align 8
  ret %struct.set_family* %46
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @uncof_output(%struct.set_family* %T, i32 %i) #0 {
entry:
  %retval = alloca %struct.set_family*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %i.addr = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %cmp = icmp eq %struct.set_family* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  store %struct.set_family* %1, %struct.set_family** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %3, i64 %idxprom
  %4 = load i32*, i32** %arrayidx, align 8
  store i32* %4, i32** %mask, align 8
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count, align 4
  %10 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32*, i32** %p, align 8
  %13 = load i32*, i32** %last, align 8
  %cmp1 = icmp ult i32* %12, %13
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %15, 1023
  store i32 %and, i32* %i_, align 4
  %16 = load i32*, i32** %p, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %17, -1024
  store i32 %and4, i32* %arrayidx3, align 4
  %18 = load i32, i32* %i_, align 4
  %19 = load i32*, i32** %p, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx5, align 4
  %or = or i32 %20, %18
  store i32 %or, i32* %arrayidx5, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %21 = load i32, i32* %i_, align 4
  %idxprom6 = sext i32 %21 to i64
  %22 = load i32*, i32** %p, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 %idxprom6
  %23 = load i32, i32* %arrayidx7, align 4
  %24 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %24 to i64
  %25 = load i32*, i32** %mask, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %25, i64 %idxprom8
  %26 = load i32, i32* %arrayidx9, align 4
  %neg = xor i32 %26, -1
  %and10 = and i32 %23, %neg
  %27 = load i32, i32* %i_, align 4
  %idxprom11 = sext i32 %27 to i64
  %28 = load i32*, i32** %p, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %28, i64 %idxprom11
  store i32 %and10, i32* %arrayidx12, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %29 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %i_, align 4
  %cmp13 = icmp sgt i32 %dec, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %30 = load i32, i32* %i.addr, align 4
  %and14 = and i32 %30, 31
  %shl = shl i32 1, %and14
  %31 = load i32, i32* %i.addr, align 4
  %shr = ashr i32 %31, 5
  %add = add nsw i32 %shr, 1
  %idxprom15 = sext i32 %add to i64
  %32 = load i32*, i32** %p, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %32, i64 %idxprom15
  %33 = load i32, i32* %arrayidx16, align 4
  %or17 = or i32 %33, %shl
  store i32 %or17, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %34 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize18 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %35 = load i32, i32* %wsize18, align 4
  %36 = load i32*, i32** %p, align 8
  %idx.ext19 = sext i32 %35 to i64
  %add.ptr20 = getelementptr inbounds i32, i32* %36, i64 %idx.ext19
  store i32* %add.ptr20, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  store %struct.set_family* %37, %struct.set_family** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %38 = load %struct.set_family*, %struct.set_family** %retval
  ret %struct.set_family* %38
}

; Function Attrs: nounwind uwtable
define i32 @foreach_output_function(%struct.PLA_t* %PLA, i32 (...)* %func, i32 (...)* %func1) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %func.addr = alloca i32 (...)*, align 8
  %func1.addr = alloca i32 (...)*, align 8
  %PLA1 = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 (...)* %func, i32 (...)** %func.addr, align 8
  store i32 (...)* %func1, i32 (...)** %func1.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.PLA_t* (...) @new_PLA()
  store %struct.PLA_t* %call, %struct.PLA_t** %PLA1, align 8
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 0
  %5 = load %struct.set_family*, %struct.set_family** %F, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %6, %9
  %call3 = call %struct.set_family* @cof_output(%struct.set_family* %5, i32 %add)
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 0
  store %struct.set_family* %call3, %struct.set_family** %F4, align 8
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %11, i32 0, i32 2
  %12 = load %struct.set_family*, %struct.set_family** %R, align 8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %13, %16
  %call8 = call %struct.set_family* @cof_output(%struct.set_family* %12, i32 %add7)
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %R9 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 2
  store %struct.set_family* %call8, %struct.set_family** %R9, align 8
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %18, i32 0, i32 1
  %19 = load %struct.set_family*, %struct.set_family** %D, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %22, i64 %idxprom10
  %23 = load i32, i32* %arrayidx11, align 4
  %add12 = add nsw i32 %20, %23
  %call13 = call %struct.set_family* @cof_output(%struct.set_family* %19, i32 %add12)
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %D14 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 1
  store %struct.set_family* %call13, %struct.set_family** %D14, align 8
  %25 = load i32 (...)*, i32 (...)** %func.addr, align 8
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %27 = load i32, i32* %i, align 4
  %callee.knr.cast = bitcast i32 (...)* %25 to i32 (%struct.PLA_t*, i32, ...)*
  %call15 = call i32 (%struct.PLA_t*, i32, ...) %callee.knr.cast(%struct.PLA_t* %26, i32 %27)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %28 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %28)
  store i32 0, i32* %retval
  br label %for.end

if.end:                                           ; preds = %for.body
  %29 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F17 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %29, i32 0, i32 0
  %30 = load %struct.set_family*, %struct.set_family** %F17, align 8
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %33, i64 %idxprom18
  %34 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %31, %34
  %call21 = call %struct.set_family* @uncof_output(%struct.set_family* %30, i32 %add20)
  %35 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F22 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %35, i32 0, i32 0
  store %struct.set_family* %call21, %struct.set_family** %F22, align 8
  %36 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %R23 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 2
  %37 = load %struct.set_family*, %struct.set_family** %R23, align 8
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom24 = sext i32 %39 to i64
  %40 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %40, i64 %idxprom24
  %41 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %38, %41
  %call27 = call %struct.set_family* @uncof_output(%struct.set_family* %37, i32 %add26)
  %42 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %R28 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %42, i32 0, i32 2
  store %struct.set_family* %call27, %struct.set_family** %R28, align 8
  %43 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %D29 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %43, i32 0, i32 1
  %44 = load %struct.set_family*, %struct.set_family** %D29, align 8
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom30 = sext i32 %46 to i64
  %47 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %47, i64 %idxprom30
  %48 = load i32, i32* %arrayidx31, align 4
  %add32 = add nsw i32 %45, %48
  %call33 = call %struct.set_family* @uncof_output(%struct.set_family* %44, i32 %add32)
  %49 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %D34 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %49, i32 0, i32 1
  store %struct.set_family* %call33, %struct.set_family** %D34, align 8
  %50 = load i32 (...)*, i32 (...)** %func1.addr, align 8
  %51 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %52 = load i32, i32* %i, align 4
  %callee.knr.cast35 = bitcast i32 (...)* %50 to i32 (%struct.PLA_t*, i32, ...)*
  %call36 = call i32 (%struct.PLA_t*, i32, ...) %callee.knr.cast35(%struct.PLA_t* %51, i32 %52)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end
  %53 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %53)
  store i32 0, i32* %retval
  br label %for.end

if.end.39:                                        ; preds = %if.end
  %54 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %54)
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.38, %for.cond
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare %struct.PLA_t* @new_PLA(...) #1

declare void @free_PLA(...) #1

; Function Attrs: nounwind uwtable
define void @so_espresso(%struct.PLA_t* %PLA, i32 %strategy) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %strategy.addr = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %strategy, i32* %strategy.addr, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %2, i32 %3)
  store %struct.set_family* %call, %struct.set_family** @Fmin, align 8
  %4 = load i32, i32* %strategy.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call1 = call i32 @foreach_output_function(%struct.PLA_t* %5, i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_do_espresso to i32 (...)*), i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_save to i32 (...)*))
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call2 = call i32 @foreach_output_function(%struct.PLA_t* %6, i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_do_exact to i32 (...)*), i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_save to i32 (...)*))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  %8 = load %struct.set_family*, %struct.set_family** %F3, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %8)
  %9 = load %struct.set_family*, %struct.set_family** @Fmin, align 8
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 0
  store %struct.set_family* %9, %struct.set_family** %F4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @so_both_espresso(%struct.PLA_t* %PLA, i32 %strategy) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %strategy.addr = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %strategy, i32* %strategy.addr, align 4
  %0 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  %mul = mul i32 32, %and
  %cmp = icmp ule i32 %mul, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, 1023
  %mul3 = mul i32 32, %and2
  %sub = sub i32 %mul3, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add4 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add4, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul5 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul5)
  %4 = bitcast i8* %call to i32*
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call6 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %4, i32* %5)
  store i32* %call6, i32** @phase, align 8
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 0
  %7 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %8, i32 %9)
  store %struct.set_family* %call7, %struct.set_family** @Fmin, align 8
  %10 = load i32, i32* %strategy.addr, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call10 = call i32 @foreach_output_function(%struct.PLA_t* %11, i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_both_do_espresso to i32 (...)*), i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_both_save to i32 (...)*))
  br label %if.end

if.else:                                          ; preds = %cond.end
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call11 = call i32 @foreach_output_function(%struct.PLA_t* %12, i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_both_do_exact to i32 (...)*), i32 (...)* bitcast (i32 (%struct.PLA_t*, i32)* @so_both_save to i32 (...)*))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %13, i32 0, i32 0
  %14 = load %struct.set_family*, %struct.set_family** %F12, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %14)
  %15 = load %struct.set_family*, %struct.set_family** @Fmin, align 8
  %16 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %16, i32 0, i32 0
  store %struct.set_family* %15, %struct.set_family** %F13, align 8
  %17 = load i32*, i32** @phase, align 8
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %18, i32 0, i32 5
  store i32* %17, i32** %phase, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @so_do_espresso(%struct.PLA_t* %PLA, i32 %i) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i.addr = alloca i32, align 4
  %word = alloca [32 x i8], align 16
  %t = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 1, i32* @skip_make_sparse, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %0 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 %0) #3
  %call1 = call i64 (...) @util_cpu_time()
  store i64 %call1, i64* %t, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 1
  %4 = load %struct.set_family*, %struct.set_family** %D, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 2
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %2, %struct.set_family* %4, %struct.set_family* %6)
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  store %struct.set_family* %call2, %struct.set_family** %F3, align 8
  %8 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 0
  %10 = load %struct.set_family*, %struct.set_family** %F4, align 8
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %call6 = call i64 (...) @util_cpu_time()
  %11 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call6, %11
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %10, i8* %arraydecay5, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i64 @util_cpu_time(...) #1

declare %struct.set_family* @espresso(...) #1

declare void @print_trace(...) #1

; Function Attrs: nounwind uwtable
define i32 @so_do_exact(%struct.PLA_t* %PLA, i32 %i) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i.addr = alloca i32, align 4
  %word = alloca [32 x i8], align 16
  %t = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 1, i32* @skip_make_sparse, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %0 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %0) #3
  %call1 = call i64 (...) @util_cpu_time()
  store i64 %call1, i64* %t, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 1
  %4 = load %struct.set_family*, %struct.set_family** %D, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 2
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %2, %struct.set_family* %4, %struct.set_family* %6, i32 1)
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  store %struct.set_family* %call2, %struct.set_family** %F3, align 8
  %8 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 0
  %10 = load %struct.set_family*, %struct.set_family** %F4, align 8
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %call6 = call i64 (...) @util_cpu_time()
  %11 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call6, %11
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %10, i8* %arraydecay5, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare %struct.set_family* @minimize_exact(...) #1

; Function Attrs: nounwind uwtable
define i32 @so_save(%struct.PLA_t* %PLA, i32 %i) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i.addr = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** @Fmin, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %0, %struct.set_family* %2)
  store %struct.set_family* %call, %struct.set_family** @Fmin, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 0
  store %struct.set_family* null, %struct.set_family** %F1, align 8
  ret i32 1
}

declare %struct.set_family* @sf_append(...) #1

; Function Attrs: nounwind uwtable
define i32 @so_both_do_espresso(%struct.PLA_t* %PLA, i32 %i) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i.addr = alloca i32, align 4
  %word = alloca [32 x i8], align 16
  %t = alloca i64, align 8
  %t9 = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %0 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 %0) #3
  store i32 1, i32* @skip_make_sparse, align 4
  %call1 = call i64 (...) @util_cpu_time()
  store i64 %call1, i64* %t, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 1
  %4 = load %struct.set_family*, %struct.set_family** %D, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 2
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %2, %struct.set_family* %4, %struct.set_family* %6)
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  store %struct.set_family* %call2, %struct.set_family** %F3, align 8
  %8 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 0
  %10 = load %struct.set_family*, %struct.set_family** %F4, align 8
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %call6 = call i64 (...) @util_cpu_time()
  %11 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call6, %11
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %10, i8* %arraydecay5, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %12 = load i32, i32* %i.addr, align 4
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %12) #3
  store i32 1, i32* @skip_make_sparse, align 4
  %call10 = call i64 (...) @util_cpu_time()
  store i64 %call10, i64* %t9, align 8
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %13, i32 0, i32 2
  %14 = load %struct.set_family*, %struct.set_family** %R11, align 8
  %15 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %15, i32 0, i32 1
  %16 = load %struct.set_family*, %struct.set_family** %D12, align 8
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 0
  %18 = load %struct.set_family*, %struct.set_family** %F13, align 8
  %call14 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %14, %struct.set_family* %16, %struct.set_family* %18)
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 2
  store %struct.set_family* %call14, %struct.set_family** %R15, align 8
  %20 = load i32, i32* @summary, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 2
  %22 = load %struct.set_family*, %struct.set_family** %R18, align 8
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %call20 = call i64 (...) @util_cpu_time()
  %23 = load i64, i64* %t9, align 8
  %sub21 = sub nsw i64 %call20, %23
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %22, i8* %arraydecay19, i64 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @so_both_do_exact(%struct.PLA_t* %PLA, i32 %i) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i.addr = alloca i32, align 4
  %word = alloca [32 x i8], align 16
  %t = alloca i64, align 8
  %t9 = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %0 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %0) #3
  store i32 1, i32* @skip_make_sparse, align 4
  %call1 = call i64 (...) @util_cpu_time()
  store i64 %call1, i64* %t, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 1
  %4 = load %struct.set_family*, %struct.set_family** %D, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 2
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %2, %struct.set_family* %4, %struct.set_family* %6, i32 1)
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  store %struct.set_family* %call2, %struct.set_family** %F3, align 8
  %8 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 0
  %10 = load %struct.set_family*, %struct.set_family** %F4, align 8
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %call6 = call i64 (...) @util_cpu_time()
  %11 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call6, %11
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %10, i8* %arraydecay5, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %12 = load i32, i32* %i.addr, align 4
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %12) #3
  store i32 1, i32* @skip_make_sparse, align 4
  %call10 = call i64 (...) @util_cpu_time()
  store i64 %call10, i64* %t9, align 8
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %13, i32 0, i32 2
  %14 = load %struct.set_family*, %struct.set_family** %R11, align 8
  %15 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %15, i32 0, i32 1
  %16 = load %struct.set_family*, %struct.set_family** %D12, align 8
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 0
  %18 = load %struct.set_family*, %struct.set_family** %F13, align 8
  %call14 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %14, %struct.set_family* %16, %struct.set_family* %18, i32 1)
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 2
  store %struct.set_family* %call14, %struct.set_family** %R15, align 8
  %20 = load i32, i32* @summary, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 2
  %22 = load %struct.set_family*, %struct.set_family** %R18, align 8
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %word, i32 0, i32 0
  %call20 = call i64 (...) @util_cpu_time()
  %23 = load i64, i64* %t9, align 8
  %sub21 = sub nsw i64 %call20, %23
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %22, i8* %arraydecay19, i64 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @so_both_save(%struct.PLA_t* %PLA, i32 %i) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i.addr = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 2
  %4 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count1, align 4
  %cmp = icmp sgt i32 %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F2 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 0
  %7 = load %struct.set_family*, %struct.set_family** %F2, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 2
  %9 = load %struct.set_family*, %struct.set_family** %R3, align 8
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 0
  store %struct.set_family* %9, %struct.set_family** %F4, align 8
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R5 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %11, i32 0, i32 2
  store %struct.set_family* null, %struct.set_family** %R5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %i.addr, align 4
  %16 = load i32, i32* %i.addr, align 4
  %and = and i32 %16, 31
  %shl = shl i32 1, %and
  %neg = xor i32 %shl, -1
  %17 = load i32, i32* %i.addr, align 4
  %shr = ashr i32 %17, 5
  %add6 = add nsw i32 %shr, 1
  %idxprom7 = sext i32 %add6 to i64
  %18 = load i32*, i32** @phase, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %19, %neg
  store i32 %and9, i32* %arrayidx8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R10 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 2
  %21 = load %struct.set_family*, %struct.set_family** %R10, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %21)
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 2
  store %struct.set_family* null, %struct.set_family** %R11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.set_family*, %struct.set_family** @Fmin, align 8
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 0
  %25 = load %struct.set_family*, %struct.set_family** %F12, align 8
  %call = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %23, %struct.set_family* %25)
  store %struct.set_family* %call, %struct.set_family** @Fmin, align 8
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 0
  store %struct.set_family* null, %struct.set_family** %F13, align 8
  ret i32 1
}

declare i32* @set_and(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
