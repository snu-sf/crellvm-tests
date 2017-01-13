; ModuleID = './MultiSource.Benchmarks.MallocBench/7.espresso.compl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@complement.compl_level = internal global i32 0, align 4
@debug = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"COMPLEMENT\00", align 1
@cube = external global %struct.cube_struct, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"exit COMPLEMENT\00", align 1
@simp_comp.simplify_level = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SIMPCOMP\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"exit SIMPCOMP (new)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"exit SIMPCOMP (compl)\00", align 1
@simplify.simplify_level = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"SIMPLIFY\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"exit SIMPLIFY\00", align 1
@cdata = external global %struct.cdata_struct, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"compl_merge: left %d, right %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s (cl)\0A%s (cr)\0ALeft is\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Right is\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Result %d\0A\00", align 1
@verbose_debug = external global i32, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"compl: ON-set and OFF-set are not orthogonal\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @complement(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  %Tbar = alloca %struct.set_family*, align 8
  %Tl = alloca %struct.set_family*, align 8
  %Tr = alloca %struct.set_family*, align 8
  %lifting = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %T.addr, align 8
  %2 = load i32, i32* @complement.compl_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @complement.compl_level, align 4
  call void (i32**, i8*, i32, ...) bitcast (void (...)* @debug_print to void (i32**, i8*, i32, ...)*)(i32** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32**, i32*** %T.addr, align 8
  %call = call i32 @compl_special_cases(i32** %3, %struct.set_family** %Tbar)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then.1, label %if.end.54

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
  %call20 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %12, i32* %13, i32* %14, i32 1)
  store i32 %call20, i32* %best, align 4
  %15 = load i32**, i32*** %T.addr, align 8
  %16 = load i32*, i32** %cl, align 8
  %17 = load i32, i32* %best, align 4
  %call21 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %15, i32* %16, i32 %17)
  %call22 = call %struct.set_family* @complement(i32** %call21)
  store %struct.set_family* %call22, %struct.set_family** %Tl, align 8
  %18 = load i32**, i32*** %T.addr, align 8
  %19 = load i32*, i32** %cr, align 8
  %20 = load i32, i32* %best, align 4
  %call23 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %18, i32* %19, i32 %20)
  %call24 = call %struct.set_family* @complement(i32** %call23)
  store %struct.set_family* %call24, %struct.set_family** %Tr, align 8
  %21 = load %struct.set_family*, %struct.set_family** %Tr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 3
  %22 = load i32, i32* %count, align 4
  %23 = load %struct.set_family*, %struct.set_family** %Tl, align 8
  %count25 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 3
  %24 = load i32, i32* %count25, align 4
  %mul26 = mul nsw i32 %22, %24
  %conv27 = sext i32 %mul26 to i64
  %25 = load %struct.set_family*, %struct.set_family** %Tr, align 8
  %count28 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count28, align 4
  %27 = load %struct.set_family*, %struct.set_family** %Tl, align 8
  %count29 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 3
  %28 = load i32, i32* %count29, align 4
  %add30 = add nsw i32 %26, %28
  %conv31 = sext i32 %add30 to i64
  %29 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %29, i64 1
  %30 = load i32*, i32** %arrayidx, align 8
  %31 = bitcast i32* %30 to i32**
  %32 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub32 = sub nsw i64 %sub.ptr.div, 3
  %mul33 = mul nsw i64 %conv31, %sub32
  %cmp34 = icmp sgt i64 %conv27, %mul33
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %cond.end.14
  store i32 1, i32* %lifting, align 4
  br label %if.end.37

if.else:                                          ; preds = %cond.end.14
  store i32 0, i32* %lifting, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  %33 = load i32**, i32*** %T.addr, align 8
  %34 = load %struct.set_family*, %struct.set_family** %Tl, align 8
  %35 = load %struct.set_family*, %struct.set_family** %Tr, align 8
  %36 = load i32*, i32** %cl, align 8
  %37 = load i32*, i32** %cr, align 8
  %38 = load i32, i32* %best, align 4
  %39 = load i32, i32* %lifting, align 4
  %call38 = call %struct.set_family* @compl_merge(i32** %33, %struct.set_family* %34, %struct.set_family* %35, i32* %36, i32* %37, i32 %38, i32 %39)
  store %struct.set_family* %call38, %struct.set_family** %Tbar, align 8
  %40 = load i32*, i32** %cl, align 8
  %tobool39 = icmp ne i32* %40, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %41 = load i32*, i32** %cl, align 8
  %42 = bitcast i32* %41 to i8*
  call void @free(i8* %42)
  store i32* null, i32** %cl, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  %43 = load i32*, i32** %cr, align 8
  %tobool42 = icmp ne i32* %43, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %44 = load i32*, i32** %cr, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45)
  store i32* null, i32** %cr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %46 = load i32**, i32*** %T.addr, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %46, i64 0
  %47 = load i32*, i32** %arrayidx45, align 8
  %tobool46 = icmp ne i32* %47, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %48 = load i32**, i32*** %T.addr, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %48, i64 0
  %49 = load i32*, i32** %arrayidx48, align 8
  %50 = bitcast i32* %49 to i8*
  call void @free(i8* %50)
  %51 = load i32**, i32*** %T.addr, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %51, i64 0
  store i32* null, i32** %arrayidx49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  %52 = load i32**, i32*** %T.addr, align 8
  %tobool51 = icmp ne i32** %52, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %53 = load i32**, i32*** %T.addr, align 8
  %54 = bitcast i32** %53 to i8*
  call void @free(i8* %54)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end
  %55 = load i32, i32* @debug, align 4
  %and55 = and i32 %55, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  %56 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %57 = load i32, i32* @complement.compl_level, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* @complement.compl_level, align 4
  call void (%struct.set_family*, i8*, i32, ...) bitcast (void (...)* @debug1_print to void (%struct.set_family*, i8*, i32, ...)*)(%struct.set_family* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %dec)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.54
  %58 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  ret %struct.set_family* %58
}

declare void @debug_print(...) #1

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32 @binate_split_select(...) #1

declare i32** @scofactor(...) #1

declare void @free(i8*) #1

declare void @debug1_print(...) #1

; Function Attrs: nounwind uwtable
define void @simp_comp(i32** %T, %struct.set_family** %Tnew, %struct.set_family** %Tbar) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %Tnew.addr = alloca %struct.set_family**, align 8
  %Tbar.addr = alloca %struct.set_family**, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  %Tl = alloca %struct.set_family*, align 8
  %Tr = alloca %struct.set_family*, align 8
  %Tlbar = alloca %struct.set_family*, align 8
  %Trbar = alloca %struct.set_family*, align 8
  %lifting = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store %struct.set_family** %Tnew, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family** %Tbar, %struct.set_family*** %Tbar.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %T.addr, align 8
  %2 = load i32, i32* @simp_comp.simplify_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @simp_comp.simplify_level, align 4
  call void (i32**, i8*, i32, ...) bitcast (void (...)* @debug_print to void (i32**, i8*, i32, ...)*)(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32**, i32*** %T.addr, align 8
  %4 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  %5 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  %call = call i32 @simp_comp_special_cases(i32** %3, %struct.set_family** %4, %struct.set_family** %5)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then.1, label %if.end.47

if.then.1:                                        ; preds = %if.end
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp2 = icmp sle i32 %6, 32
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %7, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add3 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call4 = call i8* @malloc(i64 %mul)
  %8 = bitcast i8* %call4 to i32*
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %8, i32 %9)
  store i32* %call5, i32** %cl, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp6 = icmp sle i32 %10, 32
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub10 = sub nsw i32 %11, 1
  %shr11 = ashr i32 %sub10, 5
  %add12 = add nsw i32 %shr11, 1
  %add13 = add nsw i32 %add12, 1
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i32 [ 2, %cond.true.8 ], [ %add13, %cond.false.9 ]
  %conv16 = sext i32 %cond15 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @malloc(i64 %mul17)
  %12 = bitcast i8* %call18 to i32*
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call19 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %12, i32 %13)
  store i32* %call19, i32** %cr, align 8
  %14 = load i32**, i32*** %T.addr, align 8
  %15 = load i32*, i32** %cl, align 8
  %16 = load i32*, i32** %cr, align 8
  %call20 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %14, i32* %15, i32* %16, i32 1)
  store i32 %call20, i32* %best, align 4
  %17 = load i32**, i32*** %T.addr, align 8
  %18 = load i32*, i32** %cl, align 8
  %19 = load i32, i32* %best, align 4
  %call21 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %17, i32* %18, i32 %19)
  call void @simp_comp(i32** %call21, %struct.set_family** %Tl, %struct.set_family** %Tlbar)
  %20 = load i32**, i32*** %T.addr, align 8
  %21 = load i32*, i32** %cr, align 8
  %22 = load i32, i32* %best, align 4
  %call22 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %20, i32* %21, i32 %22)
  call void @simp_comp(i32** %call22, %struct.set_family** %Tr, %struct.set_family** %Trbar)
  store i32 0, i32* %lifting, align 4
  %23 = load i32**, i32*** %T.addr, align 8
  %24 = load %struct.set_family*, %struct.set_family** %Tl, align 8
  %25 = load %struct.set_family*, %struct.set_family** %Tr, align 8
  %26 = load i32*, i32** %cl, align 8
  %27 = load i32*, i32** %cr, align 8
  %28 = load i32, i32* %best, align 4
  %29 = load i32, i32* %lifting, align 4
  %call23 = call %struct.set_family* @compl_merge(i32** %23, %struct.set_family* %24, %struct.set_family* %25, i32* %26, i32* %27, i32 %28, i32 %29)
  %30 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call23, %struct.set_family** %30, align 8
  store i32 0, i32* %lifting, align 4
  %31 = load i32**, i32*** %T.addr, align 8
  %32 = load %struct.set_family*, %struct.set_family** %Tlbar, align 8
  %33 = load %struct.set_family*, %struct.set_family** %Trbar, align 8
  %34 = load i32*, i32** %cl, align 8
  %35 = load i32*, i32** %cr, align 8
  %36 = load i32, i32* %best, align 4
  %37 = load i32, i32* %lifting, align 4
  %call24 = call %struct.set_family* @compl_merge(i32** %31, %struct.set_family* %32, %struct.set_family* %33, i32* %34, i32* %35, i32 %36, i32 %37)
  %38 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call24, %struct.set_family** %38, align 8
  %39 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  %40 = load %struct.set_family*, %struct.set_family** %39, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 3
  %41 = load i32, i32* %count, align 4
  %conv25 = sext i32 %41 to i64
  %42 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %42, i64 1
  %43 = load i32*, i32** %arrayidx, align 8
  %44 = bitcast i32* %43 to i32**
  %45 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub26 = sub nsw i64 %sub.ptr.div, 3
  %cmp27 = icmp sgt i64 %conv25, %sub26
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %cond.end.14
  %46 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  %47 = load %struct.set_family*, %struct.set_family** %46, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %47)
  %48 = load i32**, i32*** %T.addr, align 8
  %call30 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** %48)
  %49 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call30, %struct.set_family** %49, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %cond.end.14
  %50 = load i32*, i32** %cl, align 8
  %tobool32 = icmp ne i32* %50, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %51 = load i32*, i32** %cl, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52)
  store i32* null, i32** %cl, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %53 = load i32*, i32** %cr, align 8
  %tobool35 = icmp ne i32* %53, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %54 = load i32*, i32** %cr, align 8
  %55 = bitcast i32* %54 to i8*
  call void @free(i8* %55)
  store i32* null, i32** %cr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %56 = load i32**, i32*** %T.addr, align 8
  %arrayidx38 = getelementptr inbounds i32*, i32** %56, i64 0
  %57 = load i32*, i32** %arrayidx38, align 8
  %tobool39 = icmp ne i32* %57, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %58 = load i32**, i32*** %T.addr, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %58, i64 0
  %59 = load i32*, i32** %arrayidx41, align 8
  %60 = bitcast i32* %59 to i8*
  call void @free(i8* %60)
  %61 = load i32**, i32*** %T.addr, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %61, i64 0
  store i32* null, i32** %arrayidx42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  %62 = load i32**, i32*** %T.addr, align 8
  %tobool44 = icmp ne i32** %62, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %63 = load i32**, i32*** %T.addr, align 8
  %64 = bitcast i32** %63 to i8*
  call void @free(i8* %64)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %65 = load i32, i32* @debug, align 4
  %and48 = and i32 %65, 1
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %66 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  %67 = load %struct.set_family*, %struct.set_family** %66, align 8
  %68 = load i32, i32* @simp_comp.simplify_level, align 4
  call void (%struct.set_family*, i8*, i32, ...) bitcast (void (...)* @debug1_print to void (%struct.set_family*, i8*, i32, ...)*)(%struct.set_family* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %68)
  %69 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  %70 = load %struct.set_family*, %struct.set_family** %69, align 8
  %71 = load i32, i32* @simp_comp.simplify_level, align 4
  call void (%struct.set_family*, i8*, i32, ...) bitcast (void (...)* @debug1_print to void (%struct.set_family*, i8*, i32, ...)*)(%struct.set_family* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %71)
  %72 = load i32, i32* @simp_comp.simplify_level, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* @simp_comp.simplify_level, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.47
  ret void
}

