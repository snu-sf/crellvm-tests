; ModuleID = './MultiSource.Benchmarks.MallocBench/35.espresso.unate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.anon = type { %struct.set_family*, i32 }

@cdata = external global %struct.cdata_struct, align 8
@cube = external global %struct.cube_struct, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"# EXACT_MINCOV[%d]: %4d = %4d x %4d, time = %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"MINCOV: family of all minimal coverings is\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"abs_select_restricted: should not have best_var == -1\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @map_cover_to_unate(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %word_test = alloca i32, align 4
  %word_set = alloca i32, align 4
  %bit_test = alloca i32, align 4
  %bit_set = alloca i32, align 4
  %p = alloca i32*, align 8
  %pA = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  %T1 = alloca i32**, align 8
  %ncol = alloca i32, align 4
  %i = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
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
  %4 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %call = call %struct.set_family* (i64, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i64, i32, ...)*)(i64 %sub, i32 %4)
  store %struct.set_family* %call, %struct.set_family** %A, align 8
  %5 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %5, i64 1
  %6 = load i32*, i32** %arrayidx1, align 8
  %7 = bitcast i32* %6 to i32**
  %8 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i32** %7 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i32** %8 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %sub6 = sub nsw i64 %sub.ptr.div5, 3
  %conv = trunc i64 %sub6 to i32
  %9 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  store i32 %conv, i32* %count, align 4
  %10 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 5
  %11 = load i32*, i32** %data, align 8
  store i32* %11, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 3
  %14 = load i32, i32* %count7, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %p, align 8
  %16 = load %struct.set_family*, %struct.set_family** %A, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 1
  %17 = load i32, i32* %sf_size, align 4
  %call9 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %15, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 0
  %19 = load i32, i32* %wsize, align 4
  %20 = load i32*, i32** %p, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i32, i32* %20, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ncol, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.41, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp11 = icmp slt i32 %22, %23
  br i1 %cmp11, label %for.body.13, label %for.end.43

for.body.13:                                      ; preds = %for.cond.10
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %25, i64 %idxprom
  %26 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp sgt i32 %26, 0
  br i1 %cmp15, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.body.13
  %27 = load i32, i32* %i, align 4
  %shr = ashr i32 %27, 5
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %word_test, align 4
  %28 = load i32, i32* %i, align 4
  %and = and i32 %28, 31
  %shl = shl i32 1, %and
  store i32 %shl, i32* %bit_test, align 4
  %29 = load i32, i32* %ncol, align 4
  %shr17 = ashr i32 %29, 5
  %add18 = add nsw i32 %shr17, 1
  store i32 %add18, i32* %word_set, align 4
  %30 = load i32, i32* %ncol, align 4
  %and19 = and i32 %30, 31
  %shl20 = shl i32 1, %and19
  store i32 %shl20, i32* %bit_set, align 4
  %31 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data21 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 5
  %32 = load i32*, i32** %data21, align 8
  store i32* %32, i32** %pA, align 8
  %33 = load i32**, i32*** %T.addr, align 8
  %add.ptr22 = getelementptr inbounds i32*, i32** %33, i64 2
  store i32** %add.ptr22, i32*** %T1, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %if.end, %if.then
  %34 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %34, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %p, align 8
  %cmp24 = icmp ne i32* %35, null
  br i1 %cmp24, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.23
  %36 = load i32, i32* %word_test, align 4
  %idxprom27 = zext i32 %36 to i64
  %37 = load i32*, i32** %p, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %37, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4
  %39 = load i32, i32* %bit_test, align 4
  %and29 = and i32 %38, %39
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %for.body.26
  %40 = load i32, i32* %bit_set, align 4
  %41 = load i32, i32* %word_set, align 4
  %idxprom33 = zext i32 %41 to i64
  %42 = load i32*, i32** %pA, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 %idxprom33
  %43 = load i32, i32* %arrayidx34, align 4
  %or = or i32 %43, %40
  store i32 %or, i32* %arrayidx34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %for.body.26
  %44 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize35 = getelementptr inbounds %struct.set_family, %struct.set_family* %44, i32 0, i32 0
  %45 = load i32, i32* %wsize35, align 4
  %46 = load i32*, i32** %pA, align 8
  %idx.ext36 = sext i32 %45 to i64
  %add.ptr37 = getelementptr inbounds i32, i32* %46, i64 %idx.ext36
  store i32* %add.ptr37, i32** %pA, align 8
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  %47 = load i32, i32* %ncol, align 4
  %inc39 = add nsw i32 %47, 1
  store i32 %inc39, i32* %ncol, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.38, %for.body.13
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %48 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.10

for.end.43:                                       ; preds = %for.cond.10
  %49 = load %struct.set_family*, %struct.set_family** %A, align 8
  ret %struct.set_family* %49
}

declare %struct.set_family* @sf_new(...) #1

