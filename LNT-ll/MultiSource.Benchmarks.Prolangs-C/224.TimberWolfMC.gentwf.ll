; ModuleID = './MultiSource.Benchmarks.Prolangs-C/224.TimberWolfMC.gentwf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.pin\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.twf\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0Anet %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s %s %d %s %d %s %d %s %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"    pin   %s  nodes   \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"    equiv %s  nodes   \00", align 1
@xNodules = external global %struct.nodbox*, align 8
@edgeList = external global %struct.edgebox*, align 8
@eArray = external global %struct.ebox*, align 8
@rectArray = external global %struct.rect*, align 8
@yNodules = external global %struct.nodbox*, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Pin: %s has location outside the range\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"of the edge: %d %d to which it was assigned\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"by an amount: %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@TWsignal = external global i32, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"\0A\0A\0A\0A\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"%d  %d  at  %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gentwf() #0 {
entry:
  %fp2 = alloca %struct._IO_FILE*, align 8
  %fp1 = alloca %struct._IO_FILE*, align 8
  %filename = alloca [1024 x i8], align 16
  %c2 = alloca [4 x i8], align 1
  %c3 = alloca [4 x i8], align 1
  %c4 = alloca [4 x i8], align 1
  %c5 = alloca [12 x i8], align 1
  %c6 = alloca [4 x i8], align 1
  %pname = alloca [128 x i8], align 16
  %nname = alloca [128 x i8], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cell = alloca i32, align 4
  %PorE = alloca i32, align 4
  %offset = alloca i32, align 4
  %channel = alloca i32, align 4
  %hit = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %min = alloca i32, align 4
  %edge = alloca i32, align 4
  %loc = alloca i32, align 4
  %ecount = alloca i32, align 4
  %max = alloca i32, align 4
  %ifptr = alloca %struct.flare*, align 8
  %ofptr = alloca %struct.flare*, align 8
  %savefptr = alloca %struct.flare*, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp1, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %1 = load i8*, i8** @cktName, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %1) #4
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call6 = call %struct._IO_FILE* @fopen(i8* %arraydecay5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.294, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %c6, i32 0, i32 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay7)
  %cmp = icmp eq i32 %call8, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %c6, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %arraydecay12 = getelementptr inbounds [128 x i8], [128 x i8]* %nname, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay12)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %arraydecay14 = getelementptr inbounds [128 x i8], [128 x i8]* %nname, i32 0, i32 0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay14)
  br label %if.end.294

if.else:                                          ; preds = %while.body
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %c6, i32 0, i32 0
  %call17 = call i32 @strcmp(i8* %arraydecay16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.293

if.then.19:                                       ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %arraydecay20 = getelementptr inbounds [128 x i8], [128 x i8]* %pname, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %c2, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4 x i8], [4 x i8]* %c3, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [4 x i8], [4 x i8]* %c4, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [12 x i8], [12 x i8]* %c5, i32 0, i32 0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay20, i8* %arraydecay21, i32* %x, i8* %arraydecay22, i32* %y, i8* %arraydecay23, i32* %cell, i8* %arraydecay24, i32* %PorE)
  %6 = load i32, i32* %PorE, align 4
  %cmp26 = icmp eq i32 %6, 1
  br i1 %cmp26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.then.19
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %arraydecay28 = getelementptr inbounds [128 x i8], [128 x i8]* %pname, i32 0, i32 0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay28)
  br label %if.end

