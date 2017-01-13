; ModuleID = './MultiSource.Benchmarks.MallocBench/32.espresso.reduce.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@use_random_order = external global i32, align 4
@toggle = internal global i32 1, align 4
@debug = external global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"REDUCE: %s to %s %s\0A\00", align 1
@sccc.sccc_level = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SCCC\00", align 1
@cube = external global %struct.cube_struct, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"SCCC[%d]: result is %s\0A\00", align 1
@cdata = external global %struct.cdata_struct, align 8

; Function Attrs: nounwind uwtable
define %struct.set_family* @reduce(%struct.set_family* %F, %struct.set_family* %D) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %cunder = alloca i32*, align 8
  %FD = alloca i32**, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  %0 = load i32, i32* @use_random_order, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @random_order to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %1)
  store %struct.set_family* %call, %struct.set_family** %F.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @toggle, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %3 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sort_reduce to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %3)
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %4 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call3 = call %struct.set_family* (%struct.set_family*, i32 (...)*, ...) bitcast (%struct.set_family* (...)* @mini_sort to %struct.set_family* (%struct.set_family*, i32 (...)*, ...)*)(%struct.set_family* %4, i32 (...)* @descend)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.set_family* [ %call2, %cond.true ], [ %call3, %cond.false ]
  store %struct.set_family* %cond, %struct.set_family** %F.addr, align 8
  %5 = load i32, i32* @toggle, align 4
  %tobool4 = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @toggle, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %6 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %7 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call5 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %6, %struct.set_family* %7)
  store i32** %call5, i32*** %FD, align 8
  %8 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 5
  %9 = load i32*, i32** %data, align 8
  store i32* %9, i32** %p, align 8
  %10 = load i32*, i32** %p, align 8
  %11 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 3
  %12 = load i32, i32* %count, align 4
  %13 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 0
  %14 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %12, %14
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %10, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32*, i32** %p, align 8
  %16 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32**, i32*** %FD, align 8
  %18 = load i32*, i32** %p, align 8
  %call6 = call i32* @reduce_cube(i32** %17, i32* %18)
  store i32* %call6, i32** %cunder, align 8
  %19 = load i32*, i32** %cunder, align 8
  %20 = load i32*, i32** %p, align 8
  %call7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %19, i32* %20)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %for.body
  %21 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx, align 4
  %or = or i32 %22, 8192
  store i32 %or, i32* %arrayidx, align 4
  %23 = load i32*, i32** %p, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx10, align 4
  %or11 = or i32 %24, 32768
  store i32 %or11, i32* %arrayidx10, align 4
  br label %if.end.33

if.else.12:                                       ; preds = %for.body
  %25 = load i32, i32* @debug, align 4
  %and = and i32 %25, 64
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else.12
  %26 = load i32*, i32** %p, align 8
  %call15 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %26)
  %27 = load i32*, i32** %cunder, align 8
  %call16 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %27)
  %call17 = call i64 (...) @util_cpu_time()
  %call18 = call i8* @util_print_time(i64 %call17)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %call15, i8* %call16, i8* %call18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.else.12
  %28 = load i32*, i32** %p, align 8
  %29 = load i32*, i32** %cunder, align 8
  %call21 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %28, i32* %29)
  %30 = load i32*, i32** %p, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx22, align 4
  %and23 = and i32 %31, -32769
  store i32 %and23, i32* %arrayidx22, align 4
  %32 = load i32*, i32** %cunder, align 8
  %call24 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* %32)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.20
  %33 = load i32*, i32** %p, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %34, -8193
  store i32 %and28, i32* %arrayidx27, align 4
  br label %if.end.32

if.else.29:                                       ; preds = %if.end.20
  %35 = load i32*, i32** %p, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx30, align 4
  %or31 = or i32 %36, 8192
  store i32 %or31, i32* %arrayidx30, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.9
  %37 = load i32*, i32** %cunder, align 8
  %tobool34 = icmp ne i32* %37, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %38 = load i32*, i32** %cunder, align 8
  %39 = bitcast i32* %38 to i8*
  call void @free(i8* %39)
  store i32* null, i32** %cunder, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %40 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize37 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 0
  %41 = load i32, i32* %wsize37, align 4
  %42 = load i32*, i32** %p, align 8
  %idx.ext38 = sext i32 %41 to i64
  %add.ptr39 = getelementptr inbounds i32, i32* %42, i64 %idx.ext38
  store i32* %add.ptr39, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32**, i32*** %FD, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %43, i64 0
  %44 = load i32*, i32** %arrayidx40, align 8
  %tobool41 = icmp ne i32* %44, null
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.end
  %45 = load i32**, i32*** %FD, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %45, i64 0
  %46 = load i32*, i32** %arrayidx43, align 8
  %47 = bitcast i32* %46 to i8*
  call void @free(i8* %47)
  %48 = load i32**, i32*** %FD, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %48, i64 0
  store i32* null, i32** %arrayidx44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.end
  %49 = load i32**, i32*** %FD, align 8
  %tobool46 = icmp ne i32** %49, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  %50 = load i32**, i32*** %FD, align 8
  %51 = bitcast i32** %50 to i8*
  call void @free(i8* %51)
  store i32** null, i32*** %FD, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  %52 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call49 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %52)
  ret %struct.set_family* %call49
}

