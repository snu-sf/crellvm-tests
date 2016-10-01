; ModuleID = './MultiSource.Benchmarks.MallocBench/6.espresso.primes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external global %struct.cube_struct, align 8
@cdata = external global %struct.cdata_struct, align 8

; Function Attrs: nounwind uwtable
define %struct.set_family* @primes_consensus(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  %Tnew = alloca %struct.set_family*, align 8
  %Tl = alloca %struct.set_family*, align 8
  %Tr = alloca %struct.set_family*, align 8
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32**, i32*** %T.addr, align 8
  %call = call i32 @primes_consensus_special_cases(i32** %0, %struct.set_family** %Tnew)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp1 = icmp sle i32 %1, 32
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %2, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %3 = bitcast i8* %call3 to i32*
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %3, i32 %4)
  store i32* %call4, i32** %cl, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp5 = icmp sle i32 %5, 32
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.8:                                     ; preds = %cond.end
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub9 = sub nsw i32 %6, 1
  %shr10 = ashr i32 %sub9, 5
  %add11 = add nsw i32 %shr10, 1
  %add12 = add nsw i32 %add11, 1
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.8, %cond.true.7
  %cond14 = phi i32 [ 2, %cond.true.7 ], [ %add12, %cond.false.8 ]
  %conv15 = sext i32 %cond14 to i64
  %mul16 = mul i64 4, %conv15
  %call17 = call i8* @malloc(i64 %mul16)
  %7 = bitcast i8* %call17 to i32*
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call18 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %7, i32 %8)
  store i32* %call18, i32** %cr, align 8
  %9 = load i32**, i32*** %T.addr, align 8
  %10 = load i32*, i32** %cl, align 8
  %11 = load i32*, i32** %cr, align 8
  %call19 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %9, i32* %10, i32* %11, i32 1)
  store i32 %call19, i32* %best, align 4
  %12 = load i32**, i32*** %T.addr, align 8
  %13 = load i32*, i32** %cl, align 8
  %14 = load i32, i32* %best, align 4
  %call20 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %12, i32* %13, i32 %14)
  %call21 = call %struct.set_family* @primes_consensus(i32** %call20)
  store %struct.set_family* %call21, %struct.set_family** %Tl, align 8
  %15 = load i32**, i32*** %T.addr, align 8
  %16 = load i32*, i32** %cr, align 8
  %17 = load i32, i32* %best, align 4
  %call22 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %15, i32* %16, i32 %17)
  %call23 = call %struct.set_family* @primes_consensus(i32** %call22)
  store %struct.set_family* %call23, %struct.set_family** %Tr, align 8
  %18 = load %struct.set_family*, %struct.set_family** %Tl, align 8
  %19 = load %struct.set_family*, %struct.set_family** %Tr, align 8
  %20 = load i32*, i32** %cl, align 8
  %21 = load i32*, i32** %cr, align 8
  %call24 = call %struct.set_family* @primes_consensus_merge(%struct.set_family* %18, %struct.set_family* %19, i32* %20, i32* %21)
  store %struct.set_family* %call24, %struct.set_family** %Tnew, align 8
  %22 = load i32*, i32** %cl, align 8
  %tobool = icmp ne i32* %22, null
  br i1 %tobool, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %cond.end.13
  %23 = load i32*, i32** %cl, align 8
  %24 = bitcast i32* %23 to i8*
  call void @free(i8* %24)
  store i32* null, i32** %cl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.25, %cond.end.13
  %25 = load i32*, i32** %cr, align 8
  %tobool26 = icmp ne i32* %25, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  %26 = load i32*, i32** %cr, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27)
  store i32* null, i32** %cr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end
  %28 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %28, i64 0
  %29 = load i32*, i32** %arrayidx, align 8
  %tobool29 = icmp ne i32* %29, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %30 = load i32**, i32*** %T.addr, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %30, i64 0
  %31 = load i32*, i32** %arrayidx31, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* %32)
  %33 = load i32**, i32*** %T.addr, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %33, i64 0
  store i32* null, i32** %arrayidx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %34 = load i32**, i32*** %T.addr, align 8
  %tobool34 = icmp ne i32** %34, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %35 = load i32**, i32*** %T.addr, align 8
  %36 = bitcast i32** %35 to i8*
  call void @free(i8* %36)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %37 = load %struct.set_family*, %struct.set_family** %Tnew, align 8
  ret %struct.set_family* %37
}

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32 @binate_split_select(...) #1