if.else.30:                                       ; preds = %if.then.19
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %arraydecay31 = getelementptr inbounds [128 x i8], [128 x i8]* %pname, i32 0, i32 0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay31)
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.27
  store i32 1000000, i32* %min, align 4
  %9 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx = getelementptr inbounds %struct.nodbox, %struct.nodbox* %10, i64 %idxprom
  %inList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx, i32 0, i32 0
  %11 = load %struct.flare*, %struct.flare** %inList, align 8
  store %struct.flare* %11, %struct.flare** %ifptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %cmp33 = icmp ne %struct.flare* %12, null
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %fixEdge = getelementptr inbounds %struct.flare, %struct.flare* %13, i32 0, i32 0
  %14 = load i32, i32* %fixEdge, align 4
  store i32 %14, i32* %edge, align 4
  %15 = load i32, i32* %edge, align 4
  %idxprom34 = sext i32 %15 to i64
  %16 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %16, i64 %idxprom34
  %loc36 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx35, i32 0, i32 3
  %17 = load i32, i32* %loc36, align 4
  store i32 %17, i32* %loc, align 4
  %18 = load i32, i32* %loc, align 4
  %19 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %18, %19
  %cmp37 = icmp sge i32 %sub, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %20 = load i32, i32* %loc, align 4
  %21 = load i32, i32* %x, align 4
  %sub38 = sub nsw i32 %20, %21
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load i32, i32* %loc, align 4
  %23 = load i32, i32* %x, align 4
  %sub39 = sub nsw i32 %22, %23
  %sub40 = sub nsw i32 0, %sub39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub38, %cond.true ], [ %sub40, %cond.false ]
  %24 = load i32, i32* %min, align 4
  %cmp41 = icmp slt i32 %cond, %24
  br i1 %cmp41, label %if.then.42, label %if.end.68

if.then.42:                                       ; preds = %cond.end
  %25 = load i32, i32* %y, align 4
  %26 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %eindex = getelementptr inbounds %struct.flare, %struct.flare* %26, i32 0, i32 1
  %27 = load i32*, i32** %eindex, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %27, i64 1
  %28 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %28 to i64
  %29 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx45 = getelementptr inbounds %struct.ebox, %struct.ebox* %29, i64 %idxprom44
  %index2 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx45, i32 0, i32 1
  %30 = load i32, i32* %index2, align 4
  %idxprom46 = sext i32 %30 to i64
  %31 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx47 = getelementptr inbounds %struct.rect, %struct.rect* %31, i64 %idxprom46
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx47, i32 0, i32 1
  %32 = load i32, i32* %yc, align 4
  %cmp48 = icmp sle i32 %25, %32
  br i1 %cmp48, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.then.42
  %33 = load i32, i32* %y, align 4
  %34 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %eindex49 = getelementptr inbounds %struct.flare, %struct.flare* %34, i32 0, i32 1
  %35 = load i32*, i32** %eindex49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %36 to i64
  %37 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx52 = getelementptr inbounds %struct.ebox, %struct.ebox* %37, i64 %idxprom51
  %index1 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx52, i32 0, i32 0
  %38 = load i32, i32* %index1, align 4
  %idxprom53 = sext i32 %38 to i64
  %39 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx54 = getelementptr inbounds %struct.rect, %struct.rect* %39, i64 %idxprom53
  %yc55 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx54, i32 0, i32 1
  %40 = load i32, i32* %yc55, align 4
  %cmp56 = icmp sge i32 %33, %40
  br i1 %cmp56, label %if.then.57, label %if.end.67

if.then.57:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %loc, align 4
  %42 = load i32, i32* %x, align 4
  %sub58 = sub nsw i32 %41, %42
  %cmp59 = icmp sge i32 %sub58, 0
  br i1 %cmp59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %if.then.57
  %43 = load i32, i32* %loc, align 4
  %44 = load i32, i32* %x, align 4
  %sub61 = sub nsw i32 %43, %44
  br label %cond.end.65

cond.false.62:                                    ; preds = %if.then.57
  %45 = load i32, i32* %loc, align 4
  %46 = load i32, i32* %x, align 4
  %sub63 = sub nsw i32 %45, %46
  %sub64 = sub nsw i32 0, %sub63
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.60
  %cond66 = phi i32 [ %sub61, %cond.true.60 ], [ %sub64, %cond.false.62 ]
  store i32 %cond66, i32* %min, align 4
  %47 = load %struct.flare*, %struct.flare** %ifptr, align 8
  store %struct.flare* %47, %struct.flare** %savefptr, align 8
  store i32 1, i32* %hit, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.65, %land.lhs.true, %if.then.42
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %48 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %next = getelementptr inbounds %struct.flare, %struct.flare* %48, i32 0, i32 2
  %49 = load %struct.flare*, %struct.flare** %next, align 8
  store %struct.flare* %49, %struct.flare** %ifptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %cell, align 4
  %idxprom69 = sext i32 %50 to i64
  %51 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx70 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %51, i64 %idxprom69
  %outList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx70, i32 0, i32 1
  %52 = load %struct.flare*, %struct.flare** %outList, align 8
  store %struct.flare* %52, %struct.flare** %ofptr, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.120, %for.end
  %53 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %cmp72 = icmp ne %struct.flare* %53, null
  br i1 %cmp72, label %for.body.73, label %for.end.122

