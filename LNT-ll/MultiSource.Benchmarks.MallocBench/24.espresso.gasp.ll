; ModuleID = './MultiSource.Benchmarks.MallocBench/24.espresso.gasp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@cube = external global %struct.cube_struct, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AEXPAND1_GASP:    \09%s\0A\00", align 1
@trace = external global i32, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"NEWPRIMES\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"empty reduction in reduce_gasp, shouldn't happen\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"REDUCE_GASP: %s reduced to %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @expand_gasp(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, %struct.set_family* %Foriginal) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %Foriginal.addr = alloca %struct.set_family*, align 8
  %c1index = alloca i32, align 4
  %G = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store %struct.set_family* %Foriginal, %struct.set_family** %Foriginal.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %0)
  store %struct.set_family* %call, %struct.set_family** %G, align 8
  store i32 0, i32* %c1index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %c1index, align 4
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 3
  %3 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %5 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %6 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %7 = load %struct.set_family*, %struct.set_family** %Foriginal.addr, align 8
  %8 = load i32, i32* %c1index, align 4
  call void @expand1_gasp(%struct.set_family* %4, %struct.set_family* %5, %struct.set_family* %6, %struct.set_family* %7, i32 %8, %struct.set_family** %G)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %c1index, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %c1index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.set_family*, %struct.set_family** %G, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %10)
  store %struct.set_family* %call1, %struct.set_family** %G, align 8
  %11 = load %struct.set_family*, %struct.set_family** %G, align 8
  %12 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %11, %struct.set_family* %12, i32 0)
  store %struct.set_family* %call2, %struct.set_family** %G, align 8
  %13 = load %struct.set_family*, %struct.set_family** %G, align 8
  ret %struct.set_family* %13
}

declare %struct.set_family* @sf_new(...) #1

declare %struct.set_family* @sf_dupl(...) #1

declare %struct.set_family* @expand(...) #1

; Function Attrs: nounwind uwtable
define void @expand1_gasp(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, %struct.set_family* %Foriginal, i32 %c1index, %struct.set_family** %G) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %Foriginal.addr = alloca %struct.set_family*, align 8
  %c1index.addr = alloca i32, align 4
  %G.addr = alloca %struct.set_family**, align 8
  %c2index = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %c2under = alloca i32*, align 8
  %RAISE = alloca i32*, align 8
  %FREESET = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %FD = alloca i32**, align 8
  %c2essential = alloca i32*, align 8
  %F1 = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store %struct.set_family* %Foriginal, %struct.set_family** %Foriginal.addr, align 8
  store i32 %c1index, i32* %c1index.addr, align 4
  store %struct.set_family** %G, %struct.set_family*** %G.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  %3 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 0
  %4 = load i32, i32* %wsize, align 4
  %5 = load i32, i32* %c1index.addr, align 4
  %mul = mul nsw i32 %4, %5
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  %call = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %add.ptr)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %6, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %7, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul3 = mul i64 4, %conv
  %call4 = call i8* @malloc(i64 %mul3)
  %8 = bitcast i8* %call4 to i32*
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %8, i32 %9)
  store i32* %call5, i32** %RAISE, align 8
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
  store i32* %call19, i32** %FREESET, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp20 = icmp sle i32 %14, 32
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.14
  br label %cond.end.28