declare i32** @scofactor(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @primes_consensus_special_cases(i32** %T, %struct.set_family** %Tnew) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %Tnew.addr = alloca %struct.set_family**, align 8
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %ceil = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %last = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  %i_101 = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store %struct.set_family** %Tnew, %struct.set_family*** %Tnew.addr, align 8
  %0 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %cof, align 8
  %2 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 2
  %3 = load i32*, i32** %arrayidx1, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %4)
  %5 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call, %struct.set_family** %5, align 8
  %6 = load i32**, i32*** %T.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %6, i64 0
  %7 = load i32*, i32** %arrayidx2, align 8
  %tobool = icmp ne i32* %7, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32**, i32*** %T.addr, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %8, i64 0
  %9 = load i32*, i32** %arrayidx4, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10)
  %11 = load i32**, i32*** %T.addr, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %11, i64 0
  store i32* null, i32** %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load i32**, i32*** %T.addr, align 8
  %tobool6 = icmp ne i32** %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i32**, i32*** %T.addr, align 8
  %14 = bitcast i32** %13 to i8*
  call void @free(i8* %14)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  %15 = load i32**, i32*** %T.addr, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %15, i64 3
  %16 = load i32*, i32** %arrayidx10, align 8
  %cmp11 = icmp eq i32* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.end.9
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call13 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %17)
  %18 = load i32*, i32** %cof, align 8
  %19 = load i32*, i32** %cof, align 8
  %20 = load i32**, i32*** %T.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %20, i64 2
  %21 = load i32*, i32** %arrayidx14, align 8
  %call15 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %18, i32* %19, i32* %21)
  %call16 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call13, i32* %call15)
  %22 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call16, %struct.set_family** %22, align 8
  %23 = load i32**, i32*** %T.addr, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %23, i64 0
  %24 = load i32*, i32** %arrayidx17, align 8
  %tobool18 = icmp ne i32* %24, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.12
  %25 = load i32**, i32*** %T.addr, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %25, i64 0
  %26 = load i32*, i32** %arrayidx20, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27)
  %28 = load i32**, i32*** %T.addr, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* null, i32** %arrayidx21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.12
  %29 = load i32**, i32*** %T.addr, align 8
  %tobool23 = icmp ne i32** %29, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %30 = load i32**, i32*** %T.addr, align 8
  %31 = bitcast i32** %30 to i8*
  call void @free(i8* %31)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.9
  %32 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %32, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.42, %if.end.26
  %33 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %33, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %p, align 8
  %cmp27 = icmp ne i32* %34, null
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32*, i32** %p, align 8
  %36 = load i32*, i32** %cof, align 8
  %call28 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* %35, i32* %36)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %for.body
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call31 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %37)
  %38 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call32 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call31, i32* %38)
  %39 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call32, %struct.set_family** %39, align 8
  %40 = load i32**, i32*** %T.addr, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %40, i64 0
  %41 = load i32*, i32** %arrayidx33, align 8
  %tobool34 = icmp ne i32* %41, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.then.30
  %42 = load i32**, i32*** %T.addr, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %42, i64 0
  %43 = load i32*, i32** %arrayidx36, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44)
  %45 = load i32**, i32*** %T.addr, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* null, i32** %arrayidx37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.then.30
  %46 = load i32**, i32*** %T.addr, align 8
  %tobool39 = icmp ne i32** %46, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  %47 = load i32**, i32*** %T.addr, align 8
  %48 = bitcast i32** %47 to i8*
  call void @free(i8* %48)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32*, i32** %cof, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx43, align 4
  %and = and i32 %50, 1023
  %mul = mul i32 32, %and
  %cmp44 = icmp ule i32 %mul, 32
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %51 = load i32*, i32** %cof, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx45, align 4
  %and46 = and i32 %52, 1023
  %mul47 = mul i32 32, %and46
  %sub = sub i32 %mul47, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add48 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add48, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul49 = mul i64 4, %conv
  %call50 = call i8* @malloc(i64 %mul49)
  %53 = bitcast i8* %call50 to i32*
  %54 = load i32*, i32** %cof, align 8
  %call51 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %53, i32* %54)
  store i32* %call51, i32** %ceil, align 8
  %55 = load i32**, i32*** %T.addr, align 8
  %add.ptr52 = getelementptr inbounds i32*, i32** %55, i64 2
  store i32** %add.ptr52, i32*** %T1, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %do.end, %cond.end
  %56 = load i32**, i32*** %T1, align 8
  %incdec.ptr54 = getelementptr inbounds i32*, i32** %56, i32 1
  store i32** %incdec.ptr54, i32*** %T1, align 8
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %p, align 8
  %cmp55 = icmp ne i32* %57, null
  br i1 %cmp55, label %for.body.57, label %for.end.71

