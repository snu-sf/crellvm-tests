; ModuleID = './MultiSource.Benchmarks.MiBench/164.office-ispell.tree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@.str = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@personaldict = internal global [4096 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@dictf = internal global %struct._IO_FILE* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = external global i32, align 4
@aflag = external global i32, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal global i32 0, align 4
@hcount = internal global i32 0, align 4
@pershsize = internal global i32 0, align 4
@pershtab = internal global %struct.dent* null, align 8
@goodsizes = internal global [4 x i32] [i32 53, i32 223, i32 907, i32 3631], align 16
@.str.12 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = external global %struct.dent*, align 8
@hashsize = external global i32, align 4
@hashstrings = external global i8*, align 8
@hashheader = external global %struct.hashheader, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [94 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c\00", align 1

; Function Attrs: nounwind uwtable
define void @treeinit(i8* %p, i8* %LibDict) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %LibDict.addr = alloca i8*, align 8
  %abspath = alloca i32, align 4
  %h = alloca i8*, align 8
  %seconddict = alloca [4096 x i8], align 16
  %secondf = alloca %struct._IO_FILE*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %LibDict, i8** %LibDict.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %call, i8** %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  store i8* %call1, i8** %h, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %if.end.112

if.end.4:                                         ; preds = %if.end
  %1 = load i8*, i8** %p.addr, align 8
  %cmp5 = icmp eq i8* %1, null
  br i1 %cmp5, label %if.then.6, label %if.else.54

if.then.6:                                        ; preds = %if.end.4
  %2 = load i8*, i8** %LibDict.addr, align 8
  %call7 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %2)
  store %struct._IO_FILE* %call7, %struct._IO_FILE** @dictf, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %seconddict, i32 0, i32 0
  %3 = load i8*, i8** %h, align 8
  %4 = load i8*, i8** %LibDict.addr, align 8
  %call8 = call %struct._IO_FILE* @trydict(i8* %arraydecay, i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %4)
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %secondf, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp9, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.then.6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %secondf, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %land.lhs.true
  %call12 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** @dictf, align 8
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %seconddict, i32 0, i32 0
  %7 = load i8*, i8** %h, align 8
  %call14 = call %struct._IO_FILE* @trydict(i8* %arraydecay13, i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %secondf, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %land.lhs.true, %if.then.6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %cmp16 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %if.end.15
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %secondf, align 8
  %cmp18 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %land.lhs.true.17
  %10 = load i8*, i8** %LibDict.addr, align 8
  %call20 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %10)
  store %struct._IO_FILE* %call20, %struct._IO_FILE** @dictf, align 8
  %arraydecay21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %seconddict, i32 0, i32 0
  %11 = load i8*, i8** %h, align 8
  %12 = load i8*, i8** %LibDict.addr, align 8
  %call22 = call %struct._IO_FILE* @trydict(i8* %arraydecay21, i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %12)
  store %struct._IO_FILE* %call22, %struct._IO_FILE** %secondf, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %land.lhs.true.17, %if.end.15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %cmp24 = icmp eq %struct._IO_FILE* %13, null
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %if.end.23
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %secondf, align 8
  %cmp26 = icmp eq %struct._IO_FILE* %14, null
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %land.lhs.true.25
  %call28 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call28, %struct._IO_FILE** @dictf, align 8
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %seconddict, i32 0, i32 0
  %15 = load i8*, i8** %h, align 8
  %call30 = call %struct._IO_FILE* @trydict(i8* %arraydecay29, i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call30, %struct._IO_FILE** %secondf, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %land.lhs.true.25, %if.end.23
  %16 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i64 0), align 1
  %conv = sext i8 %16 to i32
  %cmp32 = icmp eq i32 %conv, 0
  br i1 %cmp32, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %if.end.31
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %seconddict, i32 0, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv35 = sext i8 %17 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then.34
  %arraydecay39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %seconddict, i32 0, i32 0
  %call40 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* %arraydecay39) #6
  br label %if.end.42

if.else:                                          ; preds = %if.then.34
  %18 = load i8*, i8** %h, align 8
  %19 = load i8*, i8** %LibDict.addr, align 8
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %19) #6
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.31
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %cmp44 = icmp ne %struct._IO_FILE* %20, null
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.43
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %call47 = call i32 @fclose(%struct._IO_FILE* %22)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %secondf, align 8
  %cmp49 = icmp ne %struct._IO_FILE* %23, null
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %secondf, align 8
  call void @treeload(%struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %secondf, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* %25)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  br label %if.end.97

if.else.54:                                       ; preds = %if.end.4
  %26 = load i8*, i8** %p.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv55 = sext i8 %27 to i32
  %cmp56 = icmp eq i32 %conv55, 47
  br i1 %cmp56, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.54
  %28 = load i8*, i8** %p.addr, align 8
  %call58 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #7
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %29 = load i8*, i8** %p.addr, align 8
  %call61 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 3) #7
  %cmp62 = icmp eq i32 %call61, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.else.54
  %30 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else.54 ], [ %cmp62, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  store i32 %lor.ext, i32* %abspath, align 4
  %31 = load i32, i32* %abspath, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.64, label %if.else.72

if.then.64:                                       ; preds = %lor.end
  %32 = load i8*, i8** %p.addr, align 8
  %call65 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* %32) #6
  %call66 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call66, %struct._IO_FILE** @dictf, align 8
  %cmp67 = icmp ne %struct._IO_FILE* %call66, null
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.64
  br label %if.end.96

if.else.72:                                       ; preds = %lor.end
  %35 = load i8*, i8** %p.addr, align 8
  %call73 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* %35) #6
  %call74 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call74, %struct._IO_FILE** @dictf, align 8
  %cmp75 = icmp ne %struct._IO_FILE* %call74, null
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else.72
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %call78 = call i32 @fclose(%struct._IO_FILE* %37)
  br label %if.end.90

if.else.79:                                       ; preds = %if.else.72
  %38 = load i32, i32* %abspath, align 4
  %tobool80 = icmp ne i32 %38, 0
  br i1 %tobool80, label %if.end.89, label %if.then.81