declare %struct.set_family* @random_order(...) #1

declare %struct.set_family* @sort_reduce(...) #1

declare %struct.set_family* @mini_sort(...) #1

declare i32 @descend(...) #1

declare i32** @cube2list(...) #1

declare i32 @setp_equal(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare i8* @pc2(...) #1

declare i8* @util_print_time(i64) #1

declare i64 @util_cpu_time(...) #1

declare i32* @set_copy(...) #1

declare i32 @setp_empty(...) #1

declare void @free(i8*) #1

declare %struct.set_family* @sf_inactive(...) #1

; Function Attrs: nounwind uwtable
define i32* @reduce_cube(i32** %FD, i32* %p) #0 {
entry:
  %FD.addr = alloca i32**, align 8
  %p.addr = alloca i32*, align 8
  %cunder = alloca i32*, align 8
  store i32** %FD, i32*** %FD.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32**, i32*** %FD.addr, align 8
  %1 = load i32*, i32** %p.addr, align 8
  %call = call i32** (i32**, i32*, ...) bitcast (i32** (...)* @cofactor to i32** (i32**, i32*, ...)*)(i32** %0, i32* %1)
  %call1 = call i32* @sccc(i32** %call)
  store i32* %call1, i32** %cunder, align 8
  %2 = load i32*, i32** %cunder, align 8
  %3 = load i32*, i32** %cunder, align 8
  %4 = load i32*, i32** %p.addr, align 8
  %call2 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %2, i32* %3, i32* %4)
  ret i32* %call2
}

declare i32** @cofactor(...) #1

declare i32* @set_and(...) #1

; Function Attrs: nounwind uwtable
define i32* @sccc(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %r = alloca i32*, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %T.addr, align 8
  %2 = load i32, i32* @sccc.sccc_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @sccc.sccc_level, align 4
  call void (i32**, i8*, i32, ...) bitcast (void (...)* @debug_print to void (i32**, i8*, i32, ...)*)(i32** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32**, i32*** %T.addr, align 8
  %call = call i32 @sccc_special_cases(i32** %3, i32** %r)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then.1, label %if.end.34

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp2 = icmp sle i32 %4, 32
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %5, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add3 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call4 = call i8* @malloc(i64 %mul)
  %6 = bitcast i8* %call4 to i32*
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %6, i32 %7)
  store i32* %call5, i32** %cl, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp6 = icmp sle i32 %8, 32
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub10 = sub nsw i32 %9, 1
  %shr11 = ashr i32 %sub10, 5
  %add12 = add nsw i32 %shr11, 1
  %add13 = add nsw i32 %add12, 1
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i32 [ 2, %cond.true.8 ], [ %add13, %cond.false.9 ]
  %conv16 = sext i32 %cond15 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @malloc(i64 %mul17)
  %10 = bitcast i8* %call18 to i32*
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call19 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %10, i32 %11)
  store i32* %call19, i32** %cr, align 8
  %12 = load i32**, i32*** %T.addr, align 8
  %13 = load i32*, i32** %cl, align 8
  %14 = load i32*, i32** %cr, align 8
  %call20 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %12, i32* %13, i32* %14, i32 128)
  store i32 %call20, i32* %best, align 4
  %15 = load i32**, i32*** %T.addr, align 8
  %16 = load i32*, i32** %cl, align 8
  %17 = load i32, i32* %best, align 4
  %call21 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %15, i32* %16, i32 %17)
  %call22 = call i32* @sccc(i32** %call21)
  %18 = load i32**, i32*** %T.addr, align 8
  %19 = load i32*, i32** %cr, align 8
  %20 = load i32, i32* %best, align 4
  %call23 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %18, i32* %19, i32 %20)
  %call24 = call i32* @sccc(i32** %call23)
  %21 = load i32*, i32** %cl, align 8
  %22 = load i32*, i32** %cr, align 8
  %call25 = call i32* @sccc_merge(i32* %call22, i32* %call24, i32* %21, i32* %22)
  store i32* %call25, i32** %r, align 8
  %23 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %23, i64 0
  %24 = load i32*, i32** %arrayidx, align 8
  %tobool26 = icmp ne i32* %24, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %cond.end.14
  %25 = load i32**, i32*** %T.addr, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %25, i64 0
  %26 = load i32*, i32** %arrayidx28, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27)
  %28 = load i32**, i32*** %T.addr, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* null, i32** %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %cond.end.14
  %29 = load i32**, i32*** %T.addr, align 8
  %tobool31 = icmp ne i32** %29, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %30 = load i32**, i32*** %T.addr, align 8
  %31 = bitcast i32** %30 to i8*
  call void @free(i8* %31)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %32 = load i32, i32* @debug, align 4
  %and35 = and i32 %32, 128
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %33 = load i32, i32* @sccc.sccc_level, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* @sccc.sccc_level, align 4
  %34 = load i32*, i32** %r, align 8
  %call38 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %34)
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %dec, i8* %call38)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.34
  %35 = load i32*, i32** %r, align 8
  ret i32* %35
}

