; ModuleID = './MultiSource.Benchmarks.Prolangs-C/238.TimberWolfMC.readpnode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct.path = type { i16*, i32, i32, i32, [5 x i32] }
%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@maxpnode = external global i32, align 4
@numpins = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to input a net name \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"in the .twf file\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Current net: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to input a pin name \00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to input keyword: nodes \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to input keyword: at \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to input a pair of nodes \00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"following keyword nodes in the .twf file\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Failed to input an integer following: at \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Found unknown string: < %s >  \00", align 1
@gnodeArray = external global %struct.gnode**, align 8
@numnodes = external global i32, align 4
@gtrace = external global i16**, align 8
@largestNet = external global i32, align 4
@netRoutes = external global %struct.nrbox*, align 8
@MAXPATHS = external global i32, align 4
@savePaths = external global i16**, align 8
@pnameArray = external global i8**, align 8
@nnameArray = external global i8**, align 8
@pinOffset = external global i32*, align 8
@segList = external global i16*, align 8
@sourceList = external global i16*, align 8
@targetList = external global i16*, align 8
@delSourceList = external global i16*, align 8
@addTargetList = external global i16*, align 8
@EXTRASOURCES = external global i32, align 4
@pathList = external global i32**, align 8
@pathArray = external global %struct.path*, align 8
@tempArray = external global i16*, align 8
@pnodeAlength = common global i32 0, align 4
@pinlist = external global %struct.quad*, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"Global Routing Net Number: %d\0A\00", align 1
@pnodeArray = external global %struct.pnode*, align 8
@netSegArray = external global i16**, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @readpnode(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %input = alloca [1024 x i8], align 16
  %pin = alloca i32, align 4
  %net = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %distance = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %segments = alloca i32, align 4
  %test = alloca i32, align 4
  %pnode = alloca i32, align 4
  %lptr = alloca %struct.list2*, align 8
  %l2ptr = alloca %struct.list2*, align 8
  %nptr = alloca %struct.nnode*, align 8
  %qptr = alloca %struct.quad*, align 8
  %q2ptr = alloca %struct.quad*, align 8
  %tmpqptr = alloca %struct.quad*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* @maxpnode, align 4
  store i32 0, i32* %pnode, align 4
  store i32 0, i32* %net, align 4
  store i32 0, i32* @numpins, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.146, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load i32, i32* %net, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %net, align 4
  %2 = load i32, i32* %pnode, align 4
  %3 = load i32, i32* @maxpnode, align 4
  %cmp4 = icmp sgt i32 %2, %3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %4 = load i32, i32* %pnode, align 4
  store i32 %4, i32* @maxpnode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  store i32 0, i32* %pnode, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay6)
  store i32 %call7, i32* %test, align 4
  %6 = load i32, i32* %test, align 4
  %cmp8 = icmp ne i32 %6, 1
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = load i32, i32* %net, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %10)
  call void @exit(i32 0) #6
  unreachable

if.end.13:                                        ; preds = %if.end
  br label %if.end.146

if.else:                                          ; preds = %while.body
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.76

if.then.17:                                       ; preds = %if.else
  %11 = load i32, i32* %pnode, align 4
  %inc18 = add nsw i32 %11, 1
  store i32 %inc18, i32* %pnode, align 4
  %12 = load i32, i32* @numpins, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, i32* @numpins, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay20)
  store i32 %call21, i32* %test, align 4
  %14 = load i32, i32* %test, align 4
  %cmp22 = icmp ne i32 %14, 1
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.then.17
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %18 = load i32, i32* %net, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %18)
  call void @exit(i32 0) #6
  unreachable

if.end.27:                                        ; preds = %if.then.17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay28)
  store i32 %call29, i32* %test, align 4
  %20 = load i32, i32* %test, align 4
  %cmp30 = icmp ne i32 %20, 1
  br i1 %cmp30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.end.27
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %24 = load i32, i32* %net, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %24)
  call void @exit(i32 0) #6
  unreachable

if.else.35:                                       ; preds = %if.end.27
  %arraydecay36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call37 = call i32 @strcmp(i8* %arraydecay36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.else.35
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %28 = load i32, i32* %net, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %28)
  call void @exit(i32 0) #6
  unreachable

if.end.43:                                        ; preds = %if.else.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32* %node1, i32* %node2)
  store i32 %call45, i32* %test, align 4
  %30 = load i32, i32* %test, align 4
  %cmp46 = icmp ne i32 %30, 2
  br i1 %cmp46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.44
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %34 = load i32, i32* %net, align 4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %34)
  call void @exit(i32 0) #6
  unreachable

if.end.51:                                        ; preds = %if.end.44
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay52)
  store i32 %call53, i32* %test, align 4
  %36 = load i32, i32* %test, align 4
  %cmp54 = icmp ne i32 %36, 1
  br i1 %cmp54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %if.end.51
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = load i32, i32* %net, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %40)
  call void @exit(i32 0) #6
  unreachable

if.else.59:                                       ; preds = %if.end.51
  %arraydecay60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call61 = call i32 @strcmp(i8* %arraydecay60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.else.59
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %44 = load i32, i32* %net, align 4
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %44)
  call void @exit(i32 0) #6
  unreachable

if.end.67:                                        ; preds = %if.else.59
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32* %distance)
  store i32 %call69, i32* %test, align 4
  %46 = load i32, i32* %test, align 4
  %cmp70 = icmp ne i32 %46, 1
  br i1 %cmp70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.end.68
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %50 = load i32, i32* %net, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %50)
  call void @exit(i32 0) #6
  unreachable

if.end.75:                                        ; preds = %if.end.68
  br label %if.end.145

if.else.76:                                       ; preds = %if.else
  %arraydecay77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call78 = call i32 @strcmp(i8* %arraydecay77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.139

if.then.80:                                       ; preds = %if.else.76
  %51 = load i32, i32* %pnode, align 4
  %inc81 = add nsw i32 %51, 1
  store i32 %inc81, i32* %pnode, align 4
  %52 = load i32, i32* @numpins, align 4
  %inc82 = add nsw i32 %52, 1
  store i32 %inc82, i32* @numpins, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay83)
  store i32 %call84, i32* %test, align 4
  %54 = load i32, i32* %test, align 4
  %cmp85 = icmp ne i32 %54, 1
  br i1 %cmp85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.then.80
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = load i32, i32* %net, align 4
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %58)
  call void @exit(i32 0) #6
  unreachable

if.end.90:                                        ; preds = %if.then.80
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay91)
  store i32 %call92, i32* %test, align 4
  %60 = load i32, i32* %test, align 4
  %cmp93 = icmp ne i32 %60, 1
  br i1 %cmp93, label %if.then.94, label %if.else.98

if.then.94:                                       ; preds = %if.end.90
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %64 = load i32, i32* %net, align 4
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %64)
  call void @exit(i32 0) #6
  unreachable

if.else.98:                                       ; preds = %if.end.90
  %arraydecay99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call100 = call i32 @strcmp(i8* %arraydecay99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %if.else.98
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %68 = load i32, i32* %net, align 4
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %68)
  call void @exit(i32 0) #6
  unreachable

if.end.106:                                       ; preds = %if.else.98
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32* %node1, i32* %node2)
  store i32 %call108, i32* %test, align 4
  %70 = load i32, i32* %test, align 4
  %cmp109 = icmp ne i32 %70, 2
  br i1 %cmp109, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %if.end.107
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %74 = load i32, i32* %net, align 4
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %74)
  call void @exit(i32 0) #6
  unreachable

if.end.114:                                       ; preds = %if.end.107
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay115)
  store i32 %call116, i32* %test, align 4
  %76 = load i32, i32* %test, align 4
  %cmp117 = icmp ne i32 %76, 1
  br i1 %cmp117, label %if.then.118, label %if.else.122

