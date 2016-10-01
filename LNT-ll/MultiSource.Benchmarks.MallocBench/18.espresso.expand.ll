; ModuleID = './MultiSource.Benchmarks.MallocBench/18.espresso.expand.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@use_random_order = external global i32, align 4
@cube = external global %struct.cube_struct, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [25 x i8] c"EXPAND: %s (covered %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0AEXPAND1:    \09%s\0A\00", align 1
@bit_count = external global [256 x i32], align 16
@.str.2 = private unnamed_addr constant [38 x i8] c"ON-set and OFF-set are not orthogonal\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ESSEN_PARTS:\09RAISE=%s FREESET=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ESSEN_RAISING:\09RAISE=%s FREESET=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"MOST_FREQUENT:\09best=%d FREESET=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"SELECT_FEASIBLE: started with %d pfcc, ended with %d fcc\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"FEASIBLE:  \09RAISE=%s FREESET=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MINCOV:    \09RAISE=%s FREESET=%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @expand(%struct.set_family* %F, %struct.set_family* %R, i32 %nonsparse) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %nonsparse.addr = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %RAISE = alloca i32*, align 8
  %FREESET = alloca i32*, align 8
  %INIT_LOWER = alloca i32*, align 8
  %SUPER_CUBE = alloca i32*, align 8
  %OVEREXPANDED_CUBE = alloca i32*, align 8
  %var = alloca i32, align 4
  %num_covered = alloca i32, align 4
  %change = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32 %nonsparse, i32* %nonsparse.addr, align 4
  %0 = load i32, i32* @use_random_order, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @random_order to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %1)
  store %struct.set_family* %call, %struct.set_family** %F.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, i32 (...)*, ...) bitcast (%struct.set_family* (...)* @mini_sort to %struct.set_family* (%struct.set_family*, i32 (...)*, ...)*)(%struct.set_family* %2, i32 (...)* @ascend)
  store %struct.set_family* %call1, %struct.set_family** %F.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %3, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %4, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %5, i32 %6)
  store i32* %call4, i32** %RAISE, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp5 = icmp sle i32 %7, 32
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.8:                                     ; preds = %cond.end
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub9 = sub nsw i32 %8, 1
  %shr10 = ashr i32 %sub9, 5
  %add11 = add nsw i32 %shr10, 1
  %add12 = add nsw i32 %add11, 1
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.8, %cond.true.7
  %cond14 = phi i32 [ 2, %cond.true.7 ], [ %add12, %cond.false.8 ]
  %conv15 = sext i32 %cond14 to i64
  %mul16 = mul i64 4, %conv15
  %call17 = call i8* @malloc(i64 %mul16)
  %9 = bitcast i8* %call17 to i32*
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call18 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %9, i32 %10)
  store i32* %call18, i32** %FREESET, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp19 = icmp sle i32 %11, 32
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.13
  br label %cond.end.27

cond.false.22:                                    ; preds = %cond.end.13
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub23 = sub nsw i32 %12, 1
  %shr24 = ashr i32 %sub23, 5
  %add25 = add nsw i32 %shr24, 1
  %add26 = add nsw i32 %add25, 1
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.22, %cond.true.21
  %cond28 = phi i32 [ 2, %cond.true.21 ], [ %add26, %cond.false.22 ]
  %conv29 = sext i32 %cond28 to i64
  %mul30 = mul i64 4, %conv29
  %call31 = call i8* @malloc(i64 %mul30)
  %13 = bitcast i8* %call31 to i32*
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call32 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %13, i32 %14)
  store i32* %call32, i32** %INIT_LOWER, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp33 = icmp sle i32 %15, 32
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end.27
  br label %cond.end.41

cond.false.36:                                    ; preds = %cond.end.27
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub37 = sub nsw i32 %16, 1
  %shr38 = ashr i32 %sub37, 5
  %add39 = add nsw i32 %shr38, 1
  %add40 = add nsw i32 %add39, 1
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.36, %cond.true.35
  %cond42 = phi i32 [ 2, %cond.true.35 ], [ %add40, %cond.false.36 ]
  %conv43 = sext i32 %cond42 to i64
  %mul44 = mul i64 4, %conv43
  %call45 = call i8* @malloc(i64 %mul44)
  %17 = bitcast i8* %call45 to i32*
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call46 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %17, i32 %18)
  store i32* %call46, i32** %SUPER_CUBE, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp47 = icmp sle i32 %19, 32
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.41
  br label %cond.end.55

cond.false.50:                                    ; preds = %cond.end.41
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub51 = sub nsw i32 %20, 1
  %shr52 = ashr i32 %sub51, 5
  %add53 = add nsw i32 %shr52, 1
  %add54 = add nsw i32 %add53, 1
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.50, %cond.true.49
  %cond56 = phi i32 [ 2, %cond.true.49 ], [ %add54, %cond.false.50 ]
  %conv57 = sext i32 %cond56 to i64
  %mul58 = mul i64 4, %conv57
  %call59 = call i8* @malloc(i64 %mul58)
  %21 = bitcast i8* %call59 to i32*
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call60 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %21, i32 %22)
  store i32* %call60, i32** %OVEREXPANDED_CUBE, align 8
  %23 = load i32, i32* %nonsparse.addr, align 4
  %tobool61 = icmp ne i32 %23, 0
  br i1 %tobool61, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %cond.end.55
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.62
  %24 = load i32, i32* %var, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp63 = icmp slt i32 %24, %25
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %var, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  %tobool65 = icmp ne i32 %28, 0
  br i1 %tobool65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %for.body
  %29 = load i32*, i32** %INIT_LOWER, align 8
  %30 = load i32*, i32** %INIT_LOWER, align 8
  %31 = load i32, i32* %var, align 4
  %idxprom67 = sext i32 %31 to i64
  %32 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %32, i64 %idxprom67
  %33 = load i32*, i32** %arrayidx68, align 8
  %call69 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %29, i32* %30, i32* %33)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %34 = load i32, i32* %var, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.71

if.end.71:                                        ; preds = %for.end, %cond.end.55
  %35 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 5
  %36 = load i32*, i32** %data, align 8
  store i32* %36, i32** %p, align 8
  %37 = load i32*, i32** %p, align 8
  %38 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %38, i32 0, i32 3
  %39 = load i32, i32* %count, align 4
  %40 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 0
  %41 = load i32, i32* %wsize, align 4
  %mul72 = mul nsw i32 %39, %41
  %idx.ext = sext i32 %mul72 to i64
  %add.ptr = getelementptr inbounds i32, i32* %37, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.80, %if.end.71
  %42 = load i32*, i32** %p, align 8
  %43 = load i32*, i32** %last, align 8
  %cmp74 = icmp ult i32* %42, %43
  br i1 %cmp74, label %for.body.76, label %for.end.84

for.body.76:                                      ; preds = %for.cond.73
  %44 = load i32*, i32** %p, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %44, i64 0
  %45 = load i32, i32* %arrayidx77, align 4
  %and = and i32 %45, -2049
  store i32 %and, i32* %arrayidx77, align 4
  %46 = load i32*, i32** %p, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx78, align 4
  %and79 = and i32 %47, -16385
  store i32 %and79, i32* %arrayidx78, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.76
  %48 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize81 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 0
  %49 = load i32, i32* %wsize81, align 4
  %50 = load i32*, i32** %p, align 8
  %idx.ext82 = sext i32 %49 to i64
  %add.ptr83 = getelementptr inbounds i32, i32* %50, i64 %idx.ext82
  store i32* %add.ptr83, i32** %p, align 8
  br label %for.cond.73

for.end.84:                                       ; preds = %for.cond.73
  %51 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data85 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 5
  %52 = load i32*, i32** %data85, align 8
  store i32* %52, i32** %p, align 8
  %53 = load i32*, i32** %p, align 8
  %54 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count86 = getelementptr inbounds %struct.set_family, %struct.set_family* %54, i32 0, i32 3
  %55 = load i32, i32* %count86, align 4
  %56 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize87 = getelementptr inbounds %struct.set_family, %struct.set_family* %56, i32 0, i32 0
  %57 = load i32, i32* %wsize87, align 4
  %mul88 = mul nsw i32 %55, %57
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds i32, i32* %53, i64 %idx.ext89
  store i32* %add.ptr90, i32** %last, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.122, %for.end.84
  %58 = load i32*, i32** %p, align 8
  %59 = load i32*, i32** %last, align 8
  %cmp92 = icmp ult i32* %58, %59
  br i1 %cmp92, label %for.body.94, label %for.end.126

for.body.94:                                      ; preds = %for.cond.91
  %60 = load i32*, i32** %p, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx95, align 4
  %and96 = and i32 %61, 32768
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end.121, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.94
  %62 = load i32*, i32** %p, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx98, align 4
  %and99 = and i32 %63, 2048
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.end.121, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true
  %64 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %65 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %66 = load i32*, i32** %RAISE, align 8
  %67 = load i32*, i32** %FREESET, align 8
  %68 = load i32*, i32** %OVEREXPANDED_CUBE, align 8
  %69 = load i32*, i32** %SUPER_CUBE, align 8
  %70 = load i32*, i32** %INIT_LOWER, align 8
  %71 = load i32*, i32** %p, align 8
  call void @expand1(%struct.set_family* %64, %struct.set_family* %65, i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %num_covered, i32* %71)
  %72 = load i32, i32* @debug, align 4
  %and102 = and i32 %72, 4
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.then.101
  %73 = load i32*, i32** %p, align 8
  %call105 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %73)
  %74 = load i32, i32* %num_covered, align 4
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %call105, i32 %74)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.then.101
  %75 = load i32*, i32** %p, align 8
  %76 = load i32*, i32** %RAISE, align 8
  %call108 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %75, i32* %76)
  %77 = load i32*, i32** %p, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx109, align 4
  %or = or i32 %78, 32768
  store i32 %or, i32* %arrayidx109, align 4
  %79 = load i32*, i32** %p, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx110, align 4
  %and111 = and i32 %80, -2049
  store i32 %and111, i32* %arrayidx110, align 4
  %81 = load i32, i32* %num_covered, align 4
  %cmp112 = icmp eq i32 %81, 0
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.120

land.lhs.true.114:                                ; preds = %if.end.107
  %82 = load i32*, i32** %p, align 8
  %83 = load i32*, i32** %OVEREXPANDED_CUBE, align 8
  %call115 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %82, i32* %83)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.120, label %if.then.117

if.then.117:                                      ; preds = %land.lhs.true.114
  %84 = load i32*, i32** %p, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx118, align 4
  %or119 = or i32 %85, 16384
  store i32 %or119, i32* %arrayidx118, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %land.lhs.true.114, %if.end.107
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true, %for.body.94
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %86 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize123 = getelementptr inbounds %struct.set_family, %struct.set_family* %86, i32 0, i32 0
  %87 = load i32, i32* %wsize123, align 4
  %88 = load i32*, i32** %p, align 8
  %idx.ext124 = sext i32 %87 to i64
  %add.ptr125 = getelementptr inbounds i32, i32* %88, i64 %idx.ext124
  store i32* %add.ptr125, i32** %p, align 8
  br label %for.cond.91

for.end.126:                                      ; preds = %for.cond.91
  %89 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 4
  store i32 0, i32* %active_count, align 4
  store i32 0, i32* %change, align 4
  %90 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data127 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 5
  %91 = load i32*, i32** %data127, align 8
  store i32* %91, i32** %p, align 8
  %92 = load i32*, i32** %p, align 8
  %93 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count128 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %94 = load i32, i32* %count128, align 4
  %95 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize129 = getelementptr inbounds %struct.set_family, %struct.set_family* %95, i32 0, i32 0
  %96 = load i32, i32* %wsize129, align 4
  %mul130 = mul nsw i32 %94, %96
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i32, i32* %92, i64 %idx.ext131
  store i32* %add.ptr132, i32** %last, align 8
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.149, %for.end.126
  %97 = load i32*, i32** %p, align 8
  %98 = load i32*, i32** %last, align 8
  %cmp134 = icmp ult i32* %97, %98
  br i1 %cmp134, label %for.body.136, label %for.end.153