for.body.57:                                      ; preds = %for.cond.53
  %58 = load i32*, i32** %ceil, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx58, align 4
  %and59 = and i32 %59, 1023
  store i32 %and59, i32* %i_, align 4
  %60 = load i32*, i32** %ceil, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx60, align 4
  %and61 = and i32 %61, -1024
  store i32 %and61, i32* %arrayidx60, align 4
  %62 = load i32, i32* %i_, align 4
  %63 = load i32*, i32** %ceil, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx62, align 4
  %or = or i32 %64, %62
  store i32 %or, i32* %arrayidx62, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.57
  %65 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load i32*, i32** %ceil, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %66, i64 %idxprom
  %67 = load i32, i32* %arrayidx63, align 4
  %68 = load i32, i32* %i_, align 4
  %idxprom64 = sext i32 %68 to i64
  %69 = load i32*, i32** %p, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %69, i64 %idxprom64
  %70 = load i32, i32* %arrayidx65, align 4
  %or66 = or i32 %67, %70
  %71 = load i32, i32* %i_, align 4
  %idxprom67 = sext i32 %71 to i64
  %72 = load i32*, i32** %ceil, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %72, i64 %idxprom67
  store i32 %or66, i32* %arrayidx68, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %73 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %i_, align 4
  %cmp69 = icmp sgt i32 %dec, 0
  br i1 %cmp69, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond.53

for.end.71:                                       ; preds = %for.cond.53
  %74 = load i32*, i32** %ceil, align 8
  %75 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call72 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %74, i32* %75)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.128, label %if.then.74

if.then.74:                                       ; preds = %for.end.71
  %76 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp75 = icmp sle i32 %76, 32
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.then.74
  br label %cond.end.83

