; ModuleID = './MultiSource.Benchmarks.Prolangs-C/183.TimberWolfMC.outsmall.bc'
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
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }

@bdxlength = external global i32, align 4
@bdylength = external global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.cfs\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@redoFlag = external global i32, align 4
@fpNodes = common global %struct._IO_FILE* null, align 8
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"L NC;\0A94 %s %d %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"L NC;\0AW %d\00", align 1
@PtsOut = external global %struct.bustbox*, align 8
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

; Function Attrs: nounwind uwtable
define void @outsmall() #0 {
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
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %5 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %5) #5
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call3 = call %struct._IO_FILE* @fopen(i8* %arraydecay2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay6)
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %cond.end
  %7 = load i32, i32* @redoFlag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** @fpNodes, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.107, %if.end.10
  %10 = load i32, i32* %cell, align 4
  %11 = load i32, i32* @numcells, align 4
  %12 = load i32, i32* @numpads, align 4
  %add11 = add nsw i32 %11, %12
  %cmp12 = icmp sle i32 %10, %add11
  br i1 %cmp12, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %14, i64 %idxprom
  %15 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %15, %struct.cellbox** %cellptr, align 8
  %16 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 5
  %17 = load i32, i32* %orient, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 21
  %arrayidx15 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom14
  %19 = load %struct.tilebox*, %struct.tilebox** %arrayidx15, align 8
  store %struct.tilebox* %19, %struct.tilebox** %tileptr, align 8
  %20 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr16 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 17
  %21 = load %struct.termbox*, %struct.termbox** %termptr16, align 8
  store %struct.termbox* %21, %struct.termbox** %termptr, align 8
  %22 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 2
  %23 = load i32, i32* %xcenter, align 4
  store i32 %23, i32* %xc, align 4
  %24 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 3
  %25 = load i32, i32* %ycenter, align 4
  store i32 %25, i32* %yc, align 4
  %26 = load i32, i32* %cell, align 4
  %27 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i32 0, i32 0
  %28 = load i8*, i8** %cname, align 8
  %29 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 5
  %30 = load i32, i32* %orient17, align 4
  call void @initPts(i32 %26, i8* %28, i32 %30)
  %31 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %31, i32 0, i32 0
  %32 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %32, %struct.tilebox** %tileptr, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %33 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp19 = icmp ne %struct.tilebox* %33, null
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %34 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 9
  %35 = load i32, i32* %left, align 4
  store i32 %35, i32* %l, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 10
  %37 = load i32, i32* %right, align 4
  store i32 %37, i32* %r, align 4
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 11
  %39 = load i32, i32* %bottom, align 4
  store i32 %39, i32* %b, align 4
  %40 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i32 0, i32 12
  %41 = load i32, i32* %top, align 4
  store i32 %41, i32* %t, align 4
  %42 = load i32, i32* %l, align 4
  %43 = load i32, i32* %r, align 4
  %44 = load i32, i32* %b, align 4
  %45 = load i32, i32* %t, align 4
  call void @addPts(i32 %42, i32 %43, i32 %44, i32 %45)
  %46 = load i32, i32* %xc, align 4
  %47 = load i32, i32* %l, align 4
  %add22 = add nsw i32 %47, %46
  store i32 %add22, i32* %l, align 4
  %48 = load i32, i32* %xc, align 4
  %49 = load i32, i32* %r, align 4
  %add23 = add nsw i32 %49, %48
  store i32 %add23, i32* %r, align 4
  %50 = load i32, i32* %yc, align 4
  %51 = load i32, i32* %b, align 4
  %add24 = add nsw i32 %51, %50
  store i32 %add24, i32* %b, align 4
  %52 = load i32, i32* %yc, align 4
  %53 = load i32, i32* %t, align 4
  %add25 = add nsw i32 %53, %52
  store i32 %add25, i32* %t, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %55 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %55, i32 0, i32 0
  %56 = load i8*, i8** %cname26, align 8
  %57 = load i32, i32* %r, align 4
  %58 = load i32, i32* %l, align 4
  %add27 = add nsw i32 %57, %58
  %div28 = sdiv i32 %add27, 2
  %59 = load i32, i32* %t, align 4
  %60 = load i32, i32* %b, align 4
  %add29 = add nsw i32 %59, %60
  %div30 = sdiv i32 %add29, 2
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %56, i32 %div28, i32 %div30)
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %61 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile32 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %61, i32 0, i32 0
  %62 = load %struct.tilebox*, %struct.tilebox** %nexttile32, align 8
  store %struct.tilebox* %62, %struct.tilebox** %tileptr, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  call void @unbust()
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %64 = load i32, i32* %Wwd, align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %64)
  store i32 1, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.49, %for.end
  %65 = load i32, i32* %k, align 4
  %66 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx35 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %66, i64 0
  %xc36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx35, i32 0, i32 0
  %67 = load i32, i32* %xc36, align 4
  %cmp37 = icmp slt i32 %65, %67
  br i1 %cmp37, label %for.body.39, label %for.end.50