for.body.136:                                     ; preds = %for.cond.133
  %99 = load i32*, i32** %p, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx137, align 4
  %and138 = and i32 %100, 2048
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.then.140, label %if.else.143

if.then.140:                                      ; preds = %for.body.136
  %101 = load i32*, i32** %p, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx141, align 4
  %and142 = and i32 %102, -8193
  store i32 %and142, i32* %arrayidx141, align 4
  store i32 1, i32* %change, align 4
  br label %if.end.148

if.else.143:                                      ; preds = %for.body.136
  %103 = load i32*, i32** %p, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %103, i64 0
  %104 = load i32, i32* %arrayidx144, align 4
  %or145 = or i32 %104, 8192
  store i32 %or145, i32* %arrayidx144, align 4
  %105 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %active_count146 = getelementptr inbounds %struct.set_family, %struct.set_family* %105, i32 0, i32 4
  %106 = load i32, i32* %active_count146, align 4
  %inc147 = add nsw i32 %106, 1
  store i32 %inc147, i32* %active_count146, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.143, %if.then.140
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %107 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize150 = getelementptr inbounds %struct.set_family, %struct.set_family* %107, i32 0, i32 0
  %108 = load i32, i32* %wsize150, align 4
  %109 = load i32*, i32** %p, align 8
  %idx.ext151 = sext i32 %108 to i64
  %add.ptr152 = getelementptr inbounds i32, i32* %109, i64 %idx.ext151
  store i32* %add.ptr152, i32** %p, align 8
  br label %for.cond.133

for.end.153:                                      ; preds = %for.cond.133
  %110 = load i32, i32* %change, align 4
  %tobool154 = icmp ne i32 %110, 0
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %for.end.153
  %111 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call156 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %111)
  store %struct.set_family* %call156, %struct.set_family** %F.addr, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %for.end.153
  %112 = load i32*, i32** %RAISE, align 8
  %tobool158 = icmp ne i32* %112, null
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.157
  %113 = load i32*, i32** %RAISE, align 8
  %114 = bitcast i32* %113 to i8*
  call void @free(i8* %114)
  store i32* null, i32** %RAISE, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.end.157
  %115 = load i32*, i32** %FREESET, align 8
  %tobool161 = icmp ne i32* %115, null
  br i1 %tobool161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.160
  %116 = load i32*, i32** %FREESET, align 8
  %117 = bitcast i32* %116 to i8*
  call void @free(i8* %117)
  store i32* null, i32** %FREESET, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %if.end.160
  %118 = load i32*, i32** %INIT_LOWER, align 8
  %tobool164 = icmp ne i32* %118, null
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.163
  %119 = load i32*, i32** %INIT_LOWER, align 8
  %120 = bitcast i32* %119 to i8*
  call void @free(i8* %120)
  store i32* null, i32** %INIT_LOWER, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.163
  %121 = load i32*, i32** %SUPER_CUBE, align 8
  %tobool167 = icmp ne i32* %121, null
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.166
  %122 = load i32*, i32** %SUPER_CUBE, align 8
  %123 = bitcast i32* %122 to i8*
  call void @free(i8* %123)
  store i32* null, i32** %SUPER_CUBE, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.166
  %124 = load i32*, i32** %OVEREXPANDED_CUBE, align 8
  %tobool170 = icmp ne i32* %124, null
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.169
  %125 = load i32*, i32** %OVEREXPANDED_CUBE, align 8
  %126 = bitcast i32* %125 to i8*
  call void @free(i8* %126)
  store i32* null, i32** %OVEREXPANDED_CUBE, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.end.169
  %127 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %127
}

declare %struct.set_family* @random_order(...) #1

declare %struct.set_family* @mini_sort(...) #1

declare i32 @ascend(...) #1

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32* @set_or(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare i32* @set_copy(...) #1

declare i32 @setp_equal(...) #1

declare %struct.set_family* @sf_inactive(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @expand1(%struct.set_family* %BB, %struct.set_family* %CC, i32* %RAISE, i32* %FREESET, i32* %OVEREXPANDED_CUBE, i32* %SUPER_CUBE, i32* %INIT_LOWER, i32* %num_covered, i32* %c) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %CC.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %OVEREXPANDED_CUBE.addr = alloca i32*, align 8
  %SUPER_CUBE.addr = alloca i32*, align 8
  %INIT_LOWER.addr = alloca i32*, align 8
  %num_covered.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %bestindex = alloca i32, align 4
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store %struct.set_family* %CC, %struct.set_family** %CC.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  store i32* %OVEREXPANDED_CUBE, i32** %OVEREXPANDED_CUBE.addr, align 8
  store i32* %SUPER_CUBE, i32** %SUPER_CUBE.addr, align 8
  store i32* %INIT_LOWER, i32** %INIT_LOWER.addr, align 8
  store i32* %num_covered, i32** %num_covered.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %c.addr, align 8
  %call = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %c.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %or = or i32 %3, 32768
  store i32 %or, i32* %arrayidx, align 4
  %4 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %5 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  call void @setup_BB_CC(%struct.set_family* %4, %struct.set_family* %5)
  %6 = load i32*, i32** %num_covered.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %SUPER_CUBE.addr, align 8
  %8 = load i32*, i32** %c.addr, align 8
  %call2 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %7, i32* %8)
  %9 = load i32*, i32** %RAISE.addr, align 8
  %10 = load i32*, i32** %c.addr, align 8
  %call3 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %9, i32* %10)
  %11 = load i32*, i32** %FREESET.addr, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %13 = load i32*, i32** %RAISE.addr, align 8
  %call4 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %11, i32* %12, i32* %13)
  %14 = load i32*, i32** %INIT_LOWER.addr, align 8
  %call5 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* %14)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %15 = load i32*, i32** %FREESET.addr, align 8
  %16 = load i32*, i32** %FREESET.addr, align 8
  %17 = load i32*, i32** %INIT_LOWER.addr, align 8
  %call8 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %15, i32* %16, i32* %17)
  %18 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %19 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %20 = load i32*, i32** %RAISE.addr, align 8
  %21 = load i32*, i32** %FREESET.addr, align 8
  call void @elim_lowering(%struct.set_family* %18, %struct.set_family* %19, i32* %20, i32* %21)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %22 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %23 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %24 = load i32*, i32** %RAISE.addr, align 8
  %25 = load i32*, i32** %FREESET.addr, align 8
  call void @essen_parts(%struct.set_family* %22, %struct.set_family* %23, i32* %24, i32* %25)
  %26 = load i32*, i32** %OVEREXPANDED_CUBE.addr, align 8
  %27 = load i32*, i32** %RAISE.addr, align 8
  %28 = load i32*, i32** %FREESET.addr, align 8
  %call10 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %26, i32* %27, i32* %28)
  %29 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 4
  %30 = load i32, i32* %active_count, align 4
  %cmp = icmp sgt i32 %30, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %31 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %32 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %33 = load i32*, i32** %RAISE.addr, align 8
  %34 = load i32*, i32** %FREESET.addr, align 8
  %35 = load i32*, i32** %SUPER_CUBE.addr, align 8
  %36 = load i32*, i32** %num_covered.addr, align 8
  call void @select_feasible(%struct.set_family* %31, %struct.set_family* %32, i32* %33, i32* %34, i32* %35, i32* %36)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %37 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count13 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 4
  %38 = load i32, i32* %active_count13, align 4
  %cmp14 = icmp sgt i32 %38, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %40 = load i32*, i32** %FREESET.addr, align 8
  %call15 = call i32 @most_frequent(%struct.set_family* %39, i32* %40)
  store i32 %call15, i32* %bestindex, align 4
  %41 = load i32, i32* %bestindex, align 4
  %and16 = and i32 %41, 31
  %shl = shl i32 1, %and16
  %42 = load i32, i32* %bestindex, align 4
  %shr = ashr i32 %42, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %43 = load i32*, i32** %RAISE.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %43, i64 %idxprom
  %44 = load i32, i32* %arrayidx17, align 4
  %or18 = or i32 %44, %shl
  store i32 %or18, i32* %arrayidx17, align 4
  %45 = load i32, i32* %bestindex, align 4
  %and19 = and i32 %45, 31
  %shl20 = shl i32 1, %and19
  %neg = xor i32 %shl20, -1
  %46 = load i32, i32* %bestindex, align 4
  %shr21 = ashr i32 %46, 5
  %add22 = add nsw i32 %shr21, 1
  %idxprom23 = sext i32 %add22 to i64
  %47 = load i32*, i32** %FREESET.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %47, i64 %idxprom23
  %48 = load i32, i32* %arrayidx24, align 4
  %and25 = and i32 %48, %neg
  store i32 %and25, i32* %arrayidx24, align 4
  %49 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %50 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %51 = load i32*, i32** %RAISE.addr, align 8
  %52 = load i32*, i32** %FREESET.addr, align 8
  call void @essen_parts(%struct.set_family* %49, %struct.set_family* %50, i32* %51, i32* %52)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.29, %while.end
  %53 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count27 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 4
  %54 = load i32, i32* %active_count27, align 4
  %cmp28 = icmp sgt i32 %54, 0
  br i1 %cmp28, label %while.body.29, label %while.end.30

while.body.29:                                    ; preds = %while.cond.26
  %55 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %56 = load i32*, i32** %RAISE.addr, align 8
  %57 = load i32*, i32** %FREESET.addr, align 8
  call void @mincov(%struct.set_family* %55, i32* %56, i32* %57)
  br label %while.cond.26

while.end.30:                                     ; preds = %while.cond.26
  %58 = load i32*, i32** %RAISE.addr, align 8
  %59 = load i32*, i32** %RAISE.addr, align 8
  %60 = load i32*, i32** %FREESET.addr, align 8
  %call31 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %58, i32* %59, i32* %60)
  ret void
}

declare i32* @set_diff(...) #1

declare i32 @setp_empty(...) #1

; Function Attrs: nounwind uwtable
define void @essen_parts(%struct.set_family* %BB, %struct.set_family* %CC, i32* %RAISE, i32* %FREESET) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %CC.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %r = alloca i32*, align 8
  %lastp = alloca i32*, align 8
  %xlower = alloca i32*, align 8
  %dist = alloca i32, align 4
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w70 = alloca i32, align 4
  %var = alloca i32, align 4
  %last71 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store %struct.set_family* %CC, %struct.set_family** %CC.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  %0 = load i32*, i32** %RAISE.addr, align 8
  store i32* %0, i32** %r, align 8
  %1 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %xlower, align 8
  %3 = load i32*, i32** %xlower, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %3, i32* %4)
  %5 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count, align 4
  %10 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %lastp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %12 = load i32*, i32** %p, align 8
  %13 = load i32*, i32** %lastp, align 8
  %cmp = icmp ult i32* %12, %13
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx1, align 4
  %and = and i32 %15, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.111

if.then:                                          ; preds = %for.body
  store i32 0, i32* %dist, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %16, i32* %last, align 4
  %cmp2 = icmp ne i32 %16, -1
  br i1 %cmp2, label %if.then.3, label %if.end.69

if.then.3:                                        ; preds = %if.then
  %17 = load i32, i32* %last, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx4, align 4
  %20 = load i32, i32* %last, align 4
  %idxprom5 = sext i32 %20 to i64
  %21 = load i32*, i32** %r, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %21, i64 %idxprom5
  %22 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %19, %22
  store i32 %and7, i32* %x, align 4
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %x, align 4
  %shr = lshr i32 %24, 1
  %or = or i32 %23, %shr
  %neg = xor i32 %or, -1
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and8 = and i32 %neg, %25
  store i32 %and8, i32* %x, align 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.30

