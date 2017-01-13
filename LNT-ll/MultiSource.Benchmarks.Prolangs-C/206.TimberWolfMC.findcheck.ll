; ModuleID = './MultiSource.Benchmarks.Prolangs-C/206.TimberWolfMC.findcheck.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.wat\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fcost = external global i32, align 4
@fwire = external global i32, align 4
@fwirex = external global i32, align 4
@fwirey = external global i32, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Cell wire estimation weighting factors per side:\0A\00", align 1
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"  Cell: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"        Border for left:%d  Pin_Factor:%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"        Border for rite:%d  Pin_Factor:%g\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"        Border for  bot:%d  Pin_Factor:%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"        Border for  top:%d  Pin_Factor:%g\0A\00", align 1
@termarray = external global %struct.termnets**, align 8
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@overlapf = external global i32 (...)*, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"\0AFinal Overlap Penalty Function Value: %d\0A\00", align 1
@icost = external global i32, align 4
@iwire = external global i32, align 4
@iwirex = external global i32, align 4
@iwirey = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @finalcheck() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %ptr = alloca %struct.cellbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %termptr = alloca %struct.termnets*, align 8
  %filename = alloca [1024 x i8], align 16
  %cell = alloca i32, align 4
  %net = alloca i32, align 4
  %terminal = alloca i32, align 4
  %pin = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %site = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %value = alloca i32, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #3
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* @fcost, align 4
  store i32 0, i32* @fwire, align 4
  store i32 0, i32* @fwirex, align 4
  store i32 0, i32* @fwirey, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %entry
  %2 = load i32, i32* %cell, align 4
  %3 = load i32, i32* @numcells, align 4
  %4 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %3, %4
  %cmp = icmp sle i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %cell, align 4
  %6 = load i32, i32* @numcells, align 4
  %cmp4 = icmp sle i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %8, i64 %idxprom
  %9 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 2
  %10 = load i32, i32* %xcenter, align 4
  store i32 %10, i32* %xc, align 4
  %11 = load i32, i32* %cell, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %12, i64 %idxprom5
  %13 = load %struct.cellbox*, %struct.cellbox** %arrayidx6, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 3
  %14 = load i32, i32* %ycenter, align 4
  store i32 %14, i32* %yc, align 4
  %15 = load i32, i32* %cell, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx8 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %idxprom7
  %17 = load %struct.cellbox*, %struct.cellbox** %arrayidx8, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 5
  %18 = load i32, i32* %orient, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i32, i32* %cell, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx11 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %20, i64 %idxprom10
  %21 = load %struct.cellbox*, %struct.cellbox** %arrayidx11, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i32 0, i32 21
  %arrayidx12 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom9
  %22 = load %struct.tilebox*, %struct.tilebox** %arrayidx12, align 8
  store %struct.tilebox* %22, %struct.tilebox** %tileptr, align 8
  %23 = load i32, i32* %xc, align 4
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 9
  %25 = load i32, i32* %left, align 4
  %add13 = add nsw i32 %23, %25
  store i32 %add13, i32* %l, align 4
  %26 = load i32, i32* %xc, align 4
  %27 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 10
  %28 = load i32, i32* %right, align 4
  %add14 = add nsw i32 %26, %28
  store i32 %add14, i32* %r, align 4
  %29 = load i32, i32* %yc, align 4
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 11
  %31 = load i32, i32* %bottom, align 4
  %add15 = add nsw i32 %29, %31
  store i32 %add15, i32* %b, align 4
  %32 = load i32, i32* %yc, align 4
  %33 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %33, i32 0, i32 12
  %34 = load i32, i32* %top, align 4
  %add16 = add nsw i32 %32, %34
  store i32 %add16, i32* %t, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %36 = load i32, i32* %cell, align 4
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx18 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %37, i64 %idxprom17
  %38 = load %struct.cellbox*, %struct.cellbox** %arrayidx18, align 8
  %cname = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 0
  %39 = load i8*, i8** %cname, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %41 = load i32, i32* %l, align 4
  %42 = load i32, i32* %b, align 4
  %43 = load i32, i32* %t, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 1
  %45 = load double, double* %lweight, align 8
  %call20 = call i32 @wireestx(i32 %41, i32 %42, i32 %43, double %45)
  %46 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 1
  %47 = load double, double* %lweight21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i32 %call20, double %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %49 = load i32, i32* %r, align 4
  %50 = load i32, i32* %b, align 4
  %51 = load i32, i32* %t, align 4
  %52 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i32 0, i32 2
  %53 = load double, double* %rweight, align 8
  %call23 = call i32 @wireestx(i32 %49, i32 %50, i32 %51, double %53)
  %54 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight24 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %54, i32 0, i32 2
  %55 = load double, double* %rweight24, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 %call23, double %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %57 = load i32, i32* %b, align 4
  %58 = load i32, i32* %l, align 4
  %59 = load i32, i32* %r, align 4
  %60 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %60, i32 0, i32 3
  %61 = load double, double* %bweight, align 8
  %call26 = call i32 @wireestx(i32 %57, i32 %58, i32 %59, double %61)
  %62 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 3
  %63 = load double, double* %bweight27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i32 %call26, double %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %65 = load i32, i32* %t, align 4
  %66 = load i32, i32* %l, align 4
  %67 = load i32, i32* %r, align 4
  %68 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 4
  %69 = load double, double* %tweight, align 8
  %call29 = call i32 @wireestx(i32 %65, i32 %66, i32 %67, double %69)
  %70 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight30 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %70, i32 0, i32 4
  %71 = load double, double* %tweight30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0), i32 %call29, double %71)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %72 = load i32, i32* %cell, align 4
  %idxprom32 = sext i32 %72 to i64
  %73 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx33 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %73, i64 %idxprom32
  %74 = load %struct.cellbox*, %struct.cellbox** %arrayidx33, align 8
  store %struct.cellbox* %74, %struct.cellbox** %ptr, align 8
  %75 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient34 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %75, i32 0, i32 5
  %76 = load i32, i32* %orient34, align 4
  %idxprom35 = sext i32 %76 to i64
  %77 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 21
  %arrayidx37 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config36, i32 0, i64 %idxprom35
  %78 = load %struct.tilebox*, %struct.tilebox** %arrayidx37, align 8
  %termptr38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %78, i32 0, i32 17
  %79 = load %struct.termbox*, %struct.termbox** %termptr38, align 8
  store %struct.termbox* %79, %struct.termbox** %term, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %if.end
  %80 = load %struct.termbox*, %struct.termbox** %term, align 8
  %cmp40 = icmp ne %struct.termbox* %80, null
  br i1 %cmp40, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.39
  %81 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal42 = getelementptr inbounds %struct.termbox, %struct.termbox* %81, i32 0, i32 5
  %82 = load i32, i32* %terminal42, align 4
  %idxprom43 = sext i32 %82 to i64
  %83 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx44 = getelementptr inbounds %struct.termnets*, %struct.termnets** %83, i64 %idxprom43
  %84 = load %struct.termnets*, %struct.termnets** %arrayidx44, align 8
  store %struct.termnets* %84, %struct.termnets** %termptr, align 8
  %85 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos45 = getelementptr inbounds %struct.termbox, %struct.termbox* %85, i32 0, i32 1
  %86 = load i32, i32* %xpos45, align 4
  %87 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %87, i32 0, i32 2
  %88 = load i32, i32* %xcenter46, align 4
  %add47 = add nsw i32 %86, %88
  %89 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr48 = getelementptr inbounds %struct.termnets, %struct.termnets* %89, i32 0, i32 1
  %90 = load %struct.netbox*, %struct.netbox** %termptr48, align 8
  %xpos49 = getelementptr inbounds %struct.netbox, %struct.netbox* %90, i32 0, i32 1
  store i32 %add47, i32* %xpos49, align 4
  %91 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos50 = getelementptr inbounds %struct.termbox, %struct.termbox* %91, i32 0, i32 2
  %92 = load i32, i32* %ypos50, align 4
  %93 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %93, i32 0, i32 3
  %94 = load i32, i32* %ycenter51, align 4
  %add52 = add nsw i32 %92, %94
  %95 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr53 = getelementptr inbounds %struct.termnets, %struct.termnets* %95, i32 0, i32 1
  %96 = load %struct.netbox*, %struct.netbox** %termptr53, align 8
  %ypos54 = getelementptr inbounds %struct.netbox, %struct.netbox* %96, i32 0, i32 2
  store i32 %add52, i32* %ypos54, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.41
  %97 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %97, i32 0, i32 0
  %98 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %98, %struct.termbox** %term, align 8
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  %99 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %99, i32 0, i32 10
  %100 = load i32, i32* %softflag, align 4
  %cmp55 = icmp eq i32 %100, 1
  br i1 %cmp55, label %if.then.56, label %if.end.94

