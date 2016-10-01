; ModuleID = './MultiSource.Benchmarks.Prolangs-C/172.TimberWolfMC.outpin.bc'
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
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.pin\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"net %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"pin %s  x %d  y %d  cell %d  PinOrEquiv %d\0A\00", align 1
@pinnames = external global i8**, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @outpin() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %net = alloca i32, align 4
  %count = alloca i32, align 4
  %cell = alloca i32, align 4
  %c = alloca [5 x i32], align 16
  %filename = alloca [1024 x i8], align 16
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
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 2
  store i32 0, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 3
  store i32 0, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 4
  store i32 0, i32* %arrayidx7, align 4
  %2 = load i32, i32* @numcells, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %cell, align 4
  %4 = load i32, i32* @numcells, align 4
  %5 = load i32, i32* @numpads, align 4
  %add8 = add nsw i32 %4, %5
  %cmp9 = icmp sle i32 %3, %add8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx10 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %idxprom
  %8 = load %struct.cellbox*, %struct.cellbox** %arrayidx10, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 11
  %9 = load i32, i32* %padside, align 4
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body
  %arrayidx13 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 1
  store i32 1, i32* %arrayidx13, align 4
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %10 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %11 = load i32, i32* @numcells, align 4
  %add15 = add nsw i32 %11, 1
  store i32 %add15, i32* %cell, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.27, %for.end
  %12 = load i32, i32* %cell, align 4
  %13 = load i32, i32* @numcells, align 4
  %14 = load i32, i32* @numpads, align 4
  %add17 = add nsw i32 %13, %14
  %cmp18 = icmp sle i32 %12, %add17
  br i1 %cmp18, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %cell, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx21 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %idxprom20
  %17 = load %struct.cellbox*, %struct.cellbox** %arrayidx21, align 8
  %padside22 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 11
  %18 = load i32, i32* %padside22, align 4
  %cmp23 = icmp eq i32 %18, 2
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.body.19
  %arrayidx25 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 2
  store i32 1, i32* %arrayidx25, align 4
  br label %for.end.29

if.end.26:                                        ; preds = %for.body.19
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %19 = load i32, i32* %cell, align 4
  %inc28 = add nsw i32 %19, 1
  store i32 %inc28, i32* %cell, align 4
  br label %for.cond.16

for.end.29:                                       ; preds = %if.then.24, %for.cond.16
  %20 = load i32, i32* @numcells, align 4
  %add30 = add nsw i32 %20, 1
  store i32 %add30, i32* %cell, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.42, %for.end.29
  %21 = load i32, i32* %cell, align 4
  %22 = load i32, i32* @numcells, align 4
  %23 = load i32, i32* @numpads, align 4
  %add32 = add nsw i32 %22, %23
  %cmp33 = icmp sle i32 %21, %add32
  br i1 %cmp33, label %for.body.34, label %for.end.44

for.body.34:                                      ; preds = %for.cond.31
  %24 = load i32, i32* %cell, align 4
  %idxprom35 = sext i32 %24 to i64
  %25 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx36 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %25, i64 %idxprom35
  %26 = load %struct.cellbox*, %struct.cellbox** %arrayidx36, align 8
  %padside37 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 11
  %27 = load i32, i32* %padside37, align 4
  %cmp38 = icmp eq i32 %27, 3
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %for.body.34
  %arrayidx40 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 3
  store i32 1, i32* %arrayidx40, align 4
  br label %for.end.44

if.end.41:                                        ; preds = %for.body.34
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %28 = load i32, i32* %cell, align 4
  %inc43 = add nsw i32 %28, 1
  store i32 %inc43, i32* %cell, align 4
  br label %for.cond.31

for.end.44:                                       ; preds = %if.then.39, %for.cond.31
  %29 = load i32, i32* @numcells, align 4
  %add45 = add nsw i32 %29, 1
  store i32 %add45, i32* %cell, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.57, %for.end.44
  %30 = load i32, i32* %cell, align 4
  %31 = load i32, i32* @numcells, align 4
  %32 = load i32, i32* @numpads, align 4
  %add47 = add nsw i32 %31, %32
  %cmp48 = icmp sle i32 %30, %add47
  br i1 %cmp48, label %for.body.49, label %for.end.59

for.body.49:                                      ; preds = %for.cond.46
  %33 = load i32, i32* %cell, align 4
  %idxprom50 = sext i32 %33 to i64
  %34 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx51 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %34, i64 %idxprom50
  %35 = load %struct.cellbox*, %struct.cellbox** %arrayidx51, align 8
  %padside52 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %35, i32 0, i32 11
  %36 = load i32, i32* %padside52, align 4
  %cmp53 = icmp eq i32 %36, 4
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.body.49
  %arrayidx55 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 4
  store i32 1, i32* %arrayidx55, align 4
  br label %for.end.59

if.end.56:                                        ; preds = %for.body.49
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %37 = load i32, i32* %cell, align 4
  %inc58 = add nsw i32 %37, 1
  store i32 %inc58, i32* %cell, align 4
  br label %for.cond.46