declare i32* @set_clear(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @map_unate_to_cover(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %i = alloca i32, align 4
  %ncol = alloca i32, align 4
  %lp = alloca i32, align 4
  %p = alloca i32*, align 8
  %pB = alloca i32*, align 8
  %var = alloca i32, align 4
  %nunate = alloca i32, align 4
  %unate = alloca i32*, align 8
  %last = alloca i32*, align 8
  %B = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %1, i32 %2)
  store %struct.set_family* %call, %struct.set_family** %B, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count1, align 4
  %5 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  store i32 %4, i32* %count2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %7 = bitcast i8* %call3 to i32*
  store i32* %7, i32** %unate, align 8
  store i32 0, i32* %nunate, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %var, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %var, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %var, align 4
  %14 = load i32, i32* %nunate, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %nunate, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load i32*, i32** %unate, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  store i32 %13, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %var, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 5
  %18 = load i32*, i32** %data, align 8
  store i32* %18, i32** %pB, align 8
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data8 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 5
  %20 = load i32*, i32** %data8, align 8
  store i32* %20, i32** %p, align 8
  %21 = load i32*, i32** %p, align 8
  %22 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %23 = load i32, i32* %count9, align 4
  %24 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 0
  %25 = load i32, i32* %wsize, align 4
  %mul10 = mul nsw i32 %23, %25
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %21, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.72, %for.end
  %26 = load i32*, i32** %p, align 8
  %27 = load i32*, i32** %last, align 8
  %cmp12 = icmp ult i32* %26, %27
  br i1 %cmp12, label %for.body.14, label %for.end.76

for.body.14:                                      ; preds = %for.cond.11
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp15 = icmp sle i32 %28, 32
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.14
  br label %cond.end

cond.false:                                       ; preds = %for.body.14
  %29 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %29, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i_, align 4
  %30 = load i32, i32* %i_, align 4
  %31 = load i32*, i32** %pB, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %i_, align 4
  %mul17 = mul nsw i32 %32, 32
  %33 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub18 = sub nsw i32 %mul17, %33
  %shr19 = lshr i32 -1, %sub18
  %34 = load i32, i32* %i_, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load i32*, i32** %pB, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %35, i64 %idxprom20
  store i32 %shr19, i32* %arrayidx21, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %36 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %i_, align 4
  %cmp22 = icmp sgt i32 %dec, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %i_, align 4
  %idxprom24 = sext i32 %37 to i64
  %38 = load i32*, i32** %pB, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %38, i64 %idxprom24
  store i32 -1, i32* %arrayidx25, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %ncol, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.66, %while.end
  %39 = load i32, i32* %ncol, align 4
  %40 = load i32, i32* %nunate, align 4
  %cmp27 = icmp slt i32 %39, %40
  br i1 %cmp27, label %for.body.29, label %for.end.68

for.body.29:                                      ; preds = %for.cond.26
  %41 = load i32, i32* %ncol, align 4
  %shr30 = ashr i32 %41, 5
  %add31 = add nsw i32 %shr30, 1
  %idxprom32 = sext i32 %add31 to i64
  %42 = load i32*, i32** %p, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %42, i64 %idxprom32
  %43 = load i32, i32* %arrayidx33, align 4
  %44 = load i32, i32* %ncol, align 4
  %and = and i32 %44, 31
  %shl = shl i32 1, %and
  %and34 = and i32 %43, %shl
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.65

if.then.36:                                       ; preds = %for.body.29
  %45 = load i32, i32* %ncol, align 4
  %idxprom37 = sext i32 %45 to i64
  %46 = load i32*, i32** %unate, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %46, i64 %idxprom37
  %47 = load i32, i32* %arrayidx38, align 4
  %idxprom39 = sext i32 %47 to i64
  %48 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %48, i64 %idxprom39
  %49 = load i32, i32* %arrayidx40, align 4
  store i32 %49, i32* %lp, align 4
  %50 = load i32, i32* %ncol, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load i32*, i32** %unate, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %51, i64 %idxprom41
  %52 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %52 to i64
  %53 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %53, i64 %idxprom43
  %54 = load i32, i32* %arrayidx44, align 4
  store i32 %54, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.62, %if.then.36
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %lp, align 4
  %cmp46 = icmp sle i32 %55, %56
  br i1 %cmp46, label %for.body.48, label %for.end.64

for.body.48:                                      ; preds = %for.cond.45
  %57 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %57 to i64
  %58 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %58, i64 %idxprom49
  %59 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp eq i32 %59, 0
  br i1 %cmp51, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %for.body.48
  %60 = load i32, i32* %i, align 4
  %and54 = and i32 %60, 31
  %shl55 = shl i32 1, %and54
  %neg = xor i32 %shl55, -1
  %61 = load i32, i32* %i, align 4
  %shr56 = ashr i32 %61, 5
  %add57 = add nsw i32 %shr56, 1
  %idxprom58 = sext i32 %add57 to i64
  %62 = load i32*, i32** %pB, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 %idxprom58
  %63 = load i32, i32* %arrayidx59, align 4
  %and60 = and i32 %63, %neg
  store i32 %and60, i32* %arrayidx59, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.53, %for.body.48
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %64 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %64, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.45

for.end.64:                                       ; preds = %for.cond.45
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %for.body.29
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %65 = load i32, i32* %ncol, align 4
  %inc67 = add nsw i32 %65, 1
  store i32 %inc67, i32* %ncol, align 4
  br label %for.cond.26

for.end.68:                                       ; preds = %for.cond.26
  %66 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize69 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 0
  %67 = load i32, i32* %wsize69, align 4
  %68 = load i32*, i32** %pB, align 8
  %idx.ext70 = sext i32 %67 to i64
  %add.ptr71 = getelementptr inbounds i32, i32* %68, i64 %idx.ext70
  store i32* %add.ptr71, i32** %pB, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.68
  %69 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize73 = getelementptr inbounds %struct.set_family, %struct.set_family* %69, i32 0, i32 0
  %70 = load i32, i32* %wsize73, align 4
  %71 = load i32*, i32** %p, align 8
  %idx.ext74 = sext i32 %70 to i64
  %add.ptr75 = getelementptr inbounds i32, i32* %71, i64 %idx.ext74
  store i32* %add.ptr75, i32** %p, align 8
  br label %for.cond.11

for.end.76:                                       ; preds = %for.cond.11
  %72 = load i32*, i32** %unate, align 8
  %tobool77 = icmp ne i32* %72, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.end.76
  %73 = load i32*, i32** %unate, align 8
  %74 = bitcast i32* %73 to i8*
  call void @free(i8* %74)
  store i32* null, i32** %unate, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %for.end.76
  %75 = load %struct.set_family*, %struct.set_family** %B, align 8
  ret %struct.set_family* %75
}

declare i8* @malloc(i64) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @unate_compl(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
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
  %and = and i32 %10, 65535
  store i32 %and, i32* %arrayidx, align 4
  %11 = load i32*, i32** %p, align 8
  %call = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %11)
  %shl = shl i32 %call, 16
  %12 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx1, align 4
  %or = or i32 %13, %shl
  store i32 %or, i32* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize2, align 4
  %16 = load i32*, i32** %p, align 8
  %idx.ext3 = sext i32 %15 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %16, i64 %idx.ext3
  store i32* %add.ptr4, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call5 = call %struct.set_family* @unate_complement(%struct.set_family* %17)
  store %struct.set_family* %call5, %struct.set_family** %A.addr, align 8
  %18 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call6 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_rev_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %18)
  store %struct.set_family* %call6, %struct.set_family** %A.addr, align 8
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %19
}

declare i32 @set_ord(...) #1

declare %struct.set_family* @sf_rev_contain(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @unate_complement(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %Abar = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %p1 = alloca i32*, align 8
  %restrict = alloca i32*, align 8
  %i = alloca i32, align 4
  %max_i = alloca i32, align 4
  %min_set_ord = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %2)
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %4)
  store %struct.set_family* %call, %struct.set_family** %Abar, align 8
  %5 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  %7 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize, align 4
  %9 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count1, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count1, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  %11 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size2 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 1
  %12 = load i32, i32* %sf_size2, align 4
  %call3 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %add.ptr, i32 %12)
  br label %if.end.164

if.else:                                          ; preds = %entry
  %13 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 3
  %14 = load i32, i32* %count4, align 4
  %cmp5 = icmp eq i32 %14, 1
  br i1 %cmp5, label %if.then.6, label %if.else.31

if.then.6:                                        ; preds = %if.else
  %15 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data7 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 5
  %16 = load i32*, i32** %data7, align 8
  store i32* %16, i32** %p, align 8
  %17 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size8 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 1
  %18 = load i32, i32* %sf_size8, align 4
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size9 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 1
  %20 = load i32, i32* %sf_size9, align 4
  %call10 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %18, i32 %20)
  store %struct.set_family* %call10, %struct.set_family** %Abar, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size11 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 1
  %23 = load i32, i32* %sf_size11, align 4
  %cmp12 = icmp slt i32 %21, %23
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %shr = ashr i32 %24, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %25 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %25, i64 %idxprom
  %26 = load i32, i32* %arrayidx, align 4
  %27 = load i32, i32* %i, align 4
  %and = and i32 %27, 31
  %shl = shl i32 1, %and
  %and13 = and i32 %26, %shl
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body
  %28 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %data15 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data15, align 8
  %30 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %wsize16 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize16, align 4
  %32 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %count17 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count17, align 4
  %inc18 = add nsw i32 %33, 1
  store i32 %inc18, i32* %count17, align 4
  %mul19 = mul nsw i32 %31, %33
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, i32* %29, i64 %idx.ext20
  %34 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size22 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 1
  %35 = load i32, i32* %sf_size22, align 4
  %call23 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %add.ptr21, i32 %35)
  store i32* %call23, i32** %p1, align 8
  %36 = load i32, i32* %i, align 4
  %and24 = and i32 %36, 31
  %shl25 = shl i32 1, %and24
  %37 = load i32, i32* %i, align 4
  %shr26 = ashr i32 %37, 5
  %add27 = add nsw i32 %shr26, 1
  %idxprom28 = sext i32 %add27 to i64
  %38 = load i32*, i32** %p1, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 %idxprom28
  %39 = load i32, i32* %arrayidx29, align 4
  %or = or i32 %39, %shl25
  store i32 %or, i32* %arrayidx29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %40, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %41)
  br label %if.end.163