cond.false.78:                                    ; preds = %if.then.74
  %77 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub79 = sub nsw i32 %77, 1
  %shr80 = ashr i32 %sub79, 5
  %add81 = add nsw i32 %shr80, 1
  %add82 = add nsw i32 %add81, 1
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.78, %cond.true.77
  %cond84 = phi i32 [ 2, %cond.true.77 ], [ %add82, %cond.false.78 ]
  %conv85 = sext i32 %cond84 to i64
  %mul86 = mul i64 4, %conv85
  %call87 = call i8* @malloc(i64 %mul86)
  %78 = bitcast i8* %call87 to i32*
  %79 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call88 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %78, i32 %79)
  store i32* %call88, i32** %p, align 8
  %80 = load i32*, i32** %p, align 8
  %81 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %82 = load i32*, i32** %ceil, align 8
  %call89 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %80, i32* %81, i32* %82)
  %83 = load i32*, i32** %cof, align 8
  %84 = load i32*, i32** %cof, align 8
  %85 = load i32*, i32** %p, align 8
  %call90 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %83, i32* %84, i32* %85)
  %86 = load i32*, i32** %p, align 8
  %tobool91 = icmp ne i32* %86, null
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %cond.end.83
  %87 = load i32*, i32** %p, align 8
  %88 = bitcast i32* %87 to i8*
  call void @free(i8* %88)
  store i32* null, i32** %p, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %cond.end.83
  %89 = load i32**, i32*** %T.addr, align 8
  %call94 = call %struct.set_family* @primes_consensus(i32** %89)
  store %struct.set_family* %call94, %struct.set_family** %A, align 8
  %90 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 5
  %91 = load i32*, i32** %data, align 8
  store i32* %91, i32** %p, align 8
  %92 = load i32*, i32** %p, align 8
  %93 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %94 = load i32, i32* %count, align 4
  %95 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %95, i32 0, i32 0
  %96 = load i32, i32* %wsize, align 4
  %mul95 = mul nsw i32 %94, %96
  %idx.ext = sext i32 %mul95 to i64
  %add.ptr96 = getelementptr inbounds i32, i32* %92, i64 %idx.ext
  store i32* %add.ptr96, i32** %last, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %if.end.93
  %97 = load i32*, i32** %p, align 8
  %98 = load i32*, i32** %last, align 8
  %cmp98 = icmp ult i32* %97, %98
  br i1 %cmp98, label %for.body.100, label %for.end.124

for.body.100:                                     ; preds = %for.cond.97
  %99 = load i32*, i32** %p, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx102, align 4
  %and103 = and i32 %100, 1023
  store i32 %and103, i32* %i_101, align 4
  %101 = load i32*, i32** %p, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx104, align 4
  %and105 = and i32 %102, -1024
  store i32 %and105, i32* %arrayidx104, align 4
  %103 = load i32, i32* %i_101, align 4
  %104 = load i32*, i32** %p, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %104, i64 0
  %105 = load i32, i32* %arrayidx106, align 4
  %or107 = or i32 %105, %103
  store i32 %or107, i32* %arrayidx106, align 4
  br label %do.body.108

do.body.108:                                      ; preds = %do.cond.116, %for.body.100
  %106 = load i32, i32* %i_101, align 4
  %idxprom109 = sext i32 %106 to i64
  %107 = load i32*, i32** %p, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %107, i64 %idxprom109
  %108 = load i32, i32* %arrayidx110, align 4
  %109 = load i32, i32* %i_101, align 4
  %idxprom111 = sext i32 %109 to i64
  %110 = load i32*, i32** %ceil, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %110, i64 %idxprom111
  %111 = load i32, i32* %arrayidx112, align 4
  %and113 = and i32 %108, %111
  %112 = load i32, i32* %i_101, align 4
  %idxprom114 = sext i32 %112 to i64
  %113 = load i32*, i32** %p, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %113, i64 %idxprom114
  store i32 %and113, i32* %arrayidx115, align 4
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.108
  %114 = load i32, i32* %i_101, align 4
  %dec117 = add nsw i32 %114, -1
  store i32 %dec117, i32* %i_101, align 4
  %cmp118 = icmp sgt i32 %dec117, 0
  br i1 %cmp118, label %do.body.108, label %do.end.120

do.end.120:                                       ; preds = %do.cond.116
  br label %for.inc

for.inc:                                          ; preds = %do.end.120
  %115 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize121 = getelementptr inbounds %struct.set_family, %struct.set_family* %115, i32 0, i32 0
  %116 = load i32, i32* %wsize121, align 4
  %117 = load i32*, i32** %p, align 8
  %idx.ext122 = sext i32 %116 to i64
  %add.ptr123 = getelementptr inbounds i32, i32* %117, i64 %idx.ext122
  store i32* %add.ptr123, i32** %p, align 8
  br label %for.cond.97