for.end.59:                                       ; preds = %if.then.54, %for.cond.46
  %38 = load i32, i32* @numcells, align 4
  %add60 = add nsw i32 %38, 1
  %arrayidx61 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 0
  store i32 %add60, i32* %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 1
  %39 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %39, 1
  br i1 %cmp63, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %for.end.59
  %arrayidx65 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 0
  %40 = load i32, i32* %arrayidx65, align 4
  %inc66 = add nsw i32 %40, 1
  store i32 %inc66, i32* %arrayidx65, align 4
  %arrayidx67 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 1
  store i32 %40, i32* %arrayidx67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %for.end.59
  %arrayidx69 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 2
  %41 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp eq i32 %41, 1
  br i1 %cmp70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.end.68
  %arrayidx72 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 0
  %42 = load i32, i32* %arrayidx72, align 4
  %inc73 = add nsw i32 %42, 1
  store i32 %inc73, i32* %arrayidx72, align 4
  %arrayidx74 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 2
  store i32 %42, i32* %arrayidx74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %if.end.68
  %arrayidx76 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 3
  %43 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp eq i32 %43, 1
  br i1 %cmp77, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.end.75
  %arrayidx79 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 0
  %44 = load i32, i32* %arrayidx79, align 4
  %inc80 = add nsw i32 %44, 1
  store i32 %inc80, i32* %arrayidx79, align 4
  %arrayidx81 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 3
  store i32 %44, i32* %arrayidx81, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %if.end.75
  %arrayidx83 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 4
  %45 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp eq i32 %45, 1
  br i1 %cmp84, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %if.end.82
  %arrayidx86 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 0
  %46 = load i32, i32* %arrayidx86, align 4
  %inc87 = add nsw i32 %46, 1
  store i32 %inc87, i32* %arrayidx86, align 4
  %arrayidx88 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 4
  store i32 %46, i32* %arrayidx88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %if.end.82
  store i32 1, i32* %net, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.163, %if.end.89
  %47 = load i32, i32* %net, align 4
  %48 = load i32, i32* @numnets, align 4
  %cmp91 = icmp sle i32 %47, %48
  br i1 %cmp91, label %for.body.92, label %for.end.165

for.body.92:                                      ; preds = %for.cond.90
  store i32 0, i32* %count, align 4
  %49 = load i32, i32* %net, align 4
  %idxprom93 = sext i32 %49 to i64
  %50 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx94 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %50, i64 %idxprom93
  %51 = load %struct.dimbox*, %struct.dimbox** %arrayidx94, align 8
  store %struct.dimbox* %51, %struct.dimbox** %dimptr, align 8
  %52 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr95 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %52, i32 0, i32 0
  %53 = load %struct.netbox*, %struct.netbox** %netptr95, align 8
  store %struct.netbox* %53, %struct.netbox** %netptr, align 8
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.103, %for.body.92
  %54 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp97 = icmp ne %struct.netbox* %54, null
  br i1 %cmp97, label %for.body.98, label %for.end.104

for.body.98:                                      ; preds = %for.cond.96
  %55 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %PorE = getelementptr inbounds %struct.netbox, %struct.netbox* %55, i32 0, i32 8
  %56 = load i32, i32* %PorE, align 4
  %cmp99 = icmp sgt i32 %56, 0
  br i1 %cmp99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %for.body.98
  %57 = load i32, i32* %count, align 4
  %inc101 = add nsw i32 %57, 1
  store i32 %inc101, i32* %count, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %for.body.98
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %58 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %58, i32 0, i32 0
  %59 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %59, %struct.netbox** %netptr, align 8
  br label %for.cond.96

for.end.104:                                      ; preds = %for.cond.96
  %60 = load i32, i32* %count, align 4
  %cmp105 = icmp sle i32 %60, 1
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.end.104
  br label %for.inc.163

if.end.107:                                       ; preds = %for.end.104
  %61 = load i32, i32* %net, align 4
  %idxprom108 = sext i32 %61 to i64
  %62 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx109 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %62, i64 %idxprom108
  %63 = load %struct.dimbox*, %struct.dimbox** %arrayidx109, align 8
  store %struct.dimbox* %63, %struct.dimbox** %dimptr, align 8
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %65 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %65, i32 0, i32 13
  %66 = load i8*, i8** %nname, align 8
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %66)
  %67 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr111 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %67, i32 0, i32 0
  %68 = load %struct.netbox*, %struct.netbox** %netptr111, align 8
  store %struct.netbox* %68, %struct.netbox** %netptr, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.159, %if.end.107
  %69 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp113 = icmp ne %struct.netbox* %69, null
  br i1 %cmp113, label %for.body.114, label %for.end.161

for.body.114:                                     ; preds = %for.cond.112
  %70 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell115 = getelementptr inbounds %struct.netbox, %struct.netbox* %70, i32 0, i32 7
  %71 = load i32, i32* %cell115, align 4
  %72 = load i32, i32* @numcells, align 4
  %cmp116 = icmp sle i32 %71, %72
  br i1 %cmp116, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %for.body.114
  %73 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell118 = getelementptr inbounds %struct.netbox, %struct.netbox* %73, i32 0, i32 7
  %74 = load i32, i32* %cell118, align 4
  store i32 %74, i32* %cell, align 4
  br label %if.end.154