if.then.56:                                       ; preds = %for.end
  store i32 1, i32* %pin, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.92, %if.then.56
  %101 = load i32, i32* %pin, align 4
  %102 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %102, i32 0, i32 18
  %103 = load i32, i32* %numUnComTerms, align 4
  %cmp58 = icmp sle i32 %101, %103
  br i1 %cmp58, label %for.body.59, label %for.end.93

for.body.59:                                      ; preds = %for.cond.57
  %104 = load i32, i32* %pin, align 4
  %idxprom60 = sext i32 %104 to i64
  %105 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %105, i32 0, i32 20
  %106 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx61 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %106, i64 %idxprom60
  %site62 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx61, i32 0, i32 1
  %107 = load i32, i32* %site62, align 4
  store i32 %107, i32* %site, align 4
  %108 = load i32, i32* %pin, align 4
  %idxprom63 = sext i32 %108 to i64
  %109 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms64 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 20
  %110 = load %struct.uncombox*, %struct.uncombox** %unComTerms64, align 8
  %arrayidx65 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %110, i64 %idxprom63
  %terminal66 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx65, i32 0, i32 0
  %111 = load i32, i32* %terminal66, align 4
  store i32 %111, i32* %terminal, align 4
  %112 = load i32, i32* %site, align 4
  %idxprom67 = sext i32 %112 to i64
  %113 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %113, i32 0, i32 5
  %114 = load i32, i32* %orient68, align 4
  %idxprom69 = sext i32 %114 to i64
  %115 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config70 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %115, i32 0, i32 21
  %arrayidx71 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config70, i32 0, i64 %idxprom69
  %116 = load %struct.tilebox*, %struct.tilebox** %arrayidx71, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %116, i32 0, i32 18
  %117 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  %arrayidx72 = getelementptr inbounds %struct.locbox, %struct.locbox* %117, i64 %idxprom67
  %xpos73 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx72, i32 0, i32 0
  %118 = load i32, i32* %xpos73, align 4
  store i32 %118, i32* %xpos, align 4
  %119 = load i32, i32* %site, align 4
  %idxprom74 = sext i32 %119 to i64
  %120 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient75 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %120, i32 0, i32 5
  %121 = load i32, i32* %orient75, align 4
  %idxprom76 = sext i32 %121 to i64
  %122 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config77 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i32 0, i32 21
  %arrayidx78 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config77, i32 0, i64 %idxprom76
  %123 = load %struct.tilebox*, %struct.tilebox** %arrayidx78, align 8
  %siteLocArray79 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %123, i32 0, i32 18
  %124 = load %struct.locbox*, %struct.locbox** %siteLocArray79, align 8
  %arrayidx80 = getelementptr inbounds %struct.locbox, %struct.locbox* %124, i64 %idxprom74
  %ypos81 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx80, i32 0, i32 1
  %125 = load i32, i32* %ypos81, align 4
  store i32 %125, i32* %ypos, align 4
  %126 = load i32, i32* %terminal, align 4
  %idxprom82 = sext i32 %126 to i64
  %127 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx83 = getelementptr inbounds %struct.termnets*, %struct.termnets** %127, i64 %idxprom82
  %128 = load %struct.termnets*, %struct.termnets** %arrayidx83, align 8
  store %struct.termnets* %128, %struct.termnets** %termptr, align 8
  %129 = load i32, i32* %xpos, align 4
  %130 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter84 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %130, i32 0, i32 2
  %131 = load i32, i32* %xcenter84, align 4
  %add85 = add nsw i32 %129, %131
  %132 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr86 = getelementptr inbounds %struct.termnets, %struct.termnets* %132, i32 0, i32 1
  %133 = load %struct.netbox*, %struct.netbox** %termptr86, align 8
  %xpos87 = getelementptr inbounds %struct.netbox, %struct.netbox* %133, i32 0, i32 1
  store i32 %add85, i32* %xpos87, align 4
  %134 = load i32, i32* %ypos, align 4
  %135 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter88 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %135, i32 0, i32 3
  %136 = load i32, i32* %ycenter88, align 4
  %add89 = add nsw i32 %134, %136
  %137 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr90 = getelementptr inbounds %struct.termnets, %struct.termnets* %137, i32 0, i32 1
  %138 = load %struct.netbox*, %struct.netbox** %termptr90, align 8
  %ypos91 = getelementptr inbounds %struct.netbox, %struct.netbox* %138, i32 0, i32 2
  store i32 %add89, i32* %ypos91, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.59
  %139 = load i32, i32* %pin, align 4
  %inc = add nsw i32 %139, 1
  store i32 %inc, i32* %pin, align 4
  br label %for.cond.57