for.body.73:                                      ; preds = %for.cond.71
  %54 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %fixEdge74 = getelementptr inbounds %struct.flare, %struct.flare* %54, i32 0, i32 0
  %55 = load i32, i32* %fixEdge74, align 4
  store i32 %55, i32* %edge, align 4
  %56 = load i32, i32* %edge, align 4
  %idxprom75 = sext i32 %56 to i64
  %57 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx76 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %57, i64 %idxprom75
  %loc77 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx76, i32 0, i32 3
  %58 = load i32, i32* %loc77, align 4
  store i32 %58, i32* %loc, align 4
  %59 = load i32, i32* %loc, align 4
  %60 = load i32, i32* %x, align 4
  %sub78 = sub nsw i32 %59, %60
  %cmp79 = icmp sge i32 %sub78, 0
  br i1 %cmp79, label %cond.true.80, label %cond.false.82

cond.true.80:                                     ; preds = %for.body.73
  %61 = load i32, i32* %loc, align 4
  %62 = load i32, i32* %x, align 4
  %sub81 = sub nsw i32 %61, %62
  br label %cond.end.85

cond.false.82:                                    ; preds = %for.body.73
  %63 = load i32, i32* %loc, align 4
  %64 = load i32, i32* %x, align 4
  %sub83 = sub nsw i32 %63, %64
  %sub84 = sub nsw i32 0, %sub83
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.80
  %cond86 = phi i32 [ %sub81, %cond.true.80 ], [ %sub84, %cond.false.82 ]
  %65 = load i32, i32* %min, align 4
  %cmp87 = icmp slt i32 %cond86, %65
  br i1 %cmp87, label %if.then.88, label %if.end.119

if.then.88:                                       ; preds = %cond.end.85
  %66 = load i32, i32* %y, align 4
  %67 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex89 = getelementptr inbounds %struct.flare, %struct.flare* %67, i32 0, i32 1
  %68 = load i32*, i32** %eindex89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %68, i64 1
  %69 = load i32, i32* %arrayidx90, align 4
  %idxprom91 = sext i32 %69 to i64
  %70 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx92 = getelementptr inbounds %struct.ebox, %struct.ebox* %70, i64 %idxprom91
  %index293 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx92, i32 0, i32 1
  %71 = load i32, i32* %index293, align 4
  %idxprom94 = sext i32 %71 to i64
  %72 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx95 = getelementptr inbounds %struct.rect, %struct.rect* %72, i64 %idxprom94
  %yc96 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx95, i32 0, i32 1
  %73 = load i32, i32* %yc96, align 4
  %cmp97 = icmp sle i32 %66, %73
  br i1 %cmp97, label %land.lhs.true.98, label %if.end.118

land.lhs.true.98:                                 ; preds = %if.then.88
  %74 = load i32, i32* %y, align 4
  %75 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex99 = getelementptr inbounds %struct.flare, %struct.flare* %75, i32 0, i32 1
  %76 = load i32*, i32** %eindex99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %77 to i64
  %78 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx102 = getelementptr inbounds %struct.ebox, %struct.ebox* %78, i64 %idxprom101
  %index1103 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx102, i32 0, i32 0
  %79 = load i32, i32* %index1103, align 4
  %idxprom104 = sext i32 %79 to i64
  %80 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx105 = getelementptr inbounds %struct.rect, %struct.rect* %80, i64 %idxprom104
  %yc106 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx105, i32 0, i32 1
  %81 = load i32, i32* %yc106, align 4
  %cmp107 = icmp sge i32 %74, %81
  br i1 %cmp107, label %if.then.108, label %if.end.118