if.else:                                          ; preds = %for.body.114
  %75 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell119 = getelementptr inbounds %struct.netbox, %struct.netbox* %75, i32 0, i32 7
  %76 = load i32, i32* %cell119, align 4
  %idxprom120 = sext i32 %76 to i64
  %77 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx121 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %77, i64 %idxprom120
  %78 = load %struct.cellbox*, %struct.cellbox** %arrayidx121, align 8
  %padside122 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i32 0, i32 11
  %79 = load i32, i32* %padside122, align 4
  %cmp123 = icmp eq i32 %79, 1
  br i1 %cmp123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.else
  %arrayidx125 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 1
  %80 = load i32, i32* %arrayidx125, align 4
  store i32 %80, i32* %cell, align 4
  br label %if.end.153

if.else.126:                                      ; preds = %if.else
  %81 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell127 = getelementptr inbounds %struct.netbox, %struct.netbox* %81, i32 0, i32 7
  %82 = load i32, i32* %cell127, align 4
  %idxprom128 = sext i32 %82 to i64
  %83 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx129 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %83, i64 %idxprom128
  %84 = load %struct.cellbox*, %struct.cellbox** %arrayidx129, align 8
  %padside130 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 11
  %85 = load i32, i32* %padside130, align 4
  %cmp131 = icmp eq i32 %85, 2
  br i1 %cmp131, label %if.then.132, label %if.else.134

if.then.132:                                      ; preds = %if.else.126
  %arrayidx133 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 2
  %86 = load i32, i32* %arrayidx133, align 4
  store i32 %86, i32* %cell, align 4
  br label %if.end.152

if.else.134:                                      ; preds = %if.else.126
  %87 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell135 = getelementptr inbounds %struct.netbox, %struct.netbox* %87, i32 0, i32 7
  %88 = load i32, i32* %cell135, align 4
  %idxprom136 = sext i32 %88 to i64
  %89 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx137 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %89, i64 %idxprom136
  %90 = load %struct.cellbox*, %struct.cellbox** %arrayidx137, align 8
  %padside138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 11
  %91 = load i32, i32* %padside138, align 4
  %cmp139 = icmp eq i32 %91, 3
  br i1 %cmp139, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %if.else.134
  %arrayidx141 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 3
  %92 = load i32, i32* %arrayidx141, align 4
  store i32 %92, i32* %cell, align 4
  br label %if.end.151

if.else.142:                                      ; preds = %if.else.134
  %93 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell143 = getelementptr inbounds %struct.netbox, %struct.netbox* %93, i32 0, i32 7
  %94 = load i32, i32* %cell143, align 4
  %idxprom144 = sext i32 %94 to i64
  %95 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx145 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %95, i64 %idxprom144
  %96 = load %struct.cellbox*, %struct.cellbox** %arrayidx145, align 8
  %padside146 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %96, i32 0, i32 11
  %97 = load i32, i32* %padside146, align 4
  %cmp147 = icmp eq i32 %97, 4
  br i1 %cmp147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.else.142
  %arrayidx149 = getelementptr inbounds [5 x i32], [5 x i32]* %c, i32 0, i64 4
  %98 = load i32, i32* %arrayidx149, align 4
  store i32 %98, i32* %cell, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.else.142
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.140
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.132
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.124
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.117
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %100 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal = getelementptr inbounds %struct.netbox, %struct.netbox* %100, i32 0, i32 5
  %101 = load i32, i32* %terminal, align 4
  %idxprom155 = sext i32 %101 to i64
  %102 = load i8**, i8*** @pinnames, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %102, i64 %idxprom155
  %103 = load i8*, i8** %arrayidx156, align 8
  %104 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos = getelementptr inbounds %struct.netbox, %struct.netbox* %104, i32 0, i32 1
  %105 = load i32, i32* %xpos, align 4
  %106 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos = getelementptr inbounds %struct.netbox, %struct.netbox* %106, i32 0, i32 2
  %107 = load i32, i32* %ypos, align 4
  %108 = load i32, i32* %cell, align 4
  %109 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %PorE157 = getelementptr inbounds %struct.netbox, %struct.netbox* %109, i32 0, i32 8
  %110 = load i32, i32* %PorE157, align 4
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* %103, i32 %105, i32 %107, i32 %108, i32 %110)
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.154
  %111 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm160 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i32 0, i32 0
  %112 = load %struct.netbox*, %struct.netbox** %nextterm160, align 8
  store %struct.netbox* %112, %struct.netbox** %netptr, align 8
  br label %for.cond.112

for.end.161:                                      ; preds = %for.cond.112
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.161, %if.then.106
  %114 = load i32, i32* %net, align 4
  %inc164 = add nsw i32 %114, 1
  store i32 %inc164, i32* %net, align 4
  br label %for.cond.90

for.end.165:                                      ; preds = %for.cond.90
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call166 = call i32 @fclose(%struct._IO_FILE* %115)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