for.end.93:                                       ; preds = %for.cond.57
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.93, %for.end
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %140 = load i32, i32* %cell, align 4
  %inc96 = add nsw i32 %140, 1
  store i32 %inc96, i32* %cell, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  store i32 1, i32* %net, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.181, %for.end.97
  %141 = load i32, i32* %net, align 4
  %142 = load i32, i32* @numnets, align 4
  %cmp99 = icmp sle i32 %141, %142
  br i1 %cmp99, label %for.body.100, label %for.end.183

for.body.100:                                     ; preds = %for.cond.98
  %143 = load i32, i32* %net, align 4
  %idxprom101 = sext i32 %143 to i64
  %144 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx102 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %144, i64 %idxprom101
  %145 = load %struct.dimbox*, %struct.dimbox** %arrayidx102, align 8
  store %struct.dimbox* %145, %struct.dimbox** %dimptr, align 8
  %146 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %146, i32 0, i32 1
  %147 = load i32, i32* %skip, align 4
  %cmp103 = icmp eq i32 %147, 1
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.100
  br label %for.inc.181

if.end.105:                                       ; preds = %for.body.100
  %148 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr106 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %148, i32 0, i32 0
  %149 = load %struct.netbox*, %struct.netbox** %netptr106, align 8
  store %struct.netbox* %149, %struct.netbox** %netptr, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.118, %if.end.105
  %150 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp108 = icmp eq %struct.netbox* %150, null
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.cond.107
  br label %for.end.120