if.then.118:                                      ; preds = %if.end.114
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %80 = load i32, i32* %net, align 4
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %80)
  call void @exit(i32 0) #6
  unreachable

if.else.122:                                      ; preds = %if.end.114
  %arraydecay123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call124 = call i32 @strcmp(i8* %arraydecay123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.else.122
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %84 = load i32, i32* %net, align 4
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %84)
  call void @exit(i32 0) #6
  unreachable

if.end.130:                                       ; preds = %if.else.122
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32* %distance)
  store i32 %call132, i32* %test, align 4
  %86 = load i32, i32* %test, align 4
  %cmp133 = icmp ne i32 %86, 1
  br i1 %cmp133, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %if.end.131
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %90 = load i32, i32* %net, align 4
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %90)
  call void @exit(i32 0) #6
  unreachable

if.end.138:                                       ; preds = %if.end.131
  br label %if.end.144

if.else.139:                                      ; preds = %if.else.76
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay140)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %94 = load i32, i32* %net, align 4
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %94)
  call void @exit(i32 0) #6
  unreachable

if.end.144:                                       ; preds = %if.end.138
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.75
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %95 = load i32, i32* %pnode, align 4
  %96 = load i32, i32* @maxpnode, align 4
  %cmp147 = icmp sgt i32 %95, %96
  br i1 %cmp147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %while.end
  %97 = load i32, i32* %pnode, align 4
  store i32 %97, i32* @maxpnode, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %while.end
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %98)
  %99 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %100 = bitcast %struct.gnode** %99 to i8*
  %101 = load i32, i32* @numnodes, align 4
  %add = add nsw i32 1, %101
  %102 = load i32, i32* @maxpnode, align 4
  %add150 = add nsw i32 %add, %102
  %conv = sext i32 %add150 to i64
  %mul = mul i64 %conv, 8
  %call151 = call i8* @realloc(i8* %100, i64 %mul) #7
  %103 = bitcast i8* %call151 to %struct.gnode**
  store %struct.gnode** %103, %struct.gnode*** @gnodeArray, align 8
  %104 = load i32, i32* @numnodes, align 4
  %add152 = add nsw i32 %104, 1
  store i32 %add152, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.149
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* @numnodes, align 4
  %107 = load i32, i32* @maxpnode, align 4
  %add153 = add nsw i32 %106, %107
  %cmp154 = icmp sle i32 %105, %add153
  br i1 %cmp154, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load i32, i32* %i, align 4
  %idxprom = sext i32 %108 to i64
  %109 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.gnode*, %struct.gnode** %109, i64 %idxprom
  store %struct.gnode* null, %struct.gnode** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %110 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %110, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call157 = call noalias i8* @malloc(i64 40) #7
  %111 = bitcast i8* %call157 to i16**
  store i16** %111, i16*** @gtrace, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.168, %for.end
  %112 = load i32, i32* %i, align 4
  %cmp159 = icmp sle i32 %112, 4
  br i1 %cmp159, label %for.body.161, label %for.end.170

for.body.161:                                     ; preds = %for.cond.158
  %113 = load i32, i32* @maxpnode, align 4
  %add162 = add nsw i32 1, %113
  %conv163 = sext i32 %add162 to i64
  %mul164 = mul i64 %conv163, 2
  %call165 = call noalias i8* @malloc(i64 %mul164) #7
  %114 = bitcast i8* %call165 to i16*
  %115 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %115 to i64
  %116 = load i16**, i16*** @gtrace, align 8
  %arrayidx167 = getelementptr inbounds i16*, i16** %116, i64 %idxprom166
  store i16* %114, i16** %arrayidx167, align 8
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.161
  %117 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %117, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.158

for.end.170:                                      ; preds = %for.cond.158
  %118 = load i32, i32* %net, align 4
  store i32 %118, i32* @largestNet, align 4
  %119 = load i32, i32* @largestNet, align 4
  %add171 = add nsw i32 1, %119
  %conv172 = sext i32 %add171 to i64
  %mul173 = mul i64 %conv172, 24
  %call174 = call noalias i8* @malloc(i64 %mul173) #7
  %120 = bitcast i8* %call174 to %struct.nrbox*
  store %struct.nrbox* %120, %struct.nrbox** @netRoutes, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.210, %for.end.170
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* @largestNet, align 4
  %cmp176 = icmp sle i32 %121, %122
  br i1 %cmp176, label %for.body.178, label %for.end.212

for.body.178:                                     ; preds = %for.cond.175
  %123 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %123 to i64
  %124 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx180 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %124, i64 %idxprom179
  %currentRoute = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx180, i32 0, i32 2
  store i32 1, i32* %currentRoute, align 4
  %125 = load i32, i32* @MAXPATHS, align 4
  %add181 = add nsw i32 1, %125
  %conv182 = sext i32 %add181 to i64
  %mul183 = mul i64 %conv182, 8
  %call184 = call noalias i8* @malloc(i64 %mul183) #7
  %126 = bitcast i8* %call184 to %struct.altbox**
  %127 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %127 to i64
  %128 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx186 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %128, i64 %idxprom185
  %alternate = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx186, i32 0, i32 0
  store %struct.altbox** %126, %struct.altbox*** %alternate, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.207, %for.body.178
  %129 = load i32, i32* %j, align 4
  %130 = load i32, i32* @MAXPATHS, align 4
  %cmp188 = icmp sle i32 %129, %130
  br i1 %cmp188, label %for.body.190, label %for.end.209

for.body.190:                                     ; preds = %for.cond.187
  %call191 = call noalias i8* @malloc(i64 24) #7
  %131 = bitcast i8* %call191 to %struct.altbox*
  %132 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %132 to i64
  %133 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %133 to i64
  %134 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx194 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %134, i64 %idxprom193
  %alternate195 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx194, i32 0, i32 0
  %135 = load %struct.altbox**, %struct.altbox*** %alternate195, align 8
  %arrayidx196 = getelementptr inbounds %struct.altbox*, %struct.altbox** %135, i64 %idxprom192
  store %struct.altbox* %131, %struct.altbox** %arrayidx196, align 8
  %136 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %136 to i64
  %137 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %137 to i64
  %138 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx199 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %138, i64 %idxprom198
  %alternate200 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx199, i32 0, i32 0
  %139 = load %struct.altbox**, %struct.altbox*** %alternate200, align 8
  %arrayidx201 = getelementptr inbounds %struct.altbox*, %struct.altbox** %139, i64 %idxprom197
  %140 = load %struct.altbox*, %struct.altbox** %arrayidx201, align 8
  %pinList = getelementptr inbounds %struct.altbox, %struct.altbox* %140, i32 0, i32 0
  store i32* null, i32** %pinList, align 8
  %141 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %142 to i64
  %143 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx204 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %143, i64 %idxprom203
  %alternate205 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx204, i32 0, i32 0
  %144 = load %struct.altbox**, %struct.altbox*** %alternate205, align 8
  %arrayidx206 = getelementptr inbounds %struct.altbox*, %struct.altbox** %144, i64 %idxprom202
  %145 = load %struct.altbox*, %struct.altbox** %arrayidx206, align 8
  %chanList = getelementptr inbounds %struct.altbox, %struct.altbox* %145, i32 0, i32 2
  store %struct.chanbox* null, %struct.chanbox** %chanList, align 8
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.190
  %146 = load i32, i32* %j, align 4
  %inc208 = add nsw i32 %146, 1
  store i32 %inc208, i32* %j, align 4
  br label %for.cond.187

for.end.209:                                      ; preds = %for.cond.187
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.end.209
  %147 = load i32, i32* %i, align 4
  %inc211 = add nsw i32 %147, 1
  store i32 %inc211, i32* %i, align 4
  br label %for.cond.175