for.end.124:                                      ; preds = %for.cond.97
  %118 = load %struct.set_family*, %struct.set_family** %A, align 8
  %119 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %118, %struct.set_family** %119, align 8
  %120 = load i32*, i32** %ceil, align 8
  %tobool125 = icmp ne i32* %120, null
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.end.124
  %121 = load i32*, i32** %ceil, align 8
  %122 = bitcast i32* %121 to i8*
  call void @free(i8* %122)
  store i32* null, i32** %ceil, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %for.end.124
  store i32 1, i32* %retval
  br label %return

if.end.128:                                       ; preds = %for.end.71
  %123 = load i32*, i32** %ceil, align 8
  %tobool129 = icmp ne i32* %123, null
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.128
  %124 = load i32*, i32** %ceil, align 8
  %125 = bitcast i32* %124 to i8*
  call void @free(i8* %125)
  store i32* null, i32** %ceil, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.128
  %126 = load i32**, i32*** %T.addr, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %126)
  %127 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp132 = icmp eq i32 %127, 1
  br i1 %cmp132, label %if.then.134, label %if.else

if.then.134:                                      ; preds = %if.end.131
  %128 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call135 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %128)
  %129 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call136 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call135, i32* %129)
  %130 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call136, %struct.set_family** %130, align 8
  %131 = load i32**, i32*** %T.addr, align 8
  %arrayidx137 = getelementptr inbounds i32*, i32** %131, i64 0
  %132 = load i32*, i32** %arrayidx137, align 8
  %tobool138 = icmp ne i32* %132, null
  br i1 %tobool138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.then.134
  %133 = load i32**, i32*** %T.addr, align 8
  %arrayidx140 = getelementptr inbounds i32*, i32** %133, i64 0
  %134 = load i32*, i32** %arrayidx140, align 8
  %135 = bitcast i32* %134 to i8*
  call void @free(i8* %135)
  %136 = load i32**, i32*** %T.addr, align 8
  %arrayidx141 = getelementptr inbounds i32*, i32** %136, i64 0
  store i32* null, i32** %arrayidx141, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %if.then.134
  %137 = load i32**, i32*** %T.addr, align 8
  %tobool143 = icmp ne i32** %137, null
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.142
  %138 = load i32**, i32*** %T.addr, align 8
  %139 = bitcast i32** %138 to i8*
  call void @free(i8* %139)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.end.142
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.131
  %140 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp146 = icmp eq i32 %140, %141
  br i1 %cmp146, label %if.then.148, label %if.else.160

if.then.148:                                      ; preds = %if.else
  %142 = load i32**, i32*** %T.addr, align 8
  %call149 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** %142)
  store %struct.set_family* %call149, %struct.set_family** %A, align 8
  %143 = load %struct.set_family*, %struct.set_family** %A, align 8
  %call150 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %143)
  %144 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call150, %struct.set_family** %144, align 8
  %145 = load i32**, i32*** %T.addr, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %145, i64 0
  %146 = load i32*, i32** %arrayidx151, align 8
  %tobool152 = icmp ne i32* %146, null
  br i1 %tobool152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.then.148
  %147 = load i32**, i32*** %T.addr, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %147, i64 0
  %148 = load i32*, i32** %arrayidx154, align 8
  %149 = bitcast i32* %148 to i8*
  call void @free(i8* %149)
  %150 = load i32**, i32*** %T.addr, align 8
  %arrayidx155 = getelementptr inbounds i32*, i32** %150, i64 0
  store i32* null, i32** %arrayidx155, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.then.148
  %151 = load i32**, i32*** %T.addr, align 8
  %tobool157 = icmp ne i32** %151, null
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.156
  %152 = load i32**, i32*** %T.addr, align 8
  %153 = bitcast i32** %152 to i8*
  call void @free(i8* %153)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.156
  store i32 1, i32* %retval
  br label %return

if.else.160:                                      ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.else.160, %if.end.159, %if.end.145, %if.end.127, %if.end.41, %if.end.25, %if.end.8
  %154 = load i32, i32* %retval
  ret i32 %154
}

declare %struct.set_family* @sf_new(...) #1

declare %struct.set_family* @sf_addset(...) #1

declare i32* @set_or(...) #1

declare i32 @full_row(...) #1