declare void @sf_free(...) #1

declare %struct.set_family* @cubeunlist(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @simplify(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  %Tbar = alloca %struct.set_family*, align 8
  %Tl = alloca %struct.set_family*, align 8
  %Tr = alloca %struct.set_family*, align 8
  %lifting = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %T.addr, align 8
  %2 = load i32, i32* @simplify.simplify_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @simplify.simplify_level, align 4
  call void (i32**, i8*, i32, ...) bitcast (void (...)* @debug_print to void (i32**, i8*, i32, ...)*)(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32**, i32*** %T.addr, align 8
  %call = call i32 @simplify_special_cases(i32** %3, %struct.set_family** %Tbar)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then.1, label %if.end.48

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
  %call20 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %12, i32* %13, i32* %14, i32 1)
  store i32 %call20, i32* %best, align 4
  %15 = load i32**, i32*** %T.addr, align 8
  %16 = load i32*, i32** %cl, align 8
  %17 = load i32, i32* %best, align 4
  %call21 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %15, i32* %16, i32 %17)
  %call22 = call %struct.set_family* @simplify(i32** %call21)
  store %struct.set_family* %call22, %struct.set_family** %Tl, align 8
  %18 = load i32**, i32*** %T.addr, align 8
  %19 = load i32*, i32** %cr, align 8
  %20 = load i32, i32* %best, align 4
  %call23 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %18, i32* %19, i32 %20)
  %call24 = call %struct.set_family* @simplify(i32** %call23)
  store %struct.set_family* %call24, %struct.set_family** %Tr, align 8
  store i32 0, i32* %lifting, align 4
  %21 = load i32**, i32*** %T.addr, align 8
  %22 = load %struct.set_family*, %struct.set_family** %Tl, align 8
  %23 = load %struct.set_family*, %struct.set_family** %Tr, align 8
  %24 = load i32*, i32** %cl, align 8
  %25 = load i32*, i32** %cr, align 8
  %26 = load i32, i32* %best, align 4
  %27 = load i32, i32* %lifting, align 4
  %call25 = call %struct.set_family* @compl_merge(i32** %21, %struct.set_family* %22, %struct.set_family* %23, i32* %24, i32* %25, i32 %26, i32 %27)
  store %struct.set_family* %call25, %struct.set_family** %Tbar, align 8
  %28 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %30, i64 1
  %31 = load i32*, i32** %arrayidx, align 8
  %32 = bitcast i32* %31 to i32**
  %33 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub27 = sub nsw i64 %sub.ptr.div, 3
  %cmp28 = icmp sgt i64 %conv26, %sub27
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %cond.end.14
  %34 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %34)
  %35 = load i32**, i32*** %T.addr, align 8
  %call31 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** %35)
  store %struct.set_family* %call31, %struct.set_family** %Tbar, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %cond.end.14
  %36 = load i32*, i32** %cl, align 8
  %tobool33 = icmp ne i32* %36, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %37 = load i32*, i32** %cl, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38)
  store i32* null, i32** %cl, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  %39 = load i32*, i32** %cr, align 8
  %tobool36 = icmp ne i32* %39, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %40 = load i32*, i32** %cr, align 8
  %41 = bitcast i32* %40 to i8*
  call void @free(i8* %41)
  store i32* null, i32** %cr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.35
  %42 = load i32**, i32*** %T.addr, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %42, i64 0
  %43 = load i32*, i32** %arrayidx39, align 8
  %tobool40 = icmp ne i32* %43, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %44 = load i32**, i32*** %T.addr, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %44, i64 0
  %45 = load i32*, i32** %arrayidx42, align 8
  %46 = bitcast i32* %45 to i8*
  call void @free(i8* %46)
  %47 = load i32**, i32*** %T.addr, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %47, i64 0
  store i32* null, i32** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %48 = load i32**, i32*** %T.addr, align 8
  %tobool45 = icmp ne i32** %48, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %49 = load i32**, i32*** %T.addr, align 8
  %50 = bitcast i32** %49 to i8*
  call void @free(i8* %50)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  %51 = load i32, i32* @debug, align 4
  %and49 = and i32 %51, 1
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %52 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %53 = load i32, i32* @simplify.simplify_level, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* @simplify.simplify_level, align 4
  call void (%struct.set_family*, i8*, i32, ...) bitcast (void (...)* @debug1_print to void (%struct.set_family*, i8*, i32, ...)*)(%struct.set_family* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %dec)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  %54 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  ret %struct.set_family* %54
}

; Function Attrs: nounwind uwtable
define internal i32 @compl_special_cases(i32** %T, %struct.set_family** %Tbar) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %Tbar.addr = alloca %struct.set_family**, align 8
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %ceil = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  %ceil_compl = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store %struct.set_family** %Tbar, %struct.set_family*** %Tbar.addr, align 8
  %0 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %cof, align 8
  %2 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 2
  %3 = load i32*, i32** %arrayidx1, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %4)
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call2 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call, i32* %5)
  %6 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call2, %struct.set_family** %6, align 8
  %7 = load i32**, i32*** %T.addr, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %7, i64 0
  %8 = load i32*, i32** %arrayidx3, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32**, i32*** %T.addr, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx5, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11)
  %12 = load i32**, i32*** %T.addr, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %12, i64 0
  store i32* null, i32** %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %13 = load i32**, i32*** %T.addr, align 8
  %tobool7 = icmp ne i32** %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %14 = load i32**, i32*** %T.addr, align 8
  %15 = bitcast i32** %14 to i8*
  call void @free(i8* %15)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %16 = load i32**, i32*** %T.addr, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %16, i64 3
  %17 = load i32*, i32** %arrayidx11, align 8
  %cmp12 = icmp eq i32* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end.10
  %18 = load i32*, i32** %cof, align 8
  %19 = load i32*, i32** %cof, align 8
  %20 = load i32**, i32*** %T.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %20, i64 2
  %21 = load i32*, i32** %arrayidx14, align 8
  %call15 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %18, i32* %19, i32* %21)
  %call16 = call %struct.set_family* @compl_cube(i32* %call15)
  %22 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call16, %struct.set_family** %22, align 8
  %23 = load i32**, i32*** %T.addr, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %23, i64 0
  %24 = load i32*, i32** %arrayidx17, align 8
  %tobool18 = icmp ne i32* %24, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.13
  %25 = load i32**, i32*** %T.addr, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %25, i64 0
  %26 = load i32*, i32** %arrayidx20, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27)
  %28 = load i32**, i32*** %T.addr, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* null, i32** %arrayidx21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.13
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

if.end.26:                                        ; preds = %if.end.10
  %32 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %32, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.41, %if.end.26
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
  br i1 %tobool29, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %for.body
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call31 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %37)
  %38 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call31, %struct.set_family** %38, align 8
  %39 = load i32**, i32*** %T.addr, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %39, i64 0
  %40 = load i32*, i32** %arrayidx32, align 8
  %tobool33 = icmp ne i32* %40, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.30
  %41 = load i32**, i32*** %T.addr, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %41, i64 0
  %42 = load i32*, i32** %arrayidx35, align 8
  %43 = bitcast i32* %42 to i8*
  call void @free(i8* %43)
  %44 = load i32**, i32*** %T.addr, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %44, i64 0
  store i32* null, i32** %arrayidx36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.then.30
  %45 = load i32**, i32*** %T.addr, align 8
  %tobool38 = icmp ne i32** %45, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %46 = load i32**, i32*** %T.addr, align 8
  %47 = bitcast i32** %46 to i8*
  call void @free(i8* %47)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32*, i32** %cof, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx42, align 4
  %and = and i32 %49, 1023
  %mul = mul i32 32, %and
  %cmp43 = icmp ule i32 %mul, 32
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %50 = load i32*, i32** %cof, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx44, align 4
  %and45 = and i32 %51, 1023
  %mul46 = mul i32 32, %and45
  %sub = sub i32 %mul46, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add47 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add47, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul48 = mul i64 4, %conv
  %call49 = call i8* @malloc(i64 %mul48)
  %52 = bitcast i8* %call49 to i32*
  %53 = load i32*, i32** %cof, align 8
  %call50 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %52, i32* %53)
  store i32* %call50, i32** %ceil, align 8
  %54 = load i32**, i32*** %T.addr, align 8
  %add.ptr51 = getelementptr inbounds i32*, i32** %54, i64 2
  store i32** %add.ptr51, i32*** %T1, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %do.end, %cond.end
  %55 = load i32**, i32*** %T1, align 8
  %incdec.ptr53 = getelementptr inbounds i32*, i32** %55, i32 1
  store i32** %incdec.ptr53, i32*** %T1, align 8
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %p, align 8
  %cmp54 = icmp ne i32* %56, null
  br i1 %cmp54, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.52
  %57 = load i32*, i32** %ceil, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx57, align 4
  %and58 = and i32 %58, 1023
  store i32 %and58, i32* %i_, align 4
  %59 = load i32*, i32** %ceil, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx59, align 4
  %and60 = and i32 %60, -1024
  store i32 %and60, i32* %arrayidx59, align 4
  %61 = load i32, i32* %i_, align 4
  %62 = load i32*, i32** %ceil, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx61, align 4
  %or = or i32 %63, %61
  store i32 %or, i32* %arrayidx61, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.56
  %64 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %64 to i64
  %65 = load i32*, i32** %ceil, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %65, i64 %idxprom
  %66 = load i32, i32* %arrayidx62, align 4
  %67 = load i32, i32* %i_, align 4
  %idxprom63 = sext i32 %67 to i64
  %68 = load i32*, i32** %p, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %68, i64 %idxprom63
  %69 = load i32, i32* %arrayidx64, align 4
  %or65 = or i32 %66, %69
  %70 = load i32, i32* %i_, align 4
  %idxprom66 = sext i32 %70 to i64
  %71 = load i32*, i32** %ceil, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %71, i64 %idxprom66
  store i32 %or65, i32* %arrayidx67, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %72 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %i_, align 4
  %cmp68 = icmp sgt i32 %dec, 0
  br i1 %cmp68, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond.52