if.then.108:                                      ; preds = %land.lhs.true.98
  %82 = load i32, i32* %loc, align 4
  %83 = load i32, i32* %x, align 4
  %sub109 = sub nsw i32 %82, %83
  %cmp110 = icmp sge i32 %sub109, 0
  br i1 %cmp110, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %if.then.108
  %84 = load i32, i32* %loc, align 4
  %85 = load i32, i32* %x, align 4
  %sub112 = sub nsw i32 %84, %85
  br label %cond.end.116

cond.false.113:                                   ; preds = %if.then.108
  %86 = load i32, i32* %loc, align 4
  %87 = load i32, i32* %x, align 4
  %sub114 = sub nsw i32 %86, %87
  %sub115 = sub nsw i32 0, %sub114
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.113, %cond.true.111
  %cond117 = phi i32 [ %sub112, %cond.true.111 ], [ %sub115, %cond.false.113 ]
  store i32 %cond117, i32* %min, align 4
  %88 = load %struct.flare*, %struct.flare** %ofptr, align 8
  store %struct.flare* %88, %struct.flare** %savefptr, align 8
  store i32 1, i32* %hit, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.116, %land.lhs.true.98, %if.then.88
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %cond.end.85
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %89 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %next121 = getelementptr inbounds %struct.flare, %struct.flare* %89, i32 0, i32 2
  %90 = load %struct.flare*, %struct.flare** %next121, align 8
  store %struct.flare* %90, %struct.flare** %ofptr, align 8
  br label %for.cond.71

for.end.122:                                      ; preds = %for.cond.71
  %91 = load i32, i32* %cell, align 4
  %idxprom123 = sext i32 %91 to i64
  %92 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx124 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %92, i64 %idxprom123
  %inList125 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx124, i32 0, i32 0
  %93 = load %struct.flare*, %struct.flare** %inList125, align 8
  store %struct.flare* %93, %struct.flare** %ifptr, align 8
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.174, %for.end.122
  %94 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %cmp127 = icmp ne %struct.flare* %94, null
  br i1 %cmp127, label %for.body.128, label %for.end.176

for.body.128:                                     ; preds = %for.cond.126
  %95 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %fixEdge129 = getelementptr inbounds %struct.flare, %struct.flare* %95, i32 0, i32 0
  %96 = load i32, i32* %fixEdge129, align 4
  store i32 %96, i32* %edge, align 4
  %97 = load i32, i32* %edge, align 4
  %idxprom130 = sext i32 %97 to i64
  %98 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx131 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %98, i64 %idxprom130
  %loc132 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx131, i32 0, i32 3
  %99 = load i32, i32* %loc132, align 4
  store i32 %99, i32* %loc, align 4
  %100 = load i32, i32* %loc, align 4
  %101 = load i32, i32* %y, align 4
  %sub133 = sub nsw i32 %100, %101
  %cmp134 = icmp sge i32 %sub133, 0
  br i1 %cmp134, label %cond.true.135, label %cond.false.137

cond.true.135:                                    ; preds = %for.body.128
  %102 = load i32, i32* %loc, align 4
  %103 = load i32, i32* %y, align 4
  %sub136 = sub nsw i32 %102, %103
  br label %cond.end.140

cond.false.137:                                   ; preds = %for.body.128
  %104 = load i32, i32* %loc, align 4
  %105 = load i32, i32* %y, align 4
  %sub138 = sub nsw i32 %104, %105
  %sub139 = sub nsw i32 0, %sub138
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.137, %cond.true.135
  %cond141 = phi i32 [ %sub136, %cond.true.135 ], [ %sub139, %cond.false.137 ]
  %106 = load i32, i32* %min, align 4
  %cmp142 = icmp slt i32 %cond141, %106
  br i1 %cmp142, label %if.then.143, label %if.end.173