declare i32* @set_copy(...) #1

declare i32 @setp_equal(...) #1

declare i32* @set_diff(...) #1

declare void @massive_count(...) #1

declare %struct.set_family* @cubeunlist(...) #1

declare %struct.set_family* @sf_contain(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @primes_consensus_merge(%struct.set_family* %Tl, %struct.set_family* %Tr, i32* %cl, i32* %cr) #0 {
entry:
  %Tl.addr = alloca %struct.set_family*, align 8
  %Tr.addr = alloca %struct.set_family*, align 8
  %cl.addr = alloca i32*, align 8
  %cr.addr = alloca i32*, align 8
  %pl = alloca i32*, align 8
  %pr = alloca i32*, align 8
  %lastl = alloca i32*, align 8
  %lastr = alloca i32*, align 8
  %pt = alloca i32*, align 8
  %T = alloca %struct.set_family*, align 8
  %Tsave = alloca %struct.set_family*, align 8
  store %struct.set_family* %Tl, %struct.set_family** %Tl.addr, align 8
  store %struct.set_family* %Tr, %struct.set_family** %Tr.addr, align 8
  store i32* %cl, i32** %cl.addr, align 8
  store i32* %cr, i32** %cr.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %1 = load i32*, i32** %cl.addr, align 8
  %call = call %struct.set_family* @and_with_cofactor(%struct.set_family* %0, i32* %1)
  store %struct.set_family* %call, %struct.set_family** %Tl.addr, align 8
  %2 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  %3 = load i32*, i32** %cr.addr, align 8
  %call1 = call %struct.set_family* @and_with_cofactor(%struct.set_family* %2, i32* %3)
  store %struct.set_family* %call1, %struct.set_family** %Tr.addr, align 8
  %4 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 1
  %5 = load i32, i32* %sf_size, align 4
  %call2 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 500, i32 %5)
  store %struct.set_family* %call2, %struct.set_family** %T, align 8
  %6 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %pt, align 8
  %8 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %9 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  %call3 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %8, %struct.set_family* %9)
  %call4 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call3)
  store %struct.set_family* %call4, %struct.set_family** %Tsave, align 8
  %10 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %data5 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 5
  %11 = load i32*, i32** %data5, align 8
  store i32* %11, i32** %pl, align 8
  %12 = load i32*, i32** %pl, align 8
  %13 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 3
  %14 = load i32, i32* %count, align 4
  %15 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %16 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %14, %16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %12, i64 %idx.ext
  store i32* %add.ptr, i32** %lastl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %17 = load i32*, i32** %pl, align 8
  %18 = load i32*, i32** %lastl, align 8
  %cmp = icmp ult i32* %17, %18
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %19 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  %data6 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 5
  %20 = load i32*, i32** %data6, align 8
  store i32* %20, i32** %pr, align 8
  %21 = load i32*, i32** %pr, align 8
  %22 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %23 = load i32, i32* %count7, align 4
  %24 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  %wsize8 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 0
  %25 = load i32, i32* %wsize8, align 4
  %mul9 = mul nsw i32 %23, %25
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i32, i32* %21, i64 %idx.ext10
  store i32* %add.ptr11, i32** %lastr, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %26 = load i32*, i32** %pr, align 8
  %27 = load i32*, i32** %lastr, align 8
  %cmp13 = icmp ult i32* %26, %27
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %28 = load i32*, i32** %pl, align 8
  %29 = load i32*, i32** %pr, align 8
  %call15 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* %28, i32* %29)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body.14
  %30 = load i32*, i32** %pt, align 8
  %31 = load i32*, i32** %pl, align 8
  %32 = load i32*, i32** %pr, align 8
  call void (i32*, i32*, i32*, ...) bitcast (void (...)* @consensus to void (i32*, i32*, i32*, ...)*)(i32* %30, i32* %31, i32* %32)
  %33 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count17 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 3
  %34 = load i32, i32* %count17, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %count17, align 4
  %35 = load %struct.set_family*, %struct.set_family** %T, align 8
  %capacity = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 2
  %36 = load i32, i32* %capacity, align 4
  %cmp18 = icmp sge i32 %inc, %36
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then
  %37 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %38 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call20 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %38)
  %call21 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %37, %struct.set_family* %call20)
  store %struct.set_family* %call21, %struct.set_family** %Tsave, align 8
  %39 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %sf_size22 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 1
  %40 = load i32, i32* %sf_size22, align 4
  %call23 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 500, i32 %40)
  store %struct.set_family* %call23, %struct.set_family** %T, align 8
  %41 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data24 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 5
  %42 = load i32*, i32** %data24, align 8
  store i32* %42, i32** %pt, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %43 = load %struct.set_family*, %struct.set_family** %T, align 8
  %wsize25 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 0
  %44 = load i32, i32* %wsize25, align 4
  %45 = load i32*, i32** %pt, align 8
  %idx.ext26 = sext i32 %44 to i64
  %add.ptr27 = getelementptr inbounds i32, i32* %45, i64 %idx.ext26
  store i32* %add.ptr27, i32** %pt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %46 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  %wsize29 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 0
  %47 = load i32, i32* %wsize29, align 4
  %48 = load i32*, i32** %pr, align 8
  %idx.ext30 = sext i32 %47 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %48, i64 %idx.ext30
  store i32* %add.ptr31, i32** %pr, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %49 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  %wsize33 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 0
  %50 = load i32, i32* %wsize33, align 4
  %51 = load i32*, i32** %pl, align 8
  %idx.ext34 = sext i32 %50 to i64
  %add.ptr35 = getelementptr inbounds i32, i32* %51, i64 %idx.ext34
  store i32* %add.ptr35, i32** %pl, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %52 = load %struct.set_family*, %struct.set_family** %Tl.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %52)
  %53 = load %struct.set_family*, %struct.set_family** %Tr.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %53)
  %54 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %55 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call37 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %55)
  %call38 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %54, %struct.set_family* %call37)
  store %struct.set_family* %call38, %struct.set_family** %Tsave, align 8
  %56 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  ret %struct.set_family* %56
}