for.body.39:                                      ; preds = %for.cond.34
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %69 = load i32, i32* %xc, align 4
  %70 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %70 to i64
  %71 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx41 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i64 %idxprom40
  %xc42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx41, i32 0, i32 0
  %72 = load i32, i32* %xc42, align 4
  %add43 = add nsw i32 %69, %72
  %73 = load i32, i32* %yc, align 4
  %74 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %74 to i64
  %75 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %75, i64 %idxprom44
  %yc46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx45, i32 0, i32 1
  %76 = load i32, i32* %yc46, align 4
  %add47 = add nsw i32 %73, %76
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %add43, i32 %add47)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.39
  %77 = load i32, i32* %k, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.34

for.end.50:                                       ; preds = %for.cond.34
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %79 = load i32, i32* %xc, align 4
  %80 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %80, i64 1
  %xc52 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx51, i32 0, i32 0
  %81 = load i32, i32* %xc52, align 4
  %add53 = add nsw i32 %79, %81
  %82 = load i32, i32* %yc, align 4
  %83 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 1
  %yc55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx54, i32 0, i32 1
  %84 = load i32, i32* %yc55, align 4
  %add56 = add nsw i32 %82, %84
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %add53, i32 %add56)
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.76, %for.end.50
  %85 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp59 = icmp ne %struct.termbox* %85, null
  br i1 %cmp59, label %for.body.61, label %for.end.77

for.body.61:                                      ; preds = %for.cond.58
  %86 = load i32, i32* %xc, align 4
  %87 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %87, i32 0, i32 1
  %88 = load i32, i32* %xpos, align 4
  %add62 = add nsw i32 %86, %88
  store i32 %add62, i32* %x, align 4
  %89 = load i32, i32* %yc, align 4
  %90 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %90, i32 0, i32 2
  %91 = load i32, i32* %ypos, align 4
  %add63 = add nsw i32 %89, %91
  store i32 %add63, i32* %y, align 4
  %92 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %92, i32 0, i32 5
  %93 = load i32, i32* %terminal, align 4
  store i32 %93, i32* %pin, align 4
  %94 = load i32, i32* %pin, align 4
  %idxprom64 = sext i32 %94 to i64
  %95 = load i8**, i8*** @pinnames, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %95, i64 %idxprom64
  %96 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %for.body.61
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %98 = load i32, i32* %pin, align 4
  %idxprom70 = sext i32 %98 to i64
  %99 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx71 = getelementptr inbounds %struct.termnets*, %struct.termnets** %99, i64 %idxprom70
  %100 = load %struct.termnets*, %struct.termnets** %arrayidx71, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %100, i32 0, i32 0
  %101 = load i32, i32* %net, align 4
  %idxprom72 = sext i32 %101 to i64
  %102 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx73 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %102, i64 %idxprom72
  %103 = load %struct.dimbox*, %struct.dimbox** %arrayidx73, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %103, i32 0, i32 13
  %104 = load i8*, i8** %nname, align 8
  %105 = load i32, i32* %x, align 4
  %106 = load i32, i32* %y, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %104, i32 %105, i32 %106)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.69, %for.body.61
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %107 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %107, i32 0, i32 0
  %108 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %108, %struct.termbox** %termptr, align 8
  br label %for.cond.58