if.end.110:                                       ; preds = %for.cond.107
  %151 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip111 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i32 0, i32 9
  %152 = load i32, i32* %skip111, align 4
  %cmp112 = icmp eq i32 %152, 1
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  br label %for.inc.118

if.end.114:                                       ; preds = %if.end.110
  %153 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos115 = getelementptr inbounds %struct.netbox, %struct.netbox* %153, i32 0, i32 1
  %154 = load i32, i32* %xpos115, align 4
  %155 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %155, i32 0, i32 4
  store i32 %154, i32* %xmax, align 4
  %156 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %156, i32 0, i32 2
  store i32 %154, i32* %xmin, align 4
  %157 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos116 = getelementptr inbounds %struct.netbox, %struct.netbox* %157, i32 0, i32 2
  %158 = load i32, i32* %ypos116, align 4
  %159 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %159, i32 0, i32 9
  store i32 %158, i32* %ymax, align 4
  %160 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %160, i32 0, i32 6
  store i32 %158, i32* %ymin, align 4
  %161 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm117 = getelementptr inbounds %struct.netbox, %struct.netbox* %161, i32 0, i32 0
  %162 = load %struct.netbox*, %struct.netbox** %nextterm117, align 8
  store %struct.netbox* %162, %struct.netbox** %netptr, align 8
  br label %for.end.120

for.inc.118:                                      ; preds = %if.then.113
  %163 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm119 = getelementptr inbounds %struct.netbox, %struct.netbox* %163, i32 0, i32 0
  %164 = load %struct.netbox*, %struct.netbox** %nextterm119, align 8
  store %struct.netbox* %164, %struct.netbox** %netptr, align 8
  br label %for.cond.107

for.end.120:                                      ; preds = %if.end.114, %if.then.109
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.151, %for.end.120
  %165 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp122 = icmp ne %struct.netbox* %165, null
  br i1 %cmp122, label %for.body.123, label %for.end.153

