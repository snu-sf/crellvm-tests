; ModuleID = './MultiSource.Benchmarks.MallocBench/16.espresso.essen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external global %struct.cube_struct, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"ESSENTIAL: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @essential(%struct.set_family** %Fp, %struct.set_family** %Dp) #0 {
entry:
  %Fp.addr = alloca %struct.set_family**, align 8
  %Dp.addr = alloca %struct.set_family**, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %E = alloca %struct.set_family*, align 8
  %F = alloca %struct.set_family*, align 8
  %D = alloca %struct.set_family*, align 8
  store %struct.set_family** %Fp, %struct.set_family*** %Fp.addr, align 8
  store %struct.set_family** %Dp, %struct.set_family*** %Dp.addr, align 8
  %0 = load %struct.set_family**, %struct.set_family*** %Fp.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %0, align 8
  store %struct.set_family* %1, %struct.set_family** %F, align 8
  %2 = load %struct.set_family**, %struct.set_family*** %Dp.addr, align 8
  %3 = load %struct.set_family*, %struct.set_family** %2, align 8
  store %struct.set_family* %3, %struct.set_family** %D, align 8
  %4 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call1 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %5)
  store %struct.set_family* %call1, %struct.set_family** %E, align 8
  %6 = load %struct.set_family*, %struct.set_family** %F, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %11 = load %struct.set_family*, %struct.set_family** %F, align 8
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
  %15 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx, align 4
  %and = and i32 %16, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.19, label %if.then

if.then:                                          ; preds = %for.body
  %17 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx2, align 4
  %and3 = and i32 %18, 1024
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %if.then
  %19 = load %struct.set_family*, %struct.set_family** %F, align 8
  %20 = load %struct.set_family*, %struct.set_family** %D, align 8
  %21 = load i32*, i32** %p, align 8
  %call6 = call i32 @essen_cube(%struct.set_family* %19, %struct.set_family* %20, i32* %21)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.then.5
  %22 = load i32, i32* @debug, align 4
  %and9 = and i32 %22, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.8
  %23 = load i32*, i32** %p, align 8
  %call12 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %23)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %call12)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.8
  %24 = load %struct.set_family*, %struct.set_family** %E, align 8
  %25 = load i32*, i32** %p, align 8
  %call14 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %24, i32* %25)
  store %struct.set_family* %call14, %struct.set_family** %E, align 8
  %26 = load i32*, i32** %p, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx15, align 4
  %and16 = and i32 %27, -8193
  store i32 %and16, i32* %arrayidx15, align 4
  %28 = load %struct.set_family*, %struct.set_family** %F, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 4
  %29 = load i32, i32* %active_count, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %active_count, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.5
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %30 = load %struct.set_family*, %struct.set_family** %F, align 8
  %wsize20 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize20, align 4
  %32 = load i32*, i32** %p, align 8
  %idx.ext21 = sext i32 %31 to i64
  %add.ptr22 = getelementptr inbounds i32, i32* %32, i64 %idx.ext21
  store i32* %add.ptr22, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call23 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %33)
  %34 = load %struct.set_family**, %struct.set_family*** %Fp.addr, align 8
  store %struct.set_family* %call23, %struct.set_family** %34, align 8
  %35 = load %struct.set_family*, %struct.set_family** %D, align 8
  %36 = load %struct.set_family*, %struct.set_family** %E, align 8
  %call24 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %35, %struct.set_family* %36)
  %37 = load %struct.set_family**, %struct.set_family*** %Dp.addr, align 8
  store %struct.set_family* %call24, %struct.set_family** %37, align 8
  %38 = load %struct.set_family*, %struct.set_family** %D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %38)
  %39 = load %struct.set_family*, %struct.set_family** %E, align 8
  ret %struct.set_family* %39
}

declare %struct.set_family* @sf_active(...) #1

