; ModuleID = './MultiSource.Benchmarks.Prolangs-C/189.TimberWolfMC.outbig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Rangle = type { i32, i32, i32, i32 }
%struct.bustbox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }

@bdxlength = external global i32, align 4
@bdylength = external global i32, align 4
@finalShot = external global i32, align 4
@rectang = common global %struct.Rangle* null, align 8
@PtsArray = common global %struct.bustbox* null, align 8
@PtsOut = common global %struct.bustbox* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.cfb\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"L NC;\0A94 %s %d %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"L NC;\0AW %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" %d %d;\0A\00", align 1
@pinnames = external global i8**, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"L NC;\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"W %d %d %d %d %d %d %d %d %d %d %d;\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @outbig() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pin = alloca i32, align 4
  %cell = alloca i32, align 4
  %Wwd = alloca i32, align 4
  %l = alloca i32, align 4
  %b = alloca i32, align 4
  %r = alloca i32, align 4
  %t = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %k = alloca i32, align 4
  %filename = alloca [1024 x i8], align 16
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %0 = load i32, i32* @bdxlength, align 4
  %1 = load i32, i32* @bdylength, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* @bdxlength, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* @bdylength, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %k, align 4
  %4 = load i32, i32* %k, align 4
  %conv = sitofp i32 %4 to double
  %div = fdiv double %conv, 5.000000e+02
  %conv1 = fptosi double %div to i32
  %add = add nsw i32 %conv1, 1
  store i32 %add, i32* %Wwd, align 4
  %5 = load i32, i32* @finalShot, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call = call noalias i8* @malloc(i64 416) #5
  %6 = bitcast i8* %call to %struct.Rangle*
  store %struct.Rangle* %6, %struct.Rangle** @rectang, align 8
  %call4 = call noalias i8* @malloc(i64 808) #5
  %7 = bitcast i8* %call4 to %struct.bustbox*
  store %struct.bustbox* %7, %struct.bustbox** @PtsArray, align 8
  %call5 = call noalias i8* @malloc(i64 808) #5
  %8 = bitcast i8* %call5 to %struct.bustbox*
  store %struct.bustbox* %8, %struct.bustbox** @PtsOut, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %9 = load i8*, i8** @cktName, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %9) #5
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call8 = call %struct._IO_FILE* @fopen(i8* %arraydecay7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fp, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay12)
  call void @exit(i32 0) #6
  unreachable

if.end.14:                                        ; preds = %if.end
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.135, %if.end.14
  %11 = load i32, i32* %cell, align 4
  %12 = load i32, i32* @numcells, align 4
  %13 = load i32, i32* @numpads, align 4
  %add15 = add nsw i32 %12, %13
  %cmp16 = icmp sle i32 %11, %add15
  br i1 %cmp16, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %idxprom
  %16 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %16, %struct.cellbox** %cellptr, align 8
  %17 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 5
  %18 = load i32, i32* %orient, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 21
  %arrayidx19 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom18
  %20 = load %struct.tilebox*, %struct.tilebox** %arrayidx19, align 8
  store %struct.tilebox* %20, %struct.tilebox** %tileptr, align 8
  %21 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %21, i32 0, i32 17
  %22 = load %struct.termbox*, %struct.termbox** %termptr20, align 8
  store %struct.termbox* %22, %struct.termbox** %termptr, align 8
  %23 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 2
  %24 = load i32, i32* %xcenter, align 4
  store i32 %24, i32* %xc, align 4
  %25 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 3
  %26 = load i32, i32* %ycenter, align 4
  store i32 %26, i32* %yc, align 4
  %27 = load i32, i32* %cell, align 4
  %28 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 0
  %29 = load i8*, i8** %cname, align 8
  %30 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 5
  %31 = load i32, i32* %orient21, align 4
  call void @initPts(i32 %27, i8* %29, i32 %31)
  %32 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 9
  %33 = load i32, i32* %left, align 4
  store i32 %33, i32* %l, align 4
  %34 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 10
  %35 = load i32, i32* %right, align 4
  store i32 %35, i32* %r, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 11
  %37 = load i32, i32* %bottom, align 4
  store i32 %37, i32* %b, align 4
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 12
  %39 = load i32, i32* %top, align 4
  store i32 %39, i32* %t, align 4
  %40 = load i32, i32* %cell, align 4
  %41 = load i32, i32* @numcells, align 4
  %cmp22 = icmp sle i32 %40, %41
  br i1 %cmp22, label %if.then.24, label %if.end.52