declare void @debug_print(...) #1

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32 @binate_split_select(...) #1

declare i32** @scofactor(...) #1

; Function Attrs: nounwind uwtable
define i32* @sccc_merge(i32* %left, i32* %right, i32* %cl, i32* %cr) #0 {
entry:
  %left.addr = alloca i32*, align 8
  %right.addr = alloca i32*, align 8
  %cl.addr = alloca i32*, align 8
  %cr.addr = alloca i32*, align 8
  %i_ = alloca i32, align 4
  %i_10 = alloca i32, align 4
  %i_29 = alloca i32, align 4
  store i32* %left, i32** %left.addr, align 8
  store i32* %right, i32** %right.addr, align 8
  store i32* %cl, i32** %cl.addr, align 8
  store i32* %cr, i32** %cr.addr, align 8
  %0 = load i32*, i32** %left.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i_, align 4
  %2 = load i32*, i32** %left.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i_, align 4
  %5 = load i32*, i32** %left.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %left.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i_, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %cl.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %9, %12
  %13 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %left.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %and7, i32* %arrayidx9, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i_, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32*, i32** %right.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx11, align 4
  %and12 = and i32 %17, 1023
  store i32 %and12, i32* %i_10, align 4
  %18 = load i32*, i32** %right.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %19, -1024
  store i32 %and14, i32* %arrayidx13, align 4
  %20 = load i32, i32* %i_10, align 4
  %21 = load i32*, i32** %right.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx15, align 4
  %or16 = or i32 %22, %20
  store i32 %or16, i32* %arrayidx15, align 4
  br label %do.body.17

do.body.17:                                       ; preds = %do.cond.25, %do.end
  %23 = load i32, i32* %i_10, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32*, i32** %right.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %26 = load i32, i32* %i_10, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load i32*, i32** %cr.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %and22 = and i32 %25, %28
  %29 = load i32, i32* %i_10, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load i32*, i32** %right.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom23
  store i32 %and22, i32* %arrayidx24, align 4
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.17
  %31 = load i32, i32* %i_10, align 4
  %dec26 = add nsw i32 %31, -1
  store i32 %dec26, i32* %i_10, align 4
  %cmp27 = icmp sgt i32 %dec26, 0
  br i1 %cmp27, label %do.body.17, label %do.end.28

do.end.28:                                        ; preds = %do.cond.25
  %32 = load i32*, i32** %left.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx30, align 4
  %and31 = and i32 %33, 1023
  store i32 %and31, i32* %i_29, align 4
  %34 = load i32*, i32** %left.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx32, align 4
  %and33 = and i32 %35, -1024
  store i32 %and33, i32* %arrayidx32, align 4
  %36 = load i32, i32* %i_29, align 4
  %37 = load i32*, i32** %left.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx34, align 4
  %or35 = or i32 %38, %36
  store i32 %or35, i32* %arrayidx34, align 4
  br label %do.body.36

do.body.36:                                       ; preds = %do.cond.44, %do.end.28
  %39 = load i32, i32* %i_29, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load i32*, i32** %left.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %40, i64 %idxprom37
  %41 = load i32, i32* %arrayidx38, align 4
  %42 = load i32, i32* %i_29, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = load i32*, i32** %right.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %43, i64 %idxprom39
  %44 = load i32, i32* %arrayidx40, align 4
  %or41 = or i32 %41, %44
  %45 = load i32, i32* %i_29, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load i32*, i32** %left.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %46, i64 %idxprom42
  store i32 %or41, i32* %arrayidx43, align 4
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.body.36
  %47 = load i32, i32* %i_29, align 4
  %dec45 = add nsw i32 %47, -1
  store i32 %dec45, i32* %i_29, align 4
  %cmp46 = icmp sgt i32 %dec45, 0
  br i1 %cmp46, label %do.body.36, label %do.end.47

do.end.47:                                        ; preds = %do.cond.44
  %48 = load i32*, i32** %right.addr, align 8
  %tobool = icmp ne i32* %48, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.47
  %49 = load i32*, i32** %right.addr, align 8
  %50 = bitcast i32* %49 to i8*
  call void @free(i8* %50)
  store i32* null, i32** %right.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.47
  %51 = load i32*, i32** %cl.addr, align 8
  %tobool48 = icmp ne i32* %51, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end
  %52 = load i32*, i32** %cl.addr, align 8
  %53 = bitcast i32* %52 to i8*
  call void @free(i8* %53)
  store i32* null, i32** %cl.addr, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end
  %54 = load i32*, i32** %cr.addr, align 8
  %tobool51 = icmp ne i32* %54, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %55 = load i32*, i32** %cr.addr, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56)
  store i32* null, i32** %cr.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %57 = load i32*, i32** %left.addr, align 8
  ret i32* %57
}