if.then.143:                                      ; preds = %cond.end.140
  %107 = load i32, i32* %x, align 4
  %108 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %eindex144 = getelementptr inbounds %struct.flare, %struct.flare* %108, i32 0, i32 1
  %109 = load i32*, i32** %eindex144, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %109, i64 1
  %110 = load i32, i32* %arrayidx145, align 4
  %idxprom146 = sext i32 %110 to i64
  %111 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx147 = getelementptr inbounds %struct.ebox, %struct.ebox* %111, i64 %idxprom146
  %index2148 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx147, i32 0, i32 1
  %112 = load i32, i32* %index2148, align 4
  %idxprom149 = sext i32 %112 to i64
  %113 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx150 = getelementptr inbounds %struct.rect, %struct.rect* %113, i64 %idxprom149
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx150, i32 0, i32 0
  %114 = load i32, i32* %xc, align 4
  %cmp151 = icmp sle i32 %107, %114
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.172

land.lhs.true.152:                                ; preds = %if.then.143
  %115 = load i32, i32* %x, align 4
  %116 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %eindex153 = getelementptr inbounds %struct.flare, %struct.flare* %116, i32 0, i32 1
  %117 = load i32*, i32** %eindex153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %117, i64 1
  %118 = load i32, i32* %arrayidx154, align 4
  %idxprom155 = sext i32 %118 to i64
  %119 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx156 = getelementptr inbounds %struct.ebox, %struct.ebox* %119, i64 %idxprom155
  %index1157 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx156, i32 0, i32 0
  %120 = load i32, i32* %index1157, align 4
  %idxprom158 = sext i32 %120 to i64
  %121 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx159 = getelementptr inbounds %struct.rect, %struct.rect* %121, i64 %idxprom158
  %xc160 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx159, i32 0, i32 0
  %122 = load i32, i32* %xc160, align 4
  %cmp161 = icmp sge i32 %115, %122
  br i1 %cmp161, label %if.then.162, label %if.end.172

if.then.162:                                      ; preds = %land.lhs.true.152
  %123 = load i32, i32* %loc, align 4
  %124 = load i32, i32* %y, align 4
  %sub163 = sub nsw i32 %123, %124
  %cmp164 = icmp sge i32 %sub163, 0
  br i1 %cmp164, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %if.then.162
  %125 = load i32, i32* %loc, align 4
  %126 = load i32, i32* %y, align 4
  %sub166 = sub nsw i32 %125, %126
  br label %cond.end.170

cond.false.167:                                   ; preds = %if.then.162
  %127 = load i32, i32* %loc, align 4
  %128 = load i32, i32* %y, align 4
  %sub168 = sub nsw i32 %127, %128
  %sub169 = sub nsw i32 0, %sub168
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.167, %cond.true.165
  %cond171 = phi i32 [ %sub166, %cond.true.165 ], [ %sub169, %cond.false.167 ]
  store i32 %cond171, i32* %min, align 4
  %129 = load %struct.flare*, %struct.flare** %ifptr, align 8
  store %struct.flare* %129, %struct.flare** %savefptr, align 8
  store i32 2, i32* %hit, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end.170, %land.lhs.true.152, %if.then.143
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %cond.end.140
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %130 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %next175 = getelementptr inbounds %struct.flare, %struct.flare* %130, i32 0, i32 2
  %131 = load %struct.flare*, %struct.flare** %next175, align 8
  store %struct.flare* %131, %struct.flare** %ifptr, align 8
  br label %for.cond.126

for.end.176:                                      ; preds = %for.cond.126
  %132 = load i32, i32* %cell, align 4
  %idxprom177 = sext i32 %132 to i64
  %133 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx178 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %133, i64 %idxprom177
  %outList179 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx178, i32 0, i32 1
  %134 = load %struct.flare*, %struct.flare** %outList179, align 8
  store %struct.flare* %134, %struct.flare** %ofptr, align 8
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.229, %for.end.176
  %135 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %cmp181 = icmp ne %struct.flare* %135, null
  br i1 %cmp181, label %for.body.182, label %for.end.231