if.then.24:                                       ; preds = %for.body
  %42 = load i32, i32* @finalShot, align 4
  %cmp25 = icmp eq i32 %42, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.24
  %43 = load i32, i32* %xc, align 4
  %44 = load i32, i32* %l, align 4
  %add28 = add nsw i32 %43, %44
  %45 = load i32, i32* %yc, align 4
  %46 = load i32, i32* %b, align 4
  %add29 = add nsw i32 %45, %46
  %47 = load i32, i32* %yc, align 4
  %48 = load i32, i32* %t, align 4
  %add30 = add nsw i32 %47, %48
  %49 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 1
  %50 = load double, double* %lweight, align 8
  %call31 = call i32 @wireestx(i32 %add28, i32 %add29, i32 %add30, double %50)
  %51 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %51, %call31
  store i32 %sub, i32* %l, align 4
  %52 = load i32, i32* %xc, align 4
  %53 = load i32, i32* %r, align 4
  %add32 = add nsw i32 %52, %53
  %54 = load i32, i32* %yc, align 4
  %55 = load i32, i32* %b, align 4
  %add33 = add nsw i32 %54, %55
  %56 = load i32, i32* %yc, align 4
  %57 = load i32, i32* %t, align 4
  %add34 = add nsw i32 %56, %57
  %58 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %58, i32 0, i32 2
  %59 = load double, double* %rweight, align 8
  %call35 = call i32 @wireestx(i32 %add32, i32 %add33, i32 %add34, double %59)
  %60 = load i32, i32* %r, align 4
  %add36 = add nsw i32 %60, %call35
  store i32 %add36, i32* %r, align 4
  %61 = load i32, i32* %yc, align 4
  %62 = load i32, i32* %b, align 4
  %add37 = add nsw i32 %61, %62
  %63 = load i32, i32* %xc, align 4
  %64 = load i32, i32* %l, align 4
  %add38 = add nsw i32 %63, %64
  %65 = load i32, i32* %xc, align 4
  %66 = load i32, i32* %r, align 4
  %add39 = add nsw i32 %65, %66
  %67 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %67, i32 0, i32 3
  %68 = load double, double* %bweight, align 8
  %call40 = call i32 @wireestx(i32 %add37, i32 %add38, i32 %add39, double %68)
  %69 = load i32, i32* %b, align 4
  %sub41 = sub nsw i32 %69, %call40
  store i32 %sub41, i32* %b, align 4
  %70 = load i32, i32* %yc, align 4
  %71 = load i32, i32* %t, align 4
  %add42 = add nsw i32 %70, %71
  %72 = load i32, i32* %xc, align 4
  %73 = load i32, i32* %l, align 4
  %add43 = add nsw i32 %72, %73
  %74 = load i32, i32* %xc, align 4
  %75 = load i32, i32* %r, align 4
  %add44 = add nsw i32 %74, %75
  %76 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 4
  %77 = load double, double* %tweight, align 8
  %call45 = call i32 @wireestx(i32 %add42, i32 %add43, i32 %add44, double %77)
  %78 = load i32, i32* %t, align 4
  %add46 = add nsw i32 %78, %call45
  store i32 %add46, i32* %t, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.then.24
  %79 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 5
  %80 = load i32, i32* %lborder, align 4
  %81 = load i32, i32* %l, align 4
  %sub47 = sub nsw i32 %81, %80
  store i32 %sub47, i32* %l, align 4
  %82 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %82, i32 0, i32 6
  %83 = load i32, i32* %rborder, align 4
  %84 = load i32, i32* %r, align 4
  %add48 = add nsw i32 %84, %83
  store i32 %add48, i32* %r, align 4
  %85 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %85, i32 0, i32 7
  %86 = load i32, i32* %bborder, align 4
  %87 = load i32, i32* %b, align 4
  %sub49 = sub nsw i32 %87, %86
  store i32 %sub49, i32* %b, align 4
  %88 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %88, i32 0, i32 8
  %89 = load i32, i32* %tborder, align 4
  %90 = load i32, i32* %t, align 4
  %add50 = add nsw i32 %90, %89
  store i32 %add50, i32* %t, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.27
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.body
  %91 = load i32, i32* %l, align 4
  %92 = load i32, i32* %r, align 4
  %93 = load i32, i32* %b, align 4
  %94 = load i32, i32* %t, align 4
  call void @addPts(i32 %91, i32 %92, i32 %93, i32 %94)
  %95 = load i32, i32* %xc, align 4
  %96 = load i32, i32* %l, align 4
  %add53 = add nsw i32 %96, %95
  store i32 %add53, i32* %l, align 4
  %97 = load i32, i32* %xc, align 4
  %98 = load i32, i32* %r, align 4
  %add54 = add nsw i32 %98, %97
  store i32 %add54, i32* %r, align 4
  %99 = load i32, i32* %yc, align 4
  %100 = load i32, i32* %b, align 4
  %add55 = add nsw i32 %100, %99
  store i32 %add55, i32* %b, align 4
  %101 = load i32, i32* %yc, align 4
  %102 = load i32, i32* %t, align 4
  %add56 = add nsw i32 %102, %101
  store i32 %add56, i32* %t, align 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %104 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %104, i32 0, i32 0
  %105 = load i8*, i8** %cname57, align 8
  %106 = load i32, i32* %r, align 4
  %107 = load i32, i32* %l, align 4
  %add58 = add nsw i32 %106, %107
  %div59 = sdiv i32 %add58, 2
  %108 = load i32, i32* %t, align 4
  %109 = load i32, i32* %b, align 4
  %add60 = add nsw i32 %108, %109
  %div61 = sdiv i32 %add60, 2
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %105, i32 %div59, i32 %div61)
  call void @unbust()
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %111 = load i32, i32* %Wwd, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %111)
  store i32 1, i32* %k, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %if.end.52
  %112 = load i32, i32* %k, align 4
  %113 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %113, i64 0
  %xc66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx65, i32 0, i32 0
  %114 = load i32, i32* %xc66, align 4
  %cmp67 = icmp slt i32 %112, %114
  br i1 %cmp67, label %for.body.69, label %for.end