for.body.123:                                     ; preds = %for.cond.121
  %166 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip124 = getelementptr inbounds %struct.netbox, %struct.netbox* %166, i32 0, i32 9
  %167 = load i32, i32* %skip124, align 4
  %cmp125 = icmp eq i32 %167, 1
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.body.123
  br label %for.inc.151

if.end.127:                                       ; preds = %for.body.123
  %168 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos128 = getelementptr inbounds %struct.netbox, %struct.netbox* %168, i32 0, i32 1
  %169 = load i32, i32* %xpos128, align 4
  store i32 %169, i32* %x, align 4
  %170 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos129 = getelementptr inbounds %struct.netbox, %struct.netbox* %170, i32 0, i32 2
  %171 = load i32, i32* %ypos129, align 4
  store i32 %171, i32* %y, align 4
  %172 = load i32, i32* %x, align 4
  %173 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin130 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %173, i32 0, i32 2
  %174 = load i32, i32* %xmin130, align 4
  %cmp131 = icmp slt i32 %172, %174
  br i1 %cmp131, label %if.then.132, label %if.else

if.then.132:                                      ; preds = %if.end.127
  %175 = load i32, i32* %x, align 4
  %176 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin133 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %176, i32 0, i32 2
  store i32 %175, i32* %xmin133, align 4
  br label %if.end.139

if.else:                                          ; preds = %if.end.127
  %177 = load i32, i32* %x, align 4
  %178 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax134 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %178, i32 0, i32 4
  %179 = load i32, i32* %xmax134, align 4
  %cmp135 = icmp sgt i32 %177, %179
  br i1 %cmp135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.else
  %180 = load i32, i32* %x, align 4
  %181 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax137 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %181, i32 0, i32 4
  store i32 %180, i32* %xmax137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.else
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.132
  %182 = load i32, i32* %y, align 4
  %183 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin140 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %183, i32 0, i32 6
  %184 = load i32, i32* %ymin140, align 4
  %cmp141 = icmp slt i32 %182, %184
  br i1 %cmp141, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.end.139
  %185 = load i32, i32* %y, align 4
  %186 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin143 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %186, i32 0, i32 6
  store i32 %185, i32* %ymin143, align 4
  br label %if.end.150

if.else.144:                                      ; preds = %if.end.139
  %187 = load i32, i32* %y, align 4
  %188 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax145 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %188, i32 0, i32 9
  %189 = load i32, i32* %ymax145, align 4
  %cmp146 = icmp sgt i32 %187, %189
  br i1 %cmp146, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.else.144
  %190 = load i32, i32* %y, align 4
  %191 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax148 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %191, i32 0, i32 9
  store i32 %190, i32* %ymax148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.else.144
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.142
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150, %if.then.126
  %192 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm152 = getelementptr inbounds %struct.netbox, %struct.netbox* %192, i32 0, i32 0
  %193 = load %struct.netbox*, %struct.netbox** %nextterm152, align 8
  store %struct.netbox* %193, %struct.netbox** %netptr, align 8
  br label %for.cond.121

