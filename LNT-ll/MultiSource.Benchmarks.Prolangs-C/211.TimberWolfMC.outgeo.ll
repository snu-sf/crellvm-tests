; ModuleID = './MultiSource.Benchmarks.Prolangs-C/211.TimberWolfMC.outgeo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.bustbox = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.geo\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"cell %s \0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%d vertices \00", align 1
@PtsOut = external global %struct.bustbox*, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@numpads = external global i32, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"pad.macro.l\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"4 vertices \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c" %d %d %d %d %d %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pad.macro.t\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"pad.macro.r\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"pad.macro.b\00", align 1

; Function Attrs: nounwind uwtable
define void @outgeo() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %cell = alloca i32, align 4
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
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.end
  %2 = load i32, i32* %cell, align 4
  %3 = load i32, i32* @numcells, align 4
  %cmp5 = icmp sle i32 %2, %3
  br i1 %cmp5, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %5, i64 %idxprom
  %6 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %6, %struct.cellbox** %cellptr, align 8
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx7 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom6
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx7, align 8
  store %struct.tilebox* %10, %struct.tilebox** %tileptr, align 8
  %11 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 2
  %12 = load i32, i32* %xcenter, align 4
  store i32 %12, i32* %xc, align 4
  %13 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 3
  %14 = load i32, i32* %ycenter, align 4
  store i32 %14, i32* %yc, align 4
  %15 = load i32, i32* %cell, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 0
  %17 = load i8*, i8** %cname, align 8
  %18 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 5
  %19 = load i32, i32* %orient8, align 4
  call void @initPts(i32 %15, i8* %17, i32 %19)
  %20 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 0
  %21 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %21, %struct.tilebox** %tileptr, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %22 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp10 = icmp ne %struct.tilebox* %22, null
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %23 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 9
  %24 = load i32, i32* %left, align 4
  store i32 %24, i32* %l, align 4
  %25 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %25, i32 0, i32 10
  %26 = load i32, i32* %right, align 4
  store i32 %26, i32* %r, align 4
  %27 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 11
  %28 = load i32, i32* %bottom, align 4
  store i32 %28, i32* %b, align 4
  %29 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %29, i32 0, i32 12
  %30 = load i32, i32* %top, align 4
  store i32 %30, i32* %t, align 4
  %31 = load i32, i32* %l, align 4
  %32 = load i32, i32* %r, align 4
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* %t, align 4
  call void @addPts(i32 %31, i32 %32, i32 %33, i32 %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %35 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile12 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 0
  %36 = load %struct.tilebox*, %struct.tilebox** %nexttile12, align 8
  store %struct.tilebox* %36, %struct.tilebox** %tileptr, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  call void @unbust()
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %38 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 0
  %39 = load i8*, i8** %cname13, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %41 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 0
  %xc16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx15, i32 0, i32 0
  %42 = load i32, i32* %xc16, align 4
  %sub = sub nsw i32 %42, 1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %sub)
  store i32 1, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.31, %for.end
  %43 = load i32, i32* %k, align 4
  %44 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i64 0
  %xc20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx19, i32 0, i32 0
  %45 = load i32, i32* %xc20, align 4
  %cmp21 = icmp slt i32 %43, %45
  br i1 %cmp21, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.18
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %47 = load i32, i32* %xc, align 4
  %48 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %48 to i64
  %49 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 %idxprom23
  %xc25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx24, i32 0, i32 0
  %50 = load i32, i32* %xc25, align 4
  %add = add nsw i32 %47, %50
  %51 = load i32, i32* %yc, align 4
  %52 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %52 to i64
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 %idxprom26
  %yc28 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx27, i32 0, i32 1
  %54 = load i32, i32* %yc28, align 4
  %add29 = add nsw i32 %51, %54
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add29)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.22
  %55 = load i32, i32* %k, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.18

for.end.32:                                       ; preds = %for.cond.18
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.32
  %57 = load i32, i32* %cell, align 4
  %inc35 = add nsw i32 %57, 1
  store i32 %inc35, i32* %cell, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  store i32 100000000, i32* %l, align 4
  store i32 100000000, i32* %b, align 4
  store i32 -100000000, i32* %r, align 4
  store i32 -100000000, i32* %t, align 4
  %58 = load i32, i32* @numcells, align 4
  %add37 = add nsw i32 %58, 1
  store i32 %add37, i32* %cell, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.81, %for.end.36
  %59 = load i32, i32* %cell, align 4
  %60 = load i32, i32* @numcells, align 4
  %61 = load i32, i32* @numpads, align 4
  %add39 = add nsw i32 %60, %61
  %cmp40 = icmp sle i32 %59, %add39
  br i1 %cmp40, label %for.body.41, label %for.end.83