if.then.10:                                       ; preds = %if.then.3
  %26 = load i32, i32* %x, align 4
  %and11 = and i32 %26, 255
  %idxprom12 = zext i32 %and11 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom12
  %27 = load i32, i32* %arrayidx13, align 4
  %28 = load i32, i32* %x, align 4
  %shr14 = lshr i32 %28, 8
  %and15 = and i32 %shr14, 255
  %idxprom16 = zext i32 %and15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom16
  %29 = load i32, i32* %arrayidx17, align 4
  %add = add nsw i32 %27, %29
  %30 = load i32, i32* %x, align 4
  %shr18 = lshr i32 %30, 16
  %and19 = and i32 %shr18, 255
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom20
  %31 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %add, %31
  %32 = load i32, i32* %x, align 4
  %shr23 = lshr i32 %32, 24
  %and24 = and i32 %shr23, 255
  %idxprom25 = zext i32 %and24 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom25
  %33 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %add22, %33
  store i32 %add27, i32* %dist, align 4
  %cmp28 = icmp sgt i32 %add27, 1
  br i1 %cmp28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.then.10
  br label %exit_if

if.end:                                           ; preds = %if.then.10
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.3
  store i32 1, i32* %w, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.end.30
  %34 = load i32, i32* %w, align 4
  %35 = load i32, i32* %last, align 4
  %cmp32 = icmp slt i32 %34, %35
  br i1 %cmp32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.31
  %36 = load i32, i32* %w, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load i32*, i32** %p, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %37, i64 %idxprom34
  %38 = load i32, i32* %arrayidx35, align 4
  %39 = load i32, i32* %w, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load i32*, i32** %r, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %40, i64 %idxprom36
  %41 = load i32, i32* %arrayidx37, align 4
  %and38 = and i32 %38, %41
  store i32 %and38, i32* %x, align 4
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %x, align 4
  %shr39 = lshr i32 %43, 1
  %or40 = or i32 %42, %shr39
  %neg41 = xor i32 %or40, -1
  %and42 = and i32 %neg41, 1431655765
  store i32 %and42, i32* %x, align 4
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.68

if.then.44:                                       ; preds = %for.body.33
  %44 = load i32, i32* %dist, align 4
  %cmp45 = icmp eq i32 %44, 1
  br i1 %cmp45, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.44
  %45 = load i32, i32* %x, align 4
  %and46 = and i32 %45, 255
  %idxprom47 = zext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom47
  %46 = load i32, i32* %arrayidx48, align 4
  %47 = load i32, i32* %x, align 4
  %shr49 = lshr i32 %47, 8
  %and50 = and i32 %shr49, 255
  %idxprom51 = zext i32 %and50 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom51
  %48 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %46, %48
  %49 = load i32, i32* %x, align 4
  %shr54 = lshr i32 %49, 16
  %and55 = and i32 %shr54, 255
  %idxprom56 = zext i32 %and55 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom56
  %50 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %add53, %50
  %51 = load i32, i32* %x, align 4
  %shr59 = lshr i32 %51, 24
  %and60 = and i32 %shr59, 255
  %idxprom61 = zext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom61
  %52 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %add58, %52
  %53 = load i32, i32* %dist, align 4
  %add64 = add nsw i32 %53, %add63
  store i32 %add64, i32* %dist, align 4
  %cmp65 = icmp sgt i32 %add64, 1
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false, %if.then.44
  br label %exit_if

if.end.67:                                        ; preds = %lor.lhs.false
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %54 = load i32, i32* %w, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  br label %if.end.69

if.end.69:                                        ; preds = %for.end, %if.then
  %55 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %55, i32* %var, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.102, %if.end.69
  %56 = load i32, i32* %var, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp73 = icmp slt i32 %56, %57
  br i1 %cmp73, label %for.body.74, label %for.end.104

for.body.74:                                      ; preds = %for.cond.72
  %58 = load i32, i32* %var, align 4
  %idxprom75 = sext i32 %58 to i64
  %59 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %59, i64 %idxprom75
  %60 = load i32*, i32** %arrayidx76, align 8
  store i32* %60, i32** %mask, align 8
  %61 = load i32, i32* %var, align 4
  %idxprom77 = sext i32 %61 to i64
  %62 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %62, i64 %idxprom77
  %63 = load i32, i32* %arrayidx78, align 4
  store i32 %63, i32* %last71, align 4
  %64 = load i32, i32* %var, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %65, i64 %idxprom79
  %66 = load i32, i32* %arrayidx80, align 4
  store i32 %66, i32* %w70, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.95, %for.body.74
  %67 = load i32, i32* %w70, align 4
  %68 = load i32, i32* %last71, align 4
  %cmp82 = icmp sle i32 %67, %68
  br i1 %cmp82, label %for.body.83, label %for.end.97

for.body.83:                                      ; preds = %for.cond.81
  %69 = load i32, i32* %w70, align 4
  %idxprom84 = sext i32 %69 to i64
  %70 = load i32*, i32** %p, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %70, i64 %idxprom84
  %71 = load i32, i32* %arrayidx85, align 4
  %72 = load i32, i32* %w70, align 4
  %idxprom86 = sext i32 %72 to i64
  %73 = load i32*, i32** %r, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %73, i64 %idxprom86
  %74 = load i32, i32* %arrayidx87, align 4
  %and88 = and i32 %71, %74
  %75 = load i32, i32* %w70, align 4
  %idxprom89 = sext i32 %75 to i64
  %76 = load i32*, i32** %mask, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %76, i64 %idxprom89
  %77 = load i32, i32* %arrayidx90, align 4
  %and91 = and i32 %and88, %77
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.body.83
  br label %nextvar

if.end.94:                                        ; preds = %for.body.83
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %78 = load i32, i32* %w70, align 4
  %inc96 = add nsw i32 %78, 1
  store i32 %inc96, i32* %w70, align 4
  br label %for.cond.81

for.end.97:                                       ; preds = %for.cond.81
  %79 = load i32, i32* %dist, align 4
  %inc98 = add nsw i32 %79, 1
  store i32 %inc98, i32* %dist, align 4
  %cmp99 = icmp sgt i32 %inc98, 1
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.end.97
  br label %exit_if

if.end.101:                                       ; preds = %for.end.97
  br label %nextvar

nextvar:                                          ; preds = %if.end.101, %if.then.93
  br label %for.inc.102

for.inc.102:                                      ; preds = %nextvar
  %80 = load i32, i32* %var, align 4
  %inc103 = add nsw i32 %80, 1
  store i32 %inc103, i32* %var, align 4
  br label %for.cond.72

for.end.104:                                      ; preds = %for.cond.72
  %81 = load i32, i32* %dist, align 4
  %cmp105 = icmp eq i32 %81, 0
  br i1 %cmp105, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %for.end.104
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.110

if.else:                                          ; preds = %for.end.104
  %82 = load i32*, i32** %xlower, align 8
  %83 = load i32*, i32** %p, align 8
  %84 = load i32*, i32** %r, align 8
  %call107 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @force_lower to i32* (i32*, i32*, i32*, ...)*)(i32* %82, i32* %83, i32* %84)
  %85 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 4
  %86 = load i32, i32* %active_count, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %active_count, align 4
  %87 = load i32*, i32** %p, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %87, i64 0
  %88 = load i32, i32* %arrayidx108, align 4
  %and109 = and i32 %88, -8193
  store i32 %and109, i32* %arrayidx108, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else, %if.then.106
  br label %exit_if

exit_if:                                          ; preds = %if.end.110, %if.then.100, %if.then.66, %if.then.29
  br label %if.end.111

if.end.111:                                       ; preds = %exit_if, %for.body
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %89 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize113 = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 0
  %90 = load i32, i32* %wsize113, align 4
  %91 = load i32*, i32** %p, align 8
  %idx.ext114 = sext i32 %90 to i64
  %add.ptr115 = getelementptr inbounds i32, i32* %91, i64 %idx.ext114
  store i32* %add.ptr115, i32** %p, align 8
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %92 = load i32*, i32** %xlower, align 8
  %call117 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* %92)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end.121, label %if.then.119

if.then.119:                                      ; preds = %for.end.116
  %93 = load i32*, i32** %FREESET.addr, align 8
  %94 = load i32*, i32** %FREESET.addr, align 8
  %95 = load i32*, i32** %xlower, align 8
  %call120 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %93, i32* %94, i32* %95)
  %96 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %97 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %98 = load i32*, i32** %RAISE.addr, align 8
  %99 = load i32*, i32** %FREESET.addr, align 8
  call void @elim_lowering(%struct.set_family* %96, %struct.set_family* %97, i32* %98, i32* %99)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %for.end.116
  %100 = load i32, i32* @debug, align 4
  %and122 = and i32 %100, 8
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.128

if.then.124:                                      ; preds = %if.end.121
  %101 = load i32*, i32** %RAISE.addr, align 8
  %call125 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %101)
  %102 = load i32*, i32** %FREESET.addr, align 8
  %call126 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %102)
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* %call125, i8* %call126)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.124, %if.end.121
  ret void
}

declare void @fatal(...) #1

declare i32* @force_lower(...) #1

declare i8* @pc2(...) #1

; Function Attrs: nounwind uwtable
define void @essen_raising(%struct.set_family* %BB, i32* %RAISE, i32* %FREESET) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %xraise = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %xraise, align 8
  %2 = load i32*, i32** %xraise, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %2, i32* %3)
  %4 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %p, align 8
  %6 = load i32*, i32** %p, align 8
  %7 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %9 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32*, i32** %p, align 8
  %12 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx1, align 4
  %and = and i32 %14, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32*, i32** %xraise, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx2, align 4
  %and3 = and i32 %16, 1023
  store i32 %and3, i32* %i_, align 4
  %17 = load i32*, i32** %xraise, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 %18, -1024
  store i32 %and5, i32* %arrayidx4, align 4
  %19 = load i32, i32* %i_, align 4
  %20 = load i32*, i32** %xraise, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx6, align 4
  %or = or i32 %21, %19
  store i32 %or, i32* %arrayidx6, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %22 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32*, i32** %xraise, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx7, align 4
  %25 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %25 to i64
  %26 = load i32*, i32** %p, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %26, i64 %idxprom8
  %27 = load i32, i32* %arrayidx9, align 4
  %or10 = or i32 %24, %27
  %28 = load i32, i32* %i_, align 4
  %idxprom11 = sext i32 %28 to i64
  %29 = load i32*, i32** %xraise, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %29, i64 %idxprom11
  store i32 %or10, i32* %arrayidx12, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i_, align 4
  %cmp13 = icmp sgt i32 %dec, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize14 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 0
  %32 = load i32, i32* %wsize14, align 4
  %33 = load i32*, i32** %p, align 8
  %idx.ext15 = sext i32 %32 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %33, i64 %idx.ext15
  store i32* %add.ptr16, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32*, i32** %xraise, align 8
  %35 = load i32*, i32** %FREESET.addr, align 8
  %36 = load i32*, i32** %xraise, align 8
  %call17 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %34, i32* %35, i32* %36)
  %37 = load i32*, i32** %RAISE.addr, align 8
  %38 = load i32*, i32** %RAISE.addr, align 8
  %39 = load i32*, i32** %xraise, align 8
  %call18 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %37, i32* %38, i32* %39)
  %40 = load i32*, i32** %FREESET.addr, align 8
  %41 = load i32*, i32** %FREESET.addr, align 8
  %42 = load i32*, i32** %xraise, align 8
  %call19 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %40, i32* %41, i32* %42)
  %43 = load i32, i32* @debug, align 4
  %and20 = and i32 %43, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.end
  %44 = load i32*, i32** %RAISE.addr, align 8
  %call23 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %44)
  %45 = load i32*, i32** %FREESET.addr, align 8
  %call24 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %45)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* %call23, i8* %call24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @elim_lowering(%struct.set_family* %BB, %struct.set_family* %CC, i32* %RAISE, i32* %FREESET) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %CC.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %r = alloca i32*, align 8
  %last = alloca i32*, align 8
  %w = alloca i32, align 4
  %lastw = alloca i32, align 4
  %x = alloca i32, align 4
  %w27 = alloca i32, align 4
  %var = alloca i32, align 4
  %lastw28 = alloca i32, align 4
  %mask = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store %struct.set_family* %CC, %struct.set_family** %CC.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  %2 = load i32*, i32** %RAISE.addr, align 8
  %3 = load i32*, i32** %FREESET.addr, align 8
  %call = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %1, i32* %2, i32* %3)
  store i32* %call, i32** %r, align 8
  %4 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %p, align 8
  %6 = load i32*, i32** %p, align 8
  %7 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %9 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %11 = load i32*, i32** %p, align 8
  %12 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %11, %12
  br i1 %cmp, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx1, align 4
  %and = and i32 %14, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.60

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %15, i32* %lastw, align 4
  %cmp2 = icmp ne i32 %15, -1
  br i1 %cmp2, label %if.then.3, label %if.end.26