if.then.81:                                       ; preds = %if.else.79
  %39 = load i8*, i8** %h, align 8
  %40 = load i8*, i8** %p.addr, align 8
  %call82 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %39, i8* %40) #6
  %call83 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call83, %struct._IO_FILE** @dictf, align 8
  %cmp84 = icmp ne %struct._IO_FILE* %call83, null
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.81
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %call87 = call i32 @fclose(%struct._IO_FILE* %42)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.then.81
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.else.79
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.77
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %cmp91 = icmp eq %struct._IO_FILE* %43, null
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.90
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i8*, i8** %p.addr, align 8
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* %45)
  call void @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.112

if.end.95:                                        ; preds = %if.end.90
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.71
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.53
  %46 = load i32, i32* @lflag, align 4
  %tobool98 = icmp ne i32 %46, 0
  br i1 %tobool98, label %if.end.112, label %land.lhs.true.99

land.lhs.true.99:                                 ; preds = %if.end.97
  %47 = load i32, i32* @aflag, align 4
  %tobool100 = icmp ne i32 %47, 0
  br i1 %tobool100, label %if.end.112, label %land.lhs.true.101

land.lhs.true.101:                                ; preds = %land.lhs.true.99
  %call102 = call i32 @access(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i32 2) #6
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.112

land.lhs.true.105:                                ; preds = %land.lhs.true.101
  %call106 = call i32* @__errno_location() #8
  %48 = load i32, i32* %call106, align 4
  %cmp107 = icmp ne i32 %48, 2
  br i1 %cmp107, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %land.lhs.true.105
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0))
  %call111 = call i32 @sleep(i32 2)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.3, %if.then.93, %if.then.109, %land.lhs.true.105, %land.lhs.true.101, %land.lhs.true.99, %if.end.97
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @trydict(i8* %filename, i8* %home, i8* %prefix, i8* %suffix) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %home.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %dictf = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %home, i8** %home.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %home.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  %3 = load i8*, i8** %suffix.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %2, i8* %3) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i8*, i8** %home.addr, align 8
  %6 = load i8*, i8** %prefix.addr, align 8
  %7 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %5, i8* %6, i8* %7) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %dictf, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %dictf, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %dictf, align 8
  ret %struct._IO_FILE* %11
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @treeload(%struct._IO_FILE* %loadfile) #0 {
entry:
  %loadfile.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [8192 x i8], align 16
  store %struct._IO_FILE* %loadfile, %struct._IO_FILE** %loadfile.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %loadfile.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  call void @treeinsert(i8* %arraydecay1, i32 8192, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* @newwords, align 4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @perror(i8*) #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @sleep(i32) #2

; Function Attrs: nounwind uwtable
define void @treeinsert(i8* %word, i32 %wordlen, i32 %keep) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %wordlen.addr = alloca i32, align 4
  %keep.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %wordent = alloca %struct.dent, align 8
  %dp = alloca %struct.dent*, align 8
  %olddp = alloca %struct.dent*, align 8
  %newdp = alloca %struct.dent*, align 8
  %oldhtab = alloca %struct.dent*, align 8
  %oldhsize = alloca i32, align 4
  %nword = alloca [120 x i8], align 16
  %isvariant = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i32 %wordlen, i32* %wordlen.addr, align 4
  store i32 %keep, i32* %keep.addr, align 4
  %0 = load i32, i32* @cantexpand, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.68, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @hcount, align 4
  %mul = mul nsw i32 %1, 100
  %div = sdiv i32 %mul, 70
  %2 = load i32, i32* @pershsize, align 4
  %cmp = icmp sge i32 %div, %2
  br i1 %cmp, label %if.then, label %if.end.68

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @pershsize, align 4
  store i32 %3, i32* %oldhsize, align 4
  %4 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %4, %struct.dent** %oldhtab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %cmp1 = icmp ult i64 %conv, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @goodsizes, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* @pershsize, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  %10 = load i32, i32* %i, align 4
  %conv6 = sext i32 %10 to i64
  %cmp7 = icmp uge i64 %conv6, 4
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.end
  %11 = load i32, i32* @pershsize, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* @pershsize, align 4
  %add10 = add nsw i32 %12, %add
  store i32 %add10, i32* @pershsize, align 4
  br label %if.end.13

if.else:                                          ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* @goodsizes, i32 0, i64 %idxprom11
  %14 = load i32, i32* %arrayidx12, align 4
  store i32 %14, i32* @pershsize, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %15 = load i32, i32* @pershsize, align 4
  %conv14 = zext i32 %15 to i64
  %call = call noalias i8* @calloc(i64 %conv14, i64 24) #6
  %16 = bitcast i8* %call to %struct.dent*
  store %struct.dent* %16, %struct.dent** @pershtab, align 8
  %17 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %cmp15 = icmp eq %struct.dent* %17, null
  br i1 %cmp15, label %if.then.17, label %if.else.24

if.then.17:                                       ; preds = %if.end.13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  %19 = load %struct.dent*, %struct.dent** %oldhtab, align 8
  %cmp19 = icmp eq %struct.dent* %19, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.17
  call void @exit(i32 1) #9
  unreachable

if.end.22:                                        ; preds = %if.then.17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* @cantexpand, align 4
  %21 = load i32, i32* %oldhsize, align 4
  store i32 %21, i32* @pershsize, align 4
  %22 = load %struct.dent*, %struct.dent** %oldhtab, align 8
  store %struct.dent* %22, %struct.dent** @pershtab, align 8
  store i32 1, i32* @newwords, align 4
  br label %if.end.67

if.else.24:                                       ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.60, %if.else.24
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %oldhsize, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body.28, label %for.end.62

for.body.28:                                      ; preds = %for.cond.25
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load %struct.dent*, %struct.dent** %oldhtab, align 8
  %arrayidx30 = getelementptr inbounds %struct.dent, %struct.dent* %26, i64 %idxprom29
  store %struct.dent* %arrayidx30, %struct.dent** %dp, align 8
  %27 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %28 = load i64, i64* %arrayidx31, align 8
  %and = and i64 %28, 67108864
  %tobool32 = icmp ne i64 %and, 0
  br i1 %tobool32, label %if.then.33, label %if.end.59

if.then.33:                                       ; preds = %for.body.28
  %29 = load %struct.dent*, %struct.dent** %dp, align 8
  %call34 = call %struct.dent* @tinsert(%struct.dent* %29)
  store %struct.dent* %call34, %struct.dent** %newdp, align 8
  %30 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask35 = getelementptr inbounds %struct.dent, %struct.dent* %30, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [1 x i64], [1 x i64]* %mask35, i32 0, i64 0
  %31 = load i64, i64* %arrayidx36, align 8
  %and37 = and i64 %31, 1073741824
  %conv38 = trunc i64 %and37 to i32
  store i32 %conv38, i32* %isvariant, align 4
  %32 = load %struct.dent*, %struct.dent** %dp, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %32, i32 0, i32 0
  %33 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %33, %struct.dent** %dp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.58, %if.then.33
  %34 = load %struct.dent*, %struct.dent** %dp, align 8
  %cmp39 = icmp ne %struct.dent* %34, null
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i32, i32* %isvariant, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.then.42, label %if.else.51

if.then.42:                                       ; preds = %while.body
  %36 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask43 = getelementptr inbounds %struct.dent, %struct.dent* %36, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x i64], [1 x i64]* %mask43, i32 0, i64 0
  %37 = load i64, i64* %arrayidx44, align 8
  %and45 = and i64 %37, 1073741824
  %conv46 = trunc i64 %and45 to i32
  store i32 %conv46, i32* %isvariant, align 4
  %38 = load %struct.dent*, %struct.dent** %newdp, align 8
  %next47 = getelementptr inbounds %struct.dent, %struct.dent* %38, i32 0, i32 0
  %39 = load %struct.dent*, %struct.dent** %next47, align 8
  store %struct.dent* %39, %struct.dent** %olddp, align 8
  %40 = load %struct.dent*, %struct.dent** %dp, align 8
  %41 = load %struct.dent*, %struct.dent** %newdp, align 8
  %next48 = getelementptr inbounds %struct.dent, %struct.dent* %41, i32 0, i32 0
  store %struct.dent* %40, %struct.dent** %next48, align 8
  %42 = load %struct.dent*, %struct.dent** %dp, align 8
  store %struct.dent* %42, %struct.dent** %newdp, align 8
  %43 = load %struct.dent*, %struct.dent** %dp, align 8
  %next49 = getelementptr inbounds %struct.dent, %struct.dent* %43, i32 0, i32 0
  %44 = load %struct.dent*, %struct.dent** %next49, align 8
  store %struct.dent* %44, %struct.dent** %dp, align 8
  %45 = load %struct.dent*, %struct.dent** %olddp, align 8
  %46 = load %struct.dent*, %struct.dent** %newdp, align 8
  %next50 = getelementptr inbounds %struct.dent, %struct.dent* %46, i32 0, i32 0
  store %struct.dent* %45, %struct.dent** %next50, align 8
  br label %if.end.58