for.body.41:                                      ; preds = %for.cond.38
  %62 = load i32, i32* %cell, align 4
  %idxprom42 = sext i32 %62 to i64
  %63 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx43 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %63, i64 %idxprom42
  %64 = load %struct.cellbox*, %struct.cellbox** %arrayidx43, align 8
  store %struct.cellbox* %64, %struct.cellbox** %cellptr, align 8
  %65 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %65, i32 0, i32 11
  %66 = load i32, i32* %padside, align 4
  %cmp44 = icmp ne i32 %66, 1
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body.41
  br label %for.inc.81

if.end.46:                                        ; preds = %for.body.41
  %67 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i32 0, i32 2
  %68 = load i32, i32* %xcenter47, align 4
  store i32 %68, i32* %xc, align 4
  %69 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %69, i32 0, i32 3
  %70 = load i32, i32* %ycenter48, align 4
  store i32 %70, i32* %yc, align 4
  %71 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %71, i32 0, i32 5
  %72 = load i32, i32* %orient49, align 4
  %idxprom50 = sext i32 %72 to i64
  %73 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %73, i32 0, i32 21
  %arrayidx52 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config51, i32 0, i64 %idxprom50
  %74 = load %struct.tilebox*, %struct.tilebox** %arrayidx52, align 8
  store %struct.tilebox* %74, %struct.tilebox** %tileptr, align 8
  %75 = load i32, i32* %xc, align 4
  %76 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 9
  %77 = load i32, i32* %left53, align 4
  %add54 = add nsw i32 %75, %77
  %78 = load i32, i32* %l, align 4
  %cmp55 = icmp slt i32 %add54, %78
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.46
  %79 = load i32, i32* %xc, align 4
  %80 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %80, i32 0, i32 9
  %81 = load i32, i32* %left57, align 4
  %add58 = add nsw i32 %79, %81
  store i32 %add58, i32* %l, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.46
  %82 = load i32, i32* %xc, align 4
  %83 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %83, i32 0, i32 10
  %84 = load i32, i32* %right60, align 4
  %add61 = add nsw i32 %82, %84
  %85 = load i32, i32* %r, align 4
  %cmp62 = icmp sgt i32 %add61, %85
  br i1 %cmp62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.59
  %86 = load i32, i32* %xc, align 4
  %87 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %87, i32 0, i32 10
  %88 = load i32, i32* %right64, align 4
  %add65 = add nsw i32 %86, %88
  store i32 %add65, i32* %r, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.59
  %89 = load i32, i32* %yc, align 4
  %90 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %90, i32 0, i32 11
  %91 = load i32, i32* %bottom67, align 4
  %add68 = add nsw i32 %89, %91
  %92 = load i32, i32* %b, align 4
  %cmp69 = icmp slt i32 %add68, %92
  br i1 %cmp69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.66
  %93 = load i32, i32* %yc, align 4
  %94 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 11
  %95 = load i32, i32* %bottom71, align 4
  %add72 = add nsw i32 %93, %95
  store i32 %add72, i32* %b, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.66
  %96 = load i32, i32* %yc, align 4
  %97 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top74 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i32 0, i32 12
  %98 = load i32, i32* %top74, align 4
  %add75 = add nsw i32 %96, %98
  %99 = load i32, i32* %t, align 4
  %cmp76 = icmp sgt i32 %add75, %99
  br i1 %cmp76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.73
  %100 = load i32, i32* %yc, align 4
  %101 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 12
  %102 = load i32, i32* %top78, align 4
  %add79 = add nsw i32 %100, %102
  store i32 %add79, i32* %t, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.73
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80, %if.then.45
  %103 = load i32, i32* %cell, align 4
  %inc82 = add nsw i32 %103, 1
  store i32 %inc82, i32* %cell, align 4
  br label %for.cond.38