for.end.70:                                       ; preds = %for.cond.52
  %73 = load i32*, i32** %ceil, align 8
  %74 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call71 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %73, i32* %74)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.82, label %if.then.73

if.then.73:                                       ; preds = %for.end.70
  %75 = load i32*, i32** %ceil, align 8
  %call74 = call %struct.set_family* @compl_cube(i32* %75)
  store %struct.set_family* %call74, %struct.set_family** %ceil_compl, align 8
  %76 = load i32*, i32** %cof, align 8
  %77 = load i32*, i32** %cof, align 8
  %78 = load i32*, i32** %ceil, align 8
  %79 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %80 = load i32*, i32** %ceil, align 8
  %call75 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %78, i32* %79, i32* %80)
  %call76 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %76, i32* %77, i32* %call75)
  %81 = load i32*, i32** %ceil, align 8
  %tobool77 = icmp ne i32* %81, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.73
  %82 = load i32*, i32** %ceil, align 8
  %83 = bitcast i32* %82 to i8*
  call void @free(i8* %83)
  store i32* null, i32** %ceil, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.then.73
  %84 = load i32**, i32*** %T.addr, align 8
  %call80 = call %struct.set_family* @complement(i32** %84)
  %85 = load %struct.set_family*, %struct.set_family** %ceil_compl, align 8
  %call81 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %call80, %struct.set_family* %85)
  %86 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call81, %struct.set_family** %86, align 8
  store i32 1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %for.end.70
  %87 = load i32*, i32** %ceil, align 8
  %tobool83 = icmp ne i32* %87, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.82
  %88 = load i32*, i32** %ceil, align 8
  %89 = bitcast i32* %88 to i8*
  call void @free(i8* %89)
  store i32* null, i32** %ceil, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.82
  %90 = load i32**, i32*** %T.addr, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %90)
  %91 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp86 = icmp eq i32 %91, 1
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %if.end.85
  %92 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call89 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %92)
  %93 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call89, %struct.set_family** %93, align 8
  %94 = load i32**, i32*** %T.addr, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %94, i64 0
  %95 = load i32*, i32** %arrayidx90, align 8
  %tobool91 = icmp ne i32* %95, null
  br i1 %tobool91, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.then.88
  %96 = load i32**, i32*** %T.addr, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %96, i64 0
  %97 = load i32*, i32** %arrayidx93, align 8
  %98 = bitcast i32* %97 to i8*
  call void @free(i8* %98)
  %99 = load i32**, i32*** %T.addr, align 8
  %arrayidx94 = getelementptr inbounds i32*, i32** %99, i64 0
  store i32* null, i32** %arrayidx94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.then.88
  %100 = load i32**, i32*** %T.addr, align 8
  %tobool96 = icmp ne i32** %100, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.95
  %101 = load i32**, i32*** %T.addr, align 8
  %102 = bitcast i32** %101 to i8*
  call void @free(i8* %102)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.95
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.85
  %103 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp99 = icmp eq i32 %103, %104
  br i1 %cmp99, label %if.then.101, label %if.else.114

if.then.101:                                      ; preds = %if.else
  %105 = load i32**, i32*** %T.addr, align 8
  %call102 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @map_cover_to_unate to %struct.set_family* (i32**, ...)*)(i32** %105)
  store %struct.set_family* %call102, %struct.set_family** %A, align 8
  %106 = load i32**, i32*** %T.addr, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %106, i64 0
  %107 = load i32*, i32** %arrayidx103, align 8
  %tobool104 = icmp ne i32* %107, null
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.then.101
  %108 = load i32**, i32*** %T.addr, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %108, i64 0
  %109 = load i32*, i32** %arrayidx106, align 8
  %110 = bitcast i32* %109 to i8*
  call void @free(i8* %110)
  %111 = load i32**, i32*** %T.addr, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %111, i64 0
  store i32* null, i32** %arrayidx107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.then.101
  %112 = load i32**, i32*** %T.addr, align 8
  %tobool109 = icmp ne i32** %112, null
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.108
  %113 = load i32**, i32*** %T.addr, align 8
  %114 = bitcast i32** %113 to i8*
  call void @free(i8* %114)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.108
  %115 = load %struct.set_family*, %struct.set_family** %A, align 8
  %call112 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @unate_compl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %115)
  store %struct.set_family* %call112, %struct.set_family** %A, align 8
  %116 = load %struct.set_family*, %struct.set_family** %A, align 8
  %call113 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @map_unate_to_cover to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %116)
  %117 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call113, %struct.set_family** %117, align 8
  %118 = load %struct.set_family*, %struct.set_family** %A, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %118)
  store i32 1, i32* %retval
  br label %return

if.else.114:                                      ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.else.114, %if.end.111, %if.end.98, %if.end.79, %if.end.40, %if.end.25, %if.end.9
  %119 = load i32, i32* %retval
  ret i32 %119
}

declare %struct.set_family* @sf_addset(...) #1

declare %struct.set_family* @sf_new(...) #1

declare i32* @set_or(...) #1

declare i32 @full_row(...) #1

declare i32* @set_copy(...) #1

declare i32 @setp_equal(...) #1

declare i32* @set_diff(...) #1

declare %struct.set_family* @sf_append(...) #1

declare void @massive_count(...) #1

declare %struct.set_family* @map_cover_to_unate(...) #1

declare %struct.set_family* @unate_compl(...) #1

declare %struct.set_family* @map_unate_to_cover(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @compl_cube(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %diff = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %full = alloca i32*, align 8
  %var = alloca i32, align 4
  %R = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  %i_15 = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 7
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %diff, align 8
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32* %2, i32** %full, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %3, i32 %4)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %5 = load i32*, i32** %full, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx1, align 4
  %and = and i32 %6, 1023
  store i32 %and, i32* %i_, align 4
  %7 = load i32*, i32** %diff, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %and3 = and i32 %8, -1024
  store i32 %and3, i32* %arrayidx2, align 4
  %9 = load i32, i32* %i_, align 4
  %10 = load i32*, i32** %diff, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx4, align 4
  %or = or i32 %11, %9
  store i32 %or, i32* %arrayidx4, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %12 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** %full, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx5, align 4
  %15 = load i32, i32* %i_, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load i32*, i32** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  %neg = xor i32 %17, -1
  %and8 = and i32 %14, %neg
  %18 = load i32, i32* %i_, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i32*, i32** %diff, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %idxprom9
  store i32 %and8, i32* %arrayidx10, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i_, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %21 = load i32, i32* %var, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp11 = icmp slt i32 %21, %22
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %var, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %24, i64 %idxprom12
  %25 = load i32*, i32** %arrayidx13, align 8
  store i32* %25, i32** %mask, align 8
  %26 = load i32*, i32** %diff, align 8
  %27 = load i32*, i32** %mask, align 8
  %call14 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %26, i32* %27)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %28 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data, align 8
  %30 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize, align 4
  %32 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %count, align 4
  %mul = mul nsw i32 %31, %33
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %29, i64 %idx.ext
  store i32* %add.ptr, i32** %pdest, align 8
  %34 = load i32*, i32** %diff, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %35, 1023
  store i32 %and17, i32* %i_15, align 4
  %36 = load i32*, i32** %pdest, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx18, align 4
  %and19 = and i32 %37, -1024
  store i32 %and19, i32* %arrayidx18, align 4
  %38 = load i32, i32* %i_15, align 4
  %39 = load i32*, i32** %pdest, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx20, align 4
  %or21 = or i32 %40, %38
  store i32 %or21, i32* %arrayidx20, align 4
  br label %do.body.22

do.body.22:                                       ; preds = %do.cond.37, %if.then
  %41 = load i32, i32* %i_15, align 4
  %idxprom23 = sext i32 %41 to i64
  %42 = load i32*, i32** %diff, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %42, i64 %idxprom23
  %43 = load i32, i32* %arrayidx24, align 4
  %44 = load i32, i32* %i_15, align 4
  %idxprom25 = sext i32 %44 to i64
  %45 = load i32*, i32** %mask, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %45, i64 %idxprom25
  %46 = load i32, i32* %arrayidx26, align 4
  %and27 = and i32 %43, %46
  %47 = load i32, i32* %i_15, align 4
  %idxprom28 = sext i32 %47 to i64
  %48 = load i32*, i32** %full, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %48, i64 %idxprom28
  %49 = load i32, i32* %arrayidx29, align 4
  %50 = load i32, i32* %i_15, align 4
  %idxprom30 = sext i32 %50 to i64
  %51 = load i32*, i32** %mask, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %51, i64 %idxprom30
  %52 = load i32, i32* %arrayidx31, align 4
  %neg32 = xor i32 %52, -1
  %and33 = and i32 %49, %neg32
  %or34 = or i32 %and27, %and33
  %53 = load i32, i32* %i_15, align 4
  %idxprom35 = sext i32 %53 to i64
  %54 = load i32*, i32** %pdest, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %54, i64 %idxprom35
  store i32 %or34, i32* %arrayidx36, align 4
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.22
  %55 = load i32, i32* %i_15, align 4
  %dec38 = add nsw i32 %55, -1
  store i32 %dec38, i32* %i_15, align 4
  %cmp39 = icmp sgt i32 %dec38, 0
  br i1 %cmp39, label %do.body.22, label %do.end.40