if.else.51:                                       ; preds = %while.body
  %47 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask52 = getelementptr inbounds %struct.dent, %struct.dent* %47, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [1 x i64], [1 x i64]* %mask52, i32 0, i64 0
  %48 = load i64, i64* %arrayidx53, align 8
  %and54 = and i64 %48, 1073741824
  %conv55 = trunc i64 %and54 to i32
  store i32 %conv55, i32* %isvariant, align 4
  %49 = load %struct.dent*, %struct.dent** %dp, align 8
  %call56 = call %struct.dent* @tinsert(%struct.dent* %49)
  store %struct.dent* %call56, %struct.dent** %newdp, align 8
  %50 = load %struct.dent*, %struct.dent** %dp, align 8
  store %struct.dent* %50, %struct.dent** %olddp, align 8
  %51 = load %struct.dent*, %struct.dent** %dp, align 8
  %next57 = getelementptr inbounds %struct.dent, %struct.dent* %51, i32 0, i32 0
  %52 = load %struct.dent*, %struct.dent** %next57, align 8
  store %struct.dent* %52, %struct.dent** %dp, align 8
  %53 = load %struct.dent*, %struct.dent** %olddp, align 8
  %54 = bitcast %struct.dent* %53 to i8*
  call void @free(i8* %54) #6
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.51, %if.then.42
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.59

if.end.59:                                        ; preds = %while.end, %for.body.28
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %55 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %55, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.25

for.end.62:                                       ; preds = %for.cond.25
  %56 = load %struct.dent*, %struct.dent** %oldhtab, align 8
  %cmp63 = icmp ne %struct.dent* %56, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.end.62
  %57 = load %struct.dent*, %struct.dent** %oldhtab, align 8
  %58 = bitcast %struct.dent* %57 to i8*
  call void @free(i8* %58) #6
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %for.end.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.22
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true, %entry
  %59 = load i8*, i8** %word.addr, align 8
  %60 = load i32, i32* %wordlen.addr, align 4
  %call69 = call i32 @makedent(i8* %59, i32 %60, %struct.dent* %wordent)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  br label %return

if.end.73:                                        ; preds = %if.end.68
  %61 = load i32, i32* %keep.addr, align 4
  %tobool74 = icmp ne i32 %61, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.73
  %mask76 = getelementptr inbounds %struct.dent, %struct.dent* %wordent, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [1 x i64], [1 x i64]* %mask76, i32 0, i64 0
  %62 = load i64, i64* %arrayidx77, align 8
  %or = or i64 %62, 134217728
  store i64 %or, i64* %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.73
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  %63 = load i8*, i8** %word.addr, align 8
  %call79 = call i32 @strtoichar(i8* %arraydecay, i8* %63, i32 120, i32 1)
  %arraydecay80 = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  call void @upcase(i8* %arraydecay80)
  %arraydecay81 = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  %call82 = call %struct.dent* @lookup(i8* %arraydecay81, i32 1)
  store %struct.dent* %call82, %struct.dent** %dp, align 8
  %cmp83 = icmp ne %struct.dent* %call82, null
  br i1 %cmp83, label %if.then.85, label %if.else.92

if.then.85:                                       ; preds = %if.end.78
  %64 = load %struct.dent*, %struct.dent** %dp, align 8
  %call86 = call i32 @combinecaps(%struct.dent* %64, %struct.dent* %wordent)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.then.85
  %word90 = getelementptr inbounds %struct.dent, %struct.dent* %wordent, i32 0, i32 1
  %65 = load i8*, i8** %word90, align 8
  call void @free(i8* %65) #6
  br label %return