for.body.69:                                      ; preds = %for.cond.64
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %116 = load i32, i32* %xc, align 4
  %117 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %117 to i64
  %118 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx71 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %118, i64 %idxprom70
  %xc72 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx71, i32 0, i32 0
  %119 = load i32, i32* %xc72, align 4
  %add73 = add nsw i32 %116, %119
  %120 = load i32, i32* %yc, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %121 to i64
  %122 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx75 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %122, i64 %idxprom74
  %yc76 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx75, i32 0, i32 1
  %123 = load i32, i32* %yc76, align 4
  %add77 = add nsw i32 %120, %123
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %add73, i32 %add77)
  br label %for.inc

for.inc:                                          ; preds = %for.body.69
  %124 = load i32, i32* %k, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %126 = load i32, i32* %xc, align 4
  %127 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx79 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %127, i64 1
  %xc80 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx79, i32 0, i32 0
  %128 = load i32, i32* %xc80, align 4
  %add81 = add nsw i32 %126, %128
  %129 = load i32, i32* %yc, align 4
  %130 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx82 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %130, i64 1
  %yc83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx82, i32 0, i32 1
  %131 = load i32, i32* %yc83, align 4
  %add84 = add nsw i32 %129, %131
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %add81, i32 %add84)
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.104, %for.end
  %132 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp87 = icmp ne %struct.termbox* %132, null
  br i1 %cmp87, label %for.body.89, label %for.end.105

for.body.89:                                      ; preds = %for.cond.86
  %133 = load i32, i32* %xc, align 4
  %134 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %134, i32 0, i32 1
  %135 = load i32, i32* %xpos, align 4
  %add90 = add nsw i32 %133, %135
  store i32 %add90, i32* %x, align 4
  %136 = load i32, i32* %yc, align 4
  %137 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %137, i32 0, i32 2
  %138 = load i32, i32* %ypos, align 4
  %add91 = add nsw i32 %136, %138
  store i32 %add91, i32* %y, align 4
  %139 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %139, i32 0, i32 5
  %140 = load i32, i32* %terminal, align 4
  store i32 %140, i32* %pin, align 4
  %141 = load i32, i32* %pin, align 4
  %idxprom92 = sext i32 %141 to i64
  %142 = load i8**, i8*** @pinnames, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %142, i64 %idxprom92
  %143 = load i8*, i8** %arrayidx93, align 8
  %call94 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.end.103

if.then.97:                                       ; preds = %for.body.89
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %145 = load i32, i32* %pin, align 4
  %idxprom98 = sext i32 %145 to i64
  %146 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx99 = getelementptr inbounds %struct.termnets*, %struct.termnets** %146, i64 %idxprom98
  %147 = load %struct.termnets*, %struct.termnets** %arrayidx99, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %147, i32 0, i32 0
  %148 = load i32, i32* %net, align 4
  %idxprom100 = sext i32 %148 to i64
  %149 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx101 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %149, i64 %idxprom100
  %150 = load %struct.dimbox*, %struct.dimbox** %arrayidx101, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %150, i32 0, i32 13
  %151 = load i8*, i8** %nname, align 8
  %152 = load i32, i32* %x, align 4
  %153 = load i32, i32* %y, align 4
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %151, i32 %152, i32 %153)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.97, %for.body.89
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %154 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %154, i32 0, i32 0
  %155 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %155, %struct.termbox** %termptr, align 8
  br label %for.cond.86