if.then.3:                                        ; preds = %if.then
  %16 = load i32, i32* %lastw, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx4, align 4
  %19 = load i32, i32* %lastw, align 4
  %idxprom5 = sext i32 %19 to i64
  %20 = load i32*, i32** %r, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %20, i64 %idxprom5
  %21 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %18, %21
  store i32 %and7, i32* %x, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %x, align 4
  %shr = lshr i32 %23, 1
  %or = or i32 %22, %shr
  %neg = xor i32 %or, -1
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and8 = and i32 %neg, %24
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.3
  br label %false

if.end:                                           ; preds = %if.then.3
  store i32 1, i32* %w, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.end
  %25 = load i32, i32* %w, align 4
  %26 = load i32, i32* %lastw, align 4
  %cmp12 = icmp slt i32 %25, %26
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %27 = load i32, i32* %w, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load i32*, i32** %p, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %28, i64 %idxprom14
  %29 = load i32, i32* %arrayidx15, align 4
  %30 = load i32, i32* %w, align 4
  %idxprom16 = sext i32 %30 to i64
  %31 = load i32*, i32** %r, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %31, i64 %idxprom16
  %32 = load i32, i32* %arrayidx17, align 4
  %and18 = and i32 %29, %32
  store i32 %and18, i32* %x, align 4
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %x, align 4
  %shr19 = lshr i32 %34, 1
  %or20 = or i32 %33, %shr19
  %neg21 = xor i32 %or20, -1
  %and22 = and i32 %neg21, 1431655765
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.13
  br label %false

if.end.25:                                        ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %35 = load i32, i32* %w, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.then
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %36, i32* %var, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.55, %if.end.26
  %37 = load i32, i32* %var, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp30 = icmp slt i32 %37, %38
  br i1 %cmp30, label %for.body.31, label %for.end.57

for.body.31:                                      ; preds = %for.cond.29
  %39 = load i32, i32* %var, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %40, i64 %idxprom32
  %41 = load i32*, i32** %arrayidx33, align 8
  store i32* %41, i32** %mask, align 8
  %42 = load i32, i32* %var, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %43, i64 %idxprom34
  %44 = load i32, i32* %arrayidx35, align 4
  store i32 %44, i32* %lastw28, align 4
  %45 = load i32, i32* %var, align 4
  %idxprom36 = sext i32 %45 to i64
  %46 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 %idxprom36
  %47 = load i32, i32* %arrayidx37, align 4
  store i32 %47, i32* %w27, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.52, %for.body.31
  %48 = load i32, i32* %w27, align 4
  %49 = load i32, i32* %lastw28, align 4
  %cmp39 = icmp sle i32 %48, %49
  br i1 %cmp39, label %for.body.40, label %for.end.54

for.body.40:                                      ; preds = %for.cond.38
  %50 = load i32, i32* %w27, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load i32*, i32** %p, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %51, i64 %idxprom41
  %52 = load i32, i32* %arrayidx42, align 4
  %53 = load i32, i32* %w27, align 4
  %idxprom43 = sext i32 %53 to i64
  %54 = load i32*, i32** %r, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %54, i64 %idxprom43
  %55 = load i32, i32* %arrayidx44, align 4
  %and45 = and i32 %52, %55
  %56 = load i32, i32* %w27, align 4
  %idxprom46 = sext i32 %56 to i64
  %57 = load i32*, i32** %mask, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %57, i64 %idxprom46
  %58 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %and45, %58
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body.40
  br label %nextvar

if.end.51:                                        ; preds = %for.body.40
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %59 = load i32, i32* %w27, align 4
  %inc53 = add nsw i32 %59, 1
  store i32 %inc53, i32* %w27, align 4
  br label %for.cond.38

for.end.54:                                       ; preds = %for.cond.38
  br label %false

nextvar:                                          ; preds = %if.then.50
  br label %for.inc.55

for.inc.55:                                       ; preds = %nextvar
  %60 = load i32, i32* %var, align 4
  %inc56 = add nsw i32 %60, 1
  store i32 %inc56, i32* %var, align 4
  br label %for.cond.29

for.end.57:                                       ; preds = %for.cond.29
  br label %for.inc.61

false:                                            ; preds = %for.end.54, %if.then.24, %if.then.10
  %61 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %61, i32 0, i32 4
  %62 = load i32, i32* %active_count, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %active_count, align 4
  %63 = load i32*, i32** %p, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx58, align 4
  %and59 = and i32 %64, -8193
  store i32 %and59, i32* %arrayidx58, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %false, %for.body
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60, %for.end.57
  %65 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize62 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 0
  %66 = load i32, i32* %wsize62, align 4
  %67 = load i32*, i32** %p, align 8
  %idx.ext63 = sext i32 %66 to i64
  %add.ptr64 = getelementptr inbounds i32, i32* %67, i64 %idx.ext63
  store i32* %add.ptr64, i32** %p, align 8
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %68 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %cmp66 = icmp ne %struct.set_family* %68, null
  br i1 %cmp66, label %if.then.67, label %if.end.107

if.then.67:                                       ; preds = %for.end.65
  %69 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %data68 = getelementptr inbounds %struct.set_family, %struct.set_family* %69, i32 0, i32 5
  %70 = load i32*, i32** %data68, align 8
  store i32* %70, i32** %p, align 8
  %71 = load i32*, i32** %p, align 8
  %72 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %count69 = getelementptr inbounds %struct.set_family, %struct.set_family* %72, i32 0, i32 3
  %73 = load i32, i32* %count69, align 4
  %74 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize70 = getelementptr inbounds %struct.set_family, %struct.set_family* %74, i32 0, i32 0
  %75 = load i32, i32* %wsize70, align 4
  %mul71 = mul nsw i32 %73, %75
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds i32, i32* %71, i64 %idx.ext72
  store i32* %add.ptr73, i32** %last, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.102, %if.then.67
  %76 = load i32*, i32** %p, align 8
  %77 = load i32*, i32** %last, align 8
  %cmp75 = icmp ult i32* %76, %77
  br i1 %cmp75, label %for.body.76, label %for.end.106

for.body.76:                                      ; preds = %for.cond.74
  %78 = load i32*, i32** %p, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx77, align 4
  %and78 = and i32 %79, 8192
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.101

if.then.80:                                       ; preds = %for.body.76
  %80 = load i32*, i32** %p, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx81, align 4
  %and82 = and i32 %81, 1023
  store i32 %and82, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.80
  %82 = load i32, i32* %i_, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load i32*, i32** %p, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %83, i64 %idxprom83
  %84 = load i32, i32* %arrayidx84, align 4
  %85 = load i32, i32* %i_, align 4
  %idxprom85 = sext i32 %85 to i64
  %86 = load i32*, i32** %r, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %86, i64 %idxprom85
  %87 = load i32, i32* %arrayidx86, align 4
  %neg87 = xor i32 %87, -1
  %and88 = and i32 %84, %neg87
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %do.body
  br label %do.end

if.end.91:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.91
  %88 = load i32, i32* %i_, align 4
  %dec92 = add nsw i32 %88, -1
  store i32 %dec92, i32* %i_, align 4
  %cmp93 = icmp sgt i32 %dec92, 0
  br i1 %cmp93, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.90
  %89 = load i32, i32* %i_, align 4
  %cmp94 = icmp ne i32 %89, 0
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %do.end
  br label %false1

if.end.96:                                        ; preds = %do.end
  br label %for.inc.102

false1:                                           ; preds = %if.then.95
  %90 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count97 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 4
  %91 = load i32, i32* %active_count97, align 4
  %dec98 = add nsw i32 %91, -1
  store i32 %dec98, i32* %active_count97, align 4
  %92 = load i32*, i32** %p, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx99, align 4
  %and100 = and i32 %93, -8193
  store i32 %and100, i32* %arrayidx99, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %false1, %for.body.76
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101, %if.end.96
  %94 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize103 = getelementptr inbounds %struct.set_family, %struct.set_family* %94, i32 0, i32 0
  %95 = load i32, i32* %wsize103, align 4
  %96 = load i32*, i32** %p, align 8
  %idx.ext104 = sext i32 %95 to i64
  %add.ptr105 = getelementptr inbounds i32, i32* %96, i64 %idx.ext104
  store i32* %add.ptr105, i32** %p, align 8
  br label %for.cond.74

for.end.106:                                      ; preds = %for.cond.74
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %for.end.65
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @most_frequent(%struct.set_family* %CC, i32* %FREESET) #0 {
entry:
  %CC.addr = alloca %struct.set_family*, align 8
  %FREESET.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %best_part = alloca i32, align 4
  %best_count = alloca i32, align 4
  %count = alloca i32*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %CC, %struct.set_family** %CC.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %count, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %count, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %cmp2 = icmp ne %struct.set_family* %7, null
  br i1 %cmp2, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.end
  %8 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 5
  %9 = load i32*, i32** %data, align 8
  store i32* %9, i32** %p, align 8
  %10 = load i32*, i32** %p, align 8
  %11 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 3
  %12 = load i32, i32* %count4, align 4
  %13 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 0
  %14 = load i32, i32* %wsize, align 4
  %mul5 = mul nsw i32 %12, %14
  %idx.ext = sext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i32, i32* %10, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.12, %if.then
  %15 = load i32*, i32** %p, align 8
  %16 = load i32*, i32** %last, align 8
  %cmp7 = icmp ult i32* %15, %16
  br i1 %cmp7, label %for.body.9, label %for.end.16