if.end.91:                                        ; preds = %if.then.85
  br label %if.end.102

if.else.92:                                       ; preds = %if.end.78
  %call93 = call %struct.dent* @tinsert(%struct.dent* %wordent)
  store %struct.dent* %call93, %struct.dent** %dp, align 8
  %66 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask94 = getelementptr inbounds %struct.dent, %struct.dent* %66, i32 0, i32 2
  %arrayidx95 = getelementptr inbounds [1 x i64], [1 x i64]* %mask94, i32 0, i64 0
  %67 = load i64, i64* %arrayidx95, align 8
  %and96 = and i64 %67, 805306368
  %cmp97 = icmp eq i64 %and96, 805306368
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.else.92
  %68 = load %struct.dent*, %struct.dent** %dp, align 8
  %call100 = call i32 @addvheader(%struct.dent* %68)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.else.92
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.91
  %69 = load i32, i32* %keep.addr, align 4
  %70 = load i32, i32* @newwords, align 4
  %or103 = or i32 %70, %69
  store i32 %or103, i32* @newwords, align 4
  br label %return

return:                                           ; preds = %if.end.102, %if.then.89, %if.then.72
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal %struct.dent* @tinsert(%struct.dent* %proto) #0 {
entry:
  %proto.addr = alloca %struct.dent*, align 8
  %iword = alloca [120 x i8], align 16
  %hcode = alloca i32, align 4
  %hp = alloca %struct.dent*, align 8
  %php = alloca %struct.dent*, align 8
  store %struct.dent* %proto, %struct.dent** %proto.addr, align 8
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %iword, i32 0, i32 0
  %0 = load %struct.dent*, %struct.dent** %proto.addr, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %0, i32 0, i32 1
  %1 = load i8*, i8** %word, align 8
  %call = call i32 @strtoichar(i8* %arraydecay, i8* %1, i32 120, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.dent*, %struct.dent** %proto.addr, align 8
  %word1 = getelementptr inbounds %struct.dent, %struct.dent* %3, i32 0, i32 1
  %4 = load i8*, i8** %word1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0), i8* %4, i32 449, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay3 = getelementptr inbounds [120 x i8], [120 x i8]* %iword, i32 0, i32 0
  %5 = load i32, i32* @pershsize, align 4
  %call4 = call i32 @hash(i8* %arraydecay3, i32 %5)
  store i32 %call4, i32* %hcode, align 4
  store %struct.dent* null, %struct.dent** %php, align 8
  %6 = load i32, i32* %hcode, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %arrayidx = getelementptr inbounds %struct.dent, %struct.dent* %7, i64 %idxprom
  store %struct.dent* %arrayidx, %struct.dent** %hp, align 8
  %8 = load %struct.dent*, %struct.dent** %hp, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %9 = load i64, i64* %arrayidx5, align 8
  %and = and i64 %9, 67108864
  %tobool6 = icmp ne i64 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %10 = load %struct.dent*, %struct.dent** %hp, align 8
  %cmp = icmp ne %struct.dent* %10, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.dent*, %struct.dent** %hp, align 8
  store %struct.dent* %11, %struct.dent** %php, align 8
  %12 = load %struct.dent*, %struct.dent** %hp, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 0
  %13 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %13, %struct.dent** %hp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call8 = call noalias i8* @calloc(i64 1, i64 24) #6
  %14 = bitcast i8* %call8 to %struct.dent*
  store %struct.dent* %14, %struct.dent** %hp, align 8
  %15 = load %struct.dent*, %struct.dent** %hp, align 8
  %cmp9 = icmp eq %struct.dent* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %while.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end.12:                                        ; preds = %while.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %17 = load %struct.dent*, %struct.dent** %hp, align 8
  %18 = load %struct.dent*, %struct.dent** %proto.addr, align 8
  %19 = bitcast %struct.dent* %17 to i8*
  %20 = bitcast %struct.dent* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 24, i32 8, i1 false)
  %21 = load %struct.dent*, %struct.dent** %php, align 8
  %cmp14 = icmp ne %struct.dent* %21, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct.dent*, %struct.dent** %hp, align 8
  %23 = load %struct.dent*, %struct.dent** %php, align 8
  %next16 = getelementptr inbounds %struct.dent, %struct.dent* %23, i32 0, i32 0
  store %struct.dent* %22, %struct.dent** %next16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %24 = load %struct.dent*, %struct.dent** %hp, align 8
  %next18 = getelementptr inbounds %struct.dent, %struct.dent* %24, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %next18, align 8
  %25 = load %struct.dent*, %struct.dent** %hp, align 8
  ret %struct.dent* %25
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @makedent(i8*, i32, %struct.dent*) #2

declare i32 @strtoichar(i8*, i8*, i32, i32) #2

declare void @upcase(i8*) #2

declare %struct.dent* @lookup(i8*, i32) #2

declare i32 @combinecaps(%struct.dent*, %struct.dent*) #2

declare i32 @addvheader(%struct.dent*) #2

; Function Attrs: nounwind uwtable
define %struct.dent* @treelookup(i8* %word) #0 {
entry:
  %retval = alloca %struct.dent*, align 8
  %word.addr = alloca i8*, align 8
  %hcode = alloca i32, align 4
  %hp = alloca %struct.dent*, align 8
  %chword = alloca [120 x i8], align 16
  store i8* %word, i8** %word.addr, align 8
  %0 = load i32, i32* @pershsize, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.dent* null, %struct.dent** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %chword, i32 0, i32 0
  %1 = load i8*, i8** %word.addr, align 8
  %call = call i32 @ichartostr(i8* %arraydecay, i8* %1, i32 120, i32 1)
  %2 = load i8*, i8** %word.addr, align 8
  %3 = load i32, i32* @pershsize, align 4
  %call1 = call i32 @hash(i8* %2, i32 %3)
  store i32 %call1, i32* %hcode, align 4
  %4 = load i32, i32* %hcode, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %arrayidx = getelementptr inbounds %struct.dent, %struct.dent* %5, i64 %idxprom
  store %struct.dent* %arrayidx, %struct.dent** %hp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %6 = load %struct.dent*, %struct.dent** %hp, align 8
  %cmp2 = icmp ne %struct.dent* %6, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.dent*, %struct.dent** %hp, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %7, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %8 = load i64, i64* %arrayidx3, align 8
  %and = and i64 %8, 67108864
  %tobool = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %while.body, label %while.end.17