for.end.212:                                      ; preds = %for.cond.175
  %148 = load i32, i32* @MAXPATHS, align 4
  %mul213 = mul nsw i32 2, %148
  %add214 = add nsw i32 1, %mul213
  %conv215 = sext i32 %add214 to i64
  %mul216 = mul i64 %conv215, 8
  %call217 = call noalias i8* @malloc(i64 %mul216) #7
  %149 = bitcast i8* %call217 to i16**
  store i16** %149, i16*** @savePaths, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.231, %for.end.212
  %150 = load i32, i32* %i, align 4
  %151 = load i32, i32* @MAXPATHS, align 4
  %mul219 = mul nsw i32 2, %151
  %cmp220 = icmp sle i32 %150, %mul219
  br i1 %cmp220, label %for.body.222, label %for.end.233

for.body.222:                                     ; preds = %for.cond.218
  %152 = load i32, i32* @numnodes, align 4
  %153 = load i32, i32* @maxpnode, align 4
  %add223 = add nsw i32 %152, %153
  %mul224 = mul nsw i32 3, %add223
  %add225 = add nsw i32 1, %mul224
  %conv226 = sext i32 %add225 to i64
  %mul227 = mul i64 %conv226, 2
  %call228 = call noalias i8* @malloc(i64 %mul227) #7
  %154 = bitcast i8* %call228 to i16*
  %155 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %155 to i64
  %156 = load i16**, i16*** @savePaths, align 8
  %arrayidx230 = getelementptr inbounds i16*, i16** %156, i64 %idxprom229
  store i16* %154, i16** %arrayidx230, align 8
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.222
  %157 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %157, 1
  store i32 %inc232, i32* %i, align 4
  br label %for.cond.218

for.end.233:                                      ; preds = %for.cond.218
  %158 = load i32, i32* @numpins, align 4
  %add234 = add nsw i32 1, %158
  %conv235 = sext i32 %add234 to i64
  %mul236 = mul i64 %conv235, 8
  %call237 = call noalias i8* @malloc(i64 %mul236) #7
  %159 = bitcast i8* %call237 to i8**
  store i8** %159, i8*** @pnameArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.244, %for.end.233
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* @numpins, align 4
  %cmp239 = icmp sle i32 %160, %161
  br i1 %cmp239, label %for.body.241, label %for.end.246

for.body.241:                                     ; preds = %for.cond.238
  %162 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %162 to i64
  %163 = load i8**, i8*** @pnameArray, align 8
  %arrayidx243 = getelementptr inbounds i8*, i8** %163, i64 %idxprom242
  store i8* null, i8** %arrayidx243, align 8
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.241
  %164 = load i32, i32* %i, align 4
  %inc245 = add nsw i32 %164, 1
  store i32 %inc245, i32* %i, align 4
  br label %for.cond.238

for.end.246:                                      ; preds = %for.cond.238
  %165 = load i32, i32* %net, align 4
  %add247 = add nsw i32 1, %165
  %conv248 = sext i32 %add247 to i64
  %mul249 = mul i64 %conv248, 8
  %call250 = call noalias i8* @malloc(i64 %mul249) #7
  %166 = bitcast i8* %call250 to i8**
  store i8** %166, i8*** @nnameArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.257, %for.end.246
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %net, align 4
  %cmp252 = icmp sle i32 %167, %168
  br i1 %cmp252, label %for.body.254, label %for.end.259

for.body.254:                                     ; preds = %for.cond.251
  %169 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %169 to i64
  %170 = load i8**, i8*** @nnameArray, align 8
  %arrayidx256 = getelementptr inbounds i8*, i8** %170, i64 %idxprom255
  store i8* null, i8** %arrayidx256, align 8
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.body.254
  %171 = load i32, i32* %i, align 4
  %inc258 = add nsw i32 %171, 1
  store i32 %inc258, i32* %i, align 4
  br label %for.cond.251

for.end.259:                                      ; preds = %for.cond.251
  %172 = load i32, i32* %net, align 4
  %add260 = add nsw i32 1, %172
  %conv261 = sext i32 %add260 to i64
  %mul262 = mul i64 %conv261, 4
  %call263 = call noalias i8* @malloc(i64 %mul262) #7
  %173 = bitcast i8* %call263 to i32*
  store i32* %173, i32** @pinOffset, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.270, %for.end.259
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %net, align 4
  %cmp265 = icmp sle i32 %174, %175
  br i1 %cmp265, label %for.body.267, label %for.end.272

for.body.267:                                     ; preds = %for.cond.264
  %176 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %176 to i64
  %177 = load i32*, i32** @pinOffset, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %177, i64 %idxprom268
  store i32 0, i32* %arrayidx269, align 4
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.267
  %178 = load i32, i32* %i, align 4
  %inc271 = add nsw i32 %178, 1
  store i32 %inc271, i32* %i, align 4
  br label %for.cond.264

for.end.272:                                      ; preds = %for.cond.264
  %179 = load i32, i32* @numnodes, align 4
  %180 = load i32, i32* @maxpnode, align 4
  %add273 = add nsw i32 %179, %180
  %mul274 = mul nsw i32 3, %add273
  %add275 = add nsw i32 1, %mul274
  %conv276 = sext i32 %add275 to i64
  %mul277 = mul i64 %conv276, 2
  %call278 = call noalias i8* @malloc(i64 %mul277) #7
  %181 = bitcast i8* %call278 to i16*
  store i16* %181, i16** @segList, align 8
  %182 = load i32, i32* @maxpnode, align 4
  %add279 = add nsw i32 1, %182
  %conv280 = sext i32 %add279 to i64
  %mul281 = mul i64 %conv280, 2
  %call282 = call noalias i8* @malloc(i64 %mul281) #7
  %183 = bitcast i8* %call282 to i16*
  store i16* %183, i16** @sourceList, align 8
  %184 = load i32, i32* @maxpnode, align 4
  %add283 = add nsw i32 1, %184
  %185 = load i32, i32* @numnodes, align 4
  %add284 = add nsw i32 %add283, %185
  %conv285 = sext i32 %add284 to i64
  %mul286 = mul i64 %conv285, 2
  %call287 = call noalias i8* @malloc(i64 %mul286) #7
  %186 = bitcast i8* %call287 to i16*
  store i16* %186, i16** @targetList, align 8
  %187 = load i32, i32* @maxpnode, align 4
  %add288 = add nsw i32 1, %187
  %conv289 = sext i32 %add288 to i64
  %mul290 = mul i64 %conv289, 2
  %call291 = call noalias i8* @malloc(i64 %mul290) #7
  %188 = bitcast i8* %call291 to i16*
  store i16* %188, i16** @delSourceList, align 8
  %189 = load i32, i32* @maxpnode, align 4
  %add292 = add nsw i32 1, %189
  %190 = load i32, i32* @numnodes, align 4
  %add293 = add nsw i32 %add292, %190
  %conv294 = sext i32 %add293 to i64
  %mul295 = mul i64 %conv294, 2
  %call296 = call noalias i8* @malloc(i64 %mul295) #7
  %191 = bitcast i8* %call296 to i16*
  store i16* %191, i16** @addTargetList, align 8
  %192 = load i32, i32* @EXTRASOURCES, align 4
  %193 = load i32, i32* @MAXPATHS, align 4
  %mul297 = mul nsw i32 %192, %193
  %add298 = add nsw i32 1, %mul297
  %conv299 = sext i32 %add298 to i64
  %mul300 = mul i64 %conv299, 8
  %call301 = call noalias i8* @malloc(i64 %mul300) #7
  %194 = bitcast i8* %call301 to i32**
  store i32** %194, i32*** @pathList, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.327, %for.end.272
  %195 = load i32, i32* %i, align 4
  %196 = load i32, i32* @EXTRASOURCES, align 4
  %197 = load i32, i32* @MAXPATHS, align 4
  %mul303 = mul nsw i32 %196, %197
  %cmp304 = icmp sle i32 %195, %mul303
  br i1 %cmp304, label %for.body.306, label %for.end.329

