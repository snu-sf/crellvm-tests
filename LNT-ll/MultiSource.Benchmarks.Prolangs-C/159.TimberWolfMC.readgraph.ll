; ModuleID = './MultiSource.Benchmarks.Prolangs-C/159.TimberWolfMC.readgraph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@numnodes = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to input a pair of nodes \00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"following keyword edge in the .gph file\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Current edge: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to input length \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"in the .gph file\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to find keyword: length \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"for an edge\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"capacity\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to input capacity \00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed to find keyword: capacity \00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Found unknown string when attempting \00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"to find keyword: edge in the .gph file\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"instead found: %s\0A\00", align 1
@gnodeArray = external global %struct.gnode**, align 8

; Function Attrs: nounwind uwtable
define void @readgraph(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %input = alloca [32 x i8], align 16
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %length = alloca i32, align 4
  %capacity = alloca i32, align 4
  %edge = alloca i32, align 4
  %i = alloca i32, align 4
  %test = alloca i32, align 4
  %gptr = alloca %struct.gnode*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* @numnodes, align 4
  store i32 0, i32* %edge, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else.51

if.then:                                          ; preds = %while.body
  %1 = load i32, i32* %edge, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %edge, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32* %node1, i32* %node2)
  store i32 %call4, i32* %test, align 4
  %3 = load i32, i32* %test, align 4
  %cmp5 = icmp ne i32 %3, 2
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %7 = load i32, i32* %edge, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %7)
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %node1, align 4
  %9 = load i32, i32* @numnodes, align 4
  %cmp10 = icmp sgt i32 %8, %9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %10 = load i32, i32* %node1, align 4
  store i32 %10, i32* @numnodes, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %11 = load i32, i32* %node2, align 4
  %12 = load i32, i32* @numnodes, align 4
  %cmp13 = icmp sgt i32 %11, %12
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %13 = load i32, i32* %node2, align 4
  store i32 %13, i32* @numnodes, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay16 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay16)
  %arraydecay18 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call19 = call i32 @strcmp(i8* %arraydecay18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32* %length)
  store i32 %call22, i32* %test, align 4
  %16 = load i32, i32* %test, align 4
  %cmp23 = icmp ne i32 %16, 1
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.then.21
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %20 = load i32, i32* %edge, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %20)
  call void @exit(i32 0) #6
  unreachable

if.end.28:                                        ; preds = %if.then.21
  br label %if.end.32

if.else:                                          ; preds = %if.end.15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %24 = load i32, i32* %edge, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %24)
  call void @exit(i32 0) #6
  unreachable

if.end.32:                                        ; preds = %if.end.28
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay33 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay33)
  %arraydecay35 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call36 = call i32 @strcmp(i8* %arraydecay35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %if.end.32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32* %capacity)
  store i32 %call39, i32* %test, align 4
  %27 = load i32, i32* %test, align 4
  %cmp40 = icmp ne i32 %27, 1
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.then.38
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %31 = load i32, i32* %edge, align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %31)
  call void @exit(i32 0) #6
  unreachable

if.end.45:                                        ; preds = %if.then.38
  br label %if.end.50

if.else.46:                                       ; preds = %if.end.32
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %35 = load i32, i32* %edge, align 4
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %35)
  call void @exit(i32 0) #6
  unreachable

if.end.50:                                        ; preds = %if.end.45
  br label %if.end.57

if.else.51:                                       ; preds = %while.body
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay54 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay54)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = load i32, i32* %edge, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %40)
  call void @exit(i32 0) #6
  unreachable

if.end.57:                                        ; preds = %if.end.50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %41)
  %42 = load i32, i32* @numnodes, align 4
  %add = add nsw i32 %42, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call58 = call noalias i8* @malloc(i64 %mul) #7
  %43 = bitcast i8* %call58 to %struct.gnode**
  store %struct.gnode** %43, %struct.gnode*** @gnodeArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* @numnodes, align 4
  %cmp59 = icmp sle i32 %44, %45
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %i, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.gnode*, %struct.gnode** %47, i64 %idxprom
  store %struct.gnode* null, %struct.gnode** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %48, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.62

while.cond.62:                                    ; preds = %if.end.132, %for.end
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay63 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay63)
  %cmp65 = icmp eq i32 %call64, 1
  br i1 %cmp65, label %while.body.67, label %while.end.133