while.body:                                       ; preds = %land.end
  %arraydecay4 = getelementptr inbounds [120 x i8], [120 x i8]* %chword, i32 0, i32 0
  %10 = load %struct.dent*, %struct.dent** %hp, align 8
  %word5 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 1
  %11 = load i8*, i8** %word5, align 8
  %call6 = call i32 @strcmp(i8* %arraydecay4, i8* %11) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.end.17

if.end.9:                                         ; preds = %while.body
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.15, %if.end.9
  %12 = load %struct.dent*, %struct.dent** %hp, align 8
  %mask11 = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [1 x i64], [1 x i64]* %mask11, i32 0, i64 0
  %13 = load i64, i64* %arrayidx12, align 8
  %and13 = and i64 %13, 1073741824
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.10
  %14 = load %struct.dent*, %struct.dent** %hp, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %14, i32 0, i32 0
  %15 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %15, %struct.dent** %hp, align 8
  br label %while.cond.10

while.end:                                        ; preds = %while.cond.10
  %16 = load %struct.dent*, %struct.dent** %hp, align 8
  %next16 = getelementptr inbounds %struct.dent, %struct.dent* %16, i32 0, i32 0
  %17 = load %struct.dent*, %struct.dent** %next16, align 8
  store %struct.dent* %17, %struct.dent** %hp, align 8
  br label %while.cond

while.end.17:                                     ; preds = %if.then.8, %land.end
  %18 = load %struct.dent*, %struct.dent** %hp, align 8
  %cmp18 = icmp ne %struct.dent* %18, null
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end.17
  %19 = load %struct.dent*, %struct.dent** %hp, align 8
  %mask19 = getelementptr inbounds %struct.dent, %struct.dent* %19, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %mask19, i32 0, i64 0
  %20 = load i64, i64* %arrayidx20, align 8
  %and21 = and i64 %20, 67108864
  %tobool22 = icmp ne i64 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true
  %21 = load %struct.dent*, %struct.dent** %hp, align 8
  store %struct.dent* %21, %struct.dent** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %while.end.17
  store %struct.dent* null, %struct.dent** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.23, %if.then
  %22 = load %struct.dent*, %struct.dent** %retval
  ret %struct.dent* %22
}

declare i32 @ichartostr(i8*, i8*, i32, i32) #2

declare i32 @hash(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @treeoutput() #0 {
entry:
  %cent = alloca %struct.dent*, align 8
  %lent = alloca %struct.dent*, align 8
  %pdictsize = alloca i32, align 4
  %sortlist = alloca %struct.dent**, align 8
  %sortptr = alloca %struct.dent**, align 8
  %ehtab = alloca %struct.dent*, align 8
  %0 = load i32, i32* @newwords, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @dictf, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i32 0, i32 0))
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %pdictsize, align 4
  %2 = load i32, i32* @hcount, align 4
  %cmp5 = icmp sge i32 %2, 1000
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  store %struct.dent** null, %struct.dent*** %sortlist, align 8
  br label %if.end.43

if.else:                                          ; preds = %if.end.4
  %3 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %3, %struct.dent** %cent, align 8
  %4 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %5 = load i32, i32* @pershsize, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.dent, %struct.dent* %4, i64 %idx.ext
  store %struct.dent* %add.ptr, %struct.dent** %ehtab, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.else
  %6 = load %struct.dent*, %struct.dent** %cent, align 8
  %7 = load %struct.dent*, %struct.dent** %ehtab, align 8
  %cmp7 = icmp ult %struct.dent* %6, %7
  br i1 %cmp7, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %8 = load %struct.dent*, %struct.dent** %cent, align 8
  store %struct.dent* %8, %struct.dent** %lent, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.dent*, %struct.dent** %lent, align 8
  %cmp9 = icmp ne %struct.dent* %9, null
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %10 = load %struct.dent*, %struct.dent** %lent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %11 = load i64, i64* %arrayidx, align 8
  %and = and i64 %11, 201326592
  %cmp11 = icmp eq i64 %and, 201326592
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.10
  %12 = load i32, i32* %pdictsize, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %pdictsize, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %13 = load %struct.dent*, %struct.dent** %lent, align 8
  %mask14 = getelementptr inbounds %struct.dent, %struct.dent* %13, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %mask14, i32 0, i64 0
  %14 = load i64, i64* %arrayidx15, align 8
  %and16 = and i64 %14, 1073741824
  %tobool = icmp ne i64 %and16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.dent*, %struct.dent** %lent, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %15, i32 0, i32 0
  %16 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %16, %struct.dent** %lent, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %17 = load %struct.dent*, %struct.dent** %lent, align 8
  %next17 = getelementptr inbounds %struct.dent, %struct.dent* %17, i32 0, i32 0
  %18 = load %struct.dent*, %struct.dent** %next17, align 8
  store %struct.dent* %18, %struct.dent** %lent, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %19 = load %struct.dent*, %struct.dent** %cent, align 8
  %incdec.ptr = getelementptr inbounds %struct.dent, %struct.dent* %19, i32 1
  store %struct.dent* %incdec.ptr, %struct.dent** %cent, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %20 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %20, %struct.dent** %cent, align 8
  %21 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %22 = load i32, i32* @hashsize, align 4
  %idx.ext20 = sext i32 %22 to i64
  %add.ptr21 = getelementptr inbounds %struct.dent, %struct.dent* %21, i64 %idx.ext20
  store %struct.dent* %add.ptr21, %struct.dent** %ehtab, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.39, %for.end.19
  %23 = load %struct.dent*, %struct.dent** %cent, align 8
  %24 = load %struct.dent*, %struct.dent** %ehtab, align 8
  %cmp23 = icmp ult %struct.dent* %23, %24
  br i1 %cmp23, label %for.body.24, label %for.end.41