if.else.31:                                       ; preds = %if.else
  %42 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size32 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 1
  %43 = load i32, i32* %sf_size32, align 4
  %cmp33 = icmp sle i32 %43, 32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.31
  br label %cond.end

cond.false:                                       ; preds = %if.else.31
  %44 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size34 = getelementptr inbounds %struct.set_family, %struct.set_family* %44, i32 0, i32 1
  %45 = load i32, i32* %sf_size34, align 4
  %sub = sub nsw i32 %45, 1
  %shr35 = ashr i32 %sub, 5
  %add36 = add nsw i32 %shr35, 1
  %add37 = add nsw i32 %add36, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add37, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul38 = mul i64 4, %conv
  %call39 = call i8* @malloc(i64 %mul38)
  %46 = bitcast i8* %call39 to i32*
  %47 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size40 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 1
  %48 = load i32, i32* %sf_size40, align 4
  %call41 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %46, i32 %48)
  store i32* %call41, i32** %restrict, align 8
  %49 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size42 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 1
  %50 = load i32, i32* %sf_size42, align 4
  %add43 = add nsw i32 %50, 1
  store i32 %add43, i32* %min_set_ord, align 4
  %51 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data44 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 5
  %52 = load i32*, i32** %data44, align 8
  store i32* %52, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.67, %cond.end
  %53 = load i32, i32* %i, align 4
  %54 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count46 = getelementptr inbounds %struct.set_family, %struct.set_family* %54, i32 0, i32 3
  %55 = load i32, i32* %count46, align 4
  %cmp47 = icmp slt i32 %53, %55
  br i1 %cmp47, label %for.body.49, label %for.end.72

for.body.49:                                      ; preds = %for.cond.45
  %56 = load i32*, i32** %p, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx50, align 4
  %shr51 = lshr i32 %57, 16
  %58 = load i32, i32* %min_set_ord, align 4
  %cmp52 = icmp ult i32 %shr51, %58
  br i1 %cmp52, label %if.then.54, label %if.else.58

if.then.54:                                       ; preds = %for.body.49
  %59 = load i32*, i32** %restrict, align 8
  %60 = load i32*, i32** %p, align 8
  %call55 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %59, i32* %60)
  %61 = load i32*, i32** %p, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx56, align 4
  %shr57 = lshr i32 %62, 16
  store i32 %shr57, i32* %min_set_ord, align 4
  br label %if.end.66

if.else.58:                                       ; preds = %for.body.49
  %63 = load i32*, i32** %p, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx59, align 4
  %shr60 = lshr i32 %64, 16
  %65 = load i32, i32* %min_set_ord, align 4
  %cmp61 = icmp eq i32 %shr60, %65
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.else.58
  %66 = load i32*, i32** %restrict, align 8
  %67 = load i32*, i32** %restrict, align 8
  %68 = load i32*, i32** %p, align 8
  %call64 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %66, i32* %67, i32* %68)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.else.58
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.54
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %69 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize68 = getelementptr inbounds %struct.set_family, %struct.set_family* %69, i32 0, i32 0
  %70 = load i32, i32* %wsize68, align 4
  %71 = load i32*, i32** %p, align 8
  %idx.ext69 = sext i32 %70 to i64
  %add.ptr70 = getelementptr inbounds i32, i32* %71, i64 %idx.ext69
  store i32* %add.ptr70, i32** %p, align 8
  %72 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %72, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.45

for.end.72:                                       ; preds = %for.cond.45
  %73 = load i32, i32* %min_set_ord, align 4
  %cmp73 = icmp eq i32 %73, 0
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %for.end.72
  %74 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count76 = getelementptr inbounds %struct.set_family, %struct.set_family* %74, i32 0, i32 3
  store i32 0, i32* %count76, align 4
  %75 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %75, %struct.set_family** %Abar, align 8
  br label %if.end.159

if.else.77:                                       ; preds = %for.end.72
  %76 = load i32, i32* %min_set_ord, align 4
  %cmp78 = icmp eq i32 %76, 1
  br i1 %cmp78, label %if.then.80, label %if.else.96

if.then.80:                                       ; preds = %if.else.77
  %77 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %78 = load i32*, i32** %restrict, align 8
  %call81 = call %struct.set_family* @abs_covered_many(%struct.set_family* %77, i32* %78)
  %call82 = call %struct.set_family* @unate_complement(%struct.set_family* %call81)
  store %struct.set_family* %call82, %struct.set_family** %Abar, align 8
  %79 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %79)
  %80 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %data83 = getelementptr inbounds %struct.set_family, %struct.set_family* %80, i32 0, i32 5
  %81 = load i32*, i32** %data83, align 8
  store i32* %81, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.90, %if.then.80
  %82 = load i32, i32* %i, align 4
  %83 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %count85 = getelementptr inbounds %struct.set_family, %struct.set_family* %83, i32 0, i32 3
  %84 = load i32, i32* %count85, align 4
  %cmp86 = icmp slt i32 %82, %84
  br i1 %cmp86, label %for.body.88, label %for.end.95

for.body.88:                                      ; preds = %for.cond.84
  %85 = load i32*, i32** %p, align 8
  %86 = load i32*, i32** %p, align 8
  %87 = load i32*, i32** %restrict, align 8
  %call89 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %85, i32* %86, i32* %87)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.88
  %88 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %wsize91 = getelementptr inbounds %struct.set_family, %struct.set_family* %88, i32 0, i32 0
  %89 = load i32, i32* %wsize91, align 4
  %90 = load i32*, i32** %p, align 8
  %idx.ext92 = sext i32 %89 to i64
  %add.ptr93 = getelementptr inbounds i32, i32* %90, i64 %idx.ext92
  store i32* %add.ptr93, i32** %p, align 8
  %91 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %91, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.84

for.end.95:                                       ; preds = %for.cond.84
  br label %if.end.158

if.else.96:                                       ; preds = %if.else.77
  %92 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %93 = load i32*, i32** %restrict, align 8
  %call97 = call i32 @abs_select_restricted(%struct.set_family* %92, i32* %93)
  store i32 %call97, i32* %max_i, align 4
  %94 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %95 = load i32, i32* %max_i, align 4
  %call98 = call %struct.set_family* @abs_covered(%struct.set_family* %94, i32 %95)
  %call99 = call %struct.set_family* @unate_complement(%struct.set_family* %call98)
  store %struct.set_family* %call99, %struct.set_family** %Abar, align 8
  %96 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %data100 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 5
  %97 = load i32*, i32** %data100, align 8
  store i32* %97, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.113, %if.else.96
  %98 = load i32, i32* %i, align 4
  %99 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %count102 = getelementptr inbounds %struct.set_family, %struct.set_family* %99, i32 0, i32 3
  %100 = load i32, i32* %count102, align 4
  %cmp103 = icmp slt i32 %98, %100
  br i1 %cmp103, label %for.body.105, label %for.end.118