cond.false.23:                                    ; preds = %cond.end.14
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub24 = sub nsw i32 %15, 1
  %shr25 = ashr i32 %sub24, 5
  %add26 = add nsw i32 %shr25, 1
  %add27 = add nsw i32 %add26, 1
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.23, %cond.true.22
  %cond29 = phi i32 [ 2, %cond.true.22 ], [ %add27, %cond.false.23 ]
  %conv30 = sext i32 %cond29 to i64
  %mul31 = mul i64 4, %conv30
  %call32 = call i8* @malloc(i64 %mul31)
  %16 = bitcast i8* %call32 to i32*
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call33 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %16, i32 %17)
  store i32* %call33, i32** %temp, align 8
  %18 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count, align 4
  %20 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 4
  store i32 %19, i32* %active_count, align 4
  %21 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %data34 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 5
  %22 = load i32*, i32** %data34, align 8
  store i32* %22, i32** %p, align 8
  %23 = load i32*, i32** %p, align 8
  %24 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count35 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 3
  %25 = load i32, i32* %count35, align 4
  %26 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize36 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 0
  %27 = load i32, i32* %wsize36, align 4
  %mul37 = mul nsw i32 %25, %27
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i32, i32* %23, i64 %idx.ext38
  store i32* %add.ptr39, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.28
  %28 = load i32*, i32** %p, align 8
  %29 = load i32*, i32** %last, align 8
  %cmp40 = icmp ult i32* %28, %29
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx, align 4
  %or = or i32 %31, 8192
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize42 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize42, align 4
  %34 = load i32*, i32** %p, align 8
  %idx.ext43 = sext i32 %33 to i64
  %add.ptr44 = getelementptr inbounds i32, i32* %34, i64 %idx.ext43
  store i32* %add.ptr44, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count45 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 3
  %36 = load i32, i32* %count45, align 4
  %37 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %active_count46 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 4
  store i32 %36, i32* %active_count46, align 4
  %38 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data47 = getelementptr inbounds %struct.set_family, %struct.set_family* %38, i32 0, i32 5
  %39 = load i32*, i32** %data47, align 8
  store i32* %39, i32** %c2under, align 8
  store i32 0, i32* %c2index, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.65, %for.end
  %40 = load i32, i32* %c2index, align 4
  %41 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count49 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 3
  %42 = load i32, i32* %count49, align 4
  %cmp50 = icmp slt i32 %40, %42
  br i1 %cmp50, label %for.body.52, label %for.end.69

for.body.52:                                      ; preds = %for.cond.48
  %43 = load i32, i32* %c1index.addr, align 4
  %44 = load i32, i32* %c2index, align 4
  %cmp53 = icmp eq i32 %43, %44
  br i1 %cmp53, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.52
  %45 = load i32*, i32** %c2under, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx55, align 4
  %and56 = and i32 %46, 32768
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %lor.lhs.false, %for.body.52
  %47 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %active_count59 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 4
  %48 = load i32, i32* %active_count59, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %active_count59, align 4
  %49 = load i32*, i32** %c2under, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx60, align 4
  %and61 = and i32 %50, -8193
  store i32 %and61, i32* %arrayidx60, align 4
  br label %if.end.64

if.else:                                          ; preds = %lor.lhs.false
  %51 = load i32*, i32** %c2under, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx62, align 4
  %or63 = or i32 %52, 8192
  store i32 %or63, i32* %arrayidx62, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.58
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %53 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize66 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 0
  %54 = load i32, i32* %wsize66, align 4
  %55 = load i32*, i32** %c2under, align 8
  %idx.ext67 = sext i32 %54 to i64
  %add.ptr68 = getelementptr inbounds i32, i32* %55, i64 %idx.ext67
  store i32* %add.ptr68, i32** %c2under, align 8
  %56 = load i32, i32* %c2index, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %c2index, align 4
  br label %for.cond.48

for.end.69:                                       ; preds = %for.cond.48
  %57 = load i32*, i32** %RAISE, align 8
  %58 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data70 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 5
  %59 = load i32*, i32** %data70, align 8
  %60 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize71 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 0
  %61 = load i32, i32* %wsize71, align 4
  %62 = load i32, i32* %c1index.addr, align 4
  %mul72 = mul nsw i32 %61, %62
  %idx.ext73 = sext i32 %mul72 to i64
  %add.ptr74 = getelementptr inbounds i32, i32* %59, i64 %idx.ext73
  %call75 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %57, i32* %add.ptr74)
  %63 = load i32*, i32** %FREESET, align 8
  %64 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %65 = load i32*, i32** %RAISE, align 8
  %call76 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %63, i32* %64, i32* %65)
  %66 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %67 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %68 = load i32*, i32** %RAISE, align 8
  %69 = load i32*, i32** %FREESET, align 8
  call void (%struct.set_family*, %struct.set_family*, i32*, i32*, ...) bitcast (void (...)* @essen_parts to void (%struct.set_family*, %struct.set_family*, i32*, i32*, ...)*)(%struct.set_family* %66, %struct.set_family* %67, i32* %68, i32* %69)
  %70 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %71 = load i32*, i32** %RAISE, align 8
  %72 = load i32*, i32** %FREESET, align 8
  call void (%struct.set_family*, i32*, i32*, ...) bitcast (void (...)* @essen_raising to void (%struct.set_family*, i32*, i32*, ...)*)(%struct.set_family* %70, i32* %71, i32* %72)
  %73 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data77 = getelementptr inbounds %struct.set_family, %struct.set_family* %73, i32 0, i32 5
  %74 = load i32*, i32** %data77, align 8
  store i32* %74, i32** %c2under, align 8
  store i32 0, i32* %c2index, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.134, %for.end.69
  %75 = load i32, i32* %c2index, align 4
  %76 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count79 = getelementptr inbounds %struct.set_family, %struct.set_family* %76, i32 0, i32 3
  %77 = load i32, i32* %count79, align 4
  %cmp80 = icmp slt i32 %75, %77
  br i1 %cmp80, label %for.body.82, label %for.end.139