for.body.9:                                       ; preds = %for.cond.6
  %17 = load i32*, i32** %p, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx10, align 4
  %and = and i32 %18, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body.9
  %19 = load i32*, i32** %p, align 8
  %20 = load i32*, i32** %count, align 8
  call void (i32*, i32*, i32, ...) bitcast (void (...)* @set_adjcnt to void (i32*, i32*, i32, ...)*)(i32* %19, i32* %20, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body.9
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end
  %21 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize13 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize13, align 4
  %23 = load i32*, i32** %p, align 8
  %idx.ext14 = sext i32 %22 to i64
  %add.ptr15 = getelementptr inbounds i32, i32* %23, i64 %idx.ext14
  store i32* %add.ptr15, i32** %p, align 8
  br label %for.cond.6

for.end.16:                                       ; preds = %for.cond.6
  br label %if.end.17

if.end.17:                                        ; preds = %for.end.16, %for.end
  store i32 -1, i32* %best_part, align 4
  store i32 -1, i32* %best_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.35, %if.end.17
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp19 = icmp slt i32 %24, %25
  br i1 %cmp19, label %for.body.21, label %for.end.37

for.body.21:                                      ; preds = %for.cond.18
  %26 = load i32, i32* %i, align 4
  %shr = ashr i32 %26, 5
  %add = add nsw i32 %shr, 1
  %idxprom22 = sext i32 %add to i64
  %27 = load i32*, i32** %FREESET.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 %idxprom22
  %28 = load i32, i32* %arrayidx23, align 4
  %29 = load i32, i32* %i, align 4
  %and24 = and i32 %29, 31
  %shl = shl i32 1, %and24
  %and25 = and i32 %28, %shl
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body.21
  %30 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load i32*, i32** %count, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %31, i64 %idxprom27
  %32 = load i32, i32* %arrayidx28, align 4
  %33 = load i32, i32* %best_count, align 4
  %cmp29 = icmp sgt i32 %32, %33
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %i, align 4
  store i32 %34, i32* %best_part, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load i32*, i32** %count, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %36, i64 %idxprom32
  %37 = load i32, i32* %arrayidx33, align 4
  store i32 %37, i32* %best_count, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.lhs.true, %for.body.21
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %38 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.18

for.end.37:                                       ; preds = %for.cond.18
  %39 = load i32*, i32** %count, align 8
  %tobool38 = icmp ne i32* %39, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end.37
  %40 = load i32*, i32** %count, align 8
  %41 = bitcast i32* %40 to i8*
  call void @free(i8* %41)
  store i32* null, i32** %count, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %for.end.37
  %42 = load i32, i32* @debug, align 4
  %and41 = and i32 %42, 8
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.40
  %43 = load i32, i32* %best_part, align 4
  %44 = load i32*, i32** %FREESET.addr, align 8
  %call44 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %44)
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i32 %43, i8* %call44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.40
  %45 = load i32, i32* %best_part, align 4
  ret i32 %45
}

declare void @set_adjcnt(...) #1

; Function Attrs: nounwind uwtable
define void @setup_BB_CC(%struct.set_family* %BB, %struct.set_family* %CC) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %CC.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store %struct.set_family* %CC, %struct.set_family** %CC.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 4
  store i32 %1, i32* %active_count, align 4
  %3 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  store i32* %4, i32** %p, align 8
  %5 = load i32*, i32** %p, align 8
  %6 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %8 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %7, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32*, i32** %p, align 8
  %11 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx, align 4
  %or = or i32 %13, 8192
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize2, align 4
  %16 = load i32*, i32** %p, align 8
  %idx.ext3 = sext i32 %15 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %16, i64 %idx.ext3
  store i32* %add.ptr4, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %cmp5 = icmp ne %struct.set_family* %17, null
  br i1 %cmp5, label %if.then, label %if.end.32

if.then:                                          ; preds = %for.end
  %18 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %count6 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count6, align 4
  %20 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 4
  store i32 %19, i32* %active_count7, align 4
  %21 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %data8 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 5
  %22 = load i32*, i32** %data8, align 8
  store i32* %22, i32** %p, align 8
  %23 = load i32*, i32** %p, align 8
  %24 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 3
  %25 = load i32, i32* %count9, align 4
  %26 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize10 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 0
  %27 = load i32, i32* %wsize10, align 4
  %mul11 = mul nsw i32 %25, %27
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %23, i64 %idx.ext12
  store i32* %add.ptr13, i32** %last, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %if.then
  %28 = load i32*, i32** %p, align 8
  %29 = load i32*, i32** %last, align 8
  %cmp15 = icmp ult i32* %28, %29
  br i1 %cmp15, label %for.body.16, label %for.end.31

for.body.16:                                      ; preds = %for.cond.14
  %30 = load i32*, i32** %p, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx17, align 4
  %and = and i32 %31, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.16
  %32 = load i32*, i32** %p, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx18, align 4
  %and19 = and i32 %33, 32768
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false, %for.body.16
  %34 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count22 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 4
  %35 = load i32, i32* %active_count22, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %active_count22, align 4
  %36 = load i32*, i32** %p, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %37, -8193
  store i32 %and24, i32* %arrayidx23, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %38 = load i32*, i32** %p, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %38, i64 0
  %39 = load i32, i32* %arrayidx25, align 4
  %or26 = or i32 %39, 8192
  store i32 %or26, i32* %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %40 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize28 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 0
  %41 = load i32, i32* %wsize28, align 4
  %42 = load i32*, i32** %p, align 8
  %idx.ext29 = sext i32 %41 to i64
  %add.ptr30 = getelementptr inbounds i32, i32* %42, i64 %idx.ext29
  store i32* %add.ptr30, i32** %p, align 8
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @select_feasible(%struct.set_family* %BB, %struct.set_family* %CC, i32* %RAISE, i32* %FREESET, i32* %SUPER_CUBE, i32* %num_covered) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %CC.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %SUPER_CUBE.addr = alloca i32*, align 8
  %num_covered.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %bestfeas = alloca i32*, align 8
  %feas = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %feas_new_lower = alloca i32**, align 8
  %bestcount = alloca i32, align 4
  %bestsize = alloca i32, align 4
  %count = alloca i32, align 4
  %size = alloca i32, align 4
  %numfeas = alloca i32, align 4
  %lastfeas = alloca i32, align 4
  %new_lower = alloca %struct.set_family*, align 8
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store %struct.set_family* %CC, %struct.set_family** %CC.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  store i32* %SUPER_CUBE, i32** %SUPER_CUBE.addr, align 8
  store i32* %num_covered, i32** %num_covered.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 4
  %1 = load i32, i32* %active_count, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32**
  store i32** %2, i32*** %feas, align 8
  store i32 0, i32* %numfeas, align 4
  %3 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  store i32* %4, i32** %p, align 8
  %5 = load i32*, i32** %p, align 8
  %6 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %8 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul2 = mul nsw i32 %7, %9
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32*, i32** %p, align 8
  %11 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx, align 4
  %and = and i32 %13, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32*, i32** %p, align 8
  %15 = load i32, i32* %numfeas, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %numfeas, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32**, i32*** %feas, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %16, i64 %idxprom
  store i32* %14, i32** %arrayidx4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %wsize5 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 0
  %18 = load i32, i32* %wsize5, align 4
  %19 = load i32*, i32** %p, align 8
  %idx.ext6 = sext i32 %18 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %19, i64 %idx.ext6
  store i32* %add.ptr7, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 4
  %21 = load i32, i32* %active_count8, align 4
  %conv9 = sext i32 %21 to i64
  %mul10 = mul i64 8, %conv9
  %call11 = call i8* @malloc(i64 %mul10)
  %22 = bitcast i8* %call11 to i32**
  store i32** %22, i32*** %feas_new_lower, align 8
  %23 = load i32, i32* %numfeas, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call12 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %23, i32 %24)
  store %struct.set_family* %call12, %struct.set_family** %new_lower, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.24, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %numfeas, align 4
  %cmp14 = icmp slt i32 %25, %26
  br i1 %cmp14, label %for.body.16, label %for.end.26

for.body.16:                                      ; preds = %for.cond.13
  %27 = load %struct.set_family*, %struct.set_family** %new_lower, align 8
  %data17 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %28 = load i32*, i32** %data17, align 8
  %29 = load %struct.set_family*, %struct.set_family** %new_lower, align 8
  %wsize18 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 0
  %30 = load i32, i32* %wsize18, align 4
  %31 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %30, %31
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, i32* %28, i64 %idx.ext20
  %32 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load i32**, i32*** %feas_new_lower, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %33, i64 %idxprom22
  store i32* %add.ptr21, i32** %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.16
  %34 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.13

for.end.26:                                       ; preds = %for.cond.13
  br label %loop

loop:                                             ; preds = %if.end.123, %for.end.26
  %35 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %36 = load i32*, i32** %RAISE.addr, align 8
  %37 = load i32*, i32** %FREESET.addr, align 8
  call void @essen_raising(%struct.set_family* %35, i32* %36, i32* %37)
  %38 = load i32, i32* %numfeas, align 4
  store i32 %38, i32* %lastfeas, align 4
  store i32 0, i32* %numfeas, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.56, %loop
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %lastfeas, align 4
  %cmp28 = icmp slt i32 %39, %40
  br i1 %cmp28, label %for.body.30, label %for.end.58

for.body.30:                                      ; preds = %for.cond.27
  %41 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load i32**, i32*** %feas, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %42, i64 %idxprom31
  %43 = load i32*, i32** %arrayidx32, align 8
  store i32* %43, i32** %p, align 8
  %44 = load i32*, i32** %p, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %44, i64 0
  %45 = load i32, i32* %arrayidx33, align 4
  %and34 = and i32 %45, 8192
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.55

if.then.36:                                       ; preds = %for.body.30
  %46 = load i32*, i32** %p, align 8
  %47 = load i32*, i32** %RAISE.addr, align 8
  %call37 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %46, i32* %47)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %48 = load i32*, i32** %num_covered.addr, align 8
  %49 = load i32, i32* %48, align 4
  %add = add nsw i32 %49, 1
  store i32 %add, i32* %48, align 4
  %50 = load i32*, i32** %SUPER_CUBE.addr, align 8
  %51 = load i32*, i32** %SUPER_CUBE.addr, align 8
  %52 = load i32*, i32** %p, align 8
  %call40 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %50, i32* %51, i32* %52)
  %53 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %active_count41 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 4
  %54 = load i32, i32* %active_count41, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %active_count41, align 4
  %55 = load i32*, i32** %p, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx42, align 4
  %and43 = and i32 %56, -8193
  store i32 %and43, i32* %arrayidx42, align 4
  %57 = load i32*, i32** %p, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx44, align 4
  %or = or i32 %58, 2048
  store i32 %or, i32* %arrayidx44, align 4
  br label %if.end.54

if.else:                                          ; preds = %if.then.36
  %59 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %60 = load i32*, i32** %p, align 8
  %61 = load i32*, i32** %RAISE.addr, align 8
  %62 = load i32, i32* %numfeas, align 4
  %idxprom45 = sext i32 %62 to i64
  %63 = load i32**, i32*** %feas_new_lower, align 8
  %arrayidx46 = getelementptr inbounds i32*, i32** %63, i64 %idxprom45
  %64 = load i32*, i32** %arrayidx46, align 8
  %call47 = call i32 @feasibly_covered(%struct.set_family* %59, i32* %60, i32* %61, i32* %64)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.else
  %65 = load i32*, i32** %p, align 8
  %66 = load i32, i32* %numfeas, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load i32**, i32*** %feas, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %67, i64 %idxprom50
  store i32* %65, i32** %arrayidx51, align 8
  %68 = load i32, i32* %numfeas, align 4
  %inc52 = add nsw i32 %68, 1
  store i32 %inc52, i32* %numfeas, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %for.body.30
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %69 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %69, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.27

for.end.58:                                       ; preds = %for.cond.27
  %70 = load i32, i32* @debug, align 4
  %and59 = and i32 %70, 8
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %for.end.58
  %71 = load i32, i32* %lastfeas, align 4
  %72 = load i32, i32* %numfeas, align 4
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i32 0, i32 0), i32 %71, i32 %72)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.end.58
  %73 = load i32, i32* %numfeas, align 4
  %cmp64 = icmp eq i32 %73, 0
  br i1 %cmp64, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %if.end.63
  %74 = load i32**, i32*** %feas, align 8
  %tobool67 = icmp ne i32** %74, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.66
  %75 = load i32**, i32*** %feas, align 8
  %76 = bitcast i32** %75 to i8*
  call void @free(i8* %76)
  store i32** null, i32*** %feas, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.then.66
  %77 = load i32**, i32*** %feas_new_lower, align 8
  %tobool70 = icmp ne i32** %77, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  %78 = load i32**, i32*** %feas_new_lower, align 8
  %79 = bitcast i32** %78 to i8*
  call void @free(i8* %79)
  store i32** null, i32*** %feas_new_lower, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  %80 = load %struct.set_family*, %struct.set_family** %new_lower, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %80)
  ret void