for.body.105:                                     ; preds = %for.cond.101
  %101 = load i32, i32* %max_i, align 4
  %and106 = and i32 %101, 31
  %shl107 = shl i32 1, %and106
  %102 = load i32, i32* %max_i, align 4
  %shr108 = ashr i32 %102, 5
  %add109 = add nsw i32 %shr108, 1
  %idxprom110 = sext i32 %add109 to i64
  %103 = load i32*, i32** %p, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %103, i64 %idxprom110
  %104 = load i32, i32* %arrayidx111, align 4
  %or112 = or i32 %104, %shl107
  store i32 %or112, i32* %arrayidx111, align 4
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.105
  %105 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %wsize114 = getelementptr inbounds %struct.set_family, %struct.set_family* %105, i32 0, i32 0
  %106 = load i32, i32* %wsize114, align 4
  %107 = load i32*, i32** %p, align 8
  %idx.ext115 = sext i32 %106 to i64
  %add.ptr116 = getelementptr inbounds i32, i32* %107, i64 %idx.ext115
  store i32* %add.ptr116, i32** %p, align 8
  %108 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %108, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.101

for.end.118:                                      ; preds = %for.cond.101
  %109 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data119 = getelementptr inbounds %struct.set_family, %struct.set_family* %109, i32 0, i32 5
  %110 = load i32*, i32** %data119, align 8
  store i32* %110, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.150, %for.end.118
  %111 = load i32, i32* %i, align 4
  %112 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count121 = getelementptr inbounds %struct.set_family, %struct.set_family* %112, i32 0, i32 3
  %113 = load i32, i32* %count121, align 4
  %cmp122 = icmp slt i32 %111, %113
  br i1 %cmp122, label %for.body.124, label %for.end.155

for.body.124:                                     ; preds = %for.cond.120
  %114 = load i32, i32* %max_i, align 4
  %shr125 = ashr i32 %114, 5
  %add126 = add nsw i32 %shr125, 1
  %idxprom127 = sext i32 %add126 to i64
  %115 = load i32*, i32** %p, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %115, i64 %idxprom127
  %116 = load i32, i32* %arrayidx128, align 4
  %117 = load i32, i32* %max_i, align 4
  %and129 = and i32 %117, 31
  %shl130 = shl i32 1, %and129
  %and131 = and i32 %116, %shl130
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.149

if.then.133:                                      ; preds = %for.body.124
  %118 = load i32, i32* %max_i, align 4
  %and134 = and i32 %118, 31
  %shl135 = shl i32 1, %and134
  %neg = xor i32 %shl135, -1
  %119 = load i32, i32* %max_i, align 4
  %shr136 = ashr i32 %119, 5
  %add137 = add nsw i32 %shr136, 1
  %idxprom138 = sext i32 %add137 to i64
  %120 = load i32*, i32** %p, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %120, i64 %idxprom138
  %121 = load i32, i32* %arrayidx139, align 4
  %and140 = and i32 %121, %neg
  store i32 %and140, i32* %arrayidx139, align 4
  %122 = load i32*, i32** %p, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %122, i64 0
  %123 = load i32, i32* %arrayidx141, align 4
  %shr142 = lshr i32 %123, 16
  %sub143 = sub i32 %shr142, 1
  store i32 %sub143, i32* %j, align 4
  %124 = load i32*, i32** %p, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %124, i64 0
  %125 = load i32, i32* %arrayidx144, align 4
  %and145 = and i32 %125, 65535
  store i32 %and145, i32* %arrayidx144, align 4
  %126 = load i32, i32* %j, align 4
  %shl146 = shl i32 %126, 16
  %127 = load i32*, i32** %p, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %127, i64 0
  %128 = load i32, i32* %arrayidx147, align 4
  %or148 = or i32 %128, %shl146
  store i32 %or148, i32* %arrayidx147, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.133, %for.body.124
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %129 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize151 = getelementptr inbounds %struct.set_family, %struct.set_family* %129, i32 0, i32 0
  %130 = load i32, i32* %wsize151, align 4
  %131 = load i32*, i32** %p, align 8
  %idx.ext152 = sext i32 %130 to i64
  %add.ptr153 = getelementptr inbounds i32, i32* %131, i64 %idx.ext152
  store i32* %add.ptr153, i32** %p, align 8
  %132 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %132, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.120

for.end.155:                                      ; preds = %for.cond.120
  %133 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  %134 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call156 = call %struct.set_family* @unate_complement(%struct.set_family* %134)
  %call157 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %133, %struct.set_family* %call156)
  store %struct.set_family* %call157, %struct.set_family** %Abar, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %for.end.155, %for.end.95
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.75
  %135 = load i32*, i32** %restrict, align 8
  %tobool160 = icmp ne i32* %135, null
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.159
  %136 = load i32*, i32** %restrict, align 8
  %137 = bitcast i32* %136 to i8*
  call void @free(i8* %137)
  store i32* null, i32** %restrict, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end.159
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %for.end
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then
  %138 = load %struct.set_family*, %struct.set_family** %Abar, align 8
  ret %struct.set_family* %138
}

declare void @sf_free(...) #1

declare i32* @set_copy(...) #1

declare i32* @set_or(...) #1

