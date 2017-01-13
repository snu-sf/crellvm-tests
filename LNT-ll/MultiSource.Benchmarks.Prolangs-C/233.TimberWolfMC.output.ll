; ModuleID = './MultiSource.Benchmarks.Prolangs-C/233.TimberWolfMC.output.bc'
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

@.str = private unnamed_addr constant [7 x i8] c"%s.dat\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"cell %s  orientation %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vertices \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pad %s\0A\00", align 1
@PtsOut = external global %struct.bustbox*, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pinnames = external global i8**, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"pin %s %s %d %d\0A\00", align 1
@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define void @output() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pin = alloca i32, align 4
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
  %termptr = alloca %struct.termbox*, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #5
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.end
  %2 = load i32, i32* %cell, align 4
  %3 = load i32, i32* @numcells, align 4
  %4 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %3, %4
  %cmp5 = icmp sle i32 %2, %add
  br i1 %cmp5, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %6, i64 %idxprom
  %7 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %7, %struct.cellbox** %cellptr, align 8
  %8 = load i32, i32* %cell, align 4
  %9 = load i32, i32* @numcells, align 4
  %cmp6 = icmp sle i32 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 0
  %12 = load i8*, i8** %cname, align 8
  %13 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 5
  %14 = load i32, i32* %orient, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* %12, i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.13

if.else:                                          ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 0
  %18 = load i8*, i8** %cname10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.7
  %20 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %20, i32 0, i32 5
  %21 = load i32, i32* %orient14, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 21
  %arrayidx16 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom15
  %23 = load %struct.tilebox*, %struct.tilebox** %arrayidx16, align 8
  store %struct.tilebox* %23, %struct.tilebox** %tileptr, align 8
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 17
  %25 = load %struct.termbox*, %struct.termbox** %termptr17, align 8
  store %struct.termbox* %25, %struct.termbox** %termptr, align 8
  %26 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 2
  %27 = load i32, i32* %xcenter, align 4
  store i32 %27, i32* %xc, align 4
  %28 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 3
  %29 = load i32, i32* %ycenter, align 4
  store i32 %29, i32* %yc, align 4
  %30 = load i32, i32* %cell, align 4
  %31 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %cname18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %31, i32 0, i32 0
  %32 = load i8*, i8** %cname18, align 8
  %33 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %33, i32 0, i32 5
  %34 = load i32, i32* %orient19, align 4
  call void @initPts(i32 %30, i8* %32, i32 %34)
  %35 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 0
  %36 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %36, %struct.tilebox** %tileptr, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end.13
  %37 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp21 = icmp ne %struct.tilebox* %37, null
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 9
  %39 = load i32, i32* %left, align 4
  store i32 %39, i32* %l, align 4
  %40 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i32 0, i32 10
  %41 = load i32, i32* %right, align 4
  store i32 %41, i32* %r, align 4
  %42 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i32 0, i32 11
  %43 = load i32, i32* %bottom, align 4
  store i32 %43, i32* %b, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 12
  %45 = load i32, i32* %top, align 4
  store i32 %45, i32* %t, align 4
  %46 = load i32, i32* %l, align 4
  %47 = load i32, i32* %r, align 4
  %48 = load i32, i32* %b, align 4
  %49 = load i32, i32* %t, align 4
  call void @addPts(i32 %46, i32 %47, i32 %48, i32 %49)
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %50 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 0
  %51 = load %struct.tilebox*, %struct.tilebox** %nexttile23, align 8
  store %struct.tilebox* %51, %struct.tilebox** %tileptr, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  call void @unbust()
  store i32 1, i32* %k, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.38, %for.end
  %52 = load i32, i32* %k, align 4
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 0
  %xc26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx25, i32 0, i32 0
  %54 = load i32, i32* %xc26, align 4
  %cmp27 = icmp slt i32 %52, %54
  br i1 %cmp27, label %for.body.28, label %for.end.39

for.body.28:                                      ; preds = %for.cond.24
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %56 = load i32, i32* %xc, align 4
  %57 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %57 to i64
  %58 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %58, i64 %idxprom29
  %xc31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx30, i32 0, i32 0
  %59 = load i32, i32* %xc31, align 4
  %add32 = add nsw i32 %56, %59
  %60 = load i32, i32* %yc, align 4
  %61 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %61 to i64
  %62 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i64 %idxprom33
  %yc35 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx34, i32 0, i32 1
  %63 = load i32, i32* %yc35, align 4
  %add36 = add nsw i32 %60, %63
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %add32, i32 %add36)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.28
  %64 = load i32, i32* %k, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.24

for.end.39:                                       ; preds = %for.cond.24
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.59, %for.end.39
  %66 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp42 = icmp ne %struct.termbox* %66, null
  br i1 %cmp42, label %for.body.43, label %for.end.60