for.body.182:                                     ; preds = %for.cond.180
  %136 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %fixEdge183 = getelementptr inbounds %struct.flare, %struct.flare* %136, i32 0, i32 0
  %137 = load i32, i32* %fixEdge183, align 4
  store i32 %137, i32* %edge, align 4
  %138 = load i32, i32* %edge, align 4
  %idxprom184 = sext i32 %138 to i64
  %139 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx185 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %139, i64 %idxprom184
  %loc186 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx185, i32 0, i32 3
  %140 = load i32, i32* %loc186, align 4
  store i32 %140, i32* %loc, align 4
  %141 = load i32, i32* %loc, align 4
  %142 = load i32, i32* %y, align 4
  %sub187 = sub nsw i32 %141, %142
  %cmp188 = icmp sge i32 %sub187, 0
  br i1 %cmp188, label %cond.true.189, label %cond.false.191

cond.true.189:                                    ; preds = %for.body.182
  %143 = load i32, i32* %loc, align 4
  %144 = load i32, i32* %y, align 4
  %sub190 = sub nsw i32 %143, %144
  br label %cond.end.194

cond.false.191:                                   ; preds = %for.body.182
  %145 = load i32, i32* %loc, align 4
  %146 = load i32, i32* %y, align 4
  %sub192 = sub nsw i32 %145, %146
  %sub193 = sub nsw i32 0, %sub192
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.191, %cond.true.189
  %cond195 = phi i32 [ %sub190, %cond.true.189 ], [ %sub193, %cond.false.191 ]
  %147 = load i32, i32* %min, align 4
  %cmp196 = icmp slt i32 %cond195, %147
  br i1 %cmp196, label %if.then.197, label %if.end.228

if.then.197:                                      ; preds = %cond.end.194
  %148 = load i32, i32* %x, align 4
  %149 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex198 = getelementptr inbounds %struct.flare, %struct.flare* %149, i32 0, i32 1
  %150 = load i32*, i32** %eindex198, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %150, i64 1
  %151 = load i32, i32* %arrayidx199, align 4
  %idxprom200 = sext i32 %151 to i64
  %152 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx201 = getelementptr inbounds %struct.ebox, %struct.ebox* %152, i64 %idxprom200
  %index2202 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx201, i32 0, i32 1
  %153 = load i32, i32* %index2202, align 4
  %idxprom203 = sext i32 %153 to i64
  %154 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx204 = getelementptr inbounds %struct.rect, %struct.rect* %154, i64 %idxprom203
  %xc205 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx204, i32 0, i32 0
  %155 = load i32, i32* %xc205, align 4
  %cmp206 = icmp sle i32 %148, %155
  br i1 %cmp206, label %land.lhs.true.207, label %if.end.227

land.lhs.true.207:                                ; preds = %if.then.197
  %156 = load i32, i32* %x, align 4
  %157 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex208 = getelementptr inbounds %struct.flare, %struct.flare* %157, i32 0, i32 1
  %158 = load i32*, i32** %eindex208, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %158, i64 1
  %159 = load i32, i32* %arrayidx209, align 4
  %idxprom210 = sext i32 %159 to i64
  %160 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx211 = getelementptr inbounds %struct.ebox, %struct.ebox* %160, i64 %idxprom210
  %index1212 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx211, i32 0, i32 0
  %161 = load i32, i32* %index1212, align 4
  %idxprom213 = sext i32 %161 to i64
  %162 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx214 = getelementptr inbounds %struct.rect, %struct.rect* %162, i64 %idxprom213
  %xc215 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx214, i32 0, i32 0
  %163 = load i32, i32* %xc215, align 4
  %cmp216 = icmp sge i32 %156, %163
  br i1 %cmp216, label %if.then.217, label %if.end.227

if.then.217:                                      ; preds = %land.lhs.true.207
  %164 = load i32, i32* %loc, align 4
  %165 = load i32, i32* %y, align 4
  %sub218 = sub nsw i32 %164, %165
  %cmp219 = icmp sge i32 %sub218, 0
  br i1 %cmp219, label %cond.true.220, label %cond.false.222