for.end.77:                                       ; preds = %for.cond.58
  %109 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 10
  %110 = load i32, i32* %softflag, align 4
  %cmp78 = icmp eq i32 %110, 1
  br i1 %cmp78, label %if.then.80, label %if.end.106

if.then.80:                                       ; preds = %for.end.77
  store i32 1, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.103, %if.then.80
  %111 = load i32, i32* %j, align 4
  %112 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 18
  %113 = load i32, i32* %numUnComTerms, align 4
  %cmp82 = icmp sle i32 %111, %113
  br i1 %cmp82, label %for.body.84, label %for.end.105

for.body.84:                                      ; preds = %for.cond.81
  %114 = load i32, i32* %xc, align 4
  %115 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %115 to i64
  %116 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %116, i32 0, i32 20
  %117 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx86 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %117, i64 %idxprom85
  %finalx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx86, i32 0, i32 9
  %118 = load i32, i32* %finalx, align 4
  %add87 = add nsw i32 %114, %118
  store i32 %add87, i32* %x, align 4
  %119 = load i32, i32* %yc, align 4
  %120 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %120 to i64
  %121 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %121, i32 0, i32 20
  %122 = load %struct.uncombox*, %struct.uncombox** %unComTerms89, align 8
  %arrayidx90 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %122, i64 %idxprom88
  %finaly = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx90, i32 0, i32 10
  %123 = load i32, i32* %finaly, align 4
  %add91 = add nsw i32 %119, %123
  store i32 %add91, i32* %y, align 4
  %124 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %124 to i64
  %125 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms93 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %125, i32 0, i32 20
  %126 = load %struct.uncombox*, %struct.uncombox** %unComTerms93, align 8
  %arrayidx94 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %126, i64 %idxprom92
  %terminal95 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx94, i32 0, i32 0
  %127 = load i32, i32* %terminal95, align 4
  store i32 %127, i32* %pin, align 4
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %129 = load i32, i32* %pin, align 4
  %idxprom96 = sext i32 %129 to i64
  %130 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx97 = getelementptr inbounds %struct.termnets*, %struct.termnets** %130, i64 %idxprom96
  %131 = load %struct.termnets*, %struct.termnets** %arrayidx97, align 8
  %net98 = getelementptr inbounds %struct.termnets, %struct.termnets* %131, i32 0, i32 0
  %132 = load i32, i32* %net98, align 4
  %idxprom99 = sext i32 %132 to i64
  %133 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx100 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %133, i64 %idxprom99
  %134 = load %struct.dimbox*, %struct.dimbox** %arrayidx100, align 8
  %nname101 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %134, i32 0, i32 13
  %135 = load i8*, i8** %nname101, align 8
  %136 = load i32, i32* %x, align 4
  %137 = load i32, i32* %y, align 4
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %135, i32 %136, i32 %137)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.84
  %138 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %138, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond.81

for.end.105:                                      ; preds = %for.cond.81
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.105, %for.end.77
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %139 = load i32, i32* %cell, align 4
  %inc108 = add nsw i32 %139, 1
  store i32 %inc108, i32* %cell, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  %140 = load i32, i32* @blockl, align 4
  store i32 %140, i32* %l, align 4
  %141 = load i32, i32* @blockr, align 4
  store i32 %141, i32* %r, align 4
  %142 = load i32, i32* @blockb, align 4
  store i32 %142, i32* %b, align 4
  %143 = load i32, i32* @blockt, align 4
  store i32 %143, i32* %t, align 4
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %146 = load i32, i32* %Wwd, align 4
  %147 = load i32, i32* %l, align 4
  %148 = load i32, i32* %b, align 4
  %149 = load i32, i32* %l, align 4
  %150 = load i32, i32* %t, align 4
  %151 = load i32, i32* %r, align 4
  %152 = load i32, i32* %t, align 4
  %153 = load i32, i32* %r, align 4
  %154 = load i32, i32* %b, align 4
  %155 = load i32, i32* %l, align 4
  %156 = load i32, i32* %b, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @initPts(i32, i8*, i32) #2

declare void @addPts(i32, i32, i32, i32) #2

declare void @unbust() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

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