declare %struct.set_family* @sf_append(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @exact_minimum_cover(%struct.set_family* %T) #0 {
entry:
  %retval = alloca %struct.set_family*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p1 = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %lev = alloca i32, align 4
  %lvl = alloca i32, align 4
  %nlast = alloca i32*, align 8
  %temp = alloca %struct.set_family*, align 8
  %start = alloca i64, align 8
  %stack = alloca [32 x %struct.anon], align 16
  %i_ = alloca i32, align 4
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %start, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size, align 4
  %call1 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %3)
  store %struct.set_family* %call1, %struct.set_family** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  store i32 %5, i32* %n, align 4
  store i32 0, i32* %lev, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %n, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %n, align 4
  %shr = ashr i32 %7, 1
  store i32 %shr, i32* %n, align 4
  %8 = load i32, i32* %lev, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %lev, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call4 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %9)
  %call5 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @lex_sort to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call4)
  store %struct.set_family* %call5, %struct.set_family** %T.addr, align 8
  store i32 1, i32* %n, align 4
  %10 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size6 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 1
  %11 = load i32, i32* %sf_size6, align 4
  %call7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %11)
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 0
  %sf = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store %struct.set_family* %call7, %struct.set_family** %sf, align 8
  %12 = load i32, i32* %lev, align 4
  %arrayidx8 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 0
  %level = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx8, i32 0, i32 1
  store i32 %12, i32* %level, align 4
  %arrayidx9 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 0
  %sf10 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 0
  %13 = load %struct.set_family*, %struct.set_family** %sf10, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 5
  %14 = load i32*, i32** %data, align 8
  %arrayidx11 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 0
  %sf12 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx11, i32 0, i32 0
  %15 = load %struct.set_family*, %struct.set_family** %sf12, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %16 = load i32, i32* %wsize, align 4
  %arrayidx13 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 0
  %sf14 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx13, i32 0, i32 0
  %17 = load %struct.set_family*, %struct.set_family** %sf14, align 8
  %count15 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 3
  %18 = load i32, i32* %count15, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %count15, align 4
  %mul = mul nsw i32 %16, %18
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %14, i64 %idx.ext
  %19 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size17 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 1
  %20 = load i32, i32* %sf_size17, align 4
  %call18 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %add.ptr, i32 %20)
  %21 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data19 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 5
  %22 = load i32*, i32** %data19, align 8
  %23 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize20 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 0
  %24 = load i32, i32* %wsize20, align 4
  %25 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count21 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count21, align 4
  %sub = sub nsw i32 %26, 1
  %mul22 = mul nsw i32 %24, %sub
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i32, i32* %22, i64 %idx.ext23
  store i32* %add.ptr24, i32** %nlast, align 8
  %27 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data25 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %28 = load i32*, i32** %data25, align 8
  store i32* %28, i32** %p, align 8
  %29 = load i32*, i32** %p, align 8
  %30 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count26 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 3
  %31 = load i32, i32* %count26, align 4
  %32 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize27 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize27, align 4
  %mul28 = mul nsw i32 %31, %33
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i32, i32* %29, i64 %idx.ext29
  store i32* %add.ptr30, i32** %last, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.147, %for.end
  %34 = load i32*, i32** %p, align 8
  %35 = load i32*, i32** %last, align 8
  %cmp32 = icmp ult i32* %34, %35
  br i1 %cmp32, label %for.body.33, label %for.end.151

for.body.33:                                      ; preds = %for.cond.31
  %36 = load i32*, i32** %p, align 8
  %call34 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %36)
  %37 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size35 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 1
  %38 = load i32, i32* %sf_size35, align 4
  %call36 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %call34, i32 %38)
  store %struct.set_family* %call36, %struct.set_family** %temp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.62, %for.body.33
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size38 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 1
  %41 = load i32, i32* %sf_size38, align 4
  %cmp39 = icmp slt i32 %39, %41
  br i1 %cmp39, label %for.body.40, label %for.end.64

for.body.40:                                      ; preds = %for.cond.37
  %42 = load i32, i32* %i, align 4
  %shr41 = ashr i32 %42, 5
  %add = add nsw i32 %shr41, 1
  %idxprom = sext i32 %add to i64
  %43 = load i32*, i32** %p, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %43, i64 %idxprom
  %44 = load i32, i32* %arrayidx42, align 4
  %45 = load i32, i32* %i, align 4
  %and = and i32 %45, 31
  %shl = shl i32 1, %and
  %and43 = and i32 %44, %shl
  %tobool = icmp ne i32 %and43, 0
  br i1 %tobool, label %if.then.44, label %if.end.61

if.then.44:                                       ; preds = %for.body.40
  %46 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %data45 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 5
  %47 = load i32*, i32** %data45, align 8
  %48 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %wsize46 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 0
  %49 = load i32, i32* %wsize46, align 4
  %50 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count47 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 3
  %51 = load i32, i32* %count47, align 4
  %inc48 = add nsw i32 %51, 1
  store i32 %inc48, i32* %count47, align 4
  %mul49 = mul nsw i32 %49, %51
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i32, i32* %47, i64 %idx.ext50
  %52 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size52 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 1
  %53 = load i32, i32* %sf_size52, align 4
  %call53 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %add.ptr51, i32 %53)
  store i32* %call53, i32** %p1, align 8
  %54 = load i32, i32* %i, align 4
  %and54 = and i32 %54, 31
  %shl55 = shl i32 1, %and54
  %neg = xor i32 %shl55, -1
  %55 = load i32, i32* %i, align 4
  %shr56 = ashr i32 %55, 5
  %add57 = add nsw i32 %shr56, 1
  %idxprom58 = sext i32 %add57 to i64
  %56 = load i32*, i32** %p1, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %56, i64 %idxprom58
  %57 = load i32, i32* %arrayidx59, align 4
  %and60 = and i32 %57, %neg
  store i32 %and60, i32* %arrayidx59, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.44, %for.body.40
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %58 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %58, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.37

for.end.64:                                       ; preds = %for.cond.37
  %59 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %60 = load i32, i32* %n, align 4
  %idxprom65 = sext i32 %60 to i64
  %arrayidx66 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom65
  %sf67 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx66, i32 0, i32 0
  store %struct.set_family* %59, %struct.set_family** %sf67, align 8
  %61 = load i32, i32* %lev, align 4
  %62 = load i32, i32* %n, align 4
  %inc68 = add nsw i32 %62, 1
  store i32 %inc68, i32* %n, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom69
  %level71 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx70, i32 0, i32 1
  store i32 %61, i32* %level71, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.130, %for.end.64
  %63 = load i32, i32* %n, align 4
  %cmp72 = icmp sgt i32 %63, 1
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %64 = load i32, i32* %n, align 4
  %sub73 = sub nsw i32 %64, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom74
  %level76 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx75, i32 0, i32 1
  %65 = load i32, i32* %level76, align 4
  %66 = load i32, i32* %n, align 4
  %sub77 = sub nsw i32 %66, 2
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom78
  %level80 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx79, i32 0, i32 1
  %67 = load i32, i32* %level80, align 4
  %cmp81 = icmp eq i32 %65, %67
  br i1 %cmp81, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %68 = load i32*, i32** %p, align 8
  %69 = load i32*, i32** %nlast, align 8
  %cmp82 = icmp eq i32* %68, %69
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %70 = phi i1 [ true, %land.rhs ], [ %cmp82, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %71 = phi i1 [ false, %while.cond ], [ %70, %lor.end ]
  br i1 %71, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %72 = load i32, i32* %n, align 4
  %sub83 = sub nsw i32 %72, 1
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom84
  %sf86 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx85, i32 0, i32 0
  %73 = load %struct.set_family*, %struct.set_family** %sf86, align 8
  %74 = load i32, i32* %n, align 4
  %sub87 = sub nsw i32 %74, 2
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom88
  %sf90 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx89, i32 0, i32 0
  %75 = load %struct.set_family*, %struct.set_family** %sf90, align 8
  %call91 = call %struct.set_family* @unate_intersect(%struct.set_family* %73, %struct.set_family* %75, i32 0)
  store %struct.set_family* %call91, %struct.set_family** %temp, align 8
  %76 = load i32, i32* %n, align 4
  %sub92 = sub nsw i32 %76, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom93
  %level95 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx94, i32 0, i32 1
  %77 = load i32, i32* %level95, align 4
  %78 = load i32, i32* %n, align 4
  %sub96 = sub nsw i32 %78, 2
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom97
  %level99 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx98, i32 0, i32 1
  %79 = load i32, i32* %level99, align 4
  %cmp100 = icmp slt i32 %77, %79
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %80 = load i32, i32* %n, align 4
  %sub101 = sub nsw i32 %80, 1
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom102
  %level104 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx103, i32 0, i32 1
  %81 = load i32, i32* %level104, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %82 = load i32, i32* %n, align 4
  %sub105 = sub nsw i32 %82, 2
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom106
  %level108 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx107, i32 0, i32 1
  %83 = load i32, i32* %level108, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %81, %cond.true ], [ %83, %cond.false ]
  %sub109 = sub nsw i32 %cond, 1
  store i32 %sub109, i32* %lvl, align 4
  %84 = load i32, i32* @debug, align 4
  %and110 = and i32 %84, 2048
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %land.lhs.true, label %if.end.130