for.body.306:                                     ; preds = %for.cond.302
  %198 = load i32, i32* @numnodes, align 4
  %add307 = add nsw i32 2, %198
  %199 = load i32, i32* @maxpnode, align 4
  %add308 = add nsw i32 %add307, %199
  %conv309 = sext i32 %add308 to i64
  %mul310 = mul i64 %conv309, 4
  %call311 = call noalias i8* @malloc(i64 %mul310) #7
  %200 = bitcast i8* %call311 to i32*
  %201 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %201 to i64
  %202 = load i32**, i32*** @pathList, align 8
  %arrayidx313 = getelementptr inbounds i32*, i32** %202, i64 %idxprom312
  store i32* %200, i32** %arrayidx313, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.324, %for.body.306
  %203 = load i32, i32* %j, align 4
  %204 = load i32, i32* @numnodes, align 4
  %205 = load i32, i32* @maxpnode, align 4
  %add315 = add nsw i32 %204, %205
  %add316 = add nsw i32 %add315, 1
  %cmp317 = icmp sle i32 %203, %add316
  br i1 %cmp317, label %for.body.319, label %for.end.326

for.body.319:                                     ; preds = %for.cond.314
  %206 = load i32, i32* %j, align 4
  %idxprom320 = sext i32 %206 to i64
  %207 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %207 to i64
  %208 = load i32**, i32*** @pathList, align 8
  %arrayidx322 = getelementptr inbounds i32*, i32** %208, i64 %idxprom321
  %209 = load i32*, i32** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %209, i64 %idxprom320
  store i32 0, i32* %arrayidx323, align 4
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.body.319
  %210 = load i32, i32* %j, align 4
  %inc325 = add nsw i32 %210, 1
  store i32 %inc325, i32* %j, align 4
  br label %for.cond.314

for.end.326:                                      ; preds = %for.cond.314
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.end.326
  %211 = load i32, i32* %i, align 4
  %inc328 = add nsw i32 %211, 1
  store i32 %inc328, i32* %i, align 4
  br label %for.cond.302

for.end.329:                                      ; preds = %for.cond.302
  %212 = load i32, i32* @MAXPATHS, align 4
  %mul330 = mul nsw i32 2, %212
  %add331 = add nsw i32 3, %mul330
  %conv332 = sext i32 %add331 to i64
  %mul333 = mul i64 %conv332, 40
  %call334 = call noalias i8* @malloc(i64 %mul333) #7
  %213 = bitcast i8* %call334 to %struct.path*
  store %struct.path* %213, %struct.path** @pathArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.348, %for.end.329
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* @MAXPATHS, align 4
  %mul336 = mul nsw i32 2, %215
  %add337 = add nsw i32 2, %mul336
  %cmp338 = icmp sle i32 %214, %add337
  br i1 %cmp338, label %for.body.340, label %for.end.350

for.body.340:                                     ; preds = %for.cond.335
  %216 = load i32, i32* @numnodes, align 4
  %add341 = add nsw i32 1, %216
  %217 = load i32, i32* @maxpnode, align 4
  %add342 = add nsw i32 %add341, %217
  %conv343 = sext i32 %add342 to i64
  %mul344 = mul i64 %conv343, 2
  %call345 = call noalias i8* @malloc(i64 %mul344) #7
  %218 = bitcast i8* %call345 to i16*
  %219 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %219 to i64
  %220 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx347 = getelementptr inbounds %struct.path, %struct.path* %220, i64 %idxprom346
  %nodeset = getelementptr inbounds %struct.path, %struct.path* %arrayidx347, i32 0, i32 0
  store i16* %218, i16** %nodeset, align 8
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.340
  %221 = load i32, i32* %i, align 4
  %inc349 = add nsw i32 %221, 1
  store i32 %inc349, i32* %i, align 4
  br label %for.cond.335

for.end.350:                                      ; preds = %for.cond.335
  %222 = load i32, i32* @numnodes, align 4
  %add351 = add nsw i32 1, %222
  %223 = load i32, i32* @maxpnode, align 4
  %add352 = add nsw i32 %add351, %223
  %conv353 = sext i32 %add352 to i64
  %mul354 = mul i64 %conv353, 2
  %call355 = call noalias i8* @malloc(i64 %mul354) #7
  %224 = bitcast i8* %call355 to i16*
  store i16* %224, i16** @tempArray, align 8
  store i32 0, i32* %pnode, align 4
  store i32 0, i32* @pnodeAlength, align 4
  store i32 0, i32* %net, align 4
  store i32 0, i32* %pin, align 4
  store %struct.quad* null, %struct.quad** @pinlist, align 8
  store %struct.quad* null, %struct.quad** %qptr, align 8
  br label %while.cond.356

while.cond.356:                                   ; preds = %if.end.563, %for.end.350
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay357 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay357)
  %cmp359 = icmp eq i32 %call358, 1
  br i1 %cmp359, label %while.body.361, label %while.end.564

while.body.361:                                   ; preds = %while.cond.356
  %arraydecay362 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call363 = call i32 @strcmp(i8* %arraydecay362, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp364 = icmp eq i32 %call363, 0
  br i1 %cmp364, label %if.then.366, label %if.else.484

if.then.366:                                      ; preds = %while.body.361
  %226 = load i32, i32* %net, align 4
  %cmp367 = icmp sgt i32 %226, 0
  br i1 %cmp367, label %if.then.369, label %if.end.462

if.then.369:                                      ; preds = %if.then.366
  %227 = load i32, i32* %net, align 4
  %rem = srem i32 %227, 10
  %cmp370 = icmp eq i32 %rem, 0
  br i1 %cmp370, label %if.then.372, label %if.end.375

if.then.372:                                      ; preds = %if.then.369
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %229 = load i32, i32* %net, align 4
  %call373 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i32 %229)
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call374 = call i32 @fflush(%struct._IO_FILE* %230)
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.372, %if.then.369
  %231 = load i32, i32* %pnode, align 4
  %232 = load i32, i32* @pnodeAlength, align 4
  %cmp376 = icmp sgt i32 %231, %232
  br i1 %cmp376, label %if.then.383, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.375
  %233 = load i32, i32* @pnodeAlength, align 4
  %cmp378 = icmp sgt i32 %233, 30
  br i1 %cmp378, label %land.lhs.true, label %if.end.461

land.lhs.true:                                    ; preds = %lor.lhs.false
  %234 = load i32, i32* %pnode, align 4
  %mul380 = mul nsw i32 2, %234
  %235 = load i32, i32* @pnodeAlength, align 4
  %cmp381 = icmp slt i32 %mul380, %235
  br i1 %cmp381, label %if.then.383, label %if.end.461

if.then.383:                                      ; preds = %land.lhs.true, %if.end.375
  %236 = load i32, i32* @pnodeAlength, align 4
  %cmp384 = icmp sgt i32 %236, 0
  br i1 %cmp384, label %if.then.386, label %if.end.419

if.then.386:                                      ; preds = %if.then.383
  store i32 1, i32* %i, align 4
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.407, %if.then.386
  %237 = load i32, i32* %i, align 4
  %238 = load i32, i32* @pnodeAlength, align 4
  %cmp388 = icmp sle i32 %237, %238
  br i1 %cmp388, label %for.body.390, label %for.end.409