declare %struct.set_family* @sf_new(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare %struct.set_family* @sf_addset(...) #1

declare %struct.set_family* @sf_inactive(...) #1

declare %struct.set_family* @sf_join(...) #1

declare void @sf_free(...) #1

; Function Attrs: nounwind uwtable
define i32 @essen_cube(%struct.set_family* %F, %struct.set_family* %D, i32* %c) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %c.addr = alloca i32*, align 8
  %H = alloca %struct.set_family*, align 8
  %FD = alloca %struct.set_family*, align 8
  %H1 = alloca i32**, align 8
  %essen = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %0, %struct.set_family* %1)
  store %struct.set_family* %call, %struct.set_family** %FD, align 8
  %2 = load %struct.set_family*, %struct.set_family** %FD, align 8
  %3 = load i32*, i32** %c.addr, align 8
  %call1 = call %struct.set_family* @cb_consensus(%struct.set_family* %2, i32* %3)
  store %struct.set_family* %call1, %struct.set_family** %H, align 8
  %4 = load %struct.set_family*, %struct.set_family** %FD, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %4)
  %5 = load %struct.set_family*, %struct.set_family** %H, align 8
  %6 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call2 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %5, %struct.set_family* %6)
  store i32** %call2, i32*** %H1, align 8
  %7 = load i32**, i32*** %H1, align 8
  %8 = load i32*, i32** %c.addr, align 8
  %call3 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** %7, i32* %8)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %essen, align 4
  %9 = load i32**, i32*** %H1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx, align 8
  %tobool4 = icmp ne i32* %10, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32**, i32*** %H1, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %11, i64 0
  %12 = load i32*, i32** %arrayidx5, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* %13)
  %14 = load i32**, i32*** %H1, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %14, i64 0
  store i32* null, i32** %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32**, i32*** %H1, align 8
  %tobool7 = icmp ne i32** %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %16 = load i32**, i32*** %H1, align 8
  %17 = bitcast i32** %16 to i8*
  call void @free(i8* %17)
  store i32** null, i32*** %H1, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %18 = load %struct.set_family*, %struct.set_family** %H, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %18)
  %19 = load i32, i32* %essen, align 4
  ret i32 %19
}

declare i32** @cube2list(...) #1

declare i32 @cube_is_covered(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cb_consensus(%struct.set_family* %T, i32* %c) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %c.addr = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %mul = mul nsw i32 %1, 2
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %mul, i32 %2)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %3, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %4, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add1 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add1, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul2 = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul2)
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %5, i32 %6)
  store i32* %call4, i32** %temp, align 8
  %7 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 5
  %8 = load i32*, i32** %data, align 8
  store i32* %8, i32** %p, align 8
  %9 = load i32*, i32** %p, align 8
  %10 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count5 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count5, align 4
  %12 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize, align 4
  %mul6 = mul nsw i32 %11, %13
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32*, i32** %p, align 8
  %15 = load i32*, i32** %last, align 8
  %cmp7 = icmp ult i32* %14, %15
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32*, i32** %p, align 8
  %17 = load i32*, i32** %c.addr, align 8
  %cmp9 = icmp ne i32* %16, %17
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32*, i32** %p, align 8
  %19 = load i32*, i32** %c.addr, align 8
  %call11 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* %18, i32* %19)
  switch i32 %call11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.then
  %20 = load %struct.set_family*, %struct.set_family** %R, align 8
  %21 = load i32*, i32** %p, align 8
  %22 = load i32*, i32** %c.addr, align 8
  %call12 = call %struct.set_family* @cb_consensus_dist0(%struct.set_family* %20, i32* %21, i32* %22)
  store %struct.set_family* %call12, %struct.set_family** %R, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %23 = load i32*, i32** %temp, align 8
  %24 = load i32*, i32** %p, align 8
  %25 = load i32*, i32** %c.addr, align 8
  call void (i32*, i32*, i32*, ...) bitcast (void (...)* @consensus to void (i32*, i32*, i32*, ...)*)(i32* %23, i32* %24, i32* %25)
  %26 = load %struct.set_family*, %struct.set_family** %R, align 8
  %27 = load i32*, i32** %temp, align 8
  %call14 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %26, i32* %27)
  store %struct.set_family* %call14, %struct.set_family** %R, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.13, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize15 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 0
  %29 = load i32, i32* %wsize15, align 4
  %30 = load i32*, i32** %p, align 8
  %idx.ext16 = sext i32 %29 to i64
  %add.ptr17 = getelementptr inbounds i32, i32* %30, i64 %idx.ext16
  store i32* %add.ptr17, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32*, i32** %temp, align 8
  %tobool = icmp ne i32* %31, null
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %32 = load i32*, i32** %temp, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33)
  store i32* null, i32** %temp, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.end
  %34 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %34
}

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32 @cdist01(...) #1