; Function Attrs: nounwind uwtable
define i32* @sccc_cube(i32* %result, i32* %p) #0 {
entry:
  %result.addr = alloca i32*, align 8
  %p.addr = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %var = alloca i32, align 4
  %i_ = alloca i32, align 4
  %i_13 = alloca i32, align 4
  store i32* %result, i32** %result.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %temp, align 8
  %2 = load i32*, i32** %p.addr, align 8
  %call = call i32 (i32*, ...) bitcast (i32 (...)* @cactive to i32 (i32*, ...)*)(i32* %2)
  store i32 %call, i32* %var, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %var, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %4, i64 %idxprom
  %5 = load i32*, i32** %arrayidx1, align 8
  store i32* %5, i32** %mask, align 8
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %7, 1023
  store i32 %and, i32* %i_, align 4
  %8 = load i32*, i32** %temp, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %9, -1024
  store i32 %and4, i32* %arrayidx3, align 4
  %10 = load i32, i32* %i_, align 4
  %11 = load i32*, i32** %temp, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx5, align 4
  %or = or i32 %12, %10
  store i32 %or, i32* %arrayidx5, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %13 = load i32, i32* %i_, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32*, i32** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %16 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32*, i32** %mask, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %xor = xor i32 %15, %18
  %19 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load i32*, i32** %temp, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  store i32 %xor, i32* %arrayidx11, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %21 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i_, align 4
  %cmp12 = icmp sgt i32 %dec, 0
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load i32*, i32** %result.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %23, 1023
  store i32 %and15, i32* %i_13, align 4
  %24 = load i32*, i32** %result.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %25, -1024
  store i32 %and17, i32* %arrayidx16, align 4
  %26 = load i32, i32* %i_13, align 4
  %27 = load i32*, i32** %result.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx18, align 4
  %or19 = or i32 %28, %26
  store i32 %or19, i32* %arrayidx18, align 4
  br label %do.body.20

do.body.20:                                       ; preds = %do.cond.28, %do.end
  %29 = load i32, i32* %i_13, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load i32*, i32** %result.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i64 %idxprom21
  %31 = load i32, i32* %arrayidx22, align 4
  %32 = load i32, i32* %i_13, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load i32*, i32** %temp, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom23
  %34 = load i32, i32* %arrayidx24, align 4
  %and25 = and i32 %31, %34
  %35 = load i32, i32* %i_13, align 4
  %idxprom26 = sext i32 %35 to i64
  %36 = load i32*, i32** %result.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %36, i64 %idxprom26
  store i32 %and25, i32* %arrayidx27, align 4
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.20
  %37 = load i32, i32* %i_13, align 4
  %dec29 = add nsw i32 %37, -1
  store i32 %dec29, i32* %i_13, align 4
  %cmp30 = icmp sgt i32 %dec29, 0
  br i1 %cmp30, label %do.body.20, label %do.end.31

do.end.31:                                        ; preds = %do.cond.28
  br label %if.end

if.end:                                           ; preds = %do.end.31, %entry
  %38 = load i32*, i32** %result.addr, align 8
  ret i32* %38
}

declare i32 @cactive(...) #1

; Function Attrs: nounwind uwtable
define i32 @sccc_special_cases(i32** %T, i32** %result) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %result.addr = alloca i32**, align 8
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %ceil = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %A = alloca i32**, align 8
  %B = alloca i32**, align 8
  %i_ = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store i32** %result, i32*** %result.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 1
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %temp, align 8
  %2 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 0
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %cof, align 8
  %4 = load i32**, i32*** %T.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %4, i64 2
  %5 = load i32*, i32** %arrayidx2, align 8
  %cmp = icmp eq i32* %5, null
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  %and = and i32 %7, 1023
  %mul = mul i32 32, %and
  %cmp4 = icmp ule i32 %mul, 32
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %9, 1023
  %mul7 = mul i32 32, %and6
  %sub = sub i32 %mul7, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add8 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add8, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul9 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul9)
  %10 = bitcast i8* %call to i32*
  %11 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call10 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %10, i32* %11)
  %12 = load i32**, i32*** %result.addr, align 8
  store i32* %call10, i32** %12, align 8
  %13 = load i32**, i32*** %T.addr, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %13, i64 0
  %14 = load i32*, i32** %arrayidx11, align 8
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %cond.end
  %15 = load i32**, i32*** %T.addr, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %15, i64 0
  %16 = load i32*, i32** %arrayidx13, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17)
  %18 = load i32**, i32*** %T.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %18, i64 0
  store i32* null, i32** %arrayidx14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %cond.end
  %19 = load i32**, i32*** %T.addr, align 8
  %tobool15 = icmp ne i32** %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %20 = load i32**, i32*** %T.addr, align 8
  %21 = bitcast i32** %20 to i8*
  call void @free(i8* %21)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %entry
  %22 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %22, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.47, %if.end.18
  %23 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %p, align 8
  %cmp19 = icmp ne i32* %24, null
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32*, i32** %p, align 8
  %26 = load i32*, i32** %cof, align 8
  %call21 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* %25, i32* %26)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.47