if.end.73:                                        ; preds = %if.end.63
  store i32 0, i32* %bestcount, align 4
  store i32 9999, i32* %bestsize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.112, %if.end.73
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %numfeas, align 4
  %cmp75 = icmp slt i32 %81, %82
  br i1 %cmp75, label %for.body.77, label %for.end.114

for.body.77:                                      ; preds = %for.cond.74
  %83 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %83 to i64
  %84 = load i32**, i32*** %feas, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %84, i64 %idxprom78
  %85 = load i32*, i32** %arrayidx79, align 8
  %86 = load i32*, i32** %FREESET.addr, align 8
  %call80 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @set_dist to i32 (i32*, i32*, ...)*)(i32* %85, i32* %86)
  store i32 %call80, i32* %size, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.94, %for.body.77
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %numfeas, align 4
  %cmp82 = icmp slt i32 %87, %88
  br i1 %cmp82, label %for.body.84, label %for.end.96

for.body.84:                                      ; preds = %for.cond.81
  %89 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %89 to i64
  %90 = load i32**, i32*** %feas_new_lower, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %90, i64 %idxprom85
  %91 = load i32*, i32** %arrayidx86, align 8
  %92 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %92 to i64
  %93 = load i32**, i32*** %feas, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %93, i64 %idxprom87
  %94 = load i32*, i32** %arrayidx88, align 8
  %call89 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %91, i32* %94)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %for.body.84
  %95 = load i32, i32* %count, align 4
  %inc92 = add nsw i32 %95, 1
  store i32 %inc92, i32* %count, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %for.body.84
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %96 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %96, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.81

for.end.96:                                       ; preds = %for.cond.81
  %97 = load i32, i32* %count, align 4
  %98 = load i32, i32* %bestcount, align 4
  %cmp97 = icmp sgt i32 %97, %98
  br i1 %cmp97, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %for.end.96
  %99 = load i32, i32* %count, align 4
  store i32 %99, i32* %bestcount, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %100 to i64
  %101 = load i32**, i32*** %feas, align 8
  %arrayidx101 = getelementptr inbounds i32*, i32** %101, i64 %idxprom100
  %102 = load i32*, i32** %arrayidx101, align 8
  store i32* %102, i32** %bestfeas, align 8
  %103 = load i32, i32* %size, align 4
  store i32 %103, i32* %bestsize, align 4
  br label %if.end.111

if.else.102:                                      ; preds = %for.end.96
  %104 = load i32, i32* %count, align 4
  %105 = load i32, i32* %bestcount, align 4
  %cmp103 = icmp eq i32 %104, %105
  br i1 %cmp103, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %if.else.102
  %106 = load i32, i32* %size, align 4
  %107 = load i32, i32* %bestsize, align 4
  %cmp105 = icmp slt i32 %106, %107
  br i1 %cmp105, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %land.lhs.true
  %108 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %108 to i64
  %109 = load i32**, i32*** %feas, align 8
  %arrayidx109 = getelementptr inbounds i32*, i32** %109, i64 %idxprom108
  %110 = load i32*, i32** %arrayidx109, align 8
  store i32* %110, i32** %bestfeas, align 8
  %111 = load i32, i32* %size, align 4
  store i32 %111, i32* %bestsize, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %land.lhs.true, %if.else.102
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.99
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %112 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %112, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.74

for.end.114:                                      ; preds = %for.cond.74
  %113 = load i32*, i32** %RAISE.addr, align 8
  %114 = load i32*, i32** %RAISE.addr, align 8
  %115 = load i32*, i32** %bestfeas, align 8
  %call115 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %113, i32* %114, i32* %115)
  %116 = load i32*, i32** %FREESET.addr, align 8
  %117 = load i32*, i32** %FREESET.addr, align 8
  %118 = load i32*, i32** %RAISE.addr, align 8
  %call116 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %116, i32* %117, i32* %118)
  %119 = load i32, i32* @debug, align 4
  %and117 = and i32 %119, 8
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %for.end.114
  %120 = load i32*, i32** %RAISE.addr, align 8
  %call120 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %120)
  %121 = load i32*, i32** %FREESET.addr, align 8
  %call121 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %121)
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %call120, i8* %call121)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %for.end.114
  %122 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %123 = load %struct.set_family*, %struct.set_family** %CC.addr, align 8
  %124 = load i32*, i32** %RAISE.addr, align 8
  %125 = load i32*, i32** %FREESET.addr, align 8
  call void @essen_parts(%struct.set_family* %122, %struct.set_family* %123, i32* %124, i32* %125)
  br label %loop
}

declare %struct.set_family* @sf_new(...) #1

declare i32 @setp_implies(...) #1

declare void @sf_free(...) #1

declare i32 @set_dist(...) #1

declare i32 @setp_disjoint(...) #1

; Function Attrs: nounwind uwtable
define i32 @feasibly_covered(%struct.set_family* %BB, i32* %c, i32* %RAISE, i32* %new_lower) #0 {
entry:
  %retval = alloca i32, align 4
  %BB.addr = alloca %struct.set_family*, align 8
  %c.addr = alloca i32*, align 8
  %RAISE.addr = alloca i32*, align 8
  %new_lower.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %r = alloca i32*, align 8
  %dist = alloca i32, align 4
  %lastp = alloca i32*, align 8
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w71 = alloca i32, align 4
  %var = alloca i32, align 4
  %last72 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %new_lower, i32** %new_lower.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  %2 = load i32*, i32** %RAISE.addr, align 8
  %3 = load i32*, i32** %c.addr, align 8
  %call = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %1, i32* %2, i32* %3)
  store i32* %call, i32** %r, align 8
  %4 = load i32*, i32** %new_lower.addr, align 8
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call1 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %4, i32* %5)
  %6 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %11 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %10, %12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %lastp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %entry
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %lastp, align 8
  %cmp = icmp ult i32* %13, %14
  br i1 %cmp, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %16, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.110

if.then:                                          ; preds = %for.body
  store i32 0, i32* %dist, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %17, i32* %last, align 4
  %cmp3 = icmp ne i32 %17, -1
  br i1 %cmp3, label %if.then.4, label %if.end.70

if.then.4:                                        ; preds = %if.then
  %18 = load i32, i32* %last, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %p, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx5, align 4
  %21 = load i32, i32* %last, align 4
  %idxprom6 = sext i32 %21 to i64
  %22 = load i32*, i32** %r, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 %idxprom6
  %23 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %20, %23
  store i32 %and8, i32* %x, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %x, align 4
  %shr = lshr i32 %25, 1
  %or = or i32 %24, %shr
  %neg = xor i32 %or, -1
  %26 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and9 = and i32 %neg, %26
  store i32 %and9, i32* %x, align 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.31

if.then.11:                                       ; preds = %if.then.4
  %27 = load i32, i32* %x, align 4
  %and12 = and i32 %27, 255
  %idxprom13 = zext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom13
  %28 = load i32, i32* %arrayidx14, align 4
  %29 = load i32, i32* %x, align 4
  %shr15 = lshr i32 %29, 8
  %and16 = and i32 %shr15, 255
  %idxprom17 = zext i32 %and16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom17
  %30 = load i32, i32* %arrayidx18, align 4
  %add = add nsw i32 %28, %30
  %31 = load i32, i32* %x, align 4
  %shr19 = lshr i32 %31, 16
  %and20 = and i32 %shr19, 255
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom21
  %32 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add, %32
  %33 = load i32, i32* %x, align 4
  %shr24 = lshr i32 %33, 24
  %and25 = and i32 %shr24, 255
  %idxprom26 = zext i32 %and25 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom26
  %34 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %add23, %34
  store i32 %add28, i32* %dist, align 4
  %cmp29 = icmp sgt i32 %add28, 1
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.11
  br label %exit_if

if.end:                                           ; preds = %if.then.11
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.4
  store i32 1, i32* %w, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.end.31
  %35 = load i32, i32* %w, align 4
  %36 = load i32, i32* %last, align 4
  %cmp33 = icmp slt i32 %35, %36
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.32
  %37 = load i32, i32* %w, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load i32*, i32** %p, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 %idxprom35
  %39 = load i32, i32* %arrayidx36, align 4
  %40 = load i32, i32* %w, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load i32*, i32** %r, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %41, i64 %idxprom37
  %42 = load i32, i32* %arrayidx38, align 4
  %and39 = and i32 %39, %42
  store i32 %and39, i32* %x, align 4
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %x, align 4
  %shr40 = lshr i32 %44, 1
  %or41 = or i32 %43, %shr40
  %neg42 = xor i32 %or41, -1
  %and43 = and i32 %neg42, 1431655765
  store i32 %and43, i32* %x, align 4
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.69

if.then.45:                                       ; preds = %for.body.34
  %45 = load i32, i32* %dist, align 4
  %cmp46 = icmp eq i32 %45, 1
  br i1 %cmp46, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.45
  %46 = load i32, i32* %x, align 4
  %and47 = and i32 %46, 255
  %idxprom48 = zext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom48
  %47 = load i32, i32* %arrayidx49, align 4
  %48 = load i32, i32* %x, align 4
  %shr50 = lshr i32 %48, 8
  %and51 = and i32 %shr50, 255
  %idxprom52 = zext i32 %and51 to i64
  %arrayidx53 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom52
  %49 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %47, %49
  %50 = load i32, i32* %x, align 4
  %shr55 = lshr i32 %50, 16
  %and56 = and i32 %shr55, 255
  %idxprom57 = zext i32 %and56 to i64
  %arrayidx58 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom57
  %51 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %add54, %51
  %52 = load i32, i32* %x, align 4
  %shr60 = lshr i32 %52, 24
  %and61 = and i32 %shr60, 255
  %idxprom62 = zext i32 %and61 to i64
  %arrayidx63 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom62
  %53 = load i32, i32* %arrayidx63, align 4
  %add64 = add nsw i32 %add59, %53
  %54 = load i32, i32* %dist, align 4
  %add65 = add nsw i32 %54, %add64
  store i32 %add65, i32* %dist, align 4
  %cmp66 = icmp sgt i32 %add65, 1
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false, %if.then.45
  br label %exit_if

if.end.68:                                        ; preds = %lor.lhs.false
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.body.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %55 = load i32, i32* %w, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %if.then
  %56 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %56, i32* %var, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.103, %if.end.70
  %57 = load i32, i32* %var, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp74 = icmp slt i32 %57, %58
  br i1 %cmp74, label %for.body.75, label %for.end.105

for.body.75:                                      ; preds = %for.cond.73
  %59 = load i32, i32* %var, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %60, i64 %idxprom76
  %61 = load i32*, i32** %arrayidx77, align 8
  store i32* %61, i32** %mask, align 8
  %62 = load i32, i32* %var, align 4
  %idxprom78 = sext i32 %62 to i64
  %63 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %63, i64 %idxprom78
  %64 = load i32, i32* %arrayidx79, align 4
  store i32 %64, i32* %last72, align 4
  %65 = load i32, i32* %var, align 4
  %idxprom80 = sext i32 %65 to i64
  %66 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %66, i64 %idxprom80
  %67 = load i32, i32* %arrayidx81, align 4
  store i32 %67, i32* %w71, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.96, %for.body.75
  %68 = load i32, i32* %w71, align 4
  %69 = load i32, i32* %last72, align 4
  %cmp83 = icmp sle i32 %68, %69
  br i1 %cmp83, label %for.body.84, label %for.end.98