for.body.390:                                     ; preds = %for.cond.387
  %239 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %239 to i64
  %240 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx392 = getelementptr inbounds %struct.pnode, %struct.pnode* %240, i64 %idxprom391
  %equiv = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx392, i32 0, i32 2
  %241 = load %struct.list2*, %struct.list2** %equiv, align 8
  store %struct.list2* %241, %struct.list2** %lptr, align 8
  br label %while.cond.393

while.cond.393:                                   ; preds = %while.body.396, %for.body.390
  %242 = load %struct.list2*, %struct.list2** %lptr, align 8
  %cmp394 = icmp ne %struct.list2* %242, null
  br i1 %cmp394, label %while.body.396, label %while.end.397

while.body.396:                                   ; preds = %while.cond.393
  %243 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next = getelementptr inbounds %struct.list2, %struct.list2* %243, i32 0, i32 1
  %244 = load %struct.list2*, %struct.list2** %next, align 8
  store %struct.list2* %244, %struct.list2** %l2ptr, align 8
  %245 = load %struct.list2*, %struct.list2** %lptr, align 8
  %246 = bitcast %struct.list2* %245 to i8*
  call void @free(i8* %246) #7
  %247 = load %struct.list2*, %struct.list2** %l2ptr, align 8
  store %struct.list2* %247, %struct.list2** %lptr, align 8
  br label %while.cond.393

while.end.397:                                    ; preds = %while.cond.393
  %248 = load i32, i32* %i, align 4
  %idxprom398 = sext i32 %248 to i64
  %249 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx399 = getelementptr inbounds %struct.pnode, %struct.pnode* %249, i64 %idxprom398
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx399, i32 0, i32 1
  %250 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  store %struct.nnode* %250, %struct.nnode** %nptr, align 8
  %251 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %cmp400 = icmp ne %struct.nnode* %251, null
  br i1 %cmp400, label %if.then.402, label %if.end.406

if.then.402:                                      ; preds = %while.end.397
  %252 = load i32, i32* %i, align 4
  %idxprom403 = sext i32 %252 to i64
  %253 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx404 = getelementptr inbounds %struct.pnode, %struct.pnode* %253, i64 %idxprom403
  %nodeList405 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx404, i32 0, i32 1
  %254 = load %struct.nnode*, %struct.nnode** %nodeList405, align 8
  %255 = bitcast %struct.nnode* %254 to i8*
  call void @free(i8* %255) #7
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.402, %while.end.397
  br label %for.inc.407

for.inc.407:                                      ; preds = %if.end.406
  %256 = load i32, i32* %i, align 4
  %inc408 = add nsw i32 %256, 1
  store i32 %inc408, i32* %i, align 4
  br label %for.cond.387

for.end.409:                                      ; preds = %for.cond.387
  store i32 0, i32* %i, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.416, %for.end.409
  %257 = load i32, i32* %i, align 4
  %258 = load i32, i32* @pnodeAlength, align 4
  %cmp411 = icmp slt i32 %257, %258
  br i1 %cmp411, label %for.body.413, label %for.end.418

for.body.413:                                     ; preds = %for.cond.410
  %259 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %259 to i64
  %260 = load i16**, i16*** @netSegArray, align 8
  %arrayidx415 = getelementptr inbounds i16*, i16** %260, i64 %idxprom414
  %261 = load i16*, i16** %arrayidx415, align 8
  %262 = bitcast i16* %261 to i8*
  call void @free(i8* %262) #7
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.body.413
  %263 = load i32, i32* %i, align 4
  %inc417 = add nsw i32 %263, 1
  store i32 %inc417, i32* %i, align 4
  br label %for.cond.410

for.end.418:                                      ; preds = %for.cond.410
  %264 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %265 = bitcast %struct.pnode* %264 to i8*
  call void @free(i8* %265) #7
  %266 = load i16**, i16*** @netSegArray, align 8
  %267 = bitcast i16** %266 to i8*
  call void @free(i8* %267) #7
  br label %if.end.419

if.end.419:                                       ; preds = %for.end.418, %if.then.383
  %268 = load i32, i32* %pnode, align 4
  store i32 %268, i32* @pnodeAlength, align 4
  %269 = load i32, i32* %pnode, align 4
  %add420 = add nsw i32 1, %269
  %conv421 = sext i32 %add420 to i64
  %mul422 = mul i64 %conv421, 24
  %call423 = call noalias i8* @malloc(i64 %mul422) #7
  %270 = bitcast i8* %call423 to %struct.pnode*
  store %struct.pnode* %270, %struct.pnode** @pnodeArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.441, %if.end.419
  %271 = load i32, i32* %i, align 4
  %272 = load i32, i32* %pnode, align 4
  %cmp425 = icmp sle i32 %271, %272
  br i1 %cmp425, label %for.body.427, label %for.end.443

for.body.427:                                     ; preds = %for.cond.424
  %273 = load i32, i32* @numnodes, align 4
  %add428 = add nsw i32 1, %273
  %274 = load i32, i32* %pnode, align 4
  %add429 = add nsw i32 %add428, %274
  %conv430 = sext i32 %add429 to i64
  %mul431 = mul i64 %conv430, 12
  %call432 = call noalias i8* @malloc(i64 %mul431) #7
  %275 = bitcast i8* %call432 to %struct.nnode*
  %276 = load i32, i32* %i, align 4
  %idxprom433 = sext i32 %276 to i64
  %277 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx434 = getelementptr inbounds %struct.pnode, %struct.pnode* %277, i64 %idxprom433
  %nodeList435 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx434, i32 0, i32 1
  store %struct.nnode* %275, %struct.nnode** %nodeList435, align 8
  %278 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %278 to i64
  %279 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx437 = getelementptr inbounds %struct.pnode, %struct.pnode* %279, i64 %idxprom436
  %eptr = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx437, i32 0, i32 0
  store i32 0, i32* %eptr, align 4
  %280 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %280 to i64
  %281 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx439 = getelementptr inbounds %struct.pnode, %struct.pnode* %281, i64 %idxprom438
  %equiv440 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx439, i32 0, i32 2
  store %struct.list2* null, %struct.list2** %equiv440, align 8
  br label %for.inc.441

for.inc.441:                                      ; preds = %for.body.427
  %282 = load i32, i32* %i, align 4
  %inc442 = add nsw i32 %282, 1
  store i32 %inc442, i32* %i, align 4
  br label %for.cond.424

for.end.443:                                      ; preds = %for.cond.424
  %283 = load i32, i32* %pnode, align 4
  %conv444 = sext i32 %283 to i64
  %mul445 = mul i64 %conv444, 8
  %call446 = call noalias i8* @malloc(i64 %mul445) #7
  %284 = bitcast i8* %call446 to i16**
  store i16** %284, i16*** @netSegArray, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.447

for.cond.447:                                     ; preds = %for.inc.458, %for.end.443
  %285 = load i32, i32* %i, align 4
  %286 = load i32, i32* %pnode, align 4
  %cmp448 = icmp slt i32 %285, %286
  br i1 %cmp448, label %for.body.450, label %for.end.460

for.body.450:                                     ; preds = %for.cond.447
  %287 = load i32, i32* @numnodes, align 4
  %add451 = add nsw i32 1, %287
  %288 = load i32, i32* %pnode, align 4
  %add452 = add nsw i32 %add451, %288
  %conv453 = sext i32 %add452 to i64
  %mul454 = mul i64 %conv453, 2
  %call455 = call noalias i8* @malloc(i64 %mul454) #7
  %289 = bitcast i8* %call455 to i16*
  %290 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %290 to i64
  %291 = load i16**, i16*** @netSegArray, align 8
  %arrayidx457 = getelementptr inbounds i16*, i16** %291, i64 %idxprom456
  store i16* %289, i16** %arrayidx457, align 8
  br label %for.inc.458