for.body.24:                                      ; preds = %for.cond.22
  %25 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask25 = getelementptr inbounds %struct.dent, %struct.dent* %25, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [1 x i64], [1 x i64]* %mask25, i32 0, i64 0
  %26 = load i64, i64* %arrayidx26, align 8
  %and27 = and i64 %26, 201326592
  %cmp28 = icmp eq i64 %and27, 201326592
  br i1 %cmp28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %for.body.24
  %27 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask30 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x i64], [1 x i64]* %mask30, i32 0, i64 0
  %28 = load i64, i64* %arrayidx31, align 8
  %and32 = and i64 %28, 805306368
  %cmp33 = icmp ne i64 %and32, 805306368
  br i1 %cmp33, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.then.29
  %29 = load %struct.dent*, %struct.dent** %cent, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %29, i32 0, i32 1
  %30 = load i8*, i8** %word, align 8
  %cmp34 = icmp ne i8* %30, null
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %pdictsize, align 4
  %inc36 = add nsw i32 %31, 1
  store i32 %inc36, i32* %pdictsize, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body.24
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %32 = load %struct.dent*, %struct.dent** %cent, align 8
  %incdec.ptr40 = getelementptr inbounds %struct.dent, %struct.dent* %32, i32 1
  store %struct.dent* %incdec.ptr40, %struct.dent** %cent, align 8
  br label %for.cond.22

for.end.41:                                       ; preds = %for.cond.22
  %33 = load i32, i32* %pdictsize, align 4
  %conv = sext i32 %33 to i64
  %mul = mul i64 %conv, 24
  %call42 = call noalias i8* @malloc(i64 %mul) #6
  %34 = bitcast i8* %call42 to %struct.dent**
  store %struct.dent** %34, %struct.dent*** %sortlist, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.41, %if.then.6
  %35 = load %struct.dent**, %struct.dent*** %sortlist, align 8
  %cmp44 = icmp eq %struct.dent** %35, null
  br i1 %cmp44, label %if.then.46, label %if.end.105

if.then.46:                                       ; preds = %if.end.43
  %36 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %36, %struct.dent** %cent, align 8
  %37 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %38 = load i32, i32* @pershsize, align 4
  %idx.ext47 = sext i32 %38 to i64
  %add.ptr48 = getelementptr inbounds %struct.dent, %struct.dent* %37, i64 %idx.ext47
  store %struct.dent* %add.ptr48, %struct.dent** %ehtab, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.75, %if.then.46
  %39 = load %struct.dent*, %struct.dent** %cent, align 8
  %40 = load %struct.dent*, %struct.dent** %ehtab, align 8
  %cmp50 = icmp ult %struct.dent* %39, %40
  br i1 %cmp50, label %for.body.52, label %for.end.77

for.body.52:                                      ; preds = %for.cond.49
  %41 = load %struct.dent*, %struct.dent** %cent, align 8
  store %struct.dent* %41, %struct.dent** %lent, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.72, %for.body.52
  %42 = load %struct.dent*, %struct.dent** %lent, align 8
  %cmp54 = icmp ne %struct.dent* %42, null
  br i1 %cmp54, label %for.body.56, label %for.end.74

for.body.56:                                      ; preds = %for.cond.53
  %43 = load %struct.dent*, %struct.dent** %lent, align 8
  %mask57 = getelementptr inbounds %struct.dent, %struct.dent* %43, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [1 x i64], [1 x i64]* %mask57, i32 0, i64 0
  %44 = load i64, i64* %arrayidx58, align 8
  %and59 = and i64 %44, 201326592
  %cmp60 = icmp eq i64 %and59, 201326592
  br i1 %cmp60, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %for.body.56
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %46 = load %struct.dent*, %struct.dent** %lent, align 8
  call void @toutent(%struct._IO_FILE* %45, %struct.dent* %46, i32 1)
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.68, %if.then.62
  %47 = load %struct.dent*, %struct.dent** %lent, align 8
  %mask64 = getelementptr inbounds %struct.dent, %struct.dent* %47, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [1 x i64], [1 x i64]* %mask64, i32 0, i64 0
  %48 = load i64, i64* %arrayidx65, align 8
  %and66 = and i64 %48, 1073741824
  %tobool67 = icmp ne i64 %and66, 0
  br i1 %tobool67, label %while.body.68, label %while.end.70

while.body.68:                                    ; preds = %while.cond.63
  %49 = load %struct.dent*, %struct.dent** %lent, align 8
  %next69 = getelementptr inbounds %struct.dent, %struct.dent* %49, i32 0, i32 0
  %50 = load %struct.dent*, %struct.dent** %next69, align 8
  store %struct.dent* %50, %struct.dent** %lent, align 8
  br label %while.cond.63

while.end.70:                                     ; preds = %while.cond.63
  br label %if.end.71

if.end.71:                                        ; preds = %while.end.70, %for.body.56
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %51 = load %struct.dent*, %struct.dent** %lent, align 8
  %next73 = getelementptr inbounds %struct.dent, %struct.dent* %51, i32 0, i32 0
  %52 = load %struct.dent*, %struct.dent** %next73, align 8
  store %struct.dent* %52, %struct.dent** %lent, align 8
  br label %for.cond.53

for.end.74:                                       ; preds = %for.cond.53
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %53 = load %struct.dent*, %struct.dent** %cent, align 8
  %incdec.ptr76 = getelementptr inbounds %struct.dent, %struct.dent* %53, i32 1
  store %struct.dent* %incdec.ptr76, %struct.dent** %cent, align 8
  br label %for.cond.49

for.end.77:                                       ; preds = %for.cond.49
  %54 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %54, %struct.dent** %cent, align 8
  %55 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %56 = load i32, i32* @hashsize, align 4
  %idx.ext78 = sext i32 %56 to i64
  %add.ptr79 = getelementptr inbounds %struct.dent, %struct.dent* %55, i64 %idx.ext78
  store %struct.dent* %add.ptr79, %struct.dent** %ehtab, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.102, %for.end.77
  %57 = load %struct.dent*, %struct.dent** %cent, align 8
  %58 = load %struct.dent*, %struct.dent** %ehtab, align 8
  %cmp81 = icmp ult %struct.dent* %57, %58
  br i1 %cmp81, label %for.body.83, label %for.end.104