land.lhs.true:                                    ; preds = %cond.end
  %85 = load i32, i32* %lvl, align 4
  %cmp112 = icmp slt i32 %85, 10
  br i1 %cmp112, label %if.then.113, label %if.end.130

if.then.113:                                      ; preds = %land.lhs.true
  %86 = load i32, i32* %lvl, align 4
  %87 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count114 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 3
  %88 = load i32, i32* %count114, align 4
  %89 = load i32, i32* %n, align 4
  %sub115 = sub nsw i32 %89, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom116
  %sf118 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx117, i32 0, i32 0
  %90 = load %struct.set_family*, %struct.set_family** %sf118, align 8
  %count119 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 3
  %91 = load i32, i32* %count119, align 4
  %92 = load i32, i32* %n, align 4
  %sub120 = sub nsw i32 %92, 2
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx122 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom121
  %sf123 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx122, i32 0, i32 0
  %93 = load %struct.set_family*, %struct.set_family** %sf123, align 8
  %count124 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %94 = load i32, i32* %count124, align 4
  %call125 = call i64 (...) @util_cpu_time()
  %95 = load i64, i64* %start, align 8
  %sub126 = sub nsw i64 %call125, %95
  %call127 = call i8* @util_print_time(i64 %sub126)
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %86, i32 %88, i32 %91, i32 %94, i8* %call127)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call129 = call i32 @fflush(%struct._IO_FILE* %96)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.113, %land.lhs.true, %cond.end
  %97 = load i32, i32* %n, align 4
  %sub131 = sub nsw i32 %97, 2
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom132
  %sf134 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx133, i32 0, i32 0
  %98 = load %struct.set_family*, %struct.set_family** %sf134, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %98)
  %99 = load i32, i32* %n, align 4
  %sub135 = sub nsw i32 %99, 1
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom136
  %sf138 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx137, i32 0, i32 0
  %100 = load %struct.set_family*, %struct.set_family** %sf138, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %100)
  %101 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %102 = load i32, i32* %n, align 4
  %sub139 = sub nsw i32 %102, 2
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom140
  %sf142 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx141, i32 0, i32 0
  store %struct.set_family* %101, %struct.set_family** %sf142, align 8
  %103 = load i32, i32* %lvl, align 4
  %104 = load i32, i32* %n, align 4
  %sub143 = sub nsw i32 %104, 2
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 %idxprom144
  %level146 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx145, i32 0, i32 1
  store i32 %103, i32* %level146, align 4
  %105 = load i32, i32* %n, align 4
  %dec = add nsw i32 %105, -1
  store i32 %dec, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.inc.147

for.inc.147:                                      ; preds = %while.end
  %106 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize148 = getelementptr inbounds %struct.set_family, %struct.set_family* %106, i32 0, i32 0
  %107 = load i32, i32* %wsize148, align 4
  %108 = load i32*, i32** %p, align 8
  %idx.ext149 = sext i32 %107 to i64
  %add.ptr150 = getelementptr inbounds i32, i32* %108, i64 %idx.ext149
  store i32* %add.ptr150, i32** %p, align 8
  br label %for.cond.31

for.end.151:                                      ; preds = %for.cond.31
  %arrayidx152 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %stack, i32 0, i64 0
  %sf153 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx152, i32 0, i32 0
  %109 = load %struct.set_family*, %struct.set_family** %sf153, align 8
  store %struct.set_family* %109, %struct.set_family** %temp, align 8
  %110 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size154 = getelementptr inbounds %struct.set_family, %struct.set_family* %110, i32 0, i32 1
  %111 = load i32, i32* %sf_size154, align 4
  %cmp155 = icmp sle i32 %111, 32
  br i1 %cmp155, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %for.end.151
  br label %cond.end.163

cond.false.157:                                   ; preds = %for.end.151
  %112 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size158 = getelementptr inbounds %struct.set_family, %struct.set_family* %112, i32 0, i32 1
  %113 = load i32, i32* %sf_size158, align 4
  %sub159 = sub nsw i32 %113, 1
  %shr160 = ashr i32 %sub159, 5
  %add161 = add nsw i32 %shr160, 1
  %add162 = add nsw i32 %add161, 1
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.157, %cond.true.156
  %cond164 = phi i32 [ 2, %cond.true.156 ], [ %add162, %cond.false.157 ]
  %conv = sext i32 %cond164 to i64
  %mul165 = mul i64 4, %conv
  %call166 = call i8* @malloc(i64 %mul165)
  %114 = bitcast i8* %call166 to i32*
  %115 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size167 = getelementptr inbounds %struct.set_family, %struct.set_family* %115, i32 0, i32 1
  %116 = load i32, i32* %sf_size167, align 4
  %call168 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %114, i32 %116)
  %117 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %sf_size169 = getelementptr inbounds %struct.set_family, %struct.set_family* %117, i32 0, i32 1
  %118 = load i32, i32* %sf_size169, align 4
  %call170 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %call168, i32 %118)
  store i32* %call170, i32** %p1, align 8
  %119 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %data171 = getelementptr inbounds %struct.set_family, %struct.set_family* %119, i32 0, i32 5
  %120 = load i32*, i32** %data171, align 8
  store i32* %120, i32** %p, align 8
  %121 = load i32*, i32** %p, align 8
  %122 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count172 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i32 0, i32 3
  %123 = load i32, i32* %count172, align 4
  %124 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %wsize173 = getelementptr inbounds %struct.set_family, %struct.set_family* %124, i32 0, i32 0
  %125 = load i32, i32* %wsize173, align 4
  %mul174 = mul nsw i32 %123, %125
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds i32, i32* %121, i64 %idx.ext175
  store i32* %add.ptr176, i32** %last, align 8
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.197, %cond.end.163
  %126 = load i32*, i32** %p, align 8
  %127 = load i32*, i32** %last, align 8
  %cmp178 = icmp ult i32* %126, %127
  br i1 %cmp178, label %for.body.180, label %for.end.201