if.then.23:                                       ; preds = %for.body
  %27 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp24 = icmp sle i32 %27, 32
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.then.23
  br label %cond.end.32

cond.false.27:                                    ; preds = %if.then.23
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub28 = sub nsw i32 %28, 1
  %shr29 = ashr i32 %sub28, 5
  %add30 = add nsw i32 %shr29, 1
  %add31 = add nsw i32 %add30, 1
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.27, %cond.true.26
  %cond33 = phi i32 [ 2, %cond.true.26 ], [ %add31, %cond.false.27 ]
  %conv34 = sext i32 %cond33 to i64
  %mul35 = mul i64 4, %conv34
  %call36 = call i8* @malloc(i64 %mul35)
  %29 = bitcast i8* %call36 to i32*
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call37 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %29, i32 %30)
  %31 = load i32**, i32*** %result.addr, align 8
  store i32* %call37, i32** %31, align 8
  %32 = load i32**, i32*** %T.addr, align 8
  %arrayidx38 = getelementptr inbounds i32*, i32** %32, i64 0
  %33 = load i32*, i32** %arrayidx38, align 8
  %tobool39 = icmp ne i32* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %cond.end.32
  %34 = load i32**, i32*** %T.addr, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %34, i64 0
  %35 = load i32*, i32** %arrayidx41, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36)
  %37 = load i32**, i32*** %T.addr, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %37, i64 0
  store i32* null, i32** %arrayidx42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %cond.end.32
  %38 = load i32**, i32*** %T.addr, align 8
  %tobool44 = icmp ne i32** %38, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %39 = load i32**, i32*** %T.addr, align 8
  %40 = bitcast i32** %39 to i8*
  call void @free(i8* %40)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32**, i32*** %T.addr, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %41)
  %42 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp48 = icmp eq i32 %42, %43
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %44 = load i32**, i32*** %T.addr, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %44, i64 3
  %45 = load i32*, i32** %arrayidx50, align 8
  %cmp51 = icmp eq i32* %45, null
  br i1 %cmp51, label %if.then.53, label %if.end.92

if.then.53:                                       ; preds = %lor.lhs.false, %for.end
  %46 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx54, align 4
  %and55 = and i32 %47, 1023
  %mul56 = mul i32 32, %and55
  %cmp57 = icmp ule i32 %mul56, 32
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %if.then.53
  br label %cond.end.68

cond.false.60:                                    ; preds = %if.then.53
  %48 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx61, align 4
  %and62 = and i32 %49, 1023
  %mul63 = mul i32 32, %and62
  %sub64 = sub i32 %mul63, 1
  %shr65 = lshr i32 %sub64, 5
  %add66 = add i32 %shr65, 1
  %add67 = add i32 %add66, 1
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.60, %cond.true.59
  %cond69 = phi i32 [ 2, %cond.true.59 ], [ %add67, %cond.false.60 ]
  %conv70 = zext i32 %cond69 to i64
  %mul71 = mul i64 4, %conv70
  %call72 = call i8* @malloc(i64 %mul71)
  %50 = bitcast i8* %call72 to i32*
  %51 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call73 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %50, i32* %51)
  %52 = load i32**, i32*** %result.addr, align 8
  store i32* %call73, i32** %52, align 8
  %53 = load i32**, i32*** %T.addr, align 8
  %add.ptr74 = getelementptr inbounds i32*, i32** %53, i64 2
  store i32** %add.ptr74, i32*** %T1, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.body.79, %cond.end.68
  %54 = load i32**, i32*** %T1, align 8
  %incdec.ptr76 = getelementptr inbounds i32*, i32** %54, i32 1
  store i32** %incdec.ptr76, i32*** %T1, align 8
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %p, align 8
  %cmp77 = icmp ne i32* %55, null
  br i1 %cmp77, label %for.body.79, label %for.end.82

for.body.79:                                      ; preds = %for.cond.75
  %56 = load i32**, i32*** %result.addr, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %temp, align 8
  %59 = load i32*, i32** %p, align 8
  %60 = load i32*, i32** %cof, align 8
  %call80 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %58, i32* %59, i32* %60)
  %call81 = call i32* @sccc_cube(i32* %57, i32* %call80)
  br label %for.cond.75

for.end.82:                                       ; preds = %for.cond.75
  %61 = load i32**, i32*** %T.addr, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %61, i64 0
  %62 = load i32*, i32** %arrayidx83, align 8
  %tobool84 = icmp ne i32* %62, null
  br i1 %tobool84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %for.end.82
  %63 = load i32**, i32*** %T.addr, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %63, i64 0
  %64 = load i32*, i32** %arrayidx86, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65)
  %66 = load i32**, i32*** %T.addr, align 8
  %arrayidx87 = getelementptr inbounds i32*, i32** %66, i64 0
  store i32* null, i32** %arrayidx87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %for.end.82
  %67 = load i32**, i32*** %T.addr, align 8
  %tobool89 = icmp ne i32** %67, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %68 = load i32**, i32*** %T.addr, align 8
  %69 = bitcast i32** %68 to i8*
  call void @free(i8* %69)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  store i32 1, i32* %retval
  br label %return