do.end.40:                                        ; preds = %do.cond.37
  br label %if.end

if.end:                                           ; preds = %do.end.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %56 = load i32, i32* %var, align 4
  %inc41 = add nsw i32 %56, 1
  store i32 %inc41, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %57
}

declare i32 @setp_disjoint(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @compl_merge(i32** %T1, %struct.set_family* %L, %struct.set_family* %R, i32* %cl, i32* %cr, i32 %var, i32 %lifting) #0 {
entry:
  %T1.addr = alloca i32**, align 8
  %L.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %cl.addr = alloca i32*, align 8
  %cr.addr = alloca i32*, align 8
  %var.addr = alloca i32, align 4
  %lifting.addr = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pt = alloca i32*, align 8
  %T = alloca %struct.set_family*, align 8
  %Tbar = alloca %struct.set_family*, align 8
  %L1 = alloca i32**, align 8
  %R1 = alloca i32**, align 8
  %i_ = alloca i32, align 4
  %i_32 = alloca i32, align 4
  %i_92 = alloca i32, align 4
  %i_128 = alloca i32, align 4
  store i32** %T1, i32*** %T1.addr, align 8
  store %struct.set_family* %L, %struct.set_family** %L.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32* %cl, i32** %cl.addr, align 8
  store i32* %cr, i32** %cr.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  store i32 %lifting, i32* %lifting.addr, align 4
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %3 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 %2, i32 %4)
  %5 = load i32*, i32** %cl.addr, align 8
  %call2 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %5)
  %6 = load i32*, i32** %cr.addr, align 8
  %call3 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %6)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* %call2, i8* %call3)
  %7 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %8 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  store i32* %10, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %count6 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count6, align 4
  %14 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %13, %15
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32*, i32** %p, align 8
  %17 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx, align 4
  %and7 = and i32 %19, 1023
  store i32 %and7, i32* %i_, align 4
  %20 = load i32*, i32** %p, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %21, -1024
  store i32 %and9, i32* %arrayidx8, align 4
  %22 = load i32, i32* %i_, align 4
  %23 = load i32*, i32** %p, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx10, align 4
  %or = or i32 %24, %22
  store i32 %or, i32* %arrayidx10, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %25 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** %p, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %26, i64 %idxprom
  %27 = load i32, i32* %arrayidx11, align 4
  %28 = load i32, i32* %i_, align 4
  %idxprom12 = sext i32 %28 to i64
  %29 = load i32*, i32** %cl.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %29, i64 %idxprom12
  %30 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %27, %30
  %31 = load i32, i32* %i_, align 4
  %idxprom15 = sext i32 %31 to i64
  %32 = load i32*, i32** %p, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %32, i64 %idxprom15
  store i32 %and14, i32* %arrayidx16, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %33 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i_, align 4
  %cmp17 = icmp sgt i32 %dec, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32*, i32** %p, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx18, align 4
  %or19 = or i32 %35, 8192
  store i32 %or19, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %36 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %wsize20 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 0
  %37 = load i32, i32* %wsize20, align 4
  %38 = load i32*, i32** %p, align 8
  %idx.ext21 = sext i32 %37 to i64
  %add.ptr22 = getelementptr inbounds i32, i32* %38, i64 %idx.ext21
  store i32* %add.ptr22, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %data23 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 5
  %40 = load i32*, i32** %data23, align 8
  store i32* %40, i32** %p, align 8
  %41 = load i32*, i32** %p, align 8
  %42 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count24 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 3
  %43 = load i32, i32* %count24, align 4
  %44 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize25 = getelementptr inbounds %struct.set_family, %struct.set_family* %44, i32 0, i32 0
  %45 = load i32, i32* %wsize25, align 4
  %mul26 = mul nsw i32 %43, %45
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %41, i64 %idx.ext27
  store i32* %add.ptr28, i32** %last, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %for.end
  %46 = load i32*, i32** %p, align 8
  %47 = load i32*, i32** %last, align 8
  %cmp30 = icmp ult i32* %46, %47
  br i1 %cmp30, label %for.body.31, label %for.end.57

for.body.31:                                      ; preds = %for.cond.29
  %48 = load i32*, i32** %p, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx33, align 4
  %and34 = and i32 %49, 1023
  store i32 %and34, i32* %i_32, align 4
  %50 = load i32*, i32** %p, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx35, align 4
  %and36 = and i32 %51, -1024
  store i32 %and36, i32* %arrayidx35, align 4
  %52 = load i32, i32* %i_32, align 4
  %53 = load i32*, i32** %p, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %arrayidx37, align 4
  %or38 = or i32 %54, %52
  store i32 %or38, i32* %arrayidx37, align 4
  br label %do.body.39

do.body.39:                                       ; preds = %do.cond.47, %for.body.31
  %55 = load i32, i32* %i_32, align 4
  %idxprom40 = sext i32 %55 to i64
  %56 = load i32*, i32** %p, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %56, i64 %idxprom40
  %57 = load i32, i32* %arrayidx41, align 4
  %58 = load i32, i32* %i_32, align 4
  %idxprom42 = sext i32 %58 to i64
  %59 = load i32*, i32** %cr.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %59, i64 %idxprom42
  %60 = load i32, i32* %arrayidx43, align 4
  %and44 = and i32 %57, %60
  %61 = load i32, i32* %i_32, align 4
  %idxprom45 = sext i32 %61 to i64
  %62 = load i32*, i32** %p, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %62, i64 %idxprom45
  store i32 %and44, i32* %arrayidx46, align 4
  br label %do.cond.47

do.cond.47:                                       ; preds = %do.body.39
  %63 = load i32, i32* %i_32, align 4
  %dec48 = add nsw i32 %63, -1
  store i32 %dec48, i32* %i_32, align 4
  %cmp49 = icmp sgt i32 %dec48, 0
  br i1 %cmp49, label %do.body.39, label %do.end.50

do.end.50:                                        ; preds = %do.cond.47
  %64 = load i32*, i32** %p, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx51, align 4
  %or52 = or i32 %65, 8192
  store i32 %or52, i32* %arrayidx51, align 4
  br label %for.inc.53

for.inc.53:                                       ; preds = %do.end.50
  %66 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize54 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 0
  %67 = load i32, i32* %wsize54, align 4
  %68 = load i32*, i32** %p, align 8
  %idx.ext55 = sext i32 %67 to i64
  %add.ptr56 = getelementptr inbounds i32, i32* %68, i64 %idx.ext55
  store i32* %add.ptr56, i32** %p, align 8
  br label %for.cond.29

for.end.57:                                       ; preds = %for.cond.29
  %69 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %69, i64 0
  %70 = load i32*, i32** %arrayidx58, align 8
  %71 = load i32, i32* %var.addr, align 4
  %idxprom59 = sext i32 %71 to i64
  %72 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %72, i64 %idxprom59
  %73 = load i32*, i32** %arrayidx60, align 8
  %call61 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %70, i32* %73)
  %74 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %call62 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @sf_list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %74)
  store i32** %call62, i32*** %L1, align 8
  %75 = bitcast i32** %call62 to i8*
  %76 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %count63 = getelementptr inbounds %struct.set_family, %struct.set_family* %76, i32 0, i32 3
  %77 = load i32, i32* %count63, align 4
  %conv = sext i32 %77 to i64
  call void @qsort(i8* %75, i64 %conv, i64 8, i32 (i8*, i8*)* bitcast (i32 (...)* @d1_order to i32 (i8*, i8*)*))
  %78 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call64 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @sf_list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %78)
  store i32** %call64, i32*** %R1, align 8
  %79 = bitcast i32** %call64 to i8*
  %80 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count65 = getelementptr inbounds %struct.set_family, %struct.set_family* %80, i32 0, i32 3
  %81 = load i32, i32* %count65, align 4
  %conv66 = sext i32 %81 to i64
  call void @qsort(i8* %79, i64 %conv66, i64 8, i32 (i8*, i8*)* bitcast (i32 (...)* @d1_order to i32 (i8*, i8*)*))
  %82 = load i32**, i32*** %L1, align 8
  %83 = load i32**, i32*** %R1, align 8
  call void @compl_d1merge(i32** %82, i32** %83)
  %84 = load i32, i32* %lifting.addr, align 4
  switch i32 %84, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.68
    i32 0, label %sw.bb.70
    i32 3, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %for.end.57
  %85 = load i32**, i32*** %T1.addr, align 8
  %call67 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** %85)
  store %struct.set_family* %call67, %struct.set_family** %T, align 8
  %86 = load i32**, i32*** %L1, align 8
  %87 = load %struct.set_family*, %struct.set_family** %T, align 8
  %88 = load i32*, i32** %cr.addr, align 8
  %89 = load i32, i32* %var.addr, align 4
  call void @compl_lift_onset(i32** %86, %struct.set_family* %87, i32* %88, i32 %89)
  %90 = load i32**, i32*** %R1, align 8
  %91 = load %struct.set_family*, %struct.set_family** %T, align 8
  %92 = load i32*, i32** %cl.addr, align 8
  %93 = load i32, i32* %var.addr, align 4
  call void @compl_lift_onset(i32** %90, %struct.set_family* %91, i32* %92, i32 %93)
  %94 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %94)
  br label %sw.epilog

sw.bb.68:                                         ; preds = %for.end.57
  %95 = load i32**, i32*** %T1.addr, align 8
  %call69 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** %95)
  store %struct.set_family* %call69, %struct.set_family** %T, align 8
  %96 = load i32**, i32*** %L1, align 8
  %97 = load %struct.set_family*, %struct.set_family** %T, align 8
  %98 = load i32, i32* %var.addr, align 4
  call void @compl_lift_onset_complex(i32** %96, %struct.set_family* %97, i32 %98)
  %99 = load i32**, i32*** %R1, align 8
  %100 = load %struct.set_family*, %struct.set_family** %T, align 8
  %101 = load i32, i32* %var.addr, align 4
  call void @compl_lift_onset_complex(i32** %99, %struct.set_family* %100, i32 %101)
  %102 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %102)
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.end.57
  %103 = load i32**, i32*** %L1, align 8
  %104 = load i32**, i32*** %R1, align 8
  %105 = load i32*, i32** %cr.addr, align 8
  %106 = load i32, i32* %var.addr, align 4
  call void @compl_lift(i32** %103, i32** %104, i32* %105, i32 %106)
  %107 = load i32**, i32*** %R1, align 8
  %108 = load i32**, i32*** %L1, align 8
  %109 = load i32*, i32** %cl.addr, align 8
  %110 = load i32, i32* %var.addr, align 4
  call void @compl_lift(i32** %107, i32** %108, i32* %109, i32 %110)
  br label %sw.epilog