for.end.153:                                      ; preds = %for.cond.121
  %194 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax154 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %194, i32 0, i32 4
  %195 = load i32, i32* %xmax154, align 4
  %196 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin155 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %196, i32 0, i32 2
  %197 = load i32, i32* %xmin155, align 4
  %sub = sub nsw i32 %195, %197
  %198 = load i32, i32* @fwirex, align 4
  %add156 = add nsw i32 %198, %sub
  store i32 %add156, i32* @fwirex, align 4
  %199 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax157 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %199, i32 0, i32 9
  %200 = load i32, i32* %ymax157, align 4
  %201 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin158 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %201, i32 0, i32 6
  %202 = load i32, i32* %ymin158, align 4
  %sub159 = sub nsw i32 %200, %202
  %203 = load i32, i32* @fwirey, align 4
  %add160 = add nsw i32 %203, %sub159
  store i32 %add160, i32* @fwirey, align 4
  %204 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax161 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %204, i32 0, i32 4
  %205 = load i32, i32* %xmax161, align 4
  %206 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin162 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %206, i32 0, i32 2
  %207 = load i32, i32* %xmin162, align 4
  %sub163 = sub nsw i32 %205, %207
  %208 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax164 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %208, i32 0, i32 9
  %209 = load i32, i32* %ymax164, align 4
  %add165 = add nsw i32 %sub163, %209
  %210 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin166 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %210, i32 0, i32 6
  %211 = load i32, i32* %ymin166, align 4
  %sub167 = sub nsw i32 %add165, %211
  %212 = load i32, i32* @fwire, align 4
  %add168 = add nsw i32 %212, %sub167
  store i32 %add168, i32* @fwire, align 4
  %213 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %213, i32 0, i32 11
  %214 = load double, double* %Hweight, align 8
  %215 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax169 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %215, i32 0, i32 4
  %216 = load i32, i32* %xmax169, align 4
  %217 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin170 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %217, i32 0, i32 2
  %218 = load i32, i32* %xmin170, align 4
  %sub171 = sub nsw i32 %216, %218
  %conv = sitofp i32 %sub171 to double
  %mul = fmul double %214, %conv
  %conv172 = fptosi double %mul to i32
  %219 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %219, i32 0, i32 12
  %220 = load double, double* %Vweight, align 8
  %221 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax173 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %221, i32 0, i32 9
  %222 = load i32, i32* %ymax173, align 4
  %223 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin174 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %223, i32 0, i32 6
  %224 = load i32, i32* %ymin174, align 4
  %sub175 = sub nsw i32 %222, %224
  %conv176 = sitofp i32 %sub175 to double
  %mul177 = fmul double %220, %conv176
  %conv178 = fptosi double %mul177 to i32
  %add179 = add nsw i32 %conv172, %conv178
  %225 = load i32, i32* @fcost, align 4
  %add180 = add nsw i32 %225, %add179
  store i32 %add180, i32* @fcost, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.153, %if.then.104
  %226 = load i32, i32* %net, align 4
  %inc182 = add nsw i32 %226, 1
  store i32 %inc182, i32* %net, align 4
  br label %for.cond.98

for.end.183:                                      ; preds = %for.cond.98
  store i32 0, i32* %value, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.208, %for.end.183
  %227 = load i32, i32* %cell, align 4
  %228 = load i32, i32* @numcells, align 4
  %229 = load i32, i32* @numpads, align 4
  %add185 = add nsw i32 %228, %229
  %add186 = add nsw i32 %add185, 4
  %cmp187 = icmp sle i32 %227, %add186
  br i1 %cmp187, label %for.body.189, label %for.end.210

for.body.189:                                     ; preds = %for.cond.184
  %230 = load i32, i32* %cell, align 4
  %231 = load i32, i32* @numcells, align 4
  %cmp190 = icmp sgt i32 %230, %231
  br i1 %cmp190, label %land.lhs.true, label %if.end.196

land.lhs.true:                                    ; preds = %for.body.189
  %232 = load i32, i32* %cell, align 4
  %233 = load i32, i32* @numcells, align 4
  %234 = load i32, i32* @numpads, align 4
  %add192 = add nsw i32 %233, %234
  %cmp193 = icmp sle i32 %232, %add192
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %land.lhs.true
  br label %for.inc.208

if.end.196:                                       ; preds = %land.lhs.true, %for.body.189
  %235 = load i32 (...)*, i32 (...)** @overlapf, align 8
  %236 = load i32, i32* %cell, align 4
  %237 = load i32, i32* %cell, align 4
  %idxprom197 = sext i32 %237 to i64
  %238 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx198 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %238, i64 %idxprom197
  %239 = load %struct.cellbox*, %struct.cellbox** %arrayidx198, align 8
  %xcenter199 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i32 0, i32 2
  %240 = load i32, i32* %xcenter199, align 4
  %241 = load i32, i32* %cell, align 4
  %idxprom200 = sext i32 %241 to i64
  %242 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx201 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %242, i64 %idxprom200
  %243 = load %struct.cellbox*, %struct.cellbox** %arrayidx201, align 8
  %ycenter202 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %243, i32 0, i32 3
  %244 = load i32, i32* %ycenter202, align 4
  %245 = load i32, i32* %cell, align 4
  %idxprom203 = sext i32 %245 to i64
  %246 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx204 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %246, i64 %idxprom203
  %247 = load %struct.cellbox*, %struct.cellbox** %arrayidx204, align 8
  %orient205 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %247, i32 0, i32 5
  %248 = load i32, i32* %orient205, align 4
  %callee.knr.cast = bitcast i32 (...)* %235 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call206 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %236, i32 %240, i32 %244, i32 %248, i32 0, i32 1, i32 0)
  %249 = load i32, i32* %value, align 4
  %add207 = add nsw i32 %249, %call206
  store i32 %add207, i32* %value, align 4
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.196, %if.then.195
  %250 = load i32, i32* %cell, align 4
  %inc209 = add nsw i32 %250, 1
  store i32 %inc209, i32* %cell, align 4
  br label %for.cond.184