if.end.92:                                        ; preds = %lor.lhs.false
  %70 = load i32*, i32** %cof, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx93, align 4
  %and94 = and i32 %71, 1023
  %mul95 = mul i32 32, %and94
  %cmp96 = icmp ule i32 %mul95, 32
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.end.92
  br label %cond.end.107

cond.false.99:                                    ; preds = %if.end.92
  %72 = load i32*, i32** %cof, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx100, align 4
  %and101 = and i32 %73, 1023
  %mul102 = mul i32 32, %and101
  %sub103 = sub i32 %mul102, 1
  %shr104 = lshr i32 %sub103, 5
  %add105 = add i32 %shr104, 1
  %add106 = add i32 %add105, 1
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.99, %cond.true.98
  %cond108 = phi i32 [ 2, %cond.true.98 ], [ %add106, %cond.false.99 ]
  %conv109 = zext i32 %cond108 to i64
  %mul110 = mul i64 4, %conv109
  %call111 = call i8* @malloc(i64 %mul110)
  %74 = bitcast i8* %call111 to i32*
  %75 = load i32*, i32** %cof, align 8
  %call112 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %74, i32* %75)
  store i32* %call112, i32** %ceil, align 8
  %76 = load i32**, i32*** %T.addr, align 8
  %add.ptr113 = getelementptr inbounds i32*, i32** %76, i64 2
  store i32** %add.ptr113, i32*** %T1, align 8
  br label %for.cond.114

for.cond.114:                                     ; preds = %do.end, %cond.end.107
  %77 = load i32**, i32*** %T1, align 8
  %incdec.ptr115 = getelementptr inbounds i32*, i32** %77, i32 1
  store i32** %incdec.ptr115, i32*** %T1, align 8
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %p, align 8
  %cmp116 = icmp ne i32* %78, null
  br i1 %cmp116, label %for.body.118, label %for.end.132

for.body.118:                                     ; preds = %for.cond.114
  %79 = load i32*, i32** %ceil, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx119, align 4
  %and120 = and i32 %80, 1023
  store i32 %and120, i32* %i_, align 4
  %81 = load i32*, i32** %ceil, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx121, align 4
  %and122 = and i32 %82, -1024
  store i32 %and122, i32* %arrayidx121, align 4
  %83 = load i32, i32* %i_, align 4
  %84 = load i32*, i32** %ceil, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx123, align 4
  %or = or i32 %85, %83
  store i32 %or, i32* %arrayidx123, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.118
  %86 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %86 to i64
  %87 = load i32*, i32** %ceil, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %87, i64 %idxprom
  %88 = load i32, i32* %arrayidx124, align 4
  %89 = load i32, i32* %i_, align 4
  %idxprom125 = sext i32 %89 to i64
  %90 = load i32*, i32** %p, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %90, i64 %idxprom125
  %91 = load i32, i32* %arrayidx126, align 4
  %or127 = or i32 %88, %91
  %92 = load i32, i32* %i_, align 4
  %idxprom128 = sext i32 %92 to i64
  %93 = load i32*, i32** %ceil, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %93, i64 %idxprom128
  store i32 %or127, i32* %arrayidx129, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %94 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* %i_, align 4
  %cmp130 = icmp sgt i32 %dec, 0
  br i1 %cmp130, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond.114

for.end.132:                                      ; preds = %for.cond.114
  %95 = load i32*, i32** %ceil, align 8
  %96 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call133 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %95, i32* %96)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.196, label %if.then.135

if.then.135:                                      ; preds = %for.end.132
  %97 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %97, i64 0
  %98 = load i32, i32* %arrayidx136, align 4
  %and137 = and i32 %98, 1023
  %mul138 = mul i32 32, %and137
  %cmp139 = icmp ule i32 %mul138, 32
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %if.then.135
  br label %cond.end.150

cond.false.142:                                   ; preds = %if.then.135
  %99 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx143, align 4
  %and144 = and i32 %100, 1023
  %mul145 = mul i32 32, %and144
  %sub146 = sub i32 %mul145, 1
  %shr147 = lshr i32 %sub146, 5
  %add148 = add i32 %shr147, 1
  %add149 = add i32 %add148, 1
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.142, %cond.true.141
  %cond151 = phi i32 [ 2, %cond.true.141 ], [ %add149, %cond.false.142 ]
  %conv152 = zext i32 %cond151 to i64
  %mul153 = mul i64 4, %conv152
  %call154 = call i8* @malloc(i64 %mul153)
  %101 = bitcast i8* %call154 to i32*
  %102 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call155 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %101, i32* %102)
  %103 = load i32*, i32** %ceil, align 8
  %call156 = call i32* @sccc_cube(i32* %call155, i32* %103)
  %104 = load i32**, i32*** %result.addr, align 8
  store i32* %call156, i32** %104, align 8
  %105 = load i32**, i32*** %result.addr, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call157 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %106, i32* %107)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.else