sw.bb.71:                                         ; preds = %for.end.57
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.57, %sw.bb.71, %sw.bb.70, %sw.bb.68, %sw.bb
  %111 = load i32**, i32*** %L1, align 8
  %tobool72 = icmp ne i32** %111, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %sw.epilog
  %112 = load i32**, i32*** %L1, align 8
  %113 = bitcast i32** %112 to i8*
  call void @free(i8* %113)
  store i32** null, i32*** %L1, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %sw.epilog
  %114 = load i32**, i32*** %R1, align 8
  %tobool75 = icmp ne i32** %114, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %115 = load i32**, i32*** %R1, align 8
  %116 = bitcast i32** %115 to i8*
  call void @free(i8* %116)
  store i32** null, i32*** %R1, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %117 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %count78 = getelementptr inbounds %struct.set_family, %struct.set_family* %117, i32 0, i32 3
  %118 = load i32, i32* %count78, align 4
  %119 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count79 = getelementptr inbounds %struct.set_family, %struct.set_family* %119, i32 0, i32 3
  %120 = load i32, i32* %count79, align 4
  %add = add nsw i32 %118, %120
  %121 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call80 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %add, i32 %121)
  store %struct.set_family* %call80, %struct.set_family** %Tbar, align 8
  %122 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %data81 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i32 0, i32 5
  %123 = load i32*, i32** %data81, align 8
  store i32* %123, i32** %pt, align 8
  %124 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %data82 = getelementptr inbounds %struct.set_family, %struct.set_family* %124, i32 0, i32 5
  %125 = load i32*, i32** %data82, align 8
  store i32* %125, i32** %p, align 8
  %126 = load i32*, i32** %p, align 8
  %127 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %count83 = getelementptr inbounds %struct.set_family, %struct.set_family* %127, i32 0, i32 3
  %128 = load i32, i32* %count83, align 4
  %129 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %wsize84 = getelementptr inbounds %struct.set_family, %struct.set_family* %129, i32 0, i32 0
  %130 = load i32, i32* %wsize84, align 4
  %mul85 = mul nsw i32 %128, %130
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds i32, i32* %126, i64 %idx.ext86
  store i32* %add.ptr87, i32** %last, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.109, %if.end.77
  %131 = load i32*, i32** %p, align 8
  %132 = load i32*, i32** %last, align 8
  %cmp89 = icmp ult i32* %131, %132
  br i1 %cmp89, label %for.body.91, label %for.end.113

for.body.91:                                      ; preds = %for.cond.88
  %133 = load i32*, i32** %p, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %133, i64 0
  %134 = load i32, i32* %arrayidx93, align 4
  %and94 = and i32 %134, 1023
  store i32 %and94, i32* %i_92, align 4
  br label %do.body.95

do.body.95:                                       ; preds = %do.cond.100, %for.body.91
  %135 = load i32, i32* %i_92, align 4
  %idxprom96 = sext i32 %135 to i64
  %136 = load i32*, i32** %p, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %136, i64 %idxprom96
  %137 = load i32, i32* %arrayidx97, align 4
  %138 = load i32, i32* %i_92, align 4
  %idxprom98 = sext i32 %138 to i64
  %139 = load i32*, i32** %pt, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %139, i64 %idxprom98
  store i32 %137, i32* %arrayidx99, align 4
  br label %do.cond.100

do.cond.100:                                      ; preds = %do.body.95
  %140 = load i32, i32* %i_92, align 4
  %dec101 = add nsw i32 %140, -1
  store i32 %dec101, i32* %i_92, align 4
  %cmp102 = icmp sge i32 %dec101, 0
  br i1 %cmp102, label %do.body.95, label %do.end.104

do.end.104:                                       ; preds = %do.cond.100
  %141 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %count105 = getelementptr inbounds %struct.set_family, %struct.set_family* %141, i32 0, i32 3
  %142 = load i32, i32* %count105, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %count105, align 4
  %143 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %wsize106 = getelementptr inbounds %struct.set_family, %struct.set_family* %143, i32 0, i32 0
  %144 = load i32, i32* %wsize106, align 4
  %145 = load i32*, i32** %pt, align 8
  %idx.ext107 = sext i32 %144 to i64
  %add.ptr108 = getelementptr inbounds i32, i32* %145, i64 %idx.ext107
  store i32* %add.ptr108, i32** %pt, align 8
  br label %for.inc.109

for.inc.109:                                      ; preds = %do.end.104
  %146 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  %wsize110 = getelementptr inbounds %struct.set_family, %struct.set_family* %146, i32 0, i32 0
  %147 = load i32, i32* %wsize110, align 4
  %148 = load i32*, i32** %p, align 8
  %idx.ext111 = sext i32 %147 to i64
  %add.ptr112 = getelementptr inbounds i32, i32* %148, i64 %idx.ext111
  store i32* %add.ptr112, i32** %p, align 8
  br label %for.cond.88

for.end.113:                                      ; preds = %for.cond.88
  %149 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %data114 = getelementptr inbounds %struct.set_family, %struct.set_family* %149, i32 0, i32 5
  %150 = load i32*, i32** %data114, align 8
  store i32* %150, i32** %p, align 8
  %151 = load i32*, i32** %p, align 8
  %152 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count115 = getelementptr inbounds %struct.set_family, %struct.set_family* %152, i32 0, i32 3
  %153 = load i32, i32* %count115, align 4
  %154 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize116 = getelementptr inbounds %struct.set_family, %struct.set_family* %154, i32 0, i32 0
  %155 = load i32, i32* %wsize116, align 4
  %mul117 = mul nsw i32 %153, %155
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds i32, i32* %151, i64 %idx.ext118
  store i32* %add.ptr119, i32** %last, align 8
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.147, %for.end.113
  %156 = load i32*, i32** %p, align 8
  %157 = load i32*, i32** %last, align 8
  %cmp121 = icmp ult i32* %156, %157
  br i1 %cmp121, label %for.body.123, label %for.end.151

for.body.123:                                     ; preds = %for.cond.120
  %158 = load i32*, i32** %p, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %158, i64 0
  %159 = load i32, i32* %arrayidx124, align 4
  %and125 = and i32 %159, 8192
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.146

if.then.127:                                      ; preds = %for.body.123
  %160 = load i32*, i32** %p, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %160, i64 0
  %161 = load i32, i32* %arrayidx129, align 4
  %and130 = and i32 %161, 1023
  store i32 %and130, i32* %i_128, align 4
  br label %do.body.131

do.body.131:                                      ; preds = %do.cond.136, %if.then.127
  %162 = load i32, i32* %i_128, align 4
  %idxprom132 = sext i32 %162 to i64
  %163 = load i32*, i32** %p, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %163, i64 %idxprom132
  %164 = load i32, i32* %arrayidx133, align 4
  %165 = load i32, i32* %i_128, align 4
  %idxprom134 = sext i32 %165 to i64
  %166 = load i32*, i32** %pt, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %166, i64 %idxprom134
  store i32 %164, i32* %arrayidx135, align 4
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.131
  %167 = load i32, i32* %i_128, align 4
  %dec137 = add nsw i32 %167, -1
  store i32 %dec137, i32* %i_128, align 4
  %cmp138 = icmp sge i32 %dec137, 0
  br i1 %cmp138, label %do.body.131, label %do.end.140

do.end.140:                                       ; preds = %do.cond.136
  %168 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %count141 = getelementptr inbounds %struct.set_family, %struct.set_family* %168, i32 0, i32 3
  %169 = load i32, i32* %count141, align 4
  %inc142 = add nsw i32 %169, 1
  store i32 %inc142, i32* %count141, align 4
  %170 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %wsize143 = getelementptr inbounds %struct.set_family, %struct.set_family* %170, i32 0, i32 0
  %171 = load i32, i32* %wsize143, align 4
  %172 = load i32*, i32** %pt, align 8
  %idx.ext144 = sext i32 %171 to i64
  %add.ptr145 = getelementptr inbounds i32, i32* %172, i64 %idx.ext144
  store i32* %add.ptr145, i32** %pt, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.140, %for.body.123
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %173 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize148 = getelementptr inbounds %struct.set_family, %struct.set_family* %173, i32 0, i32 0
  %174 = load i32, i32* %wsize148, align 4
  %175 = load i32*, i32** %p, align 8
  %idx.ext149 = sext i32 %174 to i64
  %add.ptr150 = getelementptr inbounds i32, i32* %175, i64 %idx.ext149
  store i32* %add.ptr150, i32** %p, align 8
  br label %for.cond.120

for.end.151:                                      ; preds = %for.cond.120
  %176 = load i32, i32* @debug, align 4
  %and152 = and i32 %176, 1
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.160

if.then.154:                                      ; preds = %for.end.151
  %177 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  %count155 = getelementptr inbounds %struct.set_family, %struct.set_family* %177, i32 0, i32 3
  %178 = load i32, i32* %count155, align 4
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 %178)
  %179 = load i32, i32* @verbose_debug, align 4
  %tobool157 = icmp ne i32 %179, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.then.154
  %180 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %180)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.then.154
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %for.end.151
  %181 = load %struct.set_family*, %struct.set_family** %L.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %181)
  %182 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %182)
  %183 = load %struct.set_family*, %struct.set_family** %Tbar, align 8
  ret %struct.set_family* %183
}

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare i8* @pc2(...) #1

declare void @cprint(...) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare i32** @sf_list(...) #1

declare i32 @d1_order(...) #1