for.end.210:                                      ; preds = %for.cond.184
  %251 = load i32, i32* %value, align 4
  %div = sdiv i32 %251, 2
  store i32 %div, i32* %value, align 4
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %253 = load i32, i32* %value, align 4
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i32 %253)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @wireestx(i32, i32, i32, double) #2

; Function Attrs: nounwind uwtable
define void @initcheck() #0 {
entry:
  %dimptr = alloca %struct.dimbox*, align 8
  %net = alloca i32, align 4
  store i32 0, i32* @icost, align 4
  store i32 0, i32* @iwire, align 4
  store i32 0, i32* @iwirex, align 4
  store i32 0, i32* @iwirey, align 4
  store i32 1, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %net, align 4
  %1 = load i32, i32* @numnets, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %net, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %3, i64 %idxprom
  %4 = load %struct.dimbox*, %struct.dimbox** %arrayidx, align 8
  store %struct.dimbox* %4, %struct.dimbox** %dimptr, align 8
  %5 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %5, i32 0, i32 4
  %6 = load i32, i32* %xmax, align 4
  %7 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i32 0, i32 2
  %8 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %6, %8
  %9 = load i32, i32* @iwirex, align 4
  %add = add nsw i32 %9, %sub
  store i32 %add, i32* @iwirex, align 4
  %10 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i32 0, i32 9
  %11 = load i32, i32* %ymax, align 4
  %12 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %12, i32 0, i32 6
  %13 = load i32, i32* %ymin, align 4
  %sub1 = sub nsw i32 %11, %13
  %14 = load i32, i32* @iwirey, align 4
  %add2 = add nsw i32 %14, %sub1
  store i32 %add2, i32* @iwirey, align 4
  %15 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax3 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i32 0, i32 4
  %16 = load i32, i32* %xmax3, align 4
  %17 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin4 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %17, i32 0, i32 2
  %18 = load i32, i32* %xmin4, align 4
  %sub5 = sub nsw i32 %16, %18
  %19 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax6 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %19, i32 0, i32 9
  %20 = load i32, i32* %ymax6, align 4
  %add7 = add nsw i32 %sub5, %20
  %21 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin8 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %21, i32 0, i32 6
  %22 = load i32, i32* %ymin8, align 4
  %sub9 = sub nsw i32 %add7, %22
  %23 = load i32, i32* @iwire, align 4
  %add10 = add nsw i32 %23, %sub9
  store i32 %add10, i32* @iwire, align 4
  %24 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %24, i32 0, i32 11
  %25 = load double, double* %Hweight, align 8
  %26 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax11 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %26, i32 0, i32 4
  %27 = load i32, i32* %xmax11, align 4
  %28 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin12 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %28, i32 0, i32 2
  %29 = load i32, i32* %xmin12, align 4
  %sub13 = sub nsw i32 %27, %29
  %conv = sitofp i32 %sub13 to double
  %mul = fmul double %25, %conv
  %conv14 = fptosi double %mul to i32
  %30 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %30, i32 0, i32 12
  %31 = load double, double* %Vweight, align 8
  %32 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax15 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %32, i32 0, i32 9
  %33 = load i32, i32* %ymax15, align 4
  %34 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin16 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %34, i32 0, i32 6
  %35 = load i32, i32* %ymin16, align 4
  %sub17 = sub nsw i32 %33, %35
  %conv18 = sitofp i32 %sub17 to double
  %mul19 = fmul double %31, %conv18
  %conv20 = fptosi double %mul19 to i32
  %add21 = add nsw i32 %conv14, %conv20
  %36 = load i32, i32* @icost, align 4
  %add22 = add nsw i32 %36, %add21
  store i32 %add22, i32* @icost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %net, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %net, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