for.body.83:                                      ; preds = %for.cond.80
  %59 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask84 = getelementptr inbounds %struct.dent, %struct.dent* %59, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [1 x i64], [1 x i64]* %mask84, i32 0, i64 0
  %60 = load i64, i64* %arrayidx85, align 8
  %and86 = and i64 %60, 201326592
  %cmp87 = icmp eq i64 %and86, 201326592
  br i1 %cmp87, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %for.body.83
  %61 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask90 = getelementptr inbounds %struct.dent, %struct.dent* %61, i32 0, i32 2
  %arrayidx91 = getelementptr inbounds [1 x i64], [1 x i64]* %mask90, i32 0, i64 0
  %62 = load i64, i64* %arrayidx91, align 8
  %and92 = and i64 %62, 805306368
  %cmp93 = icmp ne i64 %and92, 805306368
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.100

land.lhs.true.95:                                 ; preds = %if.then.89
  %63 = load %struct.dent*, %struct.dent** %cent, align 8
  %word96 = getelementptr inbounds %struct.dent, %struct.dent* %63, i32 0, i32 1
  %64 = load i8*, i8** %word96, align 8
  %cmp97 = icmp ne i8* %64, null
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.95
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %66 = load %struct.dent*, %struct.dent** %cent, align 8
  call void @toutent(%struct._IO_FILE* %65, %struct.dent* %66, i32 1)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %land.lhs.true.95, %if.then.89
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %for.body.83
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %67 = load %struct.dent*, %struct.dent** %cent, align 8
  %incdec.ptr103 = getelementptr inbounds %struct.dent, %struct.dent* %67, i32 1
  store %struct.dent* %incdec.ptr103, %struct.dent** %cent, align 8
  br label %for.cond.80

for.end.104:                                      ; preds = %for.cond.80
  br label %return

if.end.105:                                       ; preds = %if.end.43
  %68 = load %struct.dent**, %struct.dent*** %sortlist, align 8
  store %struct.dent** %68, %struct.dent*** %sortptr, align 8
  %69 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %69, %struct.dent** %cent, align 8
  %70 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %71 = load i32, i32* @pershsize, align 4
  %idx.ext106 = sext i32 %71 to i64
  %add.ptr107 = getelementptr inbounds %struct.dent, %struct.dent* %70, i64 %idx.ext106
  store %struct.dent* %add.ptr107, %struct.dent** %ehtab, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.135, %if.end.105
  %72 = load %struct.dent*, %struct.dent** %cent, align 8
  %73 = load %struct.dent*, %struct.dent** %ehtab, align 8
  %cmp109 = icmp ult %struct.dent* %72, %73
  br i1 %cmp109, label %for.body.111, label %for.end.137

for.body.111:                                     ; preds = %for.cond.108
  %74 = load %struct.dent*, %struct.dent** %cent, align 8
  store %struct.dent* %74, %struct.dent** %lent, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.132, %for.body.111
  %75 = load %struct.dent*, %struct.dent** %lent, align 8
  %cmp113 = icmp ne %struct.dent* %75, null
  br i1 %cmp113, label %for.body.115, label %for.end.134

for.body.115:                                     ; preds = %for.cond.112
  %76 = load %struct.dent*, %struct.dent** %lent, align 8
  %mask116 = getelementptr inbounds %struct.dent, %struct.dent* %76, i32 0, i32 2
  %arrayidx117 = getelementptr inbounds [1 x i64], [1 x i64]* %mask116, i32 0, i64 0
  %77 = load i64, i64* %arrayidx117, align 8
  %and118 = and i64 %77, 201326592
  %cmp119 = icmp eq i64 %and118, 201326592
  br i1 %cmp119, label %if.then.121, label %if.end.131

if.then.121:                                      ; preds = %for.body.115
  %78 = load %struct.dent*, %struct.dent** %lent, align 8
  %79 = load %struct.dent**, %struct.dent*** %sortptr, align 8
  %incdec.ptr122 = getelementptr inbounds %struct.dent*, %struct.dent** %79, i32 1
  store %struct.dent** %incdec.ptr122, %struct.dent*** %sortptr, align 8
  store %struct.dent* %78, %struct.dent** %79, align 8
  br label %while.cond.123

while.cond.123:                                   ; preds = %while.body.128, %if.then.121
  %80 = load %struct.dent*, %struct.dent** %lent, align 8
  %mask124 = getelementptr inbounds %struct.dent, %struct.dent* %80, i32 0, i32 2
  %arrayidx125 = getelementptr inbounds [1 x i64], [1 x i64]* %mask124, i32 0, i64 0
  %81 = load i64, i64* %arrayidx125, align 8
  %and126 = and i64 %81, 1073741824
  %tobool127 = icmp ne i64 %and126, 0
  br i1 %tobool127, label %while.body.128, label %while.end.130

while.body.128:                                   ; preds = %while.cond.123
  %82 = load %struct.dent*, %struct.dent** %lent, align 8
  %next129 = getelementptr inbounds %struct.dent, %struct.dent* %82, i32 0, i32 0
  %83 = load %struct.dent*, %struct.dent** %next129, align 8
  store %struct.dent* %83, %struct.dent** %lent, align 8
  br label %while.cond.123

while.end.130:                                    ; preds = %while.cond.123
  br label %if.end.131

if.end.131:                                       ; preds = %while.end.130, %for.body.115
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %84 = load %struct.dent*, %struct.dent** %lent, align 8
  %next133 = getelementptr inbounds %struct.dent, %struct.dent* %84, i32 0, i32 0
  %85 = load %struct.dent*, %struct.dent** %next133, align 8
  store %struct.dent* %85, %struct.dent** %lent, align 8
  br label %for.cond.112

for.end.134:                                      ; preds = %for.cond.112
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.134
  %86 = load %struct.dent*, %struct.dent** %cent, align 8
  %incdec.ptr136 = getelementptr inbounds %struct.dent, %struct.dent* %86, i32 1
  store %struct.dent* %incdec.ptr136, %struct.dent** %cent, align 8
  br label %for.cond.108