for.end.83:                                       ; preds = %for.cond.38
  %104 = load i32, i32* %t, align 4
  %cmp84 = icmp ne i32 %104, -100000000
  br i1 %cmp84, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %for.end.83
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %108 = load i32, i32* %l, align 4
  %109 = load i32, i32* %b, align 4
  %110 = load i32, i32* %l, align 4
  %111 = load i32, i32* %t, align 4
  %112 = load i32, i32* %r, align 4
  %113 = load i32, i32* %t, align 4
  %114 = load i32, i32* %r, align 4
  %115 = load i32, i32* %b, align 4
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %for.end.83
  store i32 100000000, i32* %l, align 4
  store i32 100000000, i32* %b, align 4
  store i32 -100000000, i32* %r, align 4
  store i32 -100000000, i32* %t, align 4
  %116 = load i32, i32* @numcells, align 4
  %add90 = add nsw i32 %116, 1
  store i32 %add90, i32* %cell, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.135, %if.end.89
  %117 = load i32, i32* %cell, align 4
  %118 = load i32, i32* @numcells, align 4
  %119 = load i32, i32* @numpads, align 4
  %add92 = add nsw i32 %118, %119
  %cmp93 = icmp sle i32 %117, %add92
  br i1 %cmp93, label %for.body.94, label %for.end.137

for.body.94:                                      ; preds = %for.cond.91
  %120 = load i32, i32* %cell, align 4
  %idxprom95 = sext i32 %120 to i64
  %121 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx96 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %121, i64 %idxprom95
  %122 = load %struct.cellbox*, %struct.cellbox** %arrayidx96, align 8
  store %struct.cellbox* %122, %struct.cellbox** %cellptr, align 8
  %123 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside97 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 11
  %124 = load i32, i32* %padside97, align 4
  %cmp98 = icmp ne i32 %124, 2
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.body.94
  br label %for.inc.135

if.end.100:                                       ; preds = %for.body.94
  %125 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %125, i32 0, i32 2
  %126 = load i32, i32* %xcenter101, align 4
  store i32 %126, i32* %xc, align 4
  %127 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter102 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %127, i32 0, i32 3
  %128 = load i32, i32* %ycenter102, align 4
  store i32 %128, i32* %yc, align 4
  %129 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient103 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %129, i32 0, i32 5
  %130 = load i32, i32* %orient103, align 4
  %idxprom104 = sext i32 %130 to i64
  %131 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config105 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %131, i32 0, i32 21
  %arrayidx106 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config105, i32 0, i64 %idxprom104
  %132 = load %struct.tilebox*, %struct.tilebox** %arrayidx106, align 8
  store %struct.tilebox* %132, %struct.tilebox** %tileptr, align 8
  %133 = load i32, i32* %xc, align 4
  %134 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 9
  %135 = load i32, i32* %left107, align 4
  %add108 = add nsw i32 %133, %135
  %136 = load i32, i32* %l, align 4
  %cmp109 = icmp slt i32 %add108, %136
  br i1 %cmp109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.end.100
  %137 = load i32, i32* %xc, align 4
  %138 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %138, i32 0, i32 9
  %139 = load i32, i32* %left111, align 4
  %add112 = add nsw i32 %137, %139
  store i32 %add112, i32* %l, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.end.100
  %140 = load i32, i32* %xc, align 4
  %141 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %141, i32 0, i32 10
  %142 = load i32, i32* %right114, align 4
  %add115 = add nsw i32 %140, %142
  %143 = load i32, i32* %r, align 4
  %cmp116 = icmp sgt i32 %add115, %143
  br i1 %cmp116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.end.113
  %144 = load i32, i32* %xc, align 4
  %145 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %145, i32 0, i32 10
  %146 = load i32, i32* %right118, align 4
  %add119 = add nsw i32 %144, %146
  store i32 %add119, i32* %r, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.113
  %147 = load i32, i32* %yc, align 4
  %148 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %148, i32 0, i32 11
  %149 = load i32, i32* %bottom121, align 4
  %add122 = add nsw i32 %147, %149
  %150 = load i32, i32* %b, align 4
  %cmp123 = icmp slt i32 %add122, %150
  br i1 %cmp123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.end.120
  %151 = load i32, i32* %yc, align 4
  %152 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom125 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %152, i32 0, i32 11
  %153 = load i32, i32* %bottom125, align 4
  %add126 = add nsw i32 %151, %153
  store i32 %add126, i32* %b, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %if.end.120
  %154 = load i32, i32* %yc, align 4
  %155 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top128 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %155, i32 0, i32 12
  %156 = load i32, i32* %top128, align 4
  %add129 = add nsw i32 %154, %156
  %157 = load i32, i32* %t, align 4
  %cmp130 = icmp sgt i32 %add129, %157
  br i1 %cmp130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.127
  %158 = load i32, i32* %yc, align 4
  %159 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %159, i32 0, i32 12
  %160 = load i32, i32* %top132, align 4
  %add133 = add nsw i32 %158, %160
  store i32 %add133, i32* %t, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.127
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134, %if.then.99
  %161 = load i32, i32* %cell, align 4
  %inc136 = add nsw i32 %161, 1
  store i32 %inc136, i32* %cell, align 4
  br label %for.cond.91