cond.true.220:                                    ; preds = %if.then.217
  %166 = load i32, i32* %loc, align 4
  %167 = load i32, i32* %y, align 4
  %sub221 = sub nsw i32 %166, %167
  br label %cond.end.225

cond.false.222:                                   ; preds = %if.then.217
  %168 = load i32, i32* %loc, align 4
  %169 = load i32, i32* %y, align 4
  %sub223 = sub nsw i32 %168, %169
  %sub224 = sub nsw i32 0, %sub223
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.222, %cond.true.220
  %cond226 = phi i32 [ %sub221, %cond.true.220 ], [ %sub224, %cond.false.222 ]
  store i32 %cond226, i32* %min, align 4
  %170 = load %struct.flare*, %struct.flare** %ofptr, align 8
  store %struct.flare* %170, %struct.flare** %savefptr, align 8
  store i32 2, i32* %hit, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %cond.end.225, %land.lhs.true.207, %if.then.197
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %cond.end.194
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228
  %171 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %next230 = getelementptr inbounds %struct.flare, %struct.flare* %171, i32 0, i32 2
  %172 = load %struct.flare*, %struct.flare** %next230, align 8
  store %struct.flare* %172, %struct.flare** %ofptr, align 8
  br label %for.cond.180

for.end.231:                                      ; preds = %for.cond.180
  store i32 0, i32* %ecount, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.231
  %173 = load i32, i32* %ecount, align 4
  %inc = add nsw i32 %173, 1
  store i32 %inc, i32* %ecount, align 4
  %idxprom232 = sext i32 %inc to i64
  %174 = load %struct.flare*, %struct.flare** %savefptr, align 8
  %eindex233 = getelementptr inbounds %struct.flare, %struct.flare* %174, i32 0, i32 1
  %175 = load i32*, i32** %eindex233, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %175, i64 %idxprom232
  %176 = load i32, i32* %arrayidx234, align 4
  store i32 %176, i32* %channel, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %177 = load i32, i32* %channel, align 4
  %idxprom235 = sext i32 %177 to i64
  %178 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx236 = getelementptr inbounds %struct.ebox, %struct.ebox* %178, i64 %idxprom235
  %notActive = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx236, i32 0, i32 11
  %179 = load i32, i32* %notActive, align 4
  %cmp237 = icmp eq i32 %179, 1
  br i1 %cmp237, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %180 = load i32, i32* %channel, align 4
  %idxprom238 = sext i32 %180 to i64
  %181 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx239 = getelementptr inbounds %struct.ebox, %struct.ebox* %181, i64 %idxprom238
  %index1240 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx239, i32 0, i32 0
  %182 = load i32, i32* %index1240, align 4
  store i32 %182, i32* %node1, align 4
  %183 = load i32, i32* %channel, align 4
  %idxprom241 = sext i32 %183 to i64
  %184 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx242 = getelementptr inbounds %struct.ebox, %struct.ebox* %184, i64 %idxprom241
  %index2243 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx242, i32 0, i32 1
  %185 = load i32, i32* %index2243, align 4
  store i32 %185, i32* %node2, align 4
  %186 = load i32, i32* %hit, align 4
  %cmp244 = icmp eq i32 %186, 1
  br i1 %cmp244, label %if.then.245, label %if.else.257

if.then.245:                                      ; preds = %do.end
  %187 = load i32, i32* %y, align 4
  %188 = load i32, i32* %node1, align 4
  %idxprom246 = sext i32 %188 to i64
  %189 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx247 = getelementptr inbounds %struct.rect, %struct.rect* %189, i64 %idxprom246
  %yc248 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx247, i32 0, i32 1
  %190 = load i32, i32* %yc248, align 4
  %sub249 = sub nsw i32 %187, %190
  store i32 %sub249, i32* %offset, align 4
  %191 = load i32, i32* %node2, align 4
  %idxprom250 = sext i32 %191 to i64
  %192 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx251 = getelementptr inbounds %struct.rect, %struct.rect* %192, i64 %idxprom250
  %yc252 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx251, i32 0, i32 1
  %193 = load i32, i32* %yc252, align 4
  %194 = load i32, i32* %node1, align 4
  %idxprom253 = sext i32 %194 to i64
  %195 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx254 = getelementptr inbounds %struct.rect, %struct.rect* %195, i64 %idxprom253
  %yc255 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx254, i32 0, i32 1
  %196 = load i32, i32* %yc255, align 4
  %sub256 = sub nsw i32 %193, %196
  store i32 %sub256, i32* %max, align 4
  br label %if.end.269