; Function Attrs: nounwind uwtable
define internal void @compl_d1merge(i32** %L1, i32** %R1) #0 {
entry:
  %L1.addr = alloca i32**, align 8
  %R1.addr = alloca i32**, align 8
  %pl = alloca i32*, align 8
  %pr = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store i32** %L1, i32*** %L1.addr, align 8
  store i32** %R1, i32*** %R1.addr, align 8
  %0 = load i32**, i32*** %L1.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %pl, align 8
  %2 = load i32**, i32*** %R1.addr, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %4 = load i32*, i32** %pl, align 8
  %cmp = icmp ne i32* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32*, i32** %pr, align 8
  %cmp1 = icmp ne i32* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32**, i32*** %L1.addr, align 8
  %8 = load i32**, i32*** %R1.addr, align 8
  %call = call i32 (i32**, i32**, ...) bitcast (i32 (...)* @d1_order to i32 (i32**, i32**, ...)*)(i32** %7, i32** %8)
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb.2
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  %9 = load i32**, i32*** %R1.addr, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %9, i32 1
  store i32** %incdec.ptr, i32*** %R1.addr, align 8
  %10 = load i32*, i32** %incdec.ptr, align 8
  store i32* %10, i32** %pr, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %11 = load i32**, i32*** %L1.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i32*, i32** %11, i32 1
  store i32** %incdec.ptr3, i32*** %L1.addr, align 8
  %12 = load i32*, i32** %incdec.ptr3, align 8
  store i32* %12, i32** %pl, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %13 = load i32*, i32** %pr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx, align 4
  %and = and i32 %14, -8193
  store i32 %and, i32* %arrayidx, align 4
  %15 = load i32*, i32** %pl, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %16, 1023
  store i32 %and6, i32* %i_, align 4
  %17 = load i32*, i32** %pl, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %18, -1024
  store i32 %and8, i32* %arrayidx7, align 4
  %19 = load i32, i32* %i_, align 4
  %20 = load i32*, i32** %pl, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx9, align 4
  %or = or i32 %21, %19
  store i32 %or, i32* %arrayidx9, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.4
  %22 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32*, i32** %pl, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx10, align 4
  %25 = load i32, i32* %i_, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load i32*, i32** %pr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %26, i64 %idxprom11
  %27 = load i32, i32* %arrayidx12, align 4
  %or13 = or i32 %24, %27
  %28 = load i32, i32* %i_, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load i32*, i32** %pl, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  store i32 %or13, i32* %arrayidx15, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i_, align 4
  %cmp16 = icmp sgt i32 %dec, 0
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load i32**, i32*** %R1.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i32*, i32** %31, i32 1
  store i32** %incdec.ptr17, i32*** %R1.addr, align 8
  %32 = load i32*, i32** %incdec.ptr17, align 8
  store i32* %32, i32** %pr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.body, %sw.bb.2, %sw.bb
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compl_lift_onset(i32** %A1, %struct.set_family* %T, i32* %bcube, i32 %var) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %bcube.addr = alloca i32*, align 8
  %var.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %lift = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %i_ = alloca i32, align 4
  %i_16 = alloca i32, align 4
  %i_43 = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32* %bcube, i32** %bcube.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 4
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %lift, align 8
  %2 = load i32, i32* %var.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %3, i64 %idxprom
  %4 = load i32*, i32** %arrayidx1, align 8
  store i32* %4, i32** %mask, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.57, %entry
  %5 = load i32**, i32*** %A1.addr, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr, i32*** %A1.addr, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %a, align 8
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %a, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %8, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.57

if.then:                                          ; preds = %for.body
  %9 = load i32*, i32** %bcube.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %10, 1023
  store i32 %and4, i32* %i_, align 4
  %11 = load i32*, i32** %lift, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %12, -1024
  store i32 %and6, i32* %arrayidx5, align 4
  %13 = load i32, i32* %i_, align 4
  %14 = load i32*, i32** %lift, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx7, align 4
  %or = or i32 %15, %13
  store i32 %or, i32* %arrayidx7, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %16 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32*, i32** %bcube.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %19 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load i32*, i32** %mask, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  %21 = load i32, i32* %arrayidx11, align 4
  %and12 = and i32 %18, %21
  %22 = load i32, i32* %i_, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load i32*, i32** %lift, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  store i32 %and12, i32* %arrayidx14, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i_, align 4
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load i32*, i32** %a, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx17, align 4
  %and18 = and i32 %26, 1023
  store i32 %and18, i32* %i_16, align 4
  %27 = load i32*, i32** %lift, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx19, align 4
  %and20 = and i32 %28, -1024
  store i32 %and20, i32* %arrayidx19, align 4
  %29 = load i32, i32* %i_16, align 4
  %30 = load i32*, i32** %lift, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx21, align 4
  %or22 = or i32 %31, %29
  store i32 %or22, i32* %arrayidx21, align 4
  br label %do.body.23

do.body.23:                                       ; preds = %do.cond.31, %do.end
  %32 = load i32, i32* %i_16, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load i32*, i32** %a, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %33, i64 %idxprom24
  %34 = load i32, i32* %arrayidx25, align 4
  %35 = load i32, i32* %i_16, align 4
  %idxprom26 = sext i32 %35 to i64
  %36 = load i32*, i32** %lift, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %36, i64 %idxprom26
  %37 = load i32, i32* %arrayidx27, align 4
  %or28 = or i32 %34, %37
  %38 = load i32, i32* %i_16, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load i32*, i32** %lift, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %39, i64 %idxprom29
  store i32 %or28, i32* %arrayidx30, align 4
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.23
  %40 = load i32, i32* %i_16, align 4
  %dec32 = add nsw i32 %40, -1
  store i32 %dec32, i32* %i_16, align 4
  %cmp33 = icmp sgt i32 %dec32, 0
  br i1 %cmp33, label %do.body.23, label %do.end.34

do.end.34:                                        ; preds = %do.cond.31
  %41 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 5
  %42 = load i32*, i32** %data, align 8
  store i32* %42, i32** %p, align 8
  %43 = load i32*, i32** %p, align 8
  %44 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %44, i32 0, i32 3
  %45 = load i32, i32* %count, align 4
  %46 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 0
  %47 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %45, %47
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %43, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %do.end.34
  %48 = load i32*, i32** %p, align 8
  %49 = load i32*, i32** %last, align 8
  %cmp36 = icmp ult i32* %48, %49
  br i1 %cmp36, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.35
  %50 = load i32*, i32** %p, align 8
  %51 = load i32*, i32** %lift, align 8
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* %50, i32* %51)
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %for.body.37
  br label %nolift

if.end:                                           ; preds = %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %52 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize40 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 0
  %53 = load i32, i32* %wsize40, align 4
  %54 = load i32*, i32** %p, align 8
  %idx.ext41 = sext i32 %53 to i64
  %add.ptr42 = getelementptr inbounds i32, i32* %54, i64 %idx.ext41
  store i32* %add.ptr42, i32** %p, align 8
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  %55 = load i32*, i32** %lift, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx44, align 4
  %and45 = and i32 %56, 1023
  store i32 %and45, i32* %i_43, align 4
  br label %do.body.46

do.body.46:                                       ; preds = %do.cond.51, %for.end
  %57 = load i32, i32* %i_43, align 4
  %idxprom47 = sext i32 %57 to i64
  %58 = load i32*, i32** %lift, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %58, i64 %idxprom47
  %59 = load i32, i32* %arrayidx48, align 4
  %60 = load i32, i32* %i_43, align 4
  %idxprom49 = sext i32 %60 to i64
  %61 = load i32*, i32** %a, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %61, i64 %idxprom49
  store i32 %59, i32* %arrayidx50, align 4
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.46
  %62 = load i32, i32* %i_43, align 4
  %dec52 = add nsw i32 %62, -1
  store i32 %dec52, i32* %i_43, align 4
  %cmp53 = icmp sge i32 %dec52, 0
  br i1 %cmp53, label %do.body.46, label %do.end.54

do.end.54:                                        ; preds = %do.cond.51
  %63 = load i32*, i32** %a, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx55, align 4
  %or56 = or i32 %64, 8192
  store i32 %or56, i32* %arrayidx55, align 4
  br label %nolift

nolift:                                           ; preds = %do.end.54, %if.then.39
  br label %if.end.57

if.end.57:                                        ; preds = %nolift, %for.body
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  ret void
}

declare i32 @cdist0(...) #1

; Function Attrs: nounwind uwtable
define internal void @compl_lift_onset_complex(i32** %A1, %struct.set_family* %T, i32 %var) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %var.addr = alloca i32, align 4
  %dist = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %a = alloca i32*, align 8
  %xlower = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %0, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %1, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add1 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add1, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32*
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call2 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %2, i32 %3)
  store i32* %call2, i32** %xlower, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.41, %cond.end
  %4 = load i32**, i32*** %A1.addr, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %4, i32 1
  store i32** %incdec.ptr, i32*** %A1.addr, align 8
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %a, align 8
  %cmp3 = icmp ne i32* %5, null
  br i1 %cmp3, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %6 = load i32*, i32** %a, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx, align 4
  %and = and i32 %7, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp5 = icmp sle i32 %8, 32
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.then
  br label %cond.end.12

cond.false.8:                                     ; preds = %if.then
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub9 = sub nsw i32 %9, 1
  %shr10 = ashr i32 %sub9, 5
  %add11 = add nsw i32 %shr10, 1
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.8, %cond.true.7
  %cond13 = phi i32 [ 1, %cond.true.7 ], [ %add11, %cond.false.8 ]
  store i32 %cond13, i32* %i_, align 4
  %10 = load i32, i32* %i_, align 4
  %11 = load i32*, i32** %xlower, align 8
  store i32 %10, i32* %11, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.12
  %12 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** %xlower, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 0, i32* %arrayidx14, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i_, align 4
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 5
  %16 = load i32*, i32** %data, align 8
  store i32* %16, i32** %p, align 8
  %17 = load i32*, i32** %p, align 8
  %18 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count, align 4
  %20 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 0
  %21 = load i32, i32* %wsize, align 4
  %mul17 = mul nsw i32 %19, %21
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i32, i32* %17, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %do.end
  %22 = load i32*, i32** %p, align 8
  %23 = load i32*, i32** %last, align 8
  %cmp19 = icmp ult i32* %22, %23
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %24 = load i32*, i32** %p, align 8
  %25 = load i32*, i32** %a, align 8
  %call22 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* %24, i32* %25)
  store i32 %call22, i32* %dist, align 4
  %cmp23 = icmp slt i32 %call22, 2
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %for.body.21
  %26 = load i32, i32* %dist, align 4
  %cmp26 = icmp eq i32 %26, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.25
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then.25
  %27 = load i32*, i32** %xlower, align 8
  %28 = load i32*, i32** %p, align 8
  %29 = load i32*, i32** %a, align 8
  %call29 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @force_lower to i32* (i32*, i32*, i32*, ...)*)(i32* %27, i32* %28, i32* %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %for.body.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %30 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize31 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize31, align 4
  %32 = load i32*, i32** %p, align 8
  %idx.ext32 = sext i32 %31 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %32, i64 %idx.ext32
  store i32* %add.ptr33, i32** %p, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %33 = load i32*, i32** %xlower, align 8
  %34 = load i32, i32* %var.addr, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %35, i64 %idxprom34
  %36 = load i32*, i32** %arrayidx35, align 8
  %37 = load i32*, i32** %xlower, align 8
  %call36 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %33, i32* %36, i32* %37)
  %38 = load i32*, i32** %a, align 8
  %39 = load i32*, i32** %a, align 8
  %40 = load i32*, i32** %xlower, align 8
  %call37 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %38, i32* %39, i32* %40)
  %41 = load i32*, i32** %xlower, align 8
  %tobool38 = icmp ne i32* %41, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  %42 = load i32*, i32** %xlower, align 8
  %43 = bitcast i32* %42 to i8*
  call void @free(i8* %43)
  store i32* null, i32** %xlower, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %for.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %for.body
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  ret void
}

declare i32 @cdist01(...) #1

declare void @fatal(...) #1

declare i32* @force_lower(...) #1