if.then.159:                                      ; preds = %cond.end.150
  %108 = load i32*, i32** %ceil, align 8
  %tobool160 = icmp ne i32* %108, null
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.159
  %109 = load i32*, i32** %ceil, align 8
  %110 = bitcast i32* %109 to i8*
  call void @free(i8* %110)
  store i32* null, i32** %ceil, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.then.159
  br label %if.end.186

if.else:                                          ; preds = %cond.end.150
  %111 = load i32**, i32*** %T.addr, align 8
  %112 = load i32*, i32** %ceil, align 8
  %call163 = call i32** (i32**, i32*, ...) bitcast (i32** (...)* @cofactor to i32** (i32**, i32*, ...)*)(i32** %111, i32* %112)
  %call164 = call i32* @sccc(i32** %call163)
  %113 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx165, align 4
  %and166 = and i32 %114, 1023
  %mul167 = mul i32 32, %and166
  %cmp168 = icmp ule i32 %mul167, 32
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.else
  br label %cond.end.179

cond.false.171:                                   ; preds = %if.else
  %115 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %115, i64 0
  %116 = load i32, i32* %arrayidx172, align 4
  %and173 = and i32 %116, 1023
  %mul174 = mul i32 32, %and173
  %sub175 = sub i32 %mul174, 1
  %shr176 = lshr i32 %sub175, 5
  %add177 = add i32 %shr176, 1
  %add178 = add i32 %add177, 1
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.171, %cond.true.170
  %cond180 = phi i32 [ 2, %cond.true.170 ], [ %add178, %cond.false.171 ]
  %conv181 = zext i32 %cond180 to i64
  %mul182 = mul i64 4, %conv181
  %call183 = call i8* @malloc(i64 %mul182)
  %117 = bitcast i8* %call183 to i32*
  %118 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call184 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %117, i32* %118)
  %119 = load i32*, i32** %ceil, align 8
  %120 = load i32**, i32*** %result.addr, align 8
  %121 = load i32*, i32** %120, align 8
  %call185 = call i32* @sccc_merge(i32* %call164, i32* %call184, i32* %119, i32* %121)
  %122 = load i32**, i32*** %result.addr, align 8
  store i32* %call185, i32** %122, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %cond.end.179, %if.end.162
  %123 = load i32**, i32*** %T.addr, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %123, i64 0
  %124 = load i32*, i32** %arrayidx187, align 8
  %tobool188 = icmp ne i32* %124, null
  br i1 %tobool188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.end.186
  %125 = load i32**, i32*** %T.addr, align 8
  %arrayidx190 = getelementptr inbounds i32*, i32** %125, i64 0
  %126 = load i32*, i32** %arrayidx190, align 8
  %127 = bitcast i32* %126 to i8*
  call void @free(i8* %127)
  %128 = load i32**, i32*** %T.addr, align 8
  %arrayidx191 = getelementptr inbounds i32*, i32** %128, i64 0
  store i32* null, i32** %arrayidx191, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %if.end.186
  %129 = load i32**, i32*** %T.addr, align 8
  %tobool193 = icmp ne i32** %129, null
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.192
  %130 = load i32**, i32*** %T.addr, align 8
  %131 = bitcast i32** %130 to i8*
  call void @free(i8* %131)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %if.end.192
  store i32 1, i32* %retval
  br label %return

if.end.196:                                       ; preds = %for.end.132
  %132 = load i32*, i32** %ceil, align 8
  %tobool197 = icmp ne i32* %132, null
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.196
  %133 = load i32*, i32** %ceil, align 8
  %134 = bitcast i32* %133 to i8*
  call void @free(i8* %134)
  store i32* null, i32** %ceil, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.end.196
  %135 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp200 = icmp eq i32 %135, 1
  br i1 %cmp200, label %if.then.202, label %if.end.226

if.then.202:                                      ; preds = %if.end.199
  %136 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp203 = icmp sle i32 %136, 32
  br i1 %cmp203, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %if.then.202
  br label %cond.end.211

cond.false.206:                                   ; preds = %if.then.202
  %137 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub207 = sub nsw i32 %137, 1
  %shr208 = ashr i32 %sub207, 5
  %add209 = add nsw i32 %shr208, 1
  %add210 = add nsw i32 %add209, 1
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.206, %cond.true.205
  %cond212 = phi i32 [ 2, %cond.true.205 ], [ %add210, %cond.false.206 ]
  %conv213 = sext i32 %cond212 to i64
  %mul214 = mul i64 4, %conv213
  %call215 = call i8* @malloc(i64 %mul214)
  %138 = bitcast i8* %call215 to i32*
  %139 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call216 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %138, i32 %139)
  %140 = load i32**, i32*** %result.addr, align 8
  store i32* %call216, i32** %140, align 8
  %141 = load i32**, i32*** %T.addr, align 8
  %arrayidx217 = getelementptr inbounds i32*, i32** %141, i64 0
  %142 = load i32*, i32** %arrayidx217, align 8
  %tobool218 = icmp ne i32* %142, null
  br i1 %tobool218, label %if.then.219, label %if.end.222