while.body.67:                                    ; preds = %while.cond.62
  %arraydecay68 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call69 = call i32 @strcmp(i8* %arraydecay68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.132

if.then.72:                                       ; preds = %while.body.67
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32* %node1, i32* %node2)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay74 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay74)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32* %length)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay77 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay77)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32* %capacity)
  %55 = load i32, i32* %node1, align 4
  %idxprom80 = sext i32 %55 to i64
  %56 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx81 = getelementptr inbounds %struct.gnode*, %struct.gnode** %56, i64 %idxprom80
  %57 = load %struct.gnode*, %struct.gnode** %arrayidx81, align 8
  store %struct.gnode* %57, %struct.gnode** %gptr, align 8
  %call82 = call noalias i8* @malloc(i64 40) #7
  %58 = bitcast i8* %call82 to %struct.gnode*
  %59 = load i32, i32* %node1, align 4
  %idxprom83 = sext i32 %59 to i64
  %60 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx84 = getelementptr inbounds %struct.gnode*, %struct.gnode** %60, i64 %idxprom83
  store %struct.gnode* %58, %struct.gnode** %arrayidx84, align 8
  %61 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %62 = load i32, i32* %node1, align 4
  %idxprom85 = sext i32 %62 to i64
  %63 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx86 = getelementptr inbounds %struct.gnode*, %struct.gnode** %63, i64 %idxprom85
  %64 = load %struct.gnode*, %struct.gnode** %arrayidx86, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %64, i32 0, i32 7
  store %struct.gnode* %61, %struct.gnode** %next, align 8
  %65 = load i32, i32* %node2, align 4
  %66 = load i32, i32* %node1, align 4
  %idxprom87 = sext i32 %66 to i64
  %67 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx88 = getelementptr inbounds %struct.gnode*, %struct.gnode** %67, i64 %idxprom87
  %68 = load %struct.gnode*, %struct.gnode** %arrayidx88, align 8
  %node = getelementptr inbounds %struct.gnode, %struct.gnode* %68, i32 0, i32 0
  store i32 %65, i32* %node, align 4
  %69 = load i32, i32* %length, align 4
  %70 = load i32, i32* %node1, align 4
  %idxprom89 = sext i32 %70 to i64
  %71 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx90 = getelementptr inbounds %struct.gnode*, %struct.gnode** %71, i64 %idxprom89
  %72 = load %struct.gnode*, %struct.gnode** %arrayidx90, align 8
  %length91 = getelementptr inbounds %struct.gnode, %struct.gnode* %72, i32 0, i32 2
  store i32 %69, i32* %length91, align 4
  %73 = load i32, i32* %length, align 4
  %74 = load i32, i32* %node1, align 4
  %idxprom92 = sext i32 %74 to i64
  %75 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx93 = getelementptr inbounds %struct.gnode*, %struct.gnode** %75, i64 %idxprom92
  %76 = load %struct.gnode*, %struct.gnode** %arrayidx93, align 8
  %ilength = getelementptr inbounds %struct.gnode, %struct.gnode* %76, i32 0, i32 1
  store i32 %73, i32* %ilength, align 4
  %77 = load i32, i32* %length, align 4
  %78 = load i32, i32* %node1, align 4
  %idxprom94 = sext i32 %78 to i64
  %79 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx95 = getelementptr inbounds %struct.gnode*, %struct.gnode** %79, i64 %idxprom94
  %80 = load %struct.gnode*, %struct.gnode** %arrayidx95, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %80, i32 0, i32 3
  store i32 %77, i32* %cost, align 4
  %81 = load i32, i32* %capacity, align 4
  %82 = load i32, i32* %node1, align 4
  %idxprom96 = sext i32 %82 to i64
  %83 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx97 = getelementptr inbounds %struct.gnode*, %struct.gnode** %83, i64 %idxprom96
  %84 = load %struct.gnode*, %struct.gnode** %arrayidx97, align 8
  %capacity98 = getelementptr inbounds %struct.gnode, %struct.gnode* %84, i32 0, i32 4
  store i32 %81, i32* %capacity98, align 4
  %85 = load i32, i32* %node1, align 4
  %idxprom99 = sext i32 %85 to i64
  %86 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx100 = getelementptr inbounds %struct.gnode*, %struct.gnode** %86, i64 %idxprom99
  %87 = load %struct.gnode*, %struct.gnode** %arrayidx100, align 8
  %inactive = getelementptr inbounds %struct.gnode, %struct.gnode* %87, i32 0, i32 5
  store i32 0, i32* %inactive, align 4
  %88 = load i32, i32* %node1, align 4
  %idxprom101 = sext i32 %88 to i64
  %89 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx102 = getelementptr inbounds %struct.gnode*, %struct.gnode** %89, i64 %idxprom101
  %90 = load %struct.gnode*, %struct.gnode** %arrayidx102, align 8
  %einactive = getelementptr inbounds %struct.gnode, %struct.gnode* %90, i32 0, i32 6
  store i32 0, i32* %einactive, align 4
  %91 = load i32, i32* %node2, align 4
  %idxprom103 = sext i32 %91 to i64
  %92 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx104 = getelementptr inbounds %struct.gnode*, %struct.gnode** %92, i64 %idxprom103
  %93 = load %struct.gnode*, %struct.gnode** %arrayidx104, align 8
  store %struct.gnode* %93, %struct.gnode** %gptr, align 8
  %call105 = call noalias i8* @malloc(i64 40) #7
  %94 = bitcast i8* %call105 to %struct.gnode*
  %95 = load i32, i32* %node2, align 4
  %idxprom106 = sext i32 %95 to i64
  %96 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx107 = getelementptr inbounds %struct.gnode*, %struct.gnode** %96, i64 %idxprom106
  store %struct.gnode* %94, %struct.gnode** %arrayidx107, align 8
  %97 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %98 = load i32, i32* %node2, align 4
  %idxprom108 = sext i32 %98 to i64
  %99 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx109 = getelementptr inbounds %struct.gnode*, %struct.gnode** %99, i64 %idxprom108
  %100 = load %struct.gnode*, %struct.gnode** %arrayidx109, align 8
  %next110 = getelementptr inbounds %struct.gnode, %struct.gnode* %100, i32 0, i32 7
  store %struct.gnode* %97, %struct.gnode** %next110, align 8
  %101 = load i32, i32* %node1, align 4
  %102 = load i32, i32* %node2, align 4
  %idxprom111 = sext i32 %102 to i64
  %103 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx112 = getelementptr inbounds %struct.gnode*, %struct.gnode** %103, i64 %idxprom111
  %104 = load %struct.gnode*, %struct.gnode** %arrayidx112, align 8
  %node113 = getelementptr inbounds %struct.gnode, %struct.gnode* %104, i32 0, i32 0
  store i32 %101, i32* %node113, align 4
  %105 = load i32, i32* %length, align 4
  %106 = load i32, i32* %node2, align 4
  %idxprom114 = sext i32 %106 to i64
  %107 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx115 = getelementptr inbounds %struct.gnode*, %struct.gnode** %107, i64 %idxprom114
  %108 = load %struct.gnode*, %struct.gnode** %arrayidx115, align 8
  %length116 = getelementptr inbounds %struct.gnode, %struct.gnode* %108, i32 0, i32 2
  store i32 %105, i32* %length116, align 4
  %109 = load i32, i32* %length, align 4
  %110 = load i32, i32* %node2, align 4
  %idxprom117 = sext i32 %110 to i64
  %111 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx118 = getelementptr inbounds %struct.gnode*, %struct.gnode** %111, i64 %idxprom117
  %112 = load %struct.gnode*, %struct.gnode** %arrayidx118, align 8
  %ilength119 = getelementptr inbounds %struct.gnode, %struct.gnode* %112, i32 0, i32 1
  store i32 %109, i32* %ilength119, align 4
  %113 = load i32, i32* %length, align 4
  %114 = load i32, i32* %node2, align 4
  %idxprom120 = sext i32 %114 to i64
  %115 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx121 = getelementptr inbounds %struct.gnode*, %struct.gnode** %115, i64 %idxprom120
  %116 = load %struct.gnode*, %struct.gnode** %arrayidx121, align 8
  %cost122 = getelementptr inbounds %struct.gnode, %struct.gnode* %116, i32 0, i32 3
  store i32 %113, i32* %cost122, align 4
  %117 = load i32, i32* %capacity, align 4
  %118 = load i32, i32* %node2, align 4
  %idxprom123 = sext i32 %118 to i64
  %119 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx124 = getelementptr inbounds %struct.gnode*, %struct.gnode** %119, i64 %idxprom123
  %120 = load %struct.gnode*, %struct.gnode** %arrayidx124, align 8
  %capacity125 = getelementptr inbounds %struct.gnode, %struct.gnode* %120, i32 0, i32 4
  store i32 %117, i32* %capacity125, align 4
  %121 = load i32, i32* %node2, align 4
  %idxprom126 = sext i32 %121 to i64
  %122 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx127 = getelementptr inbounds %struct.gnode*, %struct.gnode** %122, i64 %idxprom126
  %123 = load %struct.gnode*, %struct.gnode** %arrayidx127, align 8
  %inactive128 = getelementptr inbounds %struct.gnode, %struct.gnode* %123, i32 0, i32 5
  store i32 0, i32* %inactive128, align 4
  %124 = load i32, i32* %node2, align 4
  %idxprom129 = sext i32 %124 to i64
  %125 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx130 = getelementptr inbounds %struct.gnode*, %struct.gnode** %125, i64 %idxprom129
  %126 = load %struct.gnode*, %struct.gnode** %arrayidx130, align 8
  %einactive131 = getelementptr inbounds %struct.gnode, %struct.gnode* %126, i32 0, i32 6
  store i32 0, i32* %einactive131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.72, %while.body.67
  br label %while.cond.62

while.end.133:                                    ; preds = %while.cond.62
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