for.body.82:                                      ; preds = %for.cond.78
  %78 = load i32*, i32** %c2under, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx83, align 4
  %and84 = and i32 %79, 8192
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.133

if.then.86:                                       ; preds = %for.body.82
  %80 = load i32*, i32** %c2under, align 8
  %81 = load i32*, i32** %RAISE, align 8
  %call87 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %80, i32* %81)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.then.86
  %82 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %83 = load i32*, i32** %c2under, align 8
  %84 = load i32*, i32** %RAISE, align 8
  %85 = load i32*, i32** %temp, align 8
  %call90 = call i32 (%struct.set_family*, i32*, i32*, i32*, ...) bitcast (i32 (...)* @feasibly_covered to i32 (%struct.set_family*, i32*, i32*, i32*, ...)*)(%struct.set_family* %82, i32* %83, i32* %84, i32* %85)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.132

if.then.92:                                       ; preds = %lor.lhs.false.89, %if.then.86
  %86 = load %struct.set_family*, %struct.set_family** %Foriginal.addr, align 8
  %call93 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %86)
  store %struct.set_family* %call93, %struct.set_family** %F1, align 8
  %87 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %data94 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 5
  %88 = load i32*, i32** %data94, align 8
  %89 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize95 = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 0
  %90 = load i32, i32* %wsize95, align 4
  %91 = load i32, i32* %c1index.addr, align 4
  %mul96 = mul nsw i32 %90, %91
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i32, i32* %88, i64 %idx.ext97
  %92 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data99 = getelementptr inbounds %struct.set_family, %struct.set_family* %92, i32 0, i32 5
  %93 = load i32*, i32** %data99, align 8
  %94 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize100 = getelementptr inbounds %struct.set_family, %struct.set_family* %94, i32 0, i32 0
  %95 = load i32, i32* %wsize100, align 4
  %96 = load i32, i32* %c1index.addr, align 4
  %mul101 = mul nsw i32 %95, %96
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i32, i32* %93, i64 %idx.ext102
  %call104 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr98, i32* %add.ptr103)
  %97 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %98 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call105 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %97, %struct.set_family* %98)
  store i32** %call105, i32*** %FD, align 8
  %99 = load i32**, i32*** %FD, align 8
  %100 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %data106 = getelementptr inbounds %struct.set_family, %struct.set_family* %100, i32 0, i32 5
  %101 = load i32*, i32** %data106, align 8
  %102 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize107 = getelementptr inbounds %struct.set_family, %struct.set_family* %102, i32 0, i32 0
  %103 = load i32, i32* %wsize107, align 4
  %104 = load i32, i32* %c2index, align 4
  %mul108 = mul nsw i32 %103, %104
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds i32, i32* %101, i64 %idx.ext109
  %call111 = call i32* (i32**, i32*, ...) bitcast (i32* (...)* @reduce_cube to i32* (i32**, i32*, ...)*)(i32** %99, i32* %add.ptr110)
  store i32* %call111, i32** %c2essential, align 8
  %105 = load i32**, i32*** %FD, align 8
  %arrayidx112 = getelementptr inbounds i32*, i32** %105, i64 0
  %106 = load i32*, i32** %arrayidx112, align 8
  %tobool113 = icmp ne i32* %106, null
  br i1 %tobool113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.then.92
  %107 = load i32**, i32*** %FD, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %107, i64 0
  %108 = load i32*, i32** %arrayidx115, align 8
  %109 = bitcast i32* %108 to i8*
  call void @free(i8* %109)
  %110 = load i32**, i32*** %FD, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %110, i64 0
  store i32* null, i32** %arrayidx116, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.then.92
  %111 = load i32**, i32*** %FD, align 8
  %tobool118 = icmp ne i32** %111, null
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.117
  %112 = load i32**, i32*** %FD, align 8
  %113 = bitcast i32** %112 to i8*
  call void @free(i8* %113)
  store i32** null, i32*** %FD, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.117
  %114 = load %struct.set_family*, %struct.set_family** %F1, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %114)
  %115 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %116 = load i32*, i32** %c2essential, align 8
  %117 = load i32*, i32** %RAISE, align 8
  %118 = load i32*, i32** %temp, align 8
  %call121 = call i32 (%struct.set_family*, i32*, i32*, i32*, ...) bitcast (i32 (...)* @feasibly_covered to i32 (%struct.set_family*, i32*, i32*, i32*, ...)*)(%struct.set_family* %115, i32* %116, i32* %117, i32* %118)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.128