declare void @consensus(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cb_consensus_dist0(%struct.set_family* %R, i32* %p, i32* %c) #0 {
entry:
  %retval = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %p.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %var = alloca i32, align 4
  %got_one = alloca i32, align 4
  %temp = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %p_diff_c = alloca i32*, align 8
  %p_and_c = alloca i32*, align 8
  %i_ = alloca i32, align 4
  %i_17 = alloca i32, align 4
  %i_44 = alloca i32, align 4
  %i_77 = alloca i32, align 4
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %p_diff_c, align 8
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %p_and_c, align 8
  %4 = load i32*, i32** %p.addr, align 8
  %5 = load i32*, i32** %c.addr, align 8
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %4, i32* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  store %struct.set_family* %6, %struct.set_family** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %7, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %8, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %9 = bitcast i8* %call3 to i32*
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %9, i32 %10)
  store i32* %call4, i32** %temp, align 8
  store i32 0, i32* %got_one, align 4
  %11 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx5, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %i_, align 4
  %13 = load i32*, i32** %p_diff_c, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %14, -1024
  store i32 %and7, i32* %arrayidx6, align 4
  %15 = load i32, i32* %i_, align 4
  %16 = load i32*, i32** %p_diff_c, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx8, align 4
  %or = or i32 %17, %15
  store i32 %or, i32* %arrayidx8, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %18 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx9, align 4
  %21 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load i32*, i32** %c.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %22, i64 %idxprom10
  %23 = load i32, i32* %arrayidx11, align 4
  %neg = xor i32 %23, -1
  %and12 = and i32 %20, %neg
  %24 = load i32, i32* %i_, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load i32*, i32** %p_diff_c, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %25, i64 %idxprom13
  store i32 %and12, i32* %arrayidx14, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %26 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i_, align 4
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx18, align 4
  %and19 = and i32 %28, 1023
  store i32 %and19, i32* %i_17, align 4
  %29 = load i32*, i32** %p_and_c, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx20, align 4
  %and21 = and i32 %30, -1024
  store i32 %and21, i32* %arrayidx20, align 4
  %31 = load i32, i32* %i_17, align 4
  %32 = load i32*, i32** %p_and_c, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx22, align 4
  %or23 = or i32 %33, %31
  store i32 %or23, i32* %arrayidx22, align 4
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond.32, %do.end
  %34 = load i32, i32* %i_17, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load i32*, i32** %p.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %35, i64 %idxprom25
  %36 = load i32, i32* %arrayidx26, align 4
  %37 = load i32, i32* %i_17, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load i32*, i32** %c.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %38, i64 %idxprom27
  %39 = load i32, i32* %arrayidx28, align 4
  %and29 = and i32 %36, %39
  %40 = load i32, i32* %i_17, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load i32*, i32** %p_and_c, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %41, i64 %idxprom30
  store i32 %and29, i32* %arrayidx31, align 4
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.24
  %42 = load i32, i32* %i_17, align 4
  %dec33 = add nsw i32 %42, -1
  store i32 %dec33, i32* %i_17, align 4
  %cmp34 = icmp sgt i32 %dec33, 0
  br i1 %cmp34, label %do.body.24, label %do.end.36

do.end.36:                                        ; preds = %do.cond.32
  %43 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %43, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.36
  %44 = load i32, i32* %var, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %var, align 4
  %idxprom39 = sext i32 %46 to i64
  %47 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %47, i64 %idxprom39
  %48 = load i32*, i32** %arrayidx40, align 8
  store i32* %48, i32** %mask, align 8
  %49 = load i32*, i32** %p_diff_c, align 8
  %50 = load i32*, i32** %mask, align 8
  %call41 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %49, i32* %50)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.72, label %if.then.43

if.then.43:                                       ; preds = %for.body
  %51 = load i32*, i32** %c.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx45, align 4
  %and46 = and i32 %52, 1023
  store i32 %and46, i32* %i_44, align 4
  %53 = load i32*, i32** %temp, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %54, -1024
  store i32 %and48, i32* %arrayidx47, align 4
  %55 = load i32, i32* %i_44, align 4
  %56 = load i32*, i32** %temp, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx49, align 4
  %or50 = or i32 %57, %55
  store i32 %or50, i32* %arrayidx49, align 4
  br label %do.body.51