for.body.84:                                      ; preds = %for.cond.82
  %70 = load i32, i32* %w71, align 4
  %idxprom85 = sext i32 %70 to i64
  %71 = load i32*, i32** %p, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %71, i64 %idxprom85
  %72 = load i32, i32* %arrayidx86, align 4
  %73 = load i32, i32* %w71, align 4
  %idxprom87 = sext i32 %73 to i64
  %74 = load i32*, i32** %r, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %74, i64 %idxprom87
  %75 = load i32, i32* %arrayidx88, align 4
  %and89 = and i32 %72, %75
  %76 = load i32, i32* %w71, align 4
  %idxprom90 = sext i32 %76 to i64
  %77 = load i32*, i32** %mask, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %77, i64 %idxprom90
  %78 = load i32, i32* %arrayidx91, align 4
  %and92 = and i32 %and89, %78
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.84
  br label %nextvar

if.end.95:                                        ; preds = %for.body.84
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %79 = load i32, i32* %w71, align 4
  %inc97 = add nsw i32 %79, 1
  store i32 %inc97, i32* %w71, align 4
  br label %for.cond.82

for.end.98:                                       ; preds = %for.cond.82
  %80 = load i32, i32* %dist, align 4
  %inc99 = add nsw i32 %80, 1
  store i32 %inc99, i32* %dist, align 4
  %cmp100 = icmp sgt i32 %inc99, 1
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %for.end.98
  br label %exit_if

if.end.102:                                       ; preds = %for.end.98
  br label %nextvar

nextvar:                                          ; preds = %if.end.102, %if.then.94
  br label %for.inc.103

for.inc.103:                                      ; preds = %nextvar
  %81 = load i32, i32* %var, align 4
  %inc104 = add nsw i32 %81, 1
  store i32 %inc104, i32* %var, align 4
  br label %for.cond.73

for.end.105:                                      ; preds = %for.cond.73
  %82 = load i32, i32* %dist, align 4
  %cmp106 = icmp eq i32 %82, 0
  br i1 %cmp106, label %if.then.107, label %if.else

if.then.107:                                      ; preds = %for.end.105
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end.105
  %83 = load i32*, i32** %new_lower.addr, align 8
  %84 = load i32*, i32** %p, align 8
  %85 = load i32*, i32** %r, align 8
  %call108 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @force_lower to i32* (i32*, i32*, i32*, ...)*)(i32* %83, i32* %84, i32* %85)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else
  br label %exit_if

exit_if:                                          ; preds = %if.end.109, %if.then.101, %if.then.67, %if.then.30
  br label %if.end.110

if.end.110:                                       ; preds = %exit_if, %for.body
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %86 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize112 = getelementptr inbounds %struct.set_family, %struct.set_family* %86, i32 0, i32 0
  %87 = load i32, i32* %wsize112, align 4
  %88 = load i32*, i32** %p, align 8
  %idx.ext113 = sext i32 %87 to i64
  %add.ptr114 = getelementptr inbounds i32, i32* %88, i64 %idx.ext113
  store i32* %add.ptr114, i32** %p, align 8
  br label %for.cond

for.end.115:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.115, %if.then.107
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define void @mincov(%struct.set_family* %BB, i32* %RAISE, i32* %FREESET) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %expansion = alloca i32, align 4
  %nset = alloca i32, align 4
  %var = alloca i32, align 4
  %dist = alloca i32, align 4
  %B = alloca %struct.set_family*, align 8
  %xraise = alloca i32*, align 8
  %xlower = alloca i32*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %plower = alloca i32*, align 8
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %xraise, align 8
  %2 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 4
  %3 = load i32, i32* %active_count, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %3, i32 %4)
  store %struct.set_family* %call, %struct.set_family** %B, align 8
  %5 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count, align 4
  %10 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32*, i32** %p, align 8
  %13 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx1, align 4
  %and = and i32 %15, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data2 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 5
  %17 = load i32*, i32** %data2, align 8
  %18 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize3 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 0
  %19 = load i32, i32* %wsize3, align 4
  %20 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 3
  %21 = load i32, i32* %count4, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %count4, align 4
  %mul5 = mul nsw i32 %19, %21
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %17, i64 %idx.ext6
  %22 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call8 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr7, i32* %22)
  store i32* %call8, i32** %plower, align 8
  %23 = load i32*, i32** %plower, align 8
  %24 = load i32*, i32** %p, align 8
  %25 = load i32*, i32** %RAISE.addr, align 8
  %call9 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @force_lower to i32* (i32*, i32*, i32*, ...)*)(i32* %23, i32* %24, i32* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize10 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 0
  %27 = load i32, i32* %wsize10, align 4
  %28 = load i32*, i32** %p, align 8
  %idx.ext11 = sext i32 %27 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %28, i64 %idx.ext11
  store i32* %add.ptr12, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %nset, align 4
  %29 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data13 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 5
  %30 = load i32*, i32** %data13, align 8
  store i32* %30, i32** %p, align 8
  %31 = load i32*, i32** %p, align 8
  %32 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count14 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count14, align 4
  %34 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize15 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %35 = load i32, i32* %wsize15, align 4
  %mul16 = mul nsw i32 %33, %35
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %31, i64 %idx.ext17
  store i32* %add.ptr18, i32** %last, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.40, %for.end
  %36 = load i32*, i32** %p, align 8
  %37 = load i32*, i32** %last, align 8
  %cmp20 = icmp ult i32* %36, %37
  br i1 %cmp20, label %for.body.21, label %for.end.44

for.body.21:                                      ; preds = %for.cond.19
  store i32 1, i32* %expansion, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %38, i32* %var, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.34, %for.body.21
  %39 = load i32, i32* %var, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp23 = icmp slt i32 %39, %40
  br i1 %cmp23, label %for.body.24, label %for.end.36

for.body.24:                                      ; preds = %for.cond.22
  %41 = load i32*, i32** %p, align 8
  %42 = load i32, i32* %var, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %43, i64 %idxprom
  %44 = load i32*, i32** %arrayidx25, align 8
  %call26 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @set_dist to i32 (i32*, i32*, ...)*)(i32* %41, i32* %44)
  store i32 %call26, i32* %dist, align 4
  %cmp27 = icmp sgt i32 %call26, 1
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %for.body.24
  %45 = load i32, i32* %dist, align 4
  %46 = load i32, i32* %expansion, align 4
  %mul29 = mul nsw i32 %46, %45
  store i32 %mul29, i32* %expansion, align 4
  %47 = load i32, i32* %expansion, align 4
  %cmp30 = icmp sgt i32 %47, 500
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  br label %heuristic_mincov

if.end.32:                                        ; preds = %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body.24
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %48 = load i32, i32* %var, align 4
  %inc35 = add nsw i32 %48, 1
  store i32 %inc35, i32* %var, align 4
  br label %for.cond.22

for.end.36:                                       ; preds = %for.cond.22
  %49 = load i32, i32* %expansion, align 4
  %50 = load i32, i32* %nset, align 4
  %add = add nsw i32 %50, %49
  store i32 %add, i32* %nset, align 4
  %51 = load i32, i32* %nset, align 4
  %cmp37 = icmp sgt i32 %51, 500
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.36
  br label %heuristic_mincov

if.end.39:                                        ; preds = %for.end.36
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %52 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize41 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 0
  %53 = load i32, i32* %wsize41, align 4
  %54 = load i32*, i32** %p, align 8
  %idx.ext42 = sext i32 %53 to i64
  %add.ptr43 = getelementptr inbounds i32, i32* %54, i64 %idx.ext42
  store i32* %add.ptr43, i32** %p, align 8
  br label %for.cond.19

for.end.44:                                       ; preds = %for.cond.19
  %55 = load %struct.set_family*, %struct.set_family** %B, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call45 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @unravel to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %55, i32 %56)
  store %struct.set_family* %call45, %struct.set_family** %B, align 8
  %57 = load %struct.set_family*, %struct.set_family** %B, align 8
  %call46 = call i32* (%struct.set_family*, ...) bitcast (i32* (...)* @do_sm_minimum_cover to i32* (%struct.set_family*, ...)*)(%struct.set_family* %57)
  store i32* %call46, i32** %xlower, align 8
  %58 = load i32*, i32** %RAISE.addr, align 8
  %59 = load i32*, i32** %RAISE.addr, align 8
  %60 = load i32*, i32** %xraise, align 8
  %61 = load i32*, i32** %FREESET.addr, align 8
  %62 = load i32*, i32** %xlower, align 8
  %call47 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %60, i32* %61, i32* %62)
  %call48 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %58, i32* %59, i32* %call47)
  %63 = load i32*, i32** %FREESET.addr, align 8
  %64 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call49 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %63, i32* %64)
  %65 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count50 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 4
  store i32 0, i32* %active_count50, align 4
  %66 = load i32, i32* @debug, align 4
  %and51 = and i32 %66, 8
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %for.end.44
  %67 = load i32*, i32** %RAISE.addr, align 8
  %call54 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %67)
  %68 = load i32*, i32** %FREESET.addr, align 8
  %call55 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %68)
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i8* %call54, i8* %call55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %for.end.44
  %69 = load %struct.set_family*, %struct.set_family** %B, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %69)
  %70 = load i32*, i32** %xlower, align 8
  %tobool58 = icmp ne i32* %70, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %71 = load i32*, i32** %xlower, align 8
  %72 = bitcast i32* %71 to i8*
  call void @free(i8* %72)
  store i32* null, i32** %xlower, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  br label %return

heuristic_mincov:                                 ; preds = %if.then.38, %if.then.31
  %73 = load %struct.set_family*, %struct.set_family** %B, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %73)
  %74 = load i32*, i32** %FREESET.addr, align 8
  %call61 = call i32 @most_frequent(%struct.set_family* null, i32* %74)
  %and62 = and i32 %call61, 31
  %shl = shl i32 1, %and62
  %75 = load i32*, i32** %FREESET.addr, align 8
  %call63 = call i32 @most_frequent(%struct.set_family* null, i32* %75)
  %shr = ashr i32 %call63, 5
  %add64 = add nsw i32 %shr, 1
  %idxprom65 = sext i32 %add64 to i64
  %76 = load i32*, i32** %RAISE.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %76, i64 %idxprom65
  %77 = load i32, i32* %arrayidx66, align 4
  %or = or i32 %77, %shl
  store i32 %or, i32* %arrayidx66, align 4
  %78 = load i32*, i32** %FREESET.addr, align 8
  %79 = load i32*, i32** %FREESET.addr, align 8
  %80 = load i32*, i32** %RAISE.addr, align 8
  %call67 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %78, i32* %79, i32* %80)
  %81 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %82 = load i32*, i32** %RAISE.addr, align 8
  %83 = load i32*, i32** %FREESET.addr, align 8
  call void @essen_parts(%struct.set_family* %81, %struct.set_family* null, i32* %82, i32* %83)
  br label %return

return:                                           ; preds = %heuristic_mincov, %if.end.60
  ret void
}

declare %struct.set_family* @unravel(...) #1

declare i32* @do_sm_minimum_cover(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @find_all_primes(%struct.set_family* %BB, i32* %RAISE, i32* %FREESET) #0 {
entry:
  %BB.addr = alloca %struct.set_family*, align 8
  %RAISE.addr = alloca i32*, align 8
  %FREESET.addr = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %plower = alloca i32*, align 8
  %B = alloca %struct.set_family*, align 8
  %B1 = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  %i_50 = alloca i32, align 4
  store %struct.set_family* %BB, %struct.set_family** %BB.addr, align 8
  store i32* %RAISE, i32** %RAISE.addr, align 8
  store i32* %FREESET, i32** %FREESET.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 4
  %1 = load i32, i32* %active_count, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %2)
  store %struct.set_family* %call, %struct.set_family** %B1, align 8
  %3 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  %5 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %7 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  %mul = mul nsw i32 %6, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %9 = load i32*, i32** %p, align 8
  %10 = load i32*, i32** %RAISE.addr, align 8
  %call1 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %9, i32* %10)
  %11 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4
  %or = or i32 %12, 32768
  store i32 %or, i32* %arrayidx, align 4
  br label %if.end.76