declare %struct.set_family* @sf_join(...) #1

declare i32 @cdist01(...) #1

declare void @consensus(...) #1

declare %struct.set_family* @sf_union(...) #1

declare void @sf_free(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @and_with_cofactor(%struct.set_family* %A, i32* %cof) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %cof.addr = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %cof, i32** %cof.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  %2 = load i32*, i32** %p, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %4, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32*, i32** %p, align 8
  %8 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, 1023
  store i32 %and, i32* %i_, align 4
  %11 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %12, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %13 = load i32, i32* %i_, align 4
  %14 = load i32*, i32** %p, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %15, %13
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %16 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx4, align 4
  %19 = load i32, i32* %i_, align 4
  %idxprom5 = sext i32 %19 to i64
  %20 = load i32*, i32** %cof.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %20, i64 %idxprom5
  %21 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %18, %21
  %22 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %22 to i64
  %23 = load i32*, i32** %p, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %idxprom8
  store i32 %and7, i32* %arrayidx9, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i_, align 4
  %cmp10 = icmp sgt i32 %dec, 0
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load i32*, i32** %p, align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist to i32 (i32*, i32*, ...)*)(i32* %25, i32* %26)
  %cmp11 = icmp sgt i32 %call, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %27 = load i32*, i32** %p, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx12, align 4
  %and13 = and i32 %28, -8193
  store i32 %and13, i32* %arrayidx12, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %29 = load i32*, i32** %p, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx14, align 4
  %or15 = or i32 %30, 8192
  store i32 %or15, i32* %arrayidx14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize16 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 0
  %32 = load i32, i32* %wsize16, align 4
  %33 = load i32*, i32** %p, align 8
  %idx.ext17 = sext i32 %32 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %33, i64 %idx.ext17
  store i32* %add.ptr18, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call19 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %34)
  ret %struct.set_family* %call19
}

declare i32 @cdist(...) #1

declare %struct.set_family* @sf_inactive(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