do.body.51:                                       ; preds = %do.cond.66, %if.then.43
  %58 = load i32, i32* %i_44, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load i32*, i32** %c.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %59, i64 %idxprom52
  %60 = load i32, i32* %arrayidx53, align 4
  %61 = load i32, i32* %i_44, align 4
  %idxprom54 = sext i32 %61 to i64
  %62 = load i32*, i32** %mask, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %62, i64 %idxprom54
  %63 = load i32, i32* %arrayidx55, align 4
  %and56 = and i32 %60, %63
  %64 = load i32, i32* %i_44, align 4
  %idxprom57 = sext i32 %64 to i64
  %65 = load i32*, i32** %p_and_c, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 %idxprom57
  %66 = load i32, i32* %arrayidx58, align 4
  %67 = load i32, i32* %i_44, align 4
  %idxprom59 = sext i32 %67 to i64
  %68 = load i32*, i32** %mask, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %68, i64 %idxprom59
  %69 = load i32, i32* %arrayidx60, align 4
  %neg61 = xor i32 %69, -1
  %and62 = and i32 %66, %neg61
  %or63 = or i32 %and56, %and62
  %70 = load i32, i32* %i_44, align 4
  %idxprom64 = sext i32 %70 to i64
  %71 = load i32*, i32** %temp, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %71, i64 %idxprom64
  store i32 %or63, i32* %arrayidx65, align 4
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.51
  %72 = load i32, i32* %i_44, align 4
  %dec67 = add nsw i32 %72, -1
  store i32 %dec67, i32* %i_44, align 4
  %cmp68 = icmp sgt i32 %dec67, 0
  br i1 %cmp68, label %do.body.51, label %do.end.70

do.end.70:                                        ; preds = %do.cond.66
  %73 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %74 = load i32*, i32** %temp, align 8
  %call71 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %73, i32* %74)
  store %struct.set_family* %call71, %struct.set_family** %R.addr, align 8
  store i32 1, i32* %got_one, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.70, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %75 = load i32, i32* %var, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load i32, i32* %got_one, align 4
  %tobool73 = icmp ne i32 %76, 0
  br i1 %tobool73, label %if.end.98, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %77 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp74 = icmp sgt i32 %77, 0
  br i1 %cmp74, label %if.then.76, label %if.end.98

if.then.76:                                       ; preds = %land.lhs.true
  %78 = load i32*, i32** %p.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx78, align 4
  %and79 = and i32 %79, 1023
  store i32 %and79, i32* %i_77, align 4
  %80 = load i32*, i32** %temp, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx80, align 4
  %and81 = and i32 %81, -1024
  store i32 %and81, i32* %arrayidx80, align 4
  %82 = load i32, i32* %i_77, align 4
  %83 = load i32*, i32** %temp, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx82, align 4
  %or83 = or i32 %84, %82
  store i32 %or83, i32* %arrayidx82, align 4
  br label %do.body.84

do.body.84:                                       ; preds = %do.cond.92, %if.then.76
  %85 = load i32, i32* %i_77, align 4
  %idxprom85 = sext i32 %85 to i64
  %86 = load i32*, i32** %p.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %86, i64 %idxprom85
  %87 = load i32, i32* %arrayidx86, align 4
  %88 = load i32, i32* %i_77, align 4
  %idxprom87 = sext i32 %88 to i64
  %89 = load i32*, i32** %c.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %89, i64 %idxprom87
  %90 = load i32, i32* %arrayidx88, align 4
  %and89 = and i32 %87, %90
  %91 = load i32, i32* %i_77, align 4
  %idxprom90 = sext i32 %91 to i64
  %92 = load i32*, i32** %temp, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %92, i64 %idxprom90
  store i32 %and89, i32* %arrayidx91, align 4
  br label %do.cond.92

do.cond.92:                                       ; preds = %do.body.84
  %93 = load i32, i32* %i_77, align 4
  %dec93 = add nsw i32 %93, -1
  store i32 %dec93, i32* %i_77, align 4
  %cmp94 = icmp sgt i32 %dec93, 0
  br i1 %cmp94, label %do.body.84, label %do.end.96

do.end.96:                                        ; preds = %do.cond.92
  %94 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %95 = load i32*, i32** %temp, align 8
  %call97 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %94, i32* %95)
  store %struct.set_family* %call97, %struct.set_family** %R.addr, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %do.end.96, %land.lhs.true, %for.end
  %96 = load i32*, i32** %temp, align 8
  %tobool99 = icmp ne i32* %96, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.98
  %97 = load i32*, i32** %temp, align 8
  %98 = bitcast i32* %97 to i8*
  call void @free(i8* %98)
  store i32* null, i32** %temp, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.98
  %99 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  store %struct.set_family* %99, %struct.set_family** %retval
  br label %return

return:                                           ; preds = %if.end.101, %if.then
  %100 = load %struct.set_family*, %struct.set_family** %retval
  ret %struct.set_family* %100
}

declare i32 @setp_implies(...) #1

declare i32 @setp_disjoint(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