if.else.257:                                      ; preds = %do.end
  %197 = load i32, i32* %x, align 4
  %198 = load i32, i32* %node1, align 4
  %idxprom258 = sext i32 %198 to i64
  %199 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx259 = getelementptr inbounds %struct.rect, %struct.rect* %199, i64 %idxprom258
  %xc260 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx259, i32 0, i32 0
  %200 = load i32, i32* %xc260, align 4
  %sub261 = sub nsw i32 %197, %200
  store i32 %sub261, i32* %offset, align 4
  %201 = load i32, i32* %node2, align 4
  %idxprom262 = sext i32 %201 to i64
  %202 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx263 = getelementptr inbounds %struct.rect, %struct.rect* %202, i64 %idxprom262
  %xc264 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx263, i32 0, i32 0
  %203 = load i32, i32* %xc264, align 4
  %204 = load i32, i32* %node1, align 4
  %idxprom265 = sext i32 %204 to i64
  %205 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx266 = getelementptr inbounds %struct.rect, %struct.rect* %205, i64 %idxprom265
  %xc267 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx266, i32 0, i32 0
  %206 = load i32, i32* %xc267, align 4
  %sub268 = sub nsw i32 %203, %206
  store i32 %sub268, i32* %max, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.257, %if.then.245
  %207 = load i32, i32* %offset, align 4
  %cmp270 = icmp slt i32 %207, 0
  br i1 %cmp270, label %if.then.271, label %if.else.279

if.then.271:                                      ; preds = %if.end.269
  %call272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  %arraydecay273 = getelementptr inbounds [128 x i8], [128 x i8]* %pname, i32 0, i32 0
  %call274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay273)
  %208 = load i32, i32* %node1, align 4
  %209 = load i32, i32* %node2, align 4
  %call275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i32 %208, i32 %209)
  %210 = load i32, i32* %offset, align 4
  %call276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %210)
  %call277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call278 = call i32 @fflush(%struct._IO_FILE* %211)
  store i32 0, i32* %offset, align 4
  store i32 1, i32* @TWsignal, align 4
  br label %if.end.291

if.else.279:                                      ; preds = %if.end.269
  %212 = load i32, i32* %offset, align 4
  %213 = load i32, i32* %max, align 4
  %cmp280 = icmp sgt i32 %212, %213
  br i1 %cmp280, label %if.then.281, label %if.end.290

if.then.281:                                      ; preds = %if.else.279
  %call282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  %arraydecay283 = getelementptr inbounds [128 x i8], [128 x i8]* %pname, i32 0, i32 0
  %call284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay283)
  %214 = load i32, i32* %node1, align 4
  %215 = load i32, i32* %node2, align 4
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i32 %214, i32 %215)
  %216 = load i32, i32* %offset, align 4
  %217 = load i32, i32* %max, align 4
  %sub286 = sub nsw i32 %216, %217
  %call287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %sub286)
  %call288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call289 = call i32 @fflush(%struct._IO_FILE* %218)
  %219 = load i32, i32* %max, align 4
  store i32 %219, i32* %offset, align 4
  store i32 1, i32* @TWsignal, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.281, %if.else.279
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.271
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %221 = load i32, i32* %node1, align 4
  %222 = load i32, i32* %node2, align 4
  %223 = load i32, i32* %offset, align 4
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %221, i32 %222, i32 %223)
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.291, %if.else
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call295 = call i32 @fclose(%struct._IO_FILE* %224)
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call296 = call i32 @fclose(%struct._IO_FILE* %225)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