for.inc.458:                                      ; preds = %for.body.450
  %292 = load i32, i32* %i, align 4
  %inc459 = add nsw i32 %292, 1
  store i32 %inc459, i32* %i, align 4
  br label %for.cond.447

for.end.460:                                      ; preds = %for.cond.447
  br label %if.end.461

if.end.461:                                       ; preds = %for.end.460, %land.lhs.true, %lor.lhs.false
  %293 = load i32, i32* %net, align 4
  %294 = load i32, i32* %segments, align 4
  %295 = load i32, i32* %pnode, align 4
  call void @procesnet(i32 %293, i32 %294, i32 %295)
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.then.366
  %296 = load i32, i32* %net, align 4
  %inc463 = add nsw i32 %296, 1
  store i32 %inc463, i32* %net, align 4
  store i32 0, i32* %segments, align 4
  %297 = load i32, i32* %pin, align 4
  %298 = load i32, i32* %net, align 4
  %idxprom464 = sext i32 %298 to i64
  %299 = load i32*, i32** @pinOffset, align 8
  %arrayidx465 = getelementptr inbounds i32, i32* %299, i64 %idxprom464
  store i32 %297, i32* %arrayidx465, align 4
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay466 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call467 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay466)
  %arraydecay468 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call469 = call i64 @strlen(i8* %arraydecay468) #5
  %add470 = add i64 %call469, 1
  %mul471 = mul i64 %add470, 1
  %call472 = call noalias i8* @malloc(i64 %mul471) #7
  %301 = load i32, i32* %net, align 4
  %idxprom473 = sext i32 %301 to i64
  %302 = load i8**, i8*** @nnameArray, align 8
  %arrayidx474 = getelementptr inbounds i8*, i8** %302, i64 %idxprom473
  store i8* %call472, i8** %arrayidx474, align 8
  %303 = load i32, i32* %net, align 4
  %idxprom475 = sext i32 %303 to i64
  %304 = load i8**, i8*** @nnameArray, align 8
  %arrayidx476 = getelementptr inbounds i8*, i8** %304, i64 %idxprom475
  %305 = load i8*, i8** %arrayidx476, align 8
  %arraydecay477 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call478 = call i32 (i8*, i8*, ...) @sprintf(i8* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay477) #7
  store i32 0, i32* %pnode, align 4
  br label %while.cond.479

while.cond.479:                                   ; preds = %while.body.482, %if.end.462
  %306 = load %struct.quad*, %struct.quad** %qptr, align 8
  %cmp480 = icmp ne %struct.quad* %306, null
  br i1 %cmp480, label %while.body.482, label %while.end.483

while.body.482:                                   ; preds = %while.cond.479
  %307 = load %struct.quad*, %struct.quad** %qptr, align 8
  %prev = getelementptr inbounds %struct.quad, %struct.quad* %307, i32 0, i32 5
  %308 = load %struct.quad*, %struct.quad** %prev, align 8
  store %struct.quad* %308, %struct.quad** %q2ptr, align 8
  %309 = load %struct.quad*, %struct.quad** %qptr, align 8
  %310 = bitcast %struct.quad* %309 to i8*
  call void @free(i8* %310) #7
  %311 = load %struct.quad*, %struct.quad** %q2ptr, align 8
  store %struct.quad* %311, %struct.quad** %qptr, align 8
  br label %while.cond.479

while.end.483:                                    ; preds = %while.cond.479
  store %struct.quad* null, %struct.quad** %qptr, align 8
  store %struct.quad* null, %struct.quad** @pinlist, align 8
  br label %if.end.563

if.else.484:                                      ; preds = %while.body.361
  %arraydecay485 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call486 = call i32 @strcmp(i8* %arraydecay485, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp487 = icmp eq i32 %call486, 0
  br i1 %cmp487, label %if.then.489, label %if.else.526

if.then.489:                                      ; preds = %if.else.484
  %312 = load i32, i32* %pin, align 4
  %inc490 = add nsw i32 %312, 1
  store i32 %inc490, i32* %pin, align 4
  %313 = load i32, i32* %pnode, align 4
  %inc491 = add nsw i32 %313, 1
  store i32 %inc491, i32* %pnode, align 4
  %314 = load i32, i32* %segments, align 4
  %inc492 = add nsw i32 %314, 1
  store i32 %inc492, i32* %segments, align 4
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay493 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay493)
  %arraydecay495 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call496 = call i64 @strlen(i8* %arraydecay495) #5
  %add497 = add i64 %call496, 1
  %mul498 = mul i64 %add497, 1
  %call499 = call noalias i8* @malloc(i64 %mul498) #7
  %316 = load i32, i32* %pin, align 4
  %idxprom500 = sext i32 %316 to i64
  %317 = load i8**, i8*** @pnameArray, align 8
  %arrayidx501 = getelementptr inbounds i8*, i8** %317, i64 %idxprom500
  store i8* %call499, i8** %arrayidx501, align 8
  %318 = load i32, i32* %pin, align 4
  %idxprom502 = sext i32 %318 to i64
  %319 = load i8**, i8*** @pnameArray, align 8
  %arrayidx503 = getelementptr inbounds i8*, i8** %319, i64 %idxprom502
  %320 = load i8*, i8** %arrayidx503, align 8
  %arraydecay504 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call505 = call i32 (i8*, i8*, ...) @sprintf(i8* %320, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay504) #7
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay506 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call507 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay506)
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call508 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %322, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32* %node1, i32* %node2)
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay509 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call510 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay509)
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call511 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32* %distance)
  %325 = load %struct.quad*, %struct.quad** %qptr, align 8
  %cmp512 = icmp eq %struct.quad* %325, null
  br i1 %cmp512, label %if.then.514, label %if.else.517

if.then.514:                                      ; preds = %if.then.489
  %call515 = call noalias i8* @malloc(i64 32) #7
  %326 = bitcast i8* %call515 to %struct.quad*
  store %struct.quad* %326, %struct.quad** %qptr, align 8
  store %struct.quad* %326, %struct.quad** @pinlist, align 8
  %327 = load %struct.quad*, %struct.quad** %qptr, align 8
  %prev516 = getelementptr inbounds %struct.quad, %struct.quad* %327, i32 0, i32 5
  store %struct.quad* null, %struct.quad** %prev516, align 8
  br label %if.end.521

if.else.517:                                      ; preds = %if.then.489
  %328 = load %struct.quad*, %struct.quad** %qptr, align 8
  store %struct.quad* %328, %struct.quad** %tmpqptr, align 8
  %call518 = call noalias i8* @malloc(i64 32) #7
  %329 = bitcast i8* %call518 to %struct.quad*
  %330 = load %struct.quad*, %struct.quad** %qptr, align 8
  %next519 = getelementptr inbounds %struct.quad, %struct.quad* %330, i32 0, i32 4
  store %struct.quad* %329, %struct.quad** %next519, align 8
  store %struct.quad* %329, %struct.quad** %qptr, align 8
  %331 = load %struct.quad*, %struct.quad** %tmpqptr, align 8
  %332 = load %struct.quad*, %struct.quad** %qptr, align 8
  %prev520 = getelementptr inbounds %struct.quad, %struct.quad* %332, i32 0, i32 5
  store %struct.quad* %331, %struct.quad** %prev520, align 8
  br label %if.end.521