; Function Attrs: nounwind uwtable
define internal void @compl_lift(i32** %A1, i32** %B1, i32* %bcube, i32 %var) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %B1.addr = alloca i32**, align 8
  %bcube.addr = alloca i32*, align 8
  %var.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %B2 = alloca i32**, align 8
  %lift = alloca i32*, align 8
  %liftor = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %i_ = alloca i32, align 4
  %i_22 = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store i32** %B1, i32*** %B1.addr, align 8
  store i32* %bcube, i32** %bcube.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 4
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %lift, align 8
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 5
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %liftor, align 8
  %4 = load i32, i32* %var.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %5, i64 %idxprom
  %6 = load i32*, i32** %arrayidx2, align 8
  store i32* %6, i32** %mask, align 8
  %7 = load i32*, i32** %liftor, align 8
  %8 = load i32*, i32** %bcube.addr, align 8
  %9 = load i32*, i32** %mask, align 8
  %call = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %7, i32* %8, i32* %9)
  br label %for.cond

for.cond:                                         ; preds = %if.end.40, %entry
  %10 = load i32**, i32*** %A1.addr, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %incdec.ptr, i32*** %A1.addr, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %a, align 8
  %cmp = icmp ne i32* %11, null
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %a, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx3, align 4
  %and = and i32 %13, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.body
  %14 = load i32*, i32** %lift, align 8
  %15 = load i32*, i32** %bcube.addr, align 8
  %16 = load i32*, i32** %a, align 8
  %17 = load i32*, i32** %mask, align 8
  %call4 = call i32* (i32*, i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_merge to i32* (i32*, i32*, i32*, i32*, ...)*)(i32* %14, i32* %15, i32* %16, i32* %17)
  %18 = load i32**, i32*** %B1.addr, align 8
  store i32** %18, i32*** %B2, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %if.then.20, %if.then
  %19 = load i32**, i32*** %B2, align 8
  %incdec.ptr6 = getelementptr inbounds i32*, i32** %19, i32 1
  store i32** %incdec.ptr6, i32*** %B2, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %b, align 8
  %cmp7 = icmp ne i32* %20, null
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %21 = load i32*, i32** %lift, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %22, 1023
  store i32 %and10, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.8
  %23 = load i32, i32* %i_, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load i32*, i32** %lift, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %24, i64 %idxprom11
  %25 = load i32, i32* %arrayidx12, align 4
  %26 = load i32, i32* %i_, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load i32*, i32** %b, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  %28 = load i32, i32* %arrayidx14, align 4
  %neg = xor i32 %28, -1
  %and15 = and i32 %25, %neg
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %29 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %i_, align 4
  %cmp18 = icmp sgt i32 %dec, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.17
  %30 = load i32, i32* %i_, align 4
  %cmp19 = icmp ne i32 %30, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  br label %for.cond.5

if.end.21:                                        ; preds = %do.end
  %31 = load i32*, i32** %a, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %32, 1023
  store i32 %and24, i32* %i_22, align 4
  %33 = load i32*, i32** %a, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx25, align 4
  %and26 = and i32 %34, -1024
  store i32 %and26, i32* %arrayidx25, align 4
  %35 = load i32, i32* %i_22, align 4
  %36 = load i32*, i32** %a, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx27, align 4
  %or = or i32 %37, %35
  store i32 %or, i32* %arrayidx27, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond.36, %if.end.21
  %38 = load i32, i32* %i_22, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load i32*, i32** %a, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %39, i64 %idxprom29
  %40 = load i32, i32* %arrayidx30, align 4
  %41 = load i32, i32* %i_22, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load i32*, i32** %liftor, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %42, i64 %idxprom31
  %43 = load i32, i32* %arrayidx32, align 4
  %or33 = or i32 %40, %43
  %44 = load i32, i32* %i_22, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load i32*, i32** %a, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %45, i64 %idxprom34
  store i32 %or33, i32* %arrayidx35, align 4
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.body.28
  %46 = load i32, i32* %i_22, align 4
  %dec37 = add nsw i32 %46, -1
  store i32 %dec37, i32* %i_22, align 4
  %cmp38 = icmp sgt i32 %dec37, 0
  br i1 %cmp38, label %do.body.28, label %do.end.39

do.end.39:                                        ; preds = %do.cond.36
  br label %for.end

for.end:                                          ; preds = %do.end.39, %for.cond.5
  br label %if.end.40

if.end.40:                                        ; preds = %for.end, %for.body
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

declare i32* @set_and(...) #1

declare i32* @set_merge(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @simp_comp_special_cases(i32** %T, %struct.set_family** %Tnew, %struct.set_family** %Tbar) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %Tnew.addr = alloca %struct.set_family**, align 8
  %Tbar.addr = alloca %struct.set_family**, align 8
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %ceil = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %last = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  %i_104 = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store %struct.set_family** %Tnew, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family** %Tbar, %struct.set_family*** %Tbar.addr, align 8
  %0 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %cof, align 8
  %2 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 2
  %3 = load i32*, i32** %arrayidx1, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %4)
  %5 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call, %struct.set_family** %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call2 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %6)
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call3 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call2, i32* %7)
  %8 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call3, %struct.set_family** %8, align 8
  %9 = load i32**, i32*** %T.addr, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx4, align 8
  %tobool = icmp ne i32* %10, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %11 = load i32**, i32*** %T.addr, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %11, i64 0
  %12 = load i32*, i32** %arrayidx6, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* %13)
  %14 = load i32**, i32*** %T.addr, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %14, i64 0
  store i32* null, i32** %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %15 = load i32**, i32*** %T.addr, align 8
  %tobool8 = icmp ne i32** %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %16 = load i32**, i32*** %T.addr, align 8
  %17 = bitcast i32** %16 to i8*
  call void @free(i8* %17)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %entry
  %18 = load i32**, i32*** %T.addr, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %18, i64 3
  %19 = load i32*, i32** %arrayidx12, align 8
  %cmp13 = icmp eq i32* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.29

if.then.14:                                       ; preds = %if.end.11
  %20 = load i32*, i32** %cof, align 8
  %21 = load i32*, i32** %cof, align 8
  %22 = load i32**, i32*** %T.addr, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %22, i64 2
  %23 = load i32*, i32** %arrayidx15, align 8
  %call16 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %20, i32* %21, i32* %23)
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call17 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %24)
  %25 = load i32*, i32** %cof, align 8
  %call18 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call17, i32* %25)
  %26 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call18, %struct.set_family** %26, align 8
  %27 = load i32*, i32** %cof, align 8
  %call19 = call %struct.set_family* @compl_cube(i32* %27)
  %28 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call19, %struct.set_family** %28, align 8
  %29 = load i32**, i32*** %T.addr, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %29, i64 0
  %30 = load i32*, i32** %arrayidx20, align 8
  %tobool21 = icmp ne i32* %30, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.14
  %31 = load i32**, i32*** %T.addr, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %31, i64 0
  %32 = load i32*, i32** %arrayidx23, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33)
  %34 = load i32**, i32*** %T.addr, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %34, i64 0
  store i32* null, i32** %arrayidx24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.14
  %35 = load i32**, i32*** %T.addr, align 8
  %tobool26 = icmp ne i32** %35, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %36 = load i32**, i32*** %T.addr, align 8
  %37 = bitcast i32** %36 to i8*
  call void @free(i8* %37)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.11
  %38 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %38, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.46, %if.end.29
  %39 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %39, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %p, align 8
  %cmp30 = icmp ne i32* %40, null
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32*, i32** %p, align 8
  %42 = load i32*, i32** %cof, align 8
  %call31 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* %41, i32* %42)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %for.body
  %43 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call34 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %43)
  %44 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call35 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call34, i32* %44)
  %45 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call35, %struct.set_family** %45, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call36 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %46)
  %47 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call36, %struct.set_family** %47, align 8
  %48 = load i32**, i32*** %T.addr, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %48, i64 0
  %49 = load i32*, i32** %arrayidx37, align 8
  %tobool38 = icmp ne i32* %49, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.then.33
  %50 = load i32**, i32*** %T.addr, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %50, i64 0
  %51 = load i32*, i32** %arrayidx40, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52)
  %53 = load i32**, i32*** %T.addr, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %53, i64 0
  store i32* null, i32** %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.then.33
  %54 = load i32**, i32*** %T.addr, align 8
  %tobool43 = icmp ne i32** %54, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  %55 = load i32**, i32*** %T.addr, align 8
  %56 = bitcast i32** %55 to i8*
  call void @free(i8* %56)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.42
  store i32 1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32*, i32** %cof, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx47, align 4
  %and = and i32 %58, 1023
  %mul = mul i32 32, %and
  %cmp48 = icmp ule i32 %mul, 32
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %59 = load i32*, i32** %cof, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx49, align 4
  %and50 = and i32 %60, 1023
  %mul51 = mul i32 32, %and50
  %sub = sub i32 %mul51, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add52 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add52, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul53 = mul i64 4, %conv
  %call54 = call i8* @malloc(i64 %mul53)
  %61 = bitcast i8* %call54 to i32*
  %62 = load i32*, i32** %cof, align 8
  %call55 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %61, i32* %62)
  store i32* %call55, i32** %ceil, align 8
  %63 = load i32**, i32*** %T.addr, align 8
  %add.ptr56 = getelementptr inbounds i32*, i32** %63, i64 2
  store i32** %add.ptr56, i32*** %T1, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %do.end, %cond.end
  %64 = load i32**, i32*** %T1, align 8
  %incdec.ptr58 = getelementptr inbounds i32*, i32** %64, i32 1
  store i32** %incdec.ptr58, i32*** %T1, align 8
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %p, align 8
  %cmp59 = icmp ne i32* %65, null
  br i1 %cmp59, label %for.body.61, label %for.end.75

for.body.61:                                      ; preds = %for.cond.57
  %66 = load i32*, i32** %ceil, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %66, i64 0
  %67 = load i32, i32* %arrayidx62, align 4
  %and63 = and i32 %67, 1023
  store i32 %and63, i32* %i_, align 4
  %68 = load i32*, i32** %ceil, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx64, align 4
  %and65 = and i32 %69, -1024
  store i32 %and65, i32* %arrayidx64, align 4
  %70 = load i32, i32* %i_, align 4
  %71 = load i32*, i32** %ceil, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx66, align 4
  %or = or i32 %72, %70
  store i32 %or, i32* %arrayidx66, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.61
  %73 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %73 to i64
  %74 = load i32*, i32** %ceil, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %74, i64 %idxprom
  %75 = load i32, i32* %arrayidx67, align 4
  %76 = load i32, i32* %i_, align 4
  %idxprom68 = sext i32 %76 to i64
  %77 = load i32*, i32** %p, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %77, i64 %idxprom68
  %78 = load i32, i32* %arrayidx69, align 4
  %or70 = or i32 %75, %78
  %79 = load i32, i32* %i_, align 4
  %idxprom71 = sext i32 %79 to i64
  %80 = load i32*, i32** %ceil, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %80, i64 %idxprom71
  store i32 %or70, i32* %arrayidx72, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %81 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %i_, align 4
  %cmp73 = icmp sgt i32 %dec, 0
  br i1 %cmp73, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond.57