if.then.123:                                      ; preds = %if.end.120
  %119 = load i32*, i32** %temp, align 8
  %120 = load i32*, i32** %RAISE, align 8
  %121 = load i32*, i32** %c2essential, align 8
  %call124 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %119, i32* %120, i32* %121)
  %122 = load i32*, i32** %temp, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %122, i64 0
  %123 = load i32, i32* %arrayidx125, align 4
  %and126 = and i32 %123, -32769
  store i32 %and126, i32* %arrayidx125, align 4
  %124 = load %struct.set_family**, %struct.set_family*** %G.addr, align 8
  %125 = load %struct.set_family*, %struct.set_family** %124, align 8
  %126 = load i32*, i32** %temp, align 8
  %call127 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %125, i32* %126)
  %127 = load %struct.set_family**, %struct.set_family*** %G.addr, align 8
  store %struct.set_family* %call127, %struct.set_family** %127, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.123, %if.end.120
  %128 = load i32*, i32** %c2essential, align 8
  %tobool129 = icmp ne i32* %128, null
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.128
  %129 = load i32*, i32** %c2essential, align 8
  %130 = bitcast i32* %129 to i8*
  call void @free(i8* %130)
  store i32* null, i32** %c2essential, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %lor.lhs.false.89
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %for.body.82
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %131 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize135 = getelementptr inbounds %struct.set_family, %struct.set_family* %131, i32 0, i32 0
  %132 = load i32, i32* %wsize135, align 4
  %133 = load i32*, i32** %c2under, align 8
  %idx.ext136 = sext i32 %132 to i64
  %add.ptr137 = getelementptr inbounds i32, i32* %133, i64 %idx.ext136
  store i32* %add.ptr137, i32** %c2under, align 8
  %134 = load i32, i32* %c2index, align 4
  %inc138 = add nsw i32 %134, 1
  store i32 %inc138, i32* %c2index, align 4
  br label %for.cond.78

for.end.139:                                      ; preds = %for.cond.78
  %135 = load i32*, i32** %RAISE, align 8
  %tobool140 = icmp ne i32* %135, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.end.139
  %136 = load i32*, i32** %RAISE, align 8
  %137 = bitcast i32* %136 to i8*
  call void @free(i8* %137)
  store i32* null, i32** %RAISE, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %for.end.139
  %138 = load i32*, i32** %FREESET, align 8
  %tobool143 = icmp ne i32* %138, null
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.142
  %139 = load i32*, i32** %FREESET, align 8
  %140 = bitcast i32* %139 to i8*
  call void @free(i8* %140)
  store i32* null, i32** %FREESET, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.end.142
  %141 = load i32*, i32** %temp, align 8
  %tobool146 = icmp ne i32* %141, null
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.145
  %142 = load i32*, i32** %temp, align 8
  %143 = bitcast i32* %142 to i8*
  call void @free(i8* %143)
  store i32* null, i32** %temp, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.145
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32* @set_copy(...) #1

declare i32* @set_diff(...) #1

declare void @essen_parts(...) #1

declare void @essen_raising(...) #1

declare i32 @setp_implies(...) #1

declare i32 @feasibly_covered(...) #1

declare %struct.set_family* @sf_save(...) #1

declare i32** @cube2list(...) #1

declare i32* @reduce_cube(...) #1

declare void @free(i8*) #1

declare void @sf_free(...) #1

declare i32* @set_or(...) #1

declare %struct.set_family* @sf_addset(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @irred_gasp(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %G) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %G.addr = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %G, %struct.set_family** %G.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %G.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %3 = load %struct.set_family*, %struct.set_family** %G.addr, align 8
  %call = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %2, %struct.set_family* %3)
  %4 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %call, %struct.set_family* %4)
  store %struct.set_family* %call1, %struct.set_family** %F.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.set_family*, %struct.set_family** %G.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %6
}