if.end.521:                                       ; preds = %if.else.517, %if.then.514
  %333 = load %struct.quad*, %struct.quad** %qptr, align 8
  %next522 = getelementptr inbounds %struct.quad, %struct.quad* %333, i32 0, i32 4
  store %struct.quad* null, %struct.quad** %next522, align 8
  %334 = load %struct.quad*, %struct.quad** %qptr, align 8
  %PorE = getelementptr inbounds %struct.quad, %struct.quad* %334, i32 0, i32 0
  store i32 1, i32* %PorE, align 4
  %335 = load i32, i32* %node1, align 4
  %336 = load %struct.quad*, %struct.quad** %qptr, align 8
  %node1523 = getelementptr inbounds %struct.quad, %struct.quad* %336, i32 0, i32 1
  store i32 %335, i32* %node1523, align 4
  %337 = load i32, i32* %node2, align 4
  %338 = load %struct.quad*, %struct.quad** %qptr, align 8
  %node2524 = getelementptr inbounds %struct.quad, %struct.quad* %338, i32 0, i32 2
  store i32 %337, i32* %node2524, align 4
  %339 = load i32, i32* %distance, align 4
  %340 = load %struct.quad*, %struct.quad** %qptr, align 8
  %distance525 = getelementptr inbounds %struct.quad, %struct.quad* %340, i32 0, i32 3
  store i32 %339, i32* %distance525, align 4
  br label %if.end.562

if.else.526:                                      ; preds = %if.else.484
  %arraydecay527 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call528 = call i32 @strcmp(i8* %arraydecay527, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp529 = icmp eq i32 %call528, 0
  br i1 %cmp529, label %if.then.531, label %if.end.561

if.then.531:                                      ; preds = %if.else.526
  %341 = load i32, i32* %pin, align 4
  %inc532 = add nsw i32 %341, 1
  store i32 %inc532, i32* %pin, align 4
  %342 = load i32, i32* %pnode, align 4
  %inc533 = add nsw i32 %342, 1
  store i32 %inc533, i32* %pnode, align 4
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay534 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call535 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay534)
  %arraydecay536 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call537 = call i64 @strlen(i8* %arraydecay536) #5
  %add538 = add i64 %call537, 1
  %mul539 = mul i64 %add538, 1
  %call540 = call noalias i8* @malloc(i64 %mul539) #7
  %344 = load i32, i32* %pin, align 4
  %idxprom541 = sext i32 %344 to i64
  %345 = load i8**, i8*** @pnameArray, align 8
  %arrayidx542 = getelementptr inbounds i8*, i8** %345, i64 %idxprom541
  store i8* %call540, i8** %arrayidx542, align 8
  %346 = load i32, i32* %pin, align 4
  %idxprom543 = sext i32 %346 to i64
  %347 = load i8**, i8*** @pnameArray, align 8
  %arrayidx544 = getelementptr inbounds i8*, i8** %347, i64 %idxprom543
  %348 = load i8*, i8** %arrayidx544, align 8
  %arraydecay545 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call546 = call i32 (i8*, i8*, ...) @sprintf(i8* %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay545) #7
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay547 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call548 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay547)
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call549 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32* %node1, i32* %node2)
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay550 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call551 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %351, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay550)
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call552 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32* %distance)
  %353 = load %struct.quad*, %struct.quad** %qptr, align 8
  store %struct.quad* %353, %struct.quad** %tmpqptr, align 8
  %call553 = call noalias i8* @malloc(i64 32) #7
  %354 = bitcast i8* %call553 to %struct.quad*
  %355 = load %struct.quad*, %struct.quad** %qptr, align 8
  %next554 = getelementptr inbounds %struct.quad, %struct.quad* %355, i32 0, i32 4
  store %struct.quad* %354, %struct.quad** %next554, align 8
  store %struct.quad* %354, %struct.quad** %qptr, align 8
  %356 = load %struct.quad*, %struct.quad** %tmpqptr, align 8
  %357 = load %struct.quad*, %struct.quad** %qptr, align 8
  %prev555 = getelementptr inbounds %struct.quad, %struct.quad* %357, i32 0, i32 5
  store %struct.quad* %356, %struct.quad** %prev555, align 8
  %358 = load %struct.quad*, %struct.quad** %qptr, align 8
  %next556 = getelementptr inbounds %struct.quad, %struct.quad* %358, i32 0, i32 4
  store %struct.quad* null, %struct.quad** %next556, align 8
  %359 = load %struct.quad*, %struct.quad** %qptr, align 8
  %PorE557 = getelementptr inbounds %struct.quad, %struct.quad* %359, i32 0, i32 0
  store i32 -1, i32* %PorE557, align 4
  %360 = load i32, i32* %node1, align 4
  %361 = load %struct.quad*, %struct.quad** %qptr, align 8
  %node1558 = getelementptr inbounds %struct.quad, %struct.quad* %361, i32 0, i32 1
  store i32 %360, i32* %node1558, align 4
  %362 = load i32, i32* %node2, align 4
  %363 = load %struct.quad*, %struct.quad** %qptr, align 8
  %node2559 = getelementptr inbounds %struct.quad, %struct.quad* %363, i32 0, i32 2
  store i32 %362, i32* %node2559, align 4
  %364 = load i32, i32* %distance, align 4
  %365 = load %struct.quad*, %struct.quad** %qptr, align 8
  %distance560 = getelementptr inbounds %struct.quad, %struct.quad* %365, i32 0, i32 3
  store i32 %364, i32* %distance560, align 4
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.531, %if.else.526
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.end.521
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %while.end.483
  br label %while.cond.356

while.end.564:                                    ; preds = %while.cond.356
  %366 = load i32, i32* %pnode, align 4
  %367 = load i32, i32* @pnodeAlength, align 4
  %cmp565 = icmp sgt i32 %366, %367
  br i1 %cmp565, label %if.then.571, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %while.end.564
  %368 = load i32, i32* %pnode, align 4
  %mul568 = mul nsw i32 10, %368
  %369 = load i32, i32* @pnodeAlength, align 4
  %cmp569 = icmp slt i32 %mul568, %369
  br i1 %cmp569, label %if.then.571, label %if.end.653

if.then.571:                                      ; preds = %lor.lhs.false.567, %while.end.564
  %370 = load i32, i32* @pnodeAlength, align 4
  %cmp572 = icmp sgt i32 %370, 0
  br i1 %cmp572, label %if.then.574, label %if.end.610

if.then.574:                                      ; preds = %if.then.571
  store i32 1, i32* %i, align 4
  br label %for.cond.575

for.cond.575:                                     ; preds = %for.inc.598, %if.then.574
  %371 = load i32, i32* %i, align 4
  %372 = load i32, i32* @pnodeAlength, align 4
  %cmp576 = icmp sle i32 %371, %372
  br i1 %cmp576, label %for.body.578, label %for.end.600

for.body.578:                                     ; preds = %for.cond.575
  %373 = load i32, i32* %i, align 4
  %idxprom579 = sext i32 %373 to i64
  %374 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx580 = getelementptr inbounds %struct.pnode, %struct.pnode* %374, i64 %idxprom579
  %equiv581 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx580, i32 0, i32 2
  %375 = load %struct.list2*, %struct.list2** %equiv581, align 8
  store %struct.list2* %375, %struct.list2** %lptr, align 8
  br label %while.cond.582

while.cond.582:                                   ; preds = %while.body.585, %for.body.578
  %376 = load %struct.list2*, %struct.list2** %lptr, align 8
  %cmp583 = icmp ne %struct.list2* %376, null
  br i1 %cmp583, label %while.body.585, label %while.end.587

while.body.585:                                   ; preds = %while.cond.582
  %377 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next586 = getelementptr inbounds %struct.list2, %struct.list2* %377, i32 0, i32 1
  %378 = load %struct.list2*, %struct.list2** %next586, align 8
  store %struct.list2* %378, %struct.list2** %l2ptr, align 8
  %379 = load %struct.list2*, %struct.list2** %lptr, align 8
  %380 = bitcast %struct.list2* %379 to i8*
  call void @free(i8* %380) #7
  %381 = load %struct.list2*, %struct.list2** %l2ptr, align 8
  store %struct.list2* %381, %struct.list2** %lptr, align 8
  br label %while.cond.582