for.body.180:                                     ; preds = %for.cond.177
  %128 = load i32*, i32** %p1, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %128, i64 0
  %129 = load i32, i32* %arrayidx181, align 4
  %and182 = and i32 %129, 1023
  store i32 %and182, i32* %i_, align 4
  %130 = load i32*, i32** %p, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %130, i64 0
  %131 = load i32, i32* %arrayidx183, align 4
  %and184 = and i32 %131, -1024
  store i32 %and184, i32* %arrayidx183, align 4
  %132 = load i32, i32* %i_, align 4
  %133 = load i32*, i32** %p, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %133, i64 0
  %134 = load i32, i32* %arrayidx185, align 4
  %or = or i32 %134, %132
  store i32 %or, i32* %arrayidx185, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.180
  %135 = load i32, i32* %i_, align 4
  %idxprom186 = sext i32 %135 to i64
  %136 = load i32*, i32** %p1, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %136, i64 %idxprom186
  %137 = load i32, i32* %arrayidx187, align 4
  %138 = load i32, i32* %i_, align 4
  %idxprom188 = sext i32 %138 to i64
  %139 = load i32*, i32** %p, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %139, i64 %idxprom188
  %140 = load i32, i32* %arrayidx189, align 4
  %neg190 = xor i32 %140, -1
  %and191 = and i32 %137, %neg190
  %141 = load i32, i32* %i_, align 4
  %idxprom192 = sext i32 %141 to i64
  %142 = load i32*, i32** %p, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %142, i64 %idxprom192
  store i32 %and191, i32* %arrayidx193, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %143 = load i32, i32* %i_, align 4
  %dec194 = add nsw i32 %143, -1
  store i32 %dec194, i32* %i_, align 4
  %cmp195 = icmp sgt i32 %dec194, 0
  br i1 %cmp195, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.197

for.inc.197:                                      ; preds = %do.end
  %144 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %wsize198 = getelementptr inbounds %struct.set_family, %struct.set_family* %144, i32 0, i32 0
  %145 = load i32, i32* %wsize198, align 4
  %146 = load i32*, i32** %p, align 8
  %idx.ext199 = sext i32 %145 to i64
  %add.ptr200 = getelementptr inbounds i32, i32* %146, i64 %idx.ext199
  store i32* %add.ptr200, i32** %p, align 8
  br label %for.cond.177

for.end.201:                                      ; preds = %for.cond.177
  %147 = load i32*, i32** %p1, align 8
  %tobool202 = icmp ne i32* %147, null
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %for.end.201
  %148 = load i32*, i32** %p1, align 8
  %149 = bitcast i32* %148 to i8*
  call void @free(i8* %149)
  store i32* null, i32** %p1, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %for.end.201
  %150 = load i32, i32* @debug, align 4
  %and205 = and i32 %150, 4096
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.end.204
  %call208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
  %151 = load %struct.set_family*, %struct.set_family** %temp, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_print to void (%struct.set_family*, ...)*)(%struct.set_family* %151)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.end.204
  %152 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %152)
  %153 = load %struct.set_family*, %struct.set_family** %temp, align 8
  store %struct.set_family* %153, %struct.set_family** %retval
  br label %return

return:                                           ; preds = %if.end.209, %if.then
  %154 = load %struct.set_family*, %struct.set_family** %retval
  ret %struct.set_family* %154
}

declare i64 @util_cpu_time(...) #1

declare %struct.set_family* @lex_sort(...) #1

declare %struct.set_family* @sf_save(...) #1

declare i32* @set_fill(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @util_print_time(i64) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @sf_print(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @unate_intersect(%struct.set_family* %A, %struct.set_family* %B, i32 %largest_only) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %largest_only.addr = alloca i32, align 4
  %pi = alloca i32*, align 8
  %pj = alloca i32*, align 8
  %lasti = alloca i32*, align 8
  %lastj = alloca i32*, align 8
  %pt = alloca i32*, align 8
  %T = alloca %struct.set_family*, align 8
  %Tsave = alloca %struct.set_family*, align 8
  %save = alloca i32, align 4
  %maxord = alloca i32, align 4
  %ord = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  store i32 %largest_only, i32* %largest_only.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 500, i32 %1)
  store %struct.set_family* %call, %struct.set_family** %T, align 8
  store %struct.set_family* null, %struct.set_family** %Tsave, align 8
  store i32 0, i32* %maxord, align 4
  %2 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 5
  %3 = load i32*, i32** %data, align 8
  store i32* %3, i32** %pt, align 8
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data1, align 8
  store i32* %5, i32** %pi, align 8
  %6 = load i32*, i32** %pi, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %lasti, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %11 = load i32*, i32** %pi, align 8
  %12 = load i32*, i32** %lasti, align 8
  %cmp = icmp ult i32* %11, %12
  br i1 %cmp, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %13 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data2 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 5
  %14 = load i32*, i32** %data2, align 8
  store i32* %14, i32** %pj, align 8
  %15 = load i32*, i32** %pj, align 8
  %16 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 3
  %17 = load i32, i32* %count3, align 4
  %18 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 0
  %19 = load i32, i32* %wsize4, align 4
  %mul5 = mul nsw i32 %17, %19
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %15, i64 %idx.ext6
  store i32* %add.ptr7, i32** %lastj, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %20 = load i32*, i32** %pj, align 8
  %21 = load i32*, i32** %lastj, align 8
  %cmp9 = icmp ult i32* %20, %21
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %22 = load i32*, i32** %pt, align 8
  %23 = load i32*, i32** %pi, align 8
  %24 = load i32*, i32** %pj, align 8
  %call11 = call i32 (i32*, i32*, i32*, ...) bitcast (i32 (...)* @set_andp to i32 (i32*, i32*, i32*, ...)*)(i32* %22, i32* %23, i32* %24)
  store i32 %call11, i32* %save, align 4
  %25 = load i32, i32* %save, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body.10
  %26 = load i32, i32* %largest_only.addr, align 4
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %if.then, label %if.end.25

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32*, i32** %pt, align 8
  %call13 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %27)
  store i32 %call13, i32* %ord, align 4
  %28 = load i32, i32* %maxord, align 4
  %cmp14 = icmp sgt i32 %call13, %28
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %29 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %cmp16 = icmp ne %struct.set_family* %29, null
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.15
  %30 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %30)
  store %struct.set_family* null, %struct.set_family** %Tsave, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.15
  %31 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data18 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 5
  %32 = load i32*, i32** %data18, align 8
  store i32* %32, i32** %pt, align 8
  %33 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count19 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 3
  store i32 0, i32* %count19, align 4
  %34 = load i32*, i32** %pt, align 8
  %35 = load i32*, i32** %pi, align 8
  %36 = load i32*, i32** %pj, align 8
  %call20 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %34, i32* %35, i32* %36)
  %37 = load i32, i32* %ord, align 4
  store i32 %37, i32* %maxord, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %38 = load i32, i32* %ord, align 4
  %39 = load i32, i32* %maxord, align 4
  %cmp21 = icmp slt i32 %38, %39
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  store i32 0, i32* %save, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %for.body.10
  %40 = load i32, i32* %save, align 4
  %tobool26 = icmp ne i32 %40, 0
  br i1 %tobool26, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %if.end.25
  %41 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count28 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 3
  %42 = load i32, i32* %count28, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %count28, align 4
  %43 = load %struct.set_family*, %struct.set_family** %T, align 8
  %capacity = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 2
  %44 = load i32, i32* %capacity, align 4
  %cmp29 = icmp sge i32 %inc, %44
  br i1 %cmp29, label %if.then.30, label %if.else.37