declare %struct.set_family* @irredundant(...) #1

declare %struct.set_family* @sf_append(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @last_gasp(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, %struct.cost_struct* %cost) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %cost.addr = alloca %struct.cost_struct*, align 8
  %G = alloca %struct.set_family*, align 8
  %G1 = alloca %struct.set_family*, align 8
  %t = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t5 = alloca i64, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store %struct.cost_struct* %cost, %struct.cost_struct** %cost.addr, align 8
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %t, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call1 = call %struct.set_family* @reduce_gasp(%struct.set_family* %0, %struct.set_family* %1)
  store %struct.set_family* %call1, %struct.set_family** %G, align 8
  %2 = load i64, i64* %t, align 8
  %3 = load %struct.set_family*, %struct.set_family** %G, align 8
  %4 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %2, i32 9, %struct.set_family* %3, %struct.cost_struct* %4)
  %call3 = call i64 (...) @util_cpu_time()
  store i64 %call3, i64* %t2, align 8
  %5 = load %struct.set_family*, %struct.set_family** %G, align 8
  %6 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %7 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %8 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call4 = call %struct.set_family* @expand_gasp(%struct.set_family* %5, %struct.set_family* %6, %struct.set_family* %7, %struct.set_family* %8)
  store %struct.set_family* %call4, %struct.set_family** %G1, align 8
  %9 = load i64, i64* %t2, align 8
  %10 = load %struct.set_family*, %struct.set_family** %G1, align 8
  %11 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %9, i32 7, %struct.set_family* %10, %struct.cost_struct* %11)
  %12 = load %struct.set_family*, %struct.set_family** %G, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %12)
  %call6 = call i64 (...) @util_cpu_time()
  store i64 %call6, i64* %t5, align 8
  %13 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %14 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %15 = load %struct.set_family*, %struct.set_family** %G1, align 8
  %call7 = call %struct.set_family* @irred_gasp(%struct.set_family* %13, %struct.set_family* %14, %struct.set_family* %15)
  store %struct.set_family* %call7, %struct.set_family** %F.addr, align 8
  %16 = load i64, i64* %t5, align 8
  %17 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %18 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %16, i32 8, %struct.set_family* %17, %struct.cost_struct* %18)
  %19 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %19
}

declare i64 @util_cpu_time(...) #1

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @reduce_gasp(%struct.set_family* %F, %struct.set_family* %D) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %cunder = alloca i32*, align 8
  %FD = alloca i32**, align 8
  %G = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %1, i32 %2)
  store %struct.set_family* %call, %struct.set_family** %G, align 8
  %3 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %4 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call1 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %3, %struct.set_family* %4)
  store i32** %call1, i32*** %FD, align 8
  %5 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count2, align 4
  %10 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
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
  %14 = load i32**, i32*** %FD, align 8
  %15 = load i32*, i32** %p, align 8
  %call3 = call i32* (i32**, i32*, ...) bitcast (i32* (...)* @reduce_cube to i32* (i32**, i32*, ...)*)(i32** %14, i32* %15)
  store i32* %call3, i32** %cunder, align 8
  %16 = load i32*, i32** %cunder, align 8
  %call4 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* %16)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %for.body
  %17 = load i32*, i32** %cunder, align 8
  %18 = load i32*, i32** %p, align 8
  %call5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %17, i32* %18)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %19 = load i32*, i32** %cunder, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx, align 4
  %or = or i32 %20, 32768
  store i32 %or, i32* %arrayidx, align 4
  %21 = load %struct.set_family*, %struct.set_family** %G, align 8
  %22 = load i32*, i32** %p, align 8
  %call8 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %21, i32* %22)
  store %struct.set_family* %call8, %struct.set_family** %G, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %23 = load i32*, i32** %cunder, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx10, align 4
  %and = and i32 %24, -32769
  store i32 %and, i32* %arrayidx10, align 4
  %25 = load %struct.set_family*, %struct.set_family** %G, align 8
  %26 = load i32*, i32** %cunder, align 8
  %call11 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %25, i32* %26)
  store %struct.set_family* %call11, %struct.set_family** %G, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %27 = load i32, i32* @debug, align 4
  %and13 = and i32 %27, 16
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.12
  %28 = load i32*, i32** %p, align 8
  %call16 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %28)
  %29 = load i32*, i32** %cunder, align 8
  %call17 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %29)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %call16, i8* %call17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.12
  %30 = load i32*, i32** %cunder, align 8
  %tobool20 = icmp ne i32* %30, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %31 = load i32*, i32** %cunder, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* %32)
  store i32* null, i32** %cunder, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %33 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize23 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 0
  %34 = load i32, i32* %wsize23, align 4
  %35 = load i32*, i32** %p, align 8
  %idx.ext24 = sext i32 %34 to i64
  %add.ptr25 = getelementptr inbounds i32, i32* %35, i64 %idx.ext24
  store i32* %add.ptr25, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32**, i32*** %FD, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %36, i64 0
  %37 = load i32*, i32** %arrayidx26, align 8
  %tobool27 = icmp ne i32* %37, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.end
  %38 = load i32**, i32*** %FD, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %38, i64 0
  %39 = load i32*, i32** %arrayidx29, align 8
  %40 = bitcast i32* %39 to i8*
  call void @free(i8* %40)
  %41 = load i32**, i32*** %FD, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %41, i64 0
  store i32* null, i32** %arrayidx30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %for.end
  %42 = load i32**, i32*** %FD, align 8
  %tobool32 = icmp ne i32** %42, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %43 = load i32**, i32*** %FD, align 8
  %44 = bitcast i32** %43 to i8*
  call void @free(i8* %44)
  store i32** null, i32*** %FD, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %45 = load %struct.set_family*, %struct.set_family** %G, align 8
  ret %struct.set_family* %45
}