for.end.137:                                      ; preds = %for.cond.91
  %162 = load i32, i32* %t, align 4
  %cmp138 = icmp ne i32 %162, -100000000
  br i1 %cmp138, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %for.end.137
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %166 = load i32, i32* %l, align 4
  %167 = load i32, i32* %b, align 4
  %168 = load i32, i32* %l, align 4
  %169 = load i32, i32* %t, align 4
  %170 = load i32, i32* %r, align 4
  %171 = load i32, i32* %t, align 4
  %172 = load i32, i32* %r, align 4
  %173 = load i32, i32* %b, align 4
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.139, %for.end.137
  store i32 100000000, i32* %l, align 4
  store i32 100000000, i32* %b, align 4
  store i32 -100000000, i32* %r, align 4
  store i32 -100000000, i32* %t, align 4
  %174 = load i32, i32* @numcells, align 4
  %add144 = add nsw i32 %174, 1
  store i32 %add144, i32* %cell, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.189, %if.end.143
  %175 = load i32, i32* %cell, align 4
  %176 = load i32, i32* @numcells, align 4
  %177 = load i32, i32* @numpads, align 4
  %add146 = add nsw i32 %176, %177
  %cmp147 = icmp sle i32 %175, %add146
  br i1 %cmp147, label %for.body.148, label %for.end.191

for.body.148:                                     ; preds = %for.cond.145
  %178 = load i32, i32* %cell, align 4
  %idxprom149 = sext i32 %178 to i64
  %179 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx150 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %179, i64 %idxprom149
  %180 = load %struct.cellbox*, %struct.cellbox** %arrayidx150, align 8
  store %struct.cellbox* %180, %struct.cellbox** %cellptr, align 8
  %181 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %181, i32 0, i32 11
  %182 = load i32, i32* %padside151, align 4
  %cmp152 = icmp ne i32 %182, 3
  br i1 %cmp152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %for.body.148
  br label %for.inc.189