if.then.30:                                       ; preds = %if.then.27
  %45 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call31 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %45)
  store %struct.set_family* %call31, %struct.set_family** %T, align 8
  %46 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %cmp32 = icmp eq %struct.set_family* %46, null
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %47 = load %struct.set_family*, %struct.set_family** %T, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %48 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %49 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call33 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %48, %struct.set_family* %49)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.set_family* [ %47, %cond.true ], [ %call33, %cond.false ]
  store %struct.set_family* %cond, %struct.set_family** %Tsave, align 8
  %50 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size34 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 1
  %51 = load i32, i32* %sf_size34, align 4
  %call35 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 500, i32 %51)
  store %struct.set_family* %call35, %struct.set_family** %T, align 8
  %52 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data36 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 5
  %53 = load i32*, i32** %data36, align 8
  store i32* %53, i32** %pt, align 8
  br label %if.end.41

if.else.37:                                       ; preds = %if.then.27
  %54 = load %struct.set_family*, %struct.set_family** %T, align 8
  %wsize38 = getelementptr inbounds %struct.set_family, %struct.set_family* %54, i32 0, i32 0
  %55 = load i32, i32* %wsize38, align 4
  %56 = load i32*, i32** %pt, align 8
  %idx.ext39 = sext i32 %55 to i64
  %add.ptr40 = getelementptr inbounds i32, i32* %56, i64 %idx.ext39
  store i32* %add.ptr40, i32** %pt, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %cond.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %57 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize43 = getelementptr inbounds %struct.set_family, %struct.set_family* %57, i32 0, i32 0
  %58 = load i32, i32* %wsize43, align 4
  %59 = load i32*, i32** %pj, align 8
  %idx.ext44 = sext i32 %58 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %59, i64 %idx.ext44
  store i32* %add.ptr45, i32** %pj, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %60 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize47 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 0
  %61 = load i32, i32* %wsize47, align 4
  %62 = load i32*, i32** %pi, align 8
  %idx.ext48 = sext i32 %61 to i64
  %add.ptr49 = getelementptr inbounds i32, i32* %62, i64 %idx.ext48
  store i32* %add.ptr49, i32** %pi, align 8
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %63 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call51 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %63)
  store %struct.set_family* %call51, %struct.set_family** %T, align 8
  %64 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %cmp52 = icmp eq %struct.set_family* %64, null
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %for.end.50
  %65 = load %struct.set_family*, %struct.set_family** %T, align 8
  br label %cond.end.56

cond.false.54:                                    ; preds = %for.end.50
  %66 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %67 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call55 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %66, %struct.set_family* %67)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.53
  %cond57 = phi %struct.set_family* [ %65, %cond.true.53 ], [ %call55, %cond.false.54 ]
  store %struct.set_family* %cond57, %struct.set_family** %Tsave, align 8
  %68 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  ret %struct.set_family* %68
}

declare i32 @set_andp(...) #1

declare i32* @set_and(...) #1

declare %struct.set_family* @sf_contain(...) #1

declare %struct.set_family* @sf_union(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @abs_covered(%struct.set_family* %A, i32 %pick) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %pick.addr = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %Aprime = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 %pick, i32* %pick.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %1, i32 %3)
  store %struct.set_family* %call, %struct.set_family** %Aprime, align 8
  %4 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %pdest, align 8
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data1, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count2, align 4
  %11 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
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
  %15 = load i32, i32* %pick.addr, align 4
  %shr = ashr i32 %15, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %16 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %18 = load i32, i32* %pick.addr, align 4
  %and = and i32 %18, 31
  %shl = shl i32 1, %and
  %and3 = and i32 %17, %shl
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %19 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 %20, 1023
  store i32 %and5, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %21 = load i32, i32* %i_, align 4
  %idxprom6 = sext i32 %21 to i64
  %22 = load i32*, i32** %p, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 %idxprom6
  %23 = load i32, i32* %arrayidx7, align 4
  %24 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %24 to i64
  %25 = load i32*, i32** %pdest, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %25, i64 %idxprom8
  store i32 %23, i32* %arrayidx9, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %26 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i_, align 4
  %cmp10 = icmp sge i32 %dec, 0
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  %count11 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 3
  %28 = load i32, i32* %count11, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %count11, align 4
  %29 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  %wsize12 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 0
  %30 = load i32, i32* %wsize12, align 4
  %31 = load i32*, i32** %pdest, align 8
  %idx.ext13 = sext i32 %30 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %31, i64 %idx.ext13
  store i32* %add.ptr14, i32** %pdest, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize15 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize15, align 4
  %34 = load i32*, i32** %p, align 8
  %idx.ext16 = sext i32 %33 to i64
  %add.ptr17 = getelementptr inbounds i32, i32* %34, i64 %idx.ext16
  store i32* %add.ptr17, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  ret %struct.set_family* %35
}

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @abs_covered_many(%struct.set_family* %A, i32* %pick_set) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %pick_set.addr = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %Aprime = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %pick_set, i32** %pick_set.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %1, i32 %3)
  store %struct.set_family* %call, %struct.set_family** %Aprime, align 8
  %4 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %pdest, align 8
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data1, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count2, align 4
  %11 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
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
  %16 = load i32*, i32** %pick_set.addr, align 8
  %call3 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %15, i32* %16)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx, align 4
  %and = and i32 %18, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %19 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx4, align 4
  %22 = load i32, i32* %i_, align 4
  %idxprom5 = sext i32 %22 to i64
  %23 = load i32*, i32** %pdest, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %23, i64 %idxprom5
  store i32 %21, i32* %arrayidx6, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i_, align 4
  %cmp7 = icmp sge i32 %dec, 0
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count8, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %count8, align 4
  %27 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  %wsize9 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize9, align 4
  %29 = load i32*, i32** %pdest, align 8
  %idx.ext10 = sext i32 %28 to i64
  %add.ptr11 = getelementptr inbounds i32, i32* %29, i64 %idx.ext10
  store i32* %add.ptr11, i32** %pdest, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize12 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize12, align 4
  %32 = load i32*, i32** %p, align 8
  %idx.ext13 = sext i32 %31 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %32, i64 %idx.ext13
  store i32* %add.ptr14, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.set_family*, %struct.set_family** %Aprime, align 8
  ret %struct.set_family* %33
}

declare i32 @setp_disjoint(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @abs_select_restricted(%struct.set_family* %A, i32* %restrict) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %restrict.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %best_var = alloca i32, align 4
  %best_count = alloca i32, align 4
  %count = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %restrict, i32** %restrict.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %1 = load i32*, i32** %restrict.addr, align 8
  %call = call i32* (%struct.set_family*, i32*, ...) bitcast (i32* (...)* @sf_count_restricted to i32* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %0, i32* %1)
  store i32* %call, i32** %count, align 8
  store i32 -1, i32* %best_var, align 4
  store i32 0, i32* %best_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %count, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %best_count, align 4
  %cmp1 = icmp sgt i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %best_var, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i32*, i32** %count, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom2
  %12 = load i32, i32* %arrayidx3, align 4
  store i32 %12, i32* %best_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32*, i32** %count, align 8
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.end
  %15 = load i32*, i32** %count, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* %16)
  store i32* null, i32** %count, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.end
  %17 = load i32, i32* %best_var, align 4
  %cmp6 = icmp eq i32 %17, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %18 = load i32, i32* %best_var, align 4
  ret i32 %18
}

declare i32* @sf_count_restricted(...) #1

declare void @fatal(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