for.end.105:                                      ; preds = %for.cond.86
  %156 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %156, i32 0, i32 10
  %157 = load i32, i32* %softflag, align 4
  %cmp106 = icmp eq i32 %157, 1
  br i1 %cmp106, label %if.then.108, label %if.end.134

if.then.108:                                      ; preds = %for.end.105
  store i32 1, i32* %j, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.131, %if.then.108
  %158 = load i32, i32* %j, align 4
  %159 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 18
  %160 = load i32, i32* %numUnComTerms, align 4
  %cmp110 = icmp sle i32 %158, %160
  br i1 %cmp110, label %for.body.112, label %for.end.133

for.body.112:                                     ; preds = %for.cond.109
  %161 = load i32, i32* %xc, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %162 to i64
  %163 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %163, i32 0, i32 20
  %164 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx114 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %164, i64 %idxprom113
  %finalx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx114, i32 0, i32 9
  %165 = load i32, i32* %finalx, align 4
  %add115 = add nsw i32 %161, %165
  store i32 %add115, i32* %x, align 4
  %166 = load i32, i32* %yc, align 4
  %167 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %167 to i64
  %168 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms117 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %168, i32 0, i32 20
  %169 = load %struct.uncombox*, %struct.uncombox** %unComTerms117, align 8
  %arrayidx118 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %169, i64 %idxprom116
  %finaly = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx118, i32 0, i32 10
  %170 = load i32, i32* %finaly, align 4
  %add119 = add nsw i32 %166, %170
  store i32 %add119, i32* %y, align 4
  %171 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %171 to i64
  %172 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms121 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %172, i32 0, i32 20
  %173 = load %struct.uncombox*, %struct.uncombox** %unComTerms121, align 8
  %arrayidx122 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %173, i64 %idxprom120
  %terminal123 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx122, i32 0, i32 0
  %174 = load i32, i32* %terminal123, align 4
  store i32 %174, i32* %pin, align 4
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %176 = load i32, i32* %pin, align 4
  %idxprom124 = sext i32 %176 to i64
  %177 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx125 = getelementptr inbounds %struct.termnets*, %struct.termnets** %177, i64 %idxprom124
  %178 = load %struct.termnets*, %struct.termnets** %arrayidx125, align 8
  %net126 = getelementptr inbounds %struct.termnets, %struct.termnets* %178, i32 0, i32 0
  %179 = load i32, i32* %net126, align 4
  %idxprom127 = sext i32 %179 to i64
  %180 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx128 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %180, i64 %idxprom127
  %181 = load %struct.dimbox*, %struct.dimbox** %arrayidx128, align 8
  %nname129 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %181, i32 0, i32 13
  %182 = load i8*, i8** %nname129, align 8
  %183 = load i32, i32* %x, align 4
  %184 = load i32, i32* %y, align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %182, i32 %183, i32 %184)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.112
  %185 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %185, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.109

for.end.133:                                      ; preds = %for.cond.109
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %for.end.105
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %186 = load i32, i32* %cell, align 4
  %inc136 = add nsw i32 %186, 1
  store i32 %inc136, i32* %cell, align 4
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  %187 = load i32, i32* @blockl, align 4
  store i32 %187, i32* %l, align 4
  %188 = load i32, i32* @blockr, align 4
  store i32 %188, i32* %r, align 4
  %189 = load i32, i32* @blockb, align 4
  store i32 %189, i32* %b, align 4
  %190 = load i32, i32* @blockt, align 4
  store i32 %190, i32* %t, align 4
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %193 = load i32, i32* %Wwd, align 4
  %194 = load i32, i32* %l, align 4
  %195 = load i32, i32* %b, align 4
  %196 = load i32, i32* %l, align 4
  %197 = load i32, i32* %t, align 4
  %198 = load i32, i32* %r, align 4
  %199 = load i32, i32* %t, align 4
  %200 = load i32, i32* %r, align 4
  %201 = load i32, i32* %b, align 4
  %202 = load i32, i32* %l, align 4
  %203 = load i32, i32* %b, align 4
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call141 = call i32 @fclose(%struct._IO_FILE* %205)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @initPts(i32, i8*, i32) #2

declare i32 @wireestx(i32, i32, i32, double) #2

declare void @addPts(i32, i32, i32, i32) #2

declare void @unbust() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