for.body.43:                                      ; preds = %for.cond.41
  %67 = load i32, i32* %xc, align 4
  %68 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %68, i32 0, i32 1
  %69 = load i32, i32* %xpos, align 4
  %add44 = add nsw i32 %67, %69
  store i32 %add44, i32* %x, align 4
  %70 = load i32, i32* %yc, align 4
  %71 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %71, i32 0, i32 2
  %72 = load i32, i32* %ypos, align 4
  %add45 = add nsw i32 %70, %72
  store i32 %add45, i32* %y, align 4
  %73 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %73, i32 0, i32 5
  %74 = load i32, i32* %terminal, align 4
  store i32 %74, i32* %pin, align 4
  %75 = load i32, i32* %pin, align 4
  %idxprom46 = sext i32 %75 to i64
  %76 = load i8**, i8*** @pinnames, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %76, i64 %idxprom46
  %77 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %for.body.43
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %79 = load i32, i32* %pin, align 4
  %idxprom51 = sext i32 %79 to i64
  %80 = load i8**, i8*** @pinnames, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %80, i64 %idxprom51
  %81 = load i8*, i8** %arrayidx52, align 8
  %82 = load i32, i32* %pin, align 4
  %idxprom53 = sext i32 %82 to i64
  %83 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx54 = getelementptr inbounds %struct.termnets*, %struct.termnets** %83, i64 %idxprom53
  %84 = load %struct.termnets*, %struct.termnets** %arrayidx54, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %84, i32 0, i32 0
  %85 = load i32, i32* %net, align 4
  %idxprom55 = sext i32 %85 to i64
  %86 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx56 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %86, i64 %idxprom55
  %87 = load %struct.dimbox*, %struct.dimbox** %arrayidx56, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 13
  %88 = load i8*, i8** %nname, align 8
  %89 = load i32, i32* %x, align 4
  %90 = load i32, i32* %y, align 4
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %81, i8* %88, i32 %89, i32 %90)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.50, %for.body.43
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %91 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %91, i32 0, i32 0
  %92 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %92, %struct.termbox** %termptr, align 8
  br label %for.cond.41

for.end.60:                                       ; preds = %for.cond.41
  %93 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %93, i32 0, i32 10
  %94 = load i32, i32* %softflag, align 4
  %cmp61 = icmp eq i32 %94, 1
  br i1 %cmp61, label %if.then.62, label %if.end.89

if.then.62:                                       ; preds = %for.end.60
  store i32 1, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.86, %if.then.62
  %95 = load i32, i32* %j, align 4
  %96 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %96, i32 0, i32 18
  %97 = load i32, i32* %numUnComTerms, align 4
  %cmp64 = icmp sle i32 %95, %97
  br i1 %cmp64, label %for.body.65, label %for.end.88

for.body.65:                                      ; preds = %for.cond.63
  %98 = load i32, i32* %xc, align 4
  %99 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %99 to i64
  %100 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %100, i32 0, i32 20
  %101 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx67 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %101, i64 %idxprom66
  %finalx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx67, i32 0, i32 9
  %102 = load i32, i32* %finalx, align 4
  %add68 = add nsw i32 %98, %102
  store i32 %add68, i32* %x, align 4
  %103 = load i32, i32* %yc, align 4
  %104 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %104 to i64
  %105 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms70 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %105, i32 0, i32 20
  %106 = load %struct.uncombox*, %struct.uncombox** %unComTerms70, align 8
  %arrayidx71 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %106, i64 %idxprom69
  %finaly = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx71, i32 0, i32 10
  %107 = load i32, i32* %finaly, align 4
  %add72 = add nsw i32 %103, %107
  store i32 %add72, i32* %y, align 4
  %108 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %108 to i64
  %109 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms74 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 20
  %110 = load %struct.uncombox*, %struct.uncombox** %unComTerms74, align 8
  %arrayidx75 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %110, i64 %idxprom73
  %terminal76 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx75, i32 0, i32 0
  %111 = load i32, i32* %terminal76, align 4
  store i32 %111, i32* %pin, align 4
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %113 = load i32, i32* %pin, align 4
  %idxprom77 = sext i32 %113 to i64
  %114 = load i8**, i8*** @pinnames, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %114, i64 %idxprom77
  %115 = load i8*, i8** %arrayidx78, align 8
  %116 = load i32, i32* %pin, align 4
  %idxprom79 = sext i32 %116 to i64
  %117 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx80 = getelementptr inbounds %struct.termnets*, %struct.termnets** %117, i64 %idxprom79
  %118 = load %struct.termnets*, %struct.termnets** %arrayidx80, align 8
  %net81 = getelementptr inbounds %struct.termnets, %struct.termnets* %118, i32 0, i32 0
  %119 = load i32, i32* %net81, align 4
  %idxprom82 = sext i32 %119 to i64
  %120 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx83 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %120, i64 %idxprom82
  %121 = load %struct.dimbox*, %struct.dimbox** %arrayidx83, align 8
  %nname84 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %121, i32 0, i32 13
  %122 = load i8*, i8** %nname84, align 8
  %123 = load i32, i32* %x, align 4
  %124 = load i32, i32* %y, align 4
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %115, i8* %122, i32 %123, i32 %124)
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.65
  %125 = load i32, i32* %j, align 4
  %inc87 = add nsw i32 %125, 1
  store i32 %inc87, i32* %j, align 4
  br label %for.cond.63

for.end.88:                                       ; preds = %for.cond.63
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %for.end.60
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %126 = load i32, i32* %cell, align 4
  %inc91 = add nsw i32 %126, 1
  store i32 %inc91, i32* %cell, align 4
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call93 = call i32 @fclose(%struct._IO_FILE* %127)
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