for.end.137:                                      ; preds = %for.cond.108
  %87 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %87, %struct.dent** %cent, align 8
  %88 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %89 = load i32, i32* @hashsize, align 4
  %idx.ext138 = sext i32 %89 to i64
  %add.ptr139 = getelementptr inbounds %struct.dent, %struct.dent* %88, i64 %idx.ext138
  store %struct.dent* %add.ptr139, %struct.dent** %ehtab, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.163, %for.end.137
  %90 = load %struct.dent*, %struct.dent** %cent, align 8
  %91 = load %struct.dent*, %struct.dent** %ehtab, align 8
  %cmp141 = icmp ult %struct.dent* %90, %91
  br i1 %cmp141, label %for.body.143, label %for.end.165

for.body.143:                                     ; preds = %for.cond.140
  %92 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask144 = getelementptr inbounds %struct.dent, %struct.dent* %92, i32 0, i32 2
  %arrayidx145 = getelementptr inbounds [1 x i64], [1 x i64]* %mask144, i32 0, i64 0
  %93 = load i64, i64* %arrayidx145, align 8
  %and146 = and i64 %93, 201326592
  %cmp147 = icmp eq i64 %and146, 201326592
  br i1 %cmp147, label %if.then.149, label %if.end.162

if.then.149:                                      ; preds = %for.body.143
  %94 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask150 = getelementptr inbounds %struct.dent, %struct.dent* %94, i32 0, i32 2
  %arrayidx151 = getelementptr inbounds [1 x i64], [1 x i64]* %mask150, i32 0, i64 0
  %95 = load i64, i64* %arrayidx151, align 8
  %and152 = and i64 %95, 805306368
  %cmp153 = icmp ne i64 %and152, 805306368
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.161

land.lhs.true.155:                                ; preds = %if.then.149
  %96 = load %struct.dent*, %struct.dent** %cent, align 8
  %word156 = getelementptr inbounds %struct.dent, %struct.dent* %96, i32 0, i32 1
  %97 = load i8*, i8** %word156, align 8
  %cmp157 = icmp ne i8* %97, null
  br i1 %cmp157, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %land.lhs.true.155
  %98 = load %struct.dent*, %struct.dent** %cent, align 8
  %99 = load %struct.dent**, %struct.dent*** %sortptr, align 8
  %incdec.ptr160 = getelementptr inbounds %struct.dent*, %struct.dent** %99, i32 1
  store %struct.dent** %incdec.ptr160, %struct.dent*** %sortptr, align 8
  store %struct.dent* %98, %struct.dent** %99, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %land.lhs.true.155, %if.then.149
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %for.body.143
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %100 = load %struct.dent*, %struct.dent** %cent, align 8
  %incdec.ptr164 = getelementptr inbounds %struct.dent, %struct.dent* %100, i32 1
  store %struct.dent* %incdec.ptr164, %struct.dent** %cent, align 8
  br label %for.cond.140

for.end.165:                                      ; preds = %for.cond.140
  %101 = load %struct.dent**, %struct.dent*** %sortlist, align 8
  %102 = bitcast %struct.dent** %101 to i8*
  %103 = load i32, i32* %pdictsize, align 4
  %conv166 = zext i32 %103 to i64
  call void @qsort(i8* %102, i64 %conv166, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct.dent**, %struct.dent**)* @pdictcmp to i32 (i8*, i8*)*))
  %104 = load %struct.dent**, %struct.dent*** %sortlist, align 8
  store %struct.dent** %104, %struct.dent*** %sortptr, align 8
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.body.170, %for.end.165
  %105 = load i32, i32* %pdictsize, align 4
  %dec = add nsw i32 %105, -1
  store i32 %dec, i32* %pdictsize, align 4
  %cmp168 = icmp sge i32 %dec, 0
  br i1 %cmp168, label %for.body.170, label %for.end.172

for.body.170:                                     ; preds = %for.cond.167
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %107 = load %struct.dent**, %struct.dent*** %sortptr, align 8
  %incdec.ptr171 = getelementptr inbounds %struct.dent*, %struct.dent** %107, i32 1
  store %struct.dent** %incdec.ptr171, %struct.dent*** %sortptr, align 8
  %108 = load %struct.dent*, %struct.dent** %107, align 8
  call void @toutent(%struct._IO_FILE* %106, %struct.dent* %108, i32 1)
  br label %for.cond.167

for.end.172:                                      ; preds = %for.cond.167
  %109 = load %struct.dent**, %struct.dent*** %sortlist, align 8
  %110 = bitcast %struct.dent** %109 to i8*
  call void @free(i8* %110) #6
  store i32 0, i32* @newwords, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %call173 = call i32 @fclose(%struct._IO_FILE* %111)
  br label %return

return:                                           ; preds = %for.end.172, %for.end.104, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @toutent(%struct._IO_FILE*, %struct.dent*, i32) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdictcmp(%struct.dent** %enta, %struct.dent** %entb) #0 {
entry:
  %enta.addr = alloca %struct.dent**, align 8
  %entb.addr = alloca %struct.dent**, align 8
  store %struct.dent** %enta, %struct.dent*** %enta.addr, align 8
  store %struct.dent** %entb, %struct.dent*** %entb.addr, align 8
  %0 = load %struct.dent**, %struct.dent*** %enta.addr, align 8
  %1 = load %struct.dent*, %struct.dent** %0, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %1, i32 0, i32 1
  %2 = load i8*, i8** %word, align 8
  %3 = load %struct.dent**, %struct.dent*** %entb.addr, align 8
  %4 = load %struct.dent*, %struct.dent** %3, align 8
  %word1 = getelementptr inbounds %struct.dent, %struct.dent* %4, i32 0, i32 1
  %5 = load i8*, i8** %word1, align 8
  %call = call i32 @casecmp(i8* %2, i8* %5, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i8* @mymalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @myfree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** @hashstrings, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i8*, i8** @hashstrings, align 8
  %cmp1 = icmp uge i8* %1, %2
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i8*, i8** @hashstrings, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %cmp3 = icmp ule i8* %3, %add.ptr
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %6 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %6) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @casecmp(i8*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