if.end.154:                                       ; preds = %for.body.148
  %183 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter155 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %183, i32 0, i32 2
  %184 = load i32, i32* %xcenter155, align 4
  store i32 %184, i32* %xc, align 4
  %185 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter156 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %185, i32 0, i32 3
  %186 = load i32, i32* %ycenter156, align 4
  store i32 %186, i32* %yc, align 4
  %187 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient157 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i32 0, i32 5
  %188 = load i32, i32* %orient157, align 4
  %idxprom158 = sext i32 %188 to i64
  %189 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %189, i32 0, i32 21
  %arrayidx160 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config159, i32 0, i64 %idxprom158
  %190 = load %struct.tilebox*, %struct.tilebox** %arrayidx160, align 8
  store %struct.tilebox* %190, %struct.tilebox** %tileptr, align 8
  %191 = load i32, i32* %xc, align 4
  %192 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %192, i32 0, i32 9
  %193 = load i32, i32* %left161, align 4
  %add162 = add nsw i32 %191, %193
  %194 = load i32, i32* %l, align 4
  %cmp163 = icmp slt i32 %add162, %194
  br i1 %cmp163, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %if.end.154
  %195 = load i32, i32* %xc, align 4
  %196 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %196, i32 0, i32 9
  %197 = load i32, i32* %left165, align 4
  %add166 = add nsw i32 %195, %197
  store i32 %add166, i32* %l, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.164, %if.end.154
  %198 = load i32, i32* %xc, align 4
  %199 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right168 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %199, i32 0, i32 10
  %200 = load i32, i32* %right168, align 4
  %add169 = add nsw i32 %198, %200
  %201 = load i32, i32* %r, align 4
  %cmp170 = icmp sgt i32 %add169, %201
  br i1 %cmp170, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.end.167
  %202 = load i32, i32* %xc, align 4
  %203 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 10
  %204 = load i32, i32* %right172, align 4
  %add173 = add nsw i32 %202, %204
  store i32 %add173, i32* %r, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %if.end.167
  %205 = load i32, i32* %yc, align 4
  %206 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i32 0, i32 11
  %207 = load i32, i32* %bottom175, align 4
  %add176 = add nsw i32 %205, %207
  %208 = load i32, i32* %b, align 4
  %cmp177 = icmp slt i32 %add176, %208
  br i1 %cmp177, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.end.174
  %209 = load i32, i32* %yc, align 4
  %210 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom179 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %210, i32 0, i32 11
  %211 = load i32, i32* %bottom179, align 4
  %add180 = add nsw i32 %209, %211
  store i32 %add180, i32* %b, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %if.end.174
  %212 = load i32, i32* %yc, align 4
  %213 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %213, i32 0, i32 12
  %214 = load i32, i32* %top182, align 4
  %add183 = add nsw i32 %212, %214
  %215 = load i32, i32* %t, align 4
  %cmp184 = icmp sgt i32 %add183, %215
  br i1 %cmp184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %if.end.181
  %216 = load i32, i32* %yc, align 4
  %217 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %217, i32 0, i32 12
  %218 = load i32, i32* %top186, align 4
  %add187 = add nsw i32 %216, %218
  store i32 %add187, i32* %t, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %if.end.181
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188, %if.then.153
  %219 = load i32, i32* %cell, align 4
  %inc190 = add nsw i32 %219, 1
  store i32 %inc190, i32* %cell, align 4
  br label %for.cond.145

for.end.191:                                      ; preds = %for.cond.145
  %220 = load i32, i32* %t, align 4
  %cmp192 = icmp ne i32 %220, -100000000
  br i1 %cmp192, label %if.then.193, label %if.end.197

if.then.193:                                      ; preds = %for.end.191
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %224 = load i32, i32* %l, align 4
  %225 = load i32, i32* %b, align 4
  %226 = load i32, i32* %l, align 4
  %227 = load i32, i32* %t, align 4
  %228 = load i32, i32* %r, align 4
  %229 = load i32, i32* %t, align 4
  %230 = load i32, i32* %r, align 4
  %231 = load i32, i32* %b, align 4
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.193, %for.end.191
  store i32 100000000, i32* %l, align 4
  store i32 100000000, i32* %b, align 4
  store i32 -100000000, i32* %r, align 4
  store i32 -100000000, i32* %t, align 4
  %232 = load i32, i32* @numcells, align 4
  %add198 = add nsw i32 %232, 1
  store i32 %add198, i32* %cell, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.243, %if.end.197
  %233 = load i32, i32* %cell, align 4
  %234 = load i32, i32* @numcells, align 4
  %235 = load i32, i32* @numpads, align 4
  %add200 = add nsw i32 %234, %235
  %cmp201 = icmp sle i32 %233, %add200
  br i1 %cmp201, label %for.body.202, label %for.end.245

for.body.202:                                     ; preds = %for.cond.199
  %236 = load i32, i32* %cell, align 4
  %idxprom203 = sext i32 %236 to i64
  %237 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx204 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %237, i64 %idxprom203
  %238 = load %struct.cellbox*, %struct.cellbox** %arrayidx204, align 8
  store %struct.cellbox* %238, %struct.cellbox** %cellptr, align 8
  %239 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside205 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i32 0, i32 11
  %240 = load i32, i32* %padside205, align 4
  %cmp206 = icmp ne i32 %240, 4
  br i1 %cmp206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %for.body.202
  br label %for.inc.243