for.end.75:                                       ; preds = %for.cond.57
  %82 = load i32*, i32** %ceil, align 8
  %83 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call76 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %82, i32* %83)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.133, label %if.then.78

if.then.78:                                       ; preds = %for.end.75
  %84 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp79 = icmp sle i32 %84, 32
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.then.78
  br label %cond.end.87

cond.false.82:                                    ; preds = %if.then.78
  %85 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub83 = sub nsw i32 %85, 1
  %shr84 = ashr i32 %sub83, 5
  %add85 = add nsw i32 %shr84, 1
  %add86 = add nsw i32 %add85, 1
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.82, %cond.true.81
  %cond88 = phi i32 [ 2, %cond.true.81 ], [ %add86, %cond.false.82 ]
  %conv89 = sext i32 %cond88 to i64
  %mul90 = mul i64 4, %conv89
  %call91 = call i8* @malloc(i64 %mul90)
  %86 = bitcast i8* %call91 to i32*
  %87 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call92 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %86, i32 %87)
  store i32* %call92, i32** %p, align 8
  %88 = load i32*, i32** %p, align 8
  %89 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %90 = load i32*, i32** %ceil, align 8
  %call93 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %88, i32* %89, i32* %90)
  %91 = load i32*, i32** %cof, align 8
  %92 = load i32*, i32** %cof, align 8
  %93 = load i32*, i32** %p, align 8
  %call94 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %91, i32* %92, i32* %93)
  %94 = load i32*, i32** %p, align 8
  %tobool95 = icmp ne i32* %94, null
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %cond.end.87
  %95 = load i32*, i32** %p, align 8
  %96 = bitcast i32* %95 to i8*
  call void @free(i8* %96)
  store i32* null, i32** %p, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %cond.end.87
  %97 = load i32**, i32*** %T.addr, align 8
  %98 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  %99 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  call void @simp_comp(i32** %97, %struct.set_family** %98, %struct.set_family** %99)
  %100 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  %101 = load %struct.set_family*, %struct.set_family** %100, align 8
  store %struct.set_family* %101, %struct.set_family** %A, align 8
  %102 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %102, i32 0, i32 5
  %103 = load i32*, i32** %data, align 8
  store i32* %103, i32** %p, align 8
  %104 = load i32*, i32** %p, align 8
  %105 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %105, i32 0, i32 3
  %106 = load i32, i32* %count, align 4
  %107 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %107, i32 0, i32 0
  %108 = load i32, i32* %wsize, align 4
  %mul98 = mul nsw i32 %106, %108
  %idx.ext = sext i32 %mul98 to i64
  %add.ptr99 = getelementptr inbounds i32, i32* %104, i64 %idx.ext
  store i32* %add.ptr99, i32** %last, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc, %if.end.97
  %109 = load i32*, i32** %p, align 8
  %110 = load i32*, i32** %last, align 8
  %cmp101 = icmp ult i32* %109, %110
  br i1 %cmp101, label %for.body.103, label %for.end.127

for.body.103:                                     ; preds = %for.cond.100
  %111 = load i32*, i32** %p, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %111, i64 0
  %112 = load i32, i32* %arrayidx105, align 4
  %and106 = and i32 %112, 1023
  store i32 %and106, i32* %i_104, align 4
  %113 = load i32*, i32** %p, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx107, align 4
  %and108 = and i32 %114, -1024
  store i32 %and108, i32* %arrayidx107, align 4
  %115 = load i32, i32* %i_104, align 4
  %116 = load i32*, i32** %p, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %116, i64 0
  %117 = load i32, i32* %arrayidx109, align 4
  %or110 = or i32 %117, %115
  store i32 %or110, i32* %arrayidx109, align 4
  br label %do.body.111

do.body.111:                                      ; preds = %do.cond.119, %for.body.103
  %118 = load i32, i32* %i_104, align 4
  %idxprom112 = sext i32 %118 to i64
  %119 = load i32*, i32** %p, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %119, i64 %idxprom112
  %120 = load i32, i32* %arrayidx113, align 4
  %121 = load i32, i32* %i_104, align 4
  %idxprom114 = sext i32 %121 to i64
  %122 = load i32*, i32** %ceil, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %122, i64 %idxprom114
  %123 = load i32, i32* %arrayidx115, align 4
  %and116 = and i32 %120, %123
  %124 = load i32, i32* %i_104, align 4
  %idxprom117 = sext i32 %124 to i64
  %125 = load i32*, i32** %p, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %125, i64 %idxprom117
  store i32 %and116, i32* %arrayidx118, align 4
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.111
  %126 = load i32, i32* %i_104, align 4
  %dec120 = add nsw i32 %126, -1
  store i32 %dec120, i32* %i_104, align 4
  %cmp121 = icmp sgt i32 %dec120, 0
  br i1 %cmp121, label %do.body.111, label %do.end.123

do.end.123:                                       ; preds = %do.cond.119
  br label %for.inc

for.inc:                                          ; preds = %do.end.123
  %127 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize124 = getelementptr inbounds %struct.set_family, %struct.set_family* %127, i32 0, i32 0
  %128 = load i32, i32* %wsize124, align 4
  %129 = load i32*, i32** %p, align 8
  %idx.ext125 = sext i32 %128 to i64
  %add.ptr126 = getelementptr inbounds i32, i32* %129, i64 %idx.ext125
  store i32* %add.ptr126, i32** %p, align 8
  br label %for.cond.100

for.end.127:                                      ; preds = %for.cond.100
  %130 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  %131 = load %struct.set_family*, %struct.set_family** %130, align 8
  %132 = load i32*, i32** %ceil, align 8
  %call128 = call %struct.set_family* @compl_cube(i32* %132)
  %call129 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %131, %struct.set_family* %call128)
  %133 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call129, %struct.set_family** %133, align 8
  %134 = load i32*, i32** %ceil, align 8
  %tobool130 = icmp ne i32* %134, null
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %for.end.127
  %135 = load i32*, i32** %ceil, align 8
  %136 = bitcast i32* %135 to i8*
  call void @free(i8* %136)
  store i32* null, i32** %ceil, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %for.end.127
  store i32 1, i32* %retval
  br label %return

if.end.133:                                       ; preds = %for.end.75
  %137 = load i32*, i32** %ceil, align 8
  %tobool134 = icmp ne i32* %137, null
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.133
  %138 = load i32*, i32** %ceil, align 8
  %139 = bitcast i32* %138 to i8*
  call void @free(i8* %139)
  store i32* null, i32** %ceil, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.end.133
  %140 = load i32**, i32*** %T.addr, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %140)
  %141 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp137 = icmp eq i32 %141, 1
  br i1 %cmp137, label %if.then.139, label %if.else

if.then.139:                                      ; preds = %if.end.136
  %142 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call140 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %142)
  %143 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call141 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call140, i32* %143)
  %144 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call141, %struct.set_family** %144, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call142 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %145)
  %146 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call142, %struct.set_family** %146, align 8
  %147 = load i32**, i32*** %T.addr, align 8
  %arrayidx143 = getelementptr inbounds i32*, i32** %147, i64 0
  %148 = load i32*, i32** %arrayidx143, align 8
  %tobool144 = icmp ne i32* %148, null
  br i1 %tobool144, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.then.139
  %149 = load i32**, i32*** %T.addr, align 8
  %arrayidx146 = getelementptr inbounds i32*, i32** %149, i64 0
  %150 = load i32*, i32** %arrayidx146, align 8
  %151 = bitcast i32* %150 to i8*
  call void @free(i8* %151)
  %152 = load i32**, i32*** %T.addr, align 8
  %arrayidx147 = getelementptr inbounds i32*, i32** %152, i64 0
  store i32* null, i32** %arrayidx147, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %if.then.139
  %153 = load i32**, i32*** %T.addr, align 8
  %tobool149 = icmp ne i32** %153, null
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.148
  %154 = load i32**, i32*** %T.addr, align 8
  %155 = bitcast i32** %154 to i8*
  call void @free(i8* %155)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.end.148
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.136
  %156 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp152 = icmp eq i32 %156, %157
  br i1 %cmp152, label %if.then.154, label %if.else.169

if.then.154:                                      ; preds = %if.else
  %158 = load i32**, i32*** %T.addr, align 8
  %call155 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** %158)
  store %struct.set_family* %call155, %struct.set_family** %A, align 8
  %159 = load %struct.set_family*, %struct.set_family** %A, align 8
  %call156 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %159)
  %160 = load %struct.set_family**, %struct.set_family*** %Tnew.addr, align 8
  store %struct.set_family* %call156, %struct.set_family** %160, align 8
  %161 = load i32**, i32*** %T.addr, align 8
  %call157 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @map_cover_to_unate to %struct.set_family* (i32**, ...)*)(i32** %161)
  store %struct.set_family* %call157, %struct.set_family** %A, align 8
  %162 = load %struct.set_family*, %struct.set_family** %A, align 8
  %call158 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @unate_compl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %162)
  store %struct.set_family* %call158, %struct.set_family** %A, align 8
  %163 = load %struct.set_family*, %struct.set_family** %A, align 8
  %call159 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @map_unate_to_cover to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %163)
  %164 = load %struct.set_family**, %struct.set_family*** %Tbar.addr, align 8
  store %struct.set_family* %call159, %struct.set_family** %164, align 8
  %165 = load %struct.set_family*, %struct.set_family** %A, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %165)
  %166 = load i32**, i32*** %T.addr, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %166, i64 0
  %167 = load i32*, i32** %arrayidx160, align 8
  %tobool161 = icmp ne i32* %167, null
  br i1 %tobool161, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %if.then.154
  %168 = load i32**, i32*** %T.addr, align 8
  %arrayidx163 = getelementptr inbounds i32*, i32** %168, i64 0
  %169 = load i32*, i32** %arrayidx163, align 8
  %170 = bitcast i32* %169 to i8*
  call void @free(i8* %170)
  %171 = load i32**, i32*** %T.addr, align 8
  %arrayidx164 = getelementptr inbounds i32*, i32** %171, i64 0
  store i32* null, i32** %arrayidx164, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %if.then.154
  %172 = load i32**, i32*** %T.addr, align 8
  %tobool166 = icmp ne i32** %172, null
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.165
  %173 = load i32**, i32*** %T.addr, align 8
  %174 = bitcast i32** %173 to i8*
  call void @free(i8* %174)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.end.165
  store i32 1, i32* %retval
  br label %return

if.else.169:                                      ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.else.169, %if.end.168, %if.end.151, %if.end.132, %if.end.45, %if.end.28, %if.end.10
  %175 = load i32, i32* %retval
  ret i32 %175
}

declare %struct.set_family* @sf_contain(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @simplify_special_cases(i32** %T, %struct.set_family** %Tnew) #0 {
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
  %call94 = call %struct.set_family* @simplify(i32** %89)
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