declare void @totals(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @super_gasp(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family* %R, %struct.cost_struct* %cost) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %cost.addr = alloca %struct.cost_struct*, align 8
  %G = alloca %struct.set_family*, align 8
  %G1 = alloca %struct.set_family*, align 8
  %t = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t5 = alloca i64, align 8
  %t10 = alloca i64, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store %struct.cost_struct* %cost, %struct.cost_struct** %cost.addr, align 8
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %t, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call1 = call %struct.set_family* @reduce_gasp(%struct.set_family* %0, %struct.set_family* %1)
  store %struct.set_family* %call1, %struct.set_family** %G, align 8
  %2 = load i64, i64* %t, align 8
  %3 = load %struct.set_family*, %struct.set_family** %G, align 8
  %4 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %2, i32 9, %struct.set_family* %3, %struct.cost_struct* %4)
  %call3 = call i64 (...) @util_cpu_time()
  store i64 %call3, i64* %t2, align 8
  %5 = load %struct.set_family*, %struct.set_family** %G, align 8
  %6 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %call4 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @all_primes to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %5, %struct.set_family* %6)
  store %struct.set_family* %call4, %struct.set_family** %G1, align 8
  %7 = load i64, i64* %t2, align 8
  %8 = load %struct.set_family*, %struct.set_family** %G1, align 8
  %9 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %7, i32 7, %struct.set_family* %8, %struct.cost_struct* %9)
  %10 = load %struct.set_family*, %struct.set_family** %G, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %10)
  %call6 = call i64 (...) @util_cpu_time()
  store i64 %call6, i64* %t5, align 8
  %11 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %12 = load %struct.set_family*, %struct.set_family** %G1, align 8
  %call7 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %11, %struct.set_family* %12)
  %call8 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call7)
  store %struct.set_family* %call8, %struct.set_family** %G, align 8
  %13 = load i32, i32* @trace, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.set_family*, %struct.set_family** %G, align 8
  %call9 = call i64 (...) @util_cpu_time()
  %15 = load i64, i64* %t5, align 8
  %sub = sub nsw i64 %call9, %15
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call i64 (...) @util_cpu_time()
  store i64 %call11, i64* %t10, align 8
  %16 = load %struct.set_family*, %struct.set_family** %G, align 8
  %17 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call12 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %16, %struct.set_family* %17)
  store %struct.set_family* %call12, %struct.set_family** %F.addr, align 8
  %18 = load i64, i64* %t10, align 8
  %19 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %20 = load %struct.cost_struct*, %struct.cost_struct** %cost.addr, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %18, i32 5, %struct.set_family* %19, %struct.cost_struct* %20)
  %21 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %21
}

declare %struct.set_family* @all_primes(...) #1

declare void @print_trace(...) #1

declare i32 @setp_empty(...) #1

declare void @fatal(...) #1

declare i32 @setp_equal(...) #1

declare i8* @pc2(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