while.end.587:                                    ; preds = %while.cond.582
  %382 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %382 to i64
  %383 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx589 = getelementptr inbounds %struct.pnode, %struct.pnode* %383, i64 %idxprom588
  %nodeList590 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx589, i32 0, i32 1
  %384 = load %struct.nnode*, %struct.nnode** %nodeList590, align 8
  store %struct.nnode* %384, %struct.nnode** %nptr, align 8
  %385 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %cmp591 = icmp ne %struct.nnode* %385, null
  br i1 %cmp591, label %if.then.593, label %if.end.597

if.then.593:                                      ; preds = %while.end.587
  %386 = load i32, i32* %i, align 4
  %idxprom594 = sext i32 %386 to i64
  %387 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx595 = getelementptr inbounds %struct.pnode, %struct.pnode* %387, i64 %idxprom594
  %nodeList596 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx595, i32 0, i32 1
  %388 = load %struct.nnode*, %struct.nnode** %nodeList596, align 8
  %389 = bitcast %struct.nnode* %388 to i8*
  call void @free(i8* %389) #7
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.593, %while.end.587
  br label %for.inc.598

for.inc.598:                                      ; preds = %if.end.597
  %390 = load i32, i32* %i, align 4
  %inc599 = add nsw i32 %390, 1
  store i32 %inc599, i32* %i, align 4
  br label %for.cond.575

for.end.600:                                      ; preds = %for.cond.575
  store i32 0, i32* %i, align 4
  br label %for.cond.601

for.cond.601:                                     ; preds = %for.inc.607, %for.end.600
  %391 = load i32, i32* %i, align 4
  %392 = load i32, i32* @pnodeAlength, align 4
  %cmp602 = icmp slt i32 %391, %392
  br i1 %cmp602, label %for.body.604, label %for.end.609

for.body.604:                                     ; preds = %for.cond.601
  %393 = load i32, i32* %i, align 4
  %idxprom605 = sext i32 %393 to i64
  %394 = load i16**, i16*** @netSegArray, align 8
  %arrayidx606 = getelementptr inbounds i16*, i16** %394, i64 %idxprom605
  %395 = load i16*, i16** %arrayidx606, align 8
  %396 = bitcast i16* %395 to i8*
  call void @free(i8* %396) #7
  br label %for.inc.607

for.inc.607:                                      ; preds = %for.body.604
  %397 = load i32, i32* %i, align 4
  %inc608 = add nsw i32 %397, 1
  store i32 %inc608, i32* %i, align 4
  br label %for.cond.601

for.end.609:                                      ; preds = %for.cond.601
  %398 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %399 = bitcast %struct.pnode* %398 to i8*
  call void @free(i8* %399) #7
  %400 = load i16**, i16*** @netSegArray, align 8
  %401 = bitcast i16** %400 to i8*
  call void @free(i8* %401) #7
  br label %if.end.610

if.end.610:                                       ; preds = %for.end.609, %if.then.571
  %402 = load i32, i32* %pnode, align 4
  store i32 %402, i32* @pnodeAlength, align 4
  %403 = load i32, i32* %pnode, align 4
  %add611 = add nsw i32 1, %403
  %conv612 = sext i32 %add611 to i64
  %mul613 = mul i64 %conv612, 24
  %call614 = call noalias i8* @malloc(i64 %mul613) #7
  %404 = bitcast i8* %call614 to %struct.pnode*
  store %struct.pnode* %404, %struct.pnode** @pnodeArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.615

for.cond.615:                                     ; preds = %for.inc.633, %if.end.610
  %405 = load i32, i32* %i, align 4
  %406 = load i32, i32* %pnode, align 4
  %cmp616 = icmp sle i32 %405, %406
  br i1 %cmp616, label %for.body.618, label %for.end.635

for.body.618:                                     ; preds = %for.cond.615
  %407 = load i32, i32* @numnodes, align 4
  %add619 = add nsw i32 1, %407
  %408 = load i32, i32* %pnode, align 4
  %add620 = add nsw i32 %add619, %408
  %conv621 = sext i32 %add620 to i64
  %mul622 = mul i64 %conv621, 12
  %call623 = call noalias i8* @malloc(i64 %mul622) #7
  %409 = bitcast i8* %call623 to %struct.nnode*
  %410 = load i32, i32* %i, align 4
  %idxprom624 = sext i32 %410 to i64
  %411 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx625 = getelementptr inbounds %struct.pnode, %struct.pnode* %411, i64 %idxprom624
  %nodeList626 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx625, i32 0, i32 1
  store %struct.nnode* %409, %struct.nnode** %nodeList626, align 8
  %412 = load i32, i32* %i, align 4
  %idxprom627 = sext i32 %412 to i64
  %413 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx628 = getelementptr inbounds %struct.pnode, %struct.pnode* %413, i64 %idxprom627
  %eptr629 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx628, i32 0, i32 0
  store i32 0, i32* %eptr629, align 4
  %414 = load i32, i32* %i, align 4
  %idxprom630 = sext i32 %414 to i64
  %415 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx631 = getelementptr inbounds %struct.pnode, %struct.pnode* %415, i64 %idxprom630
  %equiv632 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx631, i32 0, i32 2
  store %struct.list2* null, %struct.list2** %equiv632, align 8
  br label %for.inc.633

for.inc.633:                                      ; preds = %for.body.618
  %416 = load i32, i32* %i, align 4
  %inc634 = add nsw i32 %416, 1
  store i32 %inc634, i32* %i, align 4
  br label %for.cond.615

for.end.635:                                      ; preds = %for.cond.615
  %417 = load i32, i32* %pnode, align 4
  %conv636 = sext i32 %417 to i64
  %mul637 = mul i64 %conv636, 8
  %call638 = call noalias i8* @malloc(i64 %mul637) #7
  %418 = bitcast i8* %call638 to i16**
  store i16** %418, i16*** @netSegArray, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.639

for.cond.639:                                     ; preds = %for.inc.650, %for.end.635
  %419 = load i32, i32* %i, align 4
  %420 = load i32, i32* %pnode, align 4
  %cmp640 = icmp slt i32 %419, %420
  br i1 %cmp640, label %for.body.642, label %for.end.652

for.body.642:                                     ; preds = %for.cond.639
  %421 = load i32, i32* @numnodes, align 4
  %add643 = add nsw i32 1, %421
  %422 = load i32, i32* %pnode, align 4
  %add644 = add nsw i32 %add643, %422
  %conv645 = sext i32 %add644 to i64
  %mul646 = mul i64 %conv645, 2
  %call647 = call noalias i8* @malloc(i64 %mul646) #7
  %423 = bitcast i8* %call647 to i16*
  %424 = load i32, i32* %i, align 4
  %idxprom648 = sext i32 %424 to i64
  %425 = load i16**, i16*** @netSegArray, align 8
  %arrayidx649 = getelementptr inbounds i16*, i16** %425, i64 %idxprom648
  store i16* %423, i16** %arrayidx649, align 8
  br label %for.inc.650

for.inc.650:                                      ; preds = %for.body.642
  %426 = load i32, i32* %i, align 4
  %inc651 = add nsw i32 %426, 1
  store i32 %inc651, i32* %i, align 4
  br label %for.cond.639

for.end.652:                                      ; preds = %for.cond.639
  br label %if.end.653

if.end.653:                                       ; preds = %for.end.652, %lor.lhs.false.567
  %427 = load i32, i32* %net, align 4
  %428 = load i32, i32* %segments, align 4
  %429 = load i32, i32* %pnode, align 4
  call void @procesnet(i32 %427, i32 %428, i32 %429)
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
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @procesnet(i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

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