if.then.219:                                      ; preds = %cond.end.211
  %143 = load i32**, i32*** %T.addr, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %143, i64 0
  %144 = load i32*, i32** %arrayidx220, align 8
  %145 = bitcast i32* %144 to i8*
  call void @free(i8* %145)
  %146 = load i32**, i32*** %T.addr, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %146, i64 0
  store i32* null, i32** %arrayidx221, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.219, %cond.end.211
  %147 = load i32**, i32*** %T.addr, align 8
  %tobool223 = icmp ne i32** %147, null
  br i1 %tobool223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.222
  %148 = load i32**, i32*** %T.addr, align 8
  %149 = bitcast i32** %148 to i8*
  call void @free(i8* %149)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.222
  store i32 1, i32* %retval
  br label %return

if.end.226:                                       ; preds = %if.end.199
  %150 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 6), align 4
  %idxprom227 = sext i32 %150 to i64
  %151 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %151, i64 %idxprom227
  %152 = load i32, i32* %arrayidx228, align 4
  %conv229 = sext i32 %152 to i64
  %153 = load i32**, i32*** %T.addr, align 8
  %arrayidx230 = getelementptr inbounds i32*, i32** %153, i64 1
  %154 = load i32*, i32** %arrayidx230, align 8
  %155 = bitcast i32* %154 to i32**
  %156 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %155 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %156 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub231 = sub nsw i64 %sub.ptr.div, 3
  %div = sdiv i64 %sub231, 2
  %cmp232 = icmp slt i64 %conv229, %div
  br i1 %cmp232, label %if.then.234, label %if.end.256

if.then.234:                                      ; preds = %if.end.226
  %157 = load i32**, i32*** %T.addr, align 8
  %158 = load i32, i32* @debug, align 4
  %and235 = and i32 %158, 128
  %call236 = call i32 (i32**, i32***, i32***, i32, ...) bitcast (i32 (...)* @cubelist_partition to i32 (i32**, i32***, i32***, i32, ...)*)(i32** %157, i32*** %A, i32*** %B, i32 %and235)
  %cmp237 = icmp eq i32 %call236, 0
  br i1 %cmp237, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %if.then.234
  store i32 2, i32* %retval
  br label %return

if.else.240:                                      ; preds = %if.then.234
  %159 = load i32**, i32*** %T.addr, align 8
  %arrayidx241 = getelementptr inbounds i32*, i32** %159, i64 0
  %160 = load i32*, i32** %arrayidx241, align 8
  %tobool242 = icmp ne i32* %160, null
  br i1 %tobool242, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %if.else.240
  %161 = load i32**, i32*** %T.addr, align 8
  %arrayidx244 = getelementptr inbounds i32*, i32** %161, i64 0
  %162 = load i32*, i32** %arrayidx244, align 8
  %163 = bitcast i32* %162 to i8*
  call void @free(i8* %163)
  %164 = load i32**, i32*** %T.addr, align 8
  %arrayidx245 = getelementptr inbounds i32*, i32** %164, i64 0
  store i32* null, i32** %arrayidx245, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %if.else.240
  %165 = load i32**, i32*** %T.addr, align 8
  %tobool247 = icmp ne i32** %165, null
  br i1 %tobool247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.246
  %166 = load i32**, i32*** %T.addr, align 8
  %167 = bitcast i32** %166 to i8*
  call void @free(i8* %167)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %if.end.246
  %168 = load i32**, i32*** %A, align 8
  %call250 = call i32* @sccc(i32** %168)
  %169 = load i32**, i32*** %result.addr, align 8
  store i32* %call250, i32** %169, align 8
  %170 = load i32**, i32*** %B, align 8
  %call251 = call i32* @sccc(i32** %170)
  store i32* %call251, i32** %ceil, align 8
  %171 = load i32**, i32*** %result.addr, align 8
  %172 = load i32*, i32** %171, align 8
  %173 = load i32**, i32*** %result.addr, align 8
  %174 = load i32*, i32** %173, align 8
  %175 = load i32*, i32** %ceil, align 8
  %call252 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %172, i32* %174, i32* %175)
  %176 = load i32*, i32** %ceil, align 8
  %tobool253 = icmp ne i32* %176, null
  br i1 %tobool253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.249
  %177 = load i32*, i32** %ceil, align 8
  %178 = bitcast i32* %177 to i8*
  call void @free(i8* %178)
  store i32* null, i32** %ceil, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %if.end.249
  store i32 1, i32* %retval
  br label %return

if.end.256:                                       ; preds = %if.end.226
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.256, %if.end.255, %if.then.239, %if.end.225, %if.end.195, %if.end.91, %if.end.46, %if.end.17
  %179 = load i32, i32* %retval
  ret i32 %179
}

declare i32 @full_row(...) #1

declare void @massive_count(...) #1

declare i32* @set_or(...) #1

declare i32 @cubelist_partition(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