if.end.208:                                       ; preds = %for.body.202
  %241 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter209 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %241, i32 0, i32 2
  %242 = load i32, i32* %xcenter209, align 4
  store i32 %242, i32* %xc, align 4
  %243 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter210 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %243, i32 0, i32 3
  %244 = load i32, i32* %ycenter210, align 4
  store i32 %244, i32* %yc, align 4
  %245 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient211 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %245, i32 0, i32 5
  %246 = load i32, i32* %orient211, align 4
  %idxprom212 = sext i32 %246 to i64
  %247 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config213 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %247, i32 0, i32 21
  %arrayidx214 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config213, i32 0, i64 %idxprom212
  %248 = load %struct.tilebox*, %struct.tilebox** %arrayidx214, align 8
  store %struct.tilebox* %248, %struct.tilebox** %tileptr, align 8
  %249 = load i32, i32* %xc, align 4
  %250 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left215 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %250, i32 0, i32 9
  %251 = load i32, i32* %left215, align 4
  %add216 = add nsw i32 %249, %251
  %252 = load i32, i32* %l, align 4
  %cmp217 = icmp slt i32 %add216, %252
  br i1 %cmp217, label %if.then.218, label %if.end.221

if.then.218:                                      ; preds = %if.end.208
  %253 = load i32, i32* %xc, align 4
  %254 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left219 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %254, i32 0, i32 9
  %255 = load i32, i32* %left219, align 4
  %add220 = add nsw i32 %253, %255
  store i32 %add220, i32* %l, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.218, %if.end.208
  %256 = load i32, i32* %xc, align 4
  %257 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right222 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %257, i32 0, i32 10
  %258 = load i32, i32* %right222, align 4
  %add223 = add nsw i32 %256, %258
  %259 = load i32, i32* %r, align 4
  %cmp224 = icmp sgt i32 %add223, %259
  br i1 %cmp224, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %if.end.221
  %260 = load i32, i32* %xc, align 4
  %261 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right226 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %261, i32 0, i32 10
  %262 = load i32, i32* %right226, align 4
  %add227 = add nsw i32 %260, %262
  store i32 %add227, i32* %r, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.225, %if.end.221
  %263 = load i32, i32* %yc, align 4
  %264 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom229 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %264, i32 0, i32 11
  %265 = load i32, i32* %bottom229, align 4
  %add230 = add nsw i32 %263, %265
  %266 = load i32, i32* %b, align 4
  %cmp231 = icmp slt i32 %add230, %266
  br i1 %cmp231, label %if.then.232, label %if.end.235

if.then.232:                                      ; preds = %if.end.228
  %267 = load i32, i32* %yc, align 4
  %268 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom233 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %268, i32 0, i32 11
  %269 = load i32, i32* %bottom233, align 4
  %add234 = add nsw i32 %267, %269
  store i32 %add234, i32* %b, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.232, %if.end.228
  %270 = load i32, i32* %yc, align 4
  %271 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top236 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %271, i32 0, i32 12
  %272 = load i32, i32* %top236, align 4
  %add237 = add nsw i32 %270, %272
  %273 = load i32, i32* %t, align 4
  %cmp238 = icmp sgt i32 %add237, %273
  br i1 %cmp238, label %if.then.239, label %if.end.242

if.then.239:                                      ; preds = %if.end.235
  %274 = load i32, i32* %yc, align 4
  %275 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top240 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %275, i32 0, i32 12
  %276 = load i32, i32* %top240, align 4
  %add241 = add nsw i32 %274, %276
  store i32 %add241, i32* %t, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.239, %if.end.235
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242, %if.then.207
  %277 = load i32, i32* %cell, align 4
  %inc244 = add nsw i32 %277, 1
  store i32 %inc244, i32* %cell, align 4
  br label %for.cond.199

for.end.245:                                      ; preds = %for.cond.199
  %278 = load i32, i32* %t, align 4
  %cmp246 = icmp ne i32 %278, -100000000
  br i1 %cmp246, label %if.then.247, label %if.end.251

if.then.247:                                      ; preds = %for.end.245
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %282 = load i32, i32* %l, align 4
  %283 = load i32, i32* %b, align 4
  %284 = load i32, i32* %l, align 4
  %285 = load i32, i32* %t, align 4
  %286 = load i32, i32* %r, align 4
  %287 = load i32, i32* %t, align 4
  %288 = load i32, i32* %r, align 4
  %289 = load i32, i32* %b, align 4
  %call250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %281, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.247, %for.end.245
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call252 = call i32 @fclose(%struct._IO_FILE* %290)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @initPts(i32, i8*, i32) #2

declare void @addPts(i32, i32, i32, i32) #2

declare void @unbust() #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