if.else:                                          ; preds = %entry
  %13 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %active_count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 4
  %14 = load i32, i32* %active_count2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call3 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %14, i32 %15)
  store %struct.set_family* %call3, %struct.set_family** %B, align 8
  %16 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %data4 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 5
  %17 = load i32*, i32** %data4, align 8
  store i32* %17, i32** %p, align 8
  %18 = load i32*, i32** %p, align 8
  %19 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %count5 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 3
  %20 = load i32, i32* %count5, align 4
  %21 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize6, align 4
  %mul7 = mul nsw i32 %20, %22
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %18, i64 %idx.ext8
  store i32* %add.ptr9, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %23 = load i32*, i32** %p, align 8
  %24 = load i32*, i32** %last, align 8
  %cmp10 = icmp ult i32* %23, %24
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32*, i32** %p, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx11, align 4
  %and = and i32 %26, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  %27 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data13 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %28 = load i32*, i32** %data13, align 8
  %29 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize14 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 0
  %30 = load i32, i32* %wsize14, align 4
  %31 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count15 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 3
  %32 = load i32, i32* %count15, align 4
  %inc16 = add nsw i32 %32, 1
  store i32 %inc16, i32* %count15, align 4
  %mul17 = mul nsw i32 %30, %32
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds i32, i32* %28, i64 %idx.ext18
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call20 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr19, i32* %33)
  store i32* %call20, i32** %plower, align 8
  %34 = load i32*, i32** %plower, align 8
  %35 = load i32*, i32** %p, align 8
  %36 = load i32*, i32** %RAISE.addr, align 8
  %call21 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @force_lower to i32* (i32*, i32*, i32*, ...)*)(i32* %34, i32* %35, i32* %36)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load %struct.set_family*, %struct.set_family** %BB.addr, align 8
  %wsize22 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %38 = load i32, i32* %wsize22, align 4
  %39 = load i32*, i32** %p, align 8
  %idx.ext23 = sext i32 %38 to i64
  %add.ptr24 = getelementptr inbounds i32, i32* %39, i64 %idx.ext23
  store i32* %add.ptr24, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.set_family*, %struct.set_family** %B, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call25 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @unravel to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %40, i32 %41)
  %call26 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_rev_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call25)
  store %struct.set_family* %call26, %struct.set_family** %B, align 8
  %42 = load %struct.set_family*, %struct.set_family** %B, align 8
  %call27 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @exact_minimum_cover to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %42)
  store %struct.set_family* %call27, %struct.set_family** %B1, align 8
  %43 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %data28 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 5
  %44 = load i32*, i32** %data28, align 8
  store i32* %44, i32** %p, align 8
  %45 = load i32*, i32** %p, align 8
  %46 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %count29 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 3
  %47 = load i32, i32* %count29, align 4
  %48 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %wsize30 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 0
  %49 = load i32, i32* %wsize30, align 4
  %mul31 = mul nsw i32 %47, %49
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %45, i64 %idx.ext32
  store i32* %add.ptr33, i32** %last, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.71, %for.end
  %50 = load i32*, i32** %p, align 8
  %51 = load i32*, i32** %last, align 8
  %cmp35 = icmp ult i32* %50, %51
  br i1 %cmp35, label %for.body.36, label %for.end.75

for.body.36:                                      ; preds = %for.cond.34
  %52 = load i32*, i32** %FREESET.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %52, i64 0
  %53 = load i32, i32* %arrayidx37, align 4
  %and38 = and i32 %53, 1023
  store i32 %and38, i32* %i_, align 4
  %54 = load i32*, i32** %p, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %54, i64 0
  %55 = load i32, i32* %arrayidx39, align 4
  %and40 = and i32 %55, -1024
  store i32 %and40, i32* %arrayidx39, align 4
  %56 = load i32, i32* %i_, align 4
  %57 = load i32*, i32** %p, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx41, align 4
  %or42 = or i32 %58, %56
  store i32 %or42, i32* %arrayidx41, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.36
  %59 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load i32*, i32** %FREESET.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %60, i64 %idxprom
  %61 = load i32, i32* %arrayidx43, align 4
  %62 = load i32, i32* %i_, align 4
  %idxprom44 = sext i32 %62 to i64
  %63 = load i32*, i32** %p, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %63, i64 %idxprom44
  %64 = load i32, i32* %arrayidx45, align 4
  %neg = xor i32 %64, -1
  %and46 = and i32 %61, %neg
  %65 = load i32, i32* %i_, align 4
  %idxprom47 = sext i32 %65 to i64
  %66 = load i32*, i32** %p, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %66, i64 %idxprom47
  store i32 %and46, i32* %arrayidx48, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %67 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %i_, align 4
  %cmp49 = icmp sgt i32 %dec, 0
  br i1 %cmp49, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %68 = load i32*, i32** %p, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx51, align 4
  %and52 = and i32 %69, 1023
  store i32 %and52, i32* %i_50, align 4
  %70 = load i32*, i32** %p, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx53, align 4
  %and54 = and i32 %71, -1024
  store i32 %and54, i32* %arrayidx53, align 4
  %72 = load i32, i32* %i_50, align 4
  %73 = load i32*, i32** %p, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %73, i64 0
  %74 = load i32, i32* %arrayidx55, align 4
  %or56 = or i32 %74, %72
  store i32 %or56, i32* %arrayidx55, align 4
  br label %do.body.57

do.body.57:                                       ; preds = %do.cond.65, %do.end
  %75 = load i32, i32* %i_50, align 4
  %idxprom58 = sext i32 %75 to i64
  %76 = load i32*, i32** %p, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %76, i64 %idxprom58
  %77 = load i32, i32* %arrayidx59, align 4
  %78 = load i32, i32* %i_50, align 4
  %idxprom60 = sext i32 %78 to i64
  %79 = load i32*, i32** %RAISE.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %79, i64 %idxprom60
  %80 = load i32, i32* %arrayidx61, align 4
  %or62 = or i32 %77, %80
  %81 = load i32, i32* %i_50, align 4
  %idxprom63 = sext i32 %81 to i64
  %82 = load i32*, i32** %p, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %82, i64 %idxprom63
  store i32 %or62, i32* %arrayidx64, align 4
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.57
  %83 = load i32, i32* %i_50, align 4
  %dec66 = add nsw i32 %83, -1
  store i32 %dec66, i32* %i_50, align 4
  %cmp67 = icmp sgt i32 %dec66, 0
  br i1 %cmp67, label %do.body.57, label %do.end.68

do.end.68:                                        ; preds = %do.cond.65
  %84 = load i32*, i32** %p, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx69, align 4
  %or70 = or i32 %85, 32768
  store i32 %or70, i32* %arrayidx69, align 4
  br label %for.inc.71

for.inc.71:                                       ; preds = %do.end.68
  %86 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %wsize72 = getelementptr inbounds %struct.set_family, %struct.set_family* %86, i32 0, i32 0
  %87 = load i32, i32* %wsize72, align 4
  %88 = load i32*, i32** %p, align 8
  %idx.ext73 = sext i32 %87 to i64
  %add.ptr74 = getelementptr inbounds i32, i32* %88, i64 %idx.ext73
  store i32* %add.ptr74, i32** %p, align 8
  br label %for.cond.34

for.end.75:                                       ; preds = %for.cond.34
  %89 = load %struct.set_family*, %struct.set_family** %B, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %89)
  br label %if.end.76

if.end.76:                                        ; preds = %for.end.75, %if.then
  %90 = load %struct.set_family*, %struct.set_family** %B1, align 8
  ret %struct.set_family* %90
}

declare %struct.set_family* @sf_rev_contain(...) #1

declare %struct.set_family* @exact_minimum_cover(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @all_primes(%struct.set_family* %F, %struct.set_family* %R) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %RAISE = alloca i32*, align 8
  %FREESET = alloca i32*, align 8
  %Fall_primes = alloca %struct.set_family*, align 8
  %B1 = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
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
  store i32* %call2, i32** %FREESET, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp3 = icmp sle i32 %4, 32
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.6:                                     ; preds = %cond.end
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub7 = sub nsw i32 %5, 1
  %shr8 = ashr i32 %sub7, 5
  %add9 = add nsw i32 %shr8, 1
  %add10 = add nsw i32 %add9, 1
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.6, %cond.true.5
  %cond12 = phi i32 [ 2, %cond.true.5 ], [ %add10, %cond.false.6 ]
  %conv13 = sext i32 %cond12 to i64
  %mul14 = mul i64 4, %conv13
  %call15 = call i8* @malloc(i64 %mul14)
  %6 = bitcast i8* %call15 to i32*
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call16 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %6, i32 %7)
  store i32* %call16, i32** %RAISE, align 8
  %8 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call17 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %9, i32 %10)
  store %struct.set_family* %call17, %struct.set_family** %Fall_primes, align 8
  %11 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 5
  %12 = load i32*, i32** %data, align 8
  store i32* %12, i32** %p, align 8
  %13 = load i32*, i32** %p, align 8
  %14 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count18 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count18, align 4
  %16 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize, align 4
  %mul19 = mul nsw i32 %15, %17
  %idx.ext = sext i32 %mul19 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.11
  %18 = load i32*, i32** %p, align 8
  %19 = load i32*, i32** %last, align 8
  %cmp20 = icmp ult i32* %18, %19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx, align 4
  %and = and i32 %21, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %22 = load %struct.set_family*, %struct.set_family** %Fall_primes, align 8
  %23 = load i32*, i32** %p, align 8
  %call22 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %22, i32* %23)
  store %struct.set_family* %call22, %struct.set_family** %Fall_primes, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load i32*, i32** %RAISE, align 8
  %25 = load i32*, i32** %p, align 8
  %call23 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %24, i32* %25)
  %26 = load i32*, i32** %FREESET, align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %28 = load i32*, i32** %RAISE, align 8
  %call24 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %26, i32* %27, i32* %28)
  %29 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  call void @setup_BB_CC(%struct.set_family* %29, %struct.set_family* null)
  %30 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %31 = load i32*, i32** %RAISE, align 8
  %32 = load i32*, i32** %FREESET, align 8
  call void @essen_parts(%struct.set_family* %30, %struct.set_family* null, i32* %31, i32* %32)
  %33 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %34 = load i32*, i32** %RAISE, align 8
  %35 = load i32*, i32** %FREESET, align 8
  %call25 = call %struct.set_family* @find_all_primes(%struct.set_family* %33, i32* %34, i32* %35)
  store %struct.set_family* %call25, %struct.set_family** %B1, align 8
  %36 = load %struct.set_family*, %struct.set_family** %Fall_primes, align 8
  %37 = load %struct.set_family*, %struct.set_family** %B1, align 8
  %call26 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %36, %struct.set_family* %37)
  store %struct.set_family* %call26, %struct.set_family** %Fall_primes, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize27 = getelementptr inbounds %struct.set_family, %struct.set_family* %38, i32 0, i32 0
  %39 = load i32, i32* %wsize27, align 4
  %40 = load i32*, i32** %p, align 8
  %idx.ext28 = sext i32 %39 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %40, i64 %idx.ext28
  store i32* %add.ptr29, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32*, i32** %RAISE, align 8
  %tobool30 = icmp ne i32* %41, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  %42 = load i32*, i32** %RAISE, align 8
  %43 = bitcast i32* %42 to i8*
  call void @free(i8* %43)
  store i32* null, i32** %RAISE, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end
  %44 = load i32*, i32** %FREESET, align 8
  %tobool33 = icmp ne i32* %44, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %45 = load i32*, i32** %FREESET, align 8
  %46 = bitcast i32* %45 to i8*
  call void @free(i8* %46)
  store i32* null, i32** %FREESET, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  %47 = load %struct.set_family*, %struct.set_family** %Fall_primes, align 8
  ret %struct.set_family* %47
}

declare %struct.set_family* @sf_addset(...) #1

declare %struct.set_family* @sf_append(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
