; ModuleID = './MultiSource.Applications.treecc/2.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--output\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--header\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"--output-dir\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"--skeleton-dir\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"--extension\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--option\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"--force-create\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--no-output\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [39 x i8] c"TREECC 0.2.8 - Tree Compiler-Compiler\0A\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Copyright (c) 2001, 2002 Southern Storm Software, Pty Ltd.\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Usage: %s [options] input ...\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"    -o file, --output file\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"        Set the name of the output file.\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"    -h file, --header file\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"        Set the name of the header output file.\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"    -d dir,  --output-dir file\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"        Set the name of the Java output directory.\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"    -e ext,  --extension ext\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"        Set the output file extension (default is \22.c\22).\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"    -f,      --force-create\0A\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"        Force the creation of unchanged output files.\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"    -O opt,  --option opt\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"        Set a treecc source option value.\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"    --help\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"        Print this help message.\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"    -v,      --version\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"        Print the program version.\0A\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"TREECC comes with ABSOLUTELY NO WARRANTY.  This is free software,\0A\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"and you are welcome to redistribute it under the terms of the\0A\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"GNU General Public License.  See the file COPYING for further details.\0A\00", align 1
@.str.39 = private unnamed_addr constant [66 x i8] c"Use the `--help' option to get help on the command-line options.\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"%s: unknown option or invalid value\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"yy_tree.tc\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %progname = alloca i8*, align 8
  %opt = alloca i8*, align 8
  %outputFile = alloca i8*, align 8
  %headerFile = alloca i8*, align 8
  %extension = alloca i8*, align 8
  %outputDir = alloca i8*, align 8
  %forceCreate = alloca i32, align 4
  %input = alloca %struct.TreeCCInput, align 8
  %context = alloca %struct._tagTreeCCContext*, align 8
  %sawStdin = alloca i32, align 4
  %generateOutput = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %len = alloca i32, align 4
  %result = alloca i32, align 4
  %options = alloca i8**, align 8
  %num_options = alloca i32, align 4
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %progname, align 8
  store i8* null, i8** %outputFile, align 8
  store i8* null, i8** %headerFile, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %extension, align 8
  store i8* null, i8** %outputDir, align 8
  store i32 0, i32* %forceCreate, align 4
  store i32 0, i32* %sawStdin, align 4
  store i32 1, i32* %generateOutput, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #4
  %3 = bitcast i8* %call to i8**
  store i8** %3, i8*** %options, align 8
  store i32 0, i32* %num_options, align 4
  %4 = load i32, i32* %argc.addr, align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = mul i64 8, %conv1
  %call3 = call noalias i8* @malloc(i64 %mul2) #4
  %5 = bitcast i8* %call3 to i8**
  store i8** %5, i8*** %options, align 8
  %6 = load i8**, i8*** %options, align 8
  %tobool = icmp ne i8** %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.236, %if.end
  %7 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %11, label %while.body, label %while.end.239

while.body:                                       ; preds = %land.end
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %while.body
  br label %while.end.239

if.else:                                          ; preds = %while.body
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then.21, label %if.else.129

if.then.21:                                       ; preds = %if.else
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  %21 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %argc.addr, align 4
  %22 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  br label %while.end.239

if.end.28:                                        ; preds = %if.then.21
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else.40, label %if.then.32

if.then.32:                                       ; preds = %if.end.28
  %25 = load i32, i32* %argc.addr, align 4
  %dec33 = add nsw i32 %25, -1
  store i32 %dec33, i32* %argc.addr, align 4
  %26 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr34, i8*** %argv.addr, align 8
  %27 = load i32, i32* %argc.addr, align 4
  %cmp35 = icmp sle i32 %27, 1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.32
  %28 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %28)
  store i32 1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.32
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %29, i64 1
  %30 = load i8*, i8** %arrayidx39, align 8
  store i8* %30, i8** %outputFile, align 8
  br label %if.end.128

if.else.40:                                       ; preds = %if.end.28
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.else.52, label %if.then.44

if.then.44:                                       ; preds = %if.else.40
  %33 = load i32, i32* %argc.addr, align 4
  %dec45 = add nsw i32 %33, -1
  store i32 %dec45, i32* %argc.addr, align 4
  %34 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %incdec.ptr46, i8*** %argv.addr, align 8
  %35 = load i32, i32* %argc.addr, align 4
  %cmp47 = icmp sle i32 %35, 1
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.44
  %36 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %36)
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.44
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %37, i64 1
  %38 = load i8*, i8** %arrayidx51, align 8
  store i8* %38, i8** %headerFile, align 8
  br label %if.end.127

if.else.52:                                       ; preds = %if.else.40
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %39, i64 1
  %40 = load i8*, i8** %arrayidx53, align 8
  %call54 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.64, label %if.then.56

if.then.56:                                       ; preds = %if.else.52
  %41 = load i32, i32* %argc.addr, align 4
  %dec57 = add nsw i32 %41, -1
  store i32 %dec57, i32* %argc.addr, align 4
  %42 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %incdec.ptr58, i8*** %argv.addr, align 8
  %43 = load i32, i32* %argc.addr, align 4
  %cmp59 = icmp sle i32 %43, 1
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.56
  %44 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %44)
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.56
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %45, i64 1
  %46 = load i8*, i8** %arrayidx63, align 8
  store i8* %46, i8** %outputDir, align 8
  br label %if.end.126

if.else.64:                                       ; preds = %if.else.52
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %47, i64 1
  %48 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.else.75, label %if.then.68

if.then.68:                                       ; preds = %if.else.64
  %49 = load i32, i32* %argc.addr, align 4
  %dec69 = add nsw i32 %49, -1
  store i32 %dec69, i32* %argc.addr, align 4
  %50 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %incdec.ptr70, i8*** %argv.addr, align 8
  %51 = load i32, i32* %argc.addr, align 4
  %cmp71 = icmp sle i32 %51, 1
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.68
  %52 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %52)
  store i32 1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.68
  br label %if.end.125

if.else.75:                                       ; preds = %if.else.64
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %53, i64 1
  %54 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.else.87, label %if.then.79

if.then.79:                                       ; preds = %if.else.75
  %55 = load i32, i32* %argc.addr, align 4
  %dec80 = add nsw i32 %55, -1
  store i32 %dec80, i32* %argc.addr, align 4
  %56 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %incdec.ptr81, i8*** %argv.addr, align 8
  %57 = load i32, i32* %argc.addr, align 4
  %cmp82 = icmp sle i32 %57, 1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.79
  %58 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %58)
  store i32 1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.then.79
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %59, i64 1
  %60 = load i8*, i8** %arrayidx86, align 8
  store i8* %60, i8** %extension, align 8
  br label %if.end.124

if.else.87:                                       ; preds = %if.else.75
  %61 = load i8**, i8*** %argv.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %61, i64 1
  %62 = load i8*, i8** %arrayidx88, align 8
  %call89 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.else.100, label %if.then.91

if.then.91:                                       ; preds = %if.else.87
  %63 = load i32, i32* %argc.addr, align 4
  %dec92 = add nsw i32 %63, -1
  store i32 %dec92, i32* %argc.addr, align 4
  %64 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %incdec.ptr93, i8*** %argv.addr, align 8
  %65 = load i32, i32* %argc.addr, align 4
  %cmp94 = icmp sle i32 %65, 1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.91
  %66 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %66)
  store i32 1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.then.91
  %67 = load i8**, i8*** %argv.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %67, i64 1
  %68 = load i8*, i8** %arrayidx98, align 8
  %69 = load i32, i32* %num_options, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %num_options, align 4
  %idxprom = sext i32 %69 to i64
  %70 = load i8**, i8*** %options, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %70, i64 %idxprom
  store i8* %68, i8** %arrayidx99, align 8
  br label %if.end.123

if.else.100:                                      ; preds = %if.else.87
  %71 = load i8**, i8*** %argv.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %71, i64 1
  %72 = load i8*, i8** %arrayidx101, align 8
  %call102 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #5
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.else.105, label %if.then.104

if.then.104:                                      ; preds = %if.else.100
  store i32 1, i32* %forceCreate, align 4
  br label %if.end.122

if.else.105:                                      ; preds = %if.else.100
  %73 = load i8**, i8*** %argv.addr, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %73, i64 1
  %74 = load i8*, i8** %arrayidx106, align 8
  %call107 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #5
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.else.110, label %if.then.109

if.then.109:                                      ; preds = %if.else.105
  store i32 0, i32* %generateOutput, align 4
  br label %if.end.121

if.else.110:                                      ; preds = %if.else.105
  %75 = load i8**, i8*** %argv.addr, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %75, i64 1
  %76 = load i8*, i8** %arrayidx111, align 8
  %call112 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #5
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.else.115, label %if.then.114

if.then.114:                                      ; preds = %if.else.110
  %77 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %77)
  store i32 1, i32* %retval
  br label %return

if.else.115:                                      ; preds = %if.else.110
  %78 = load i8**, i8*** %argv.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %78, i64 1
  %79 = load i8*, i8** %arrayidx116, align 8
  %call117 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #5
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %if.else.115
  call void @Version()
  store i32 0, i32* %retval
  br label %return

if.else.120:                                      ; preds = %if.else.115
  %80 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %80)
  store i32 1, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.then.109
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.104
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.97
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.85
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.74
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.62
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.50
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.38
  br label %if.end.235

if.else.129:                                      ; preds = %if.else
  %81 = load i8**, i8*** %argv.addr, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %81, i64 1
  %82 = load i8*, i8** %arrayidx130, align 8
  %add.ptr = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %add.ptr, i8** %opt, align 8
  br label %while.cond.131

while.cond.131:                                   ; preds = %sw.epilog, %if.else.129
  %83 = load i8*, i8** %opt, align 8
  %84 = load i8, i8* %83, align 1
  %conv132 = sext i8 %84 to i32
  %cmp133 = icmp ne i32 %conv132, 0
  br i1 %cmp133, label %while.body.135, label %while.end

while.body.135:                                   ; preds = %while.cond.131
  %85 = load i8*, i8** %opt, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr136, i8** %opt, align 8
  %86 = load i8, i8* %85, align 1
  %conv137 = sext i8 %86 to i32
  switch i32 %conv137, label %sw.default [
    i32 111, label %sw.bb
    i32 104, label %sw.bb.152
    i32 100, label %sw.bb.167
    i32 115, label %sw.bb.182
    i32 101, label %sw.bb.196
    i32 79, label %sw.bb.211
    i32 102, label %sw.bb.232
    i32 110, label %sw.bb.233
    i32 118, label %sw.bb.234
  ]

sw.bb:                                            ; preds = %while.body.135
  %87 = load i8*, i8** %opt, align 8
  %88 = load i8, i8* %87, align 1
  %conv138 = sext i8 %88 to i32
  %cmp139 = icmp ne i32 %conv138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %sw.bb
  %89 = load i8*, i8** %opt, align 8
  store i8* %89, i8** %outputFile, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.151

if.else.142:                                      ; preds = %sw.bb
  %90 = load i32, i32* %argc.addr, align 4
  %cmp143 = icmp sle i32 %90, 2
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.else.142
  %91 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %91)
  store i32 1, i32* %retval
  br label %return

if.else.146:                                      ; preds = %if.else.142
  %92 = load i32, i32* %argc.addr, align 4
  %dec147 = add nsw i32 %92, -1
  store i32 %dec147, i32* %argc.addr, align 4
  %93 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %incdec.ptr148, i8*** %argv.addr, align 8
  %94 = load i8**, i8*** %argv.addr, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %94, i64 1
  %95 = load i8*, i8** %arrayidx149, align 8
  store i8* %95, i8** %outputFile, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.146
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.141
  br label %sw.epilog

sw.bb.152:                                        ; preds = %while.body.135
  %96 = load i8*, i8** %opt, align 8
  %97 = load i8, i8* %96, align 1
  %conv153 = sext i8 %97 to i32
  %cmp154 = icmp ne i32 %conv153, 0
  br i1 %cmp154, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %sw.bb.152
  %98 = load i8*, i8** %opt, align 8
  store i8* %98, i8** %headerFile, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.166

if.else.157:                                      ; preds = %sw.bb.152
  %99 = load i32, i32* %argc.addr, align 4
  %cmp158 = icmp sle i32 %99, 2
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %if.else.157
  %100 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %100)
  store i32 1, i32* %retval
  br label %return

if.else.161:                                      ; preds = %if.else.157
  %101 = load i32, i32* %argc.addr, align 4
  %dec162 = add nsw i32 %101, -1
  store i32 %dec162, i32* %argc.addr, align 4
  %102 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %incdec.ptr163, i8*** %argv.addr, align 8
  %103 = load i8**, i8*** %argv.addr, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %103, i64 1
  %104 = load i8*, i8** %arrayidx164, align 8
  store i8* %104, i8** %headerFile, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.161
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.156
  br label %sw.epilog

sw.bb.167:                                        ; preds = %while.body.135
  %105 = load i8*, i8** %opt, align 8
  %106 = load i8, i8* %105, align 1
  %conv168 = sext i8 %106 to i32
  %cmp169 = icmp ne i32 %conv168, 0
  br i1 %cmp169, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %sw.bb.167
  %107 = load i8*, i8** %opt, align 8
  store i8* %107, i8** %outputDir, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.181

if.else.172:                                      ; preds = %sw.bb.167
  %108 = load i32, i32* %argc.addr, align 4
  %cmp173 = icmp sle i32 %108, 2
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %if.else.172
  %109 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %109)
  store i32 1, i32* %retval
  br label %return

if.else.176:                                      ; preds = %if.else.172
  %110 = load i32, i32* %argc.addr, align 4
  %dec177 = add nsw i32 %110, -1
  store i32 %dec177, i32* %argc.addr, align 4
  %111 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %incdec.ptr178, i8*** %argv.addr, align 8
  %112 = load i8**, i8*** %argv.addr, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %112, i64 1
  %113 = load i8*, i8** %arrayidx179, align 8
  store i8* %113, i8** %outputDir, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.176
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.171
  br label %sw.epilog

sw.bb.182:                                        ; preds = %while.body.135
  %114 = load i8*, i8** %opt, align 8
  %115 = load i8, i8* %114, align 1
  %conv183 = sext i8 %115 to i32
  %cmp184 = icmp ne i32 %conv183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %sw.bb.182
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.195

if.else.187:                                      ; preds = %sw.bb.182
  %116 = load i32, i32* %argc.addr, align 4
  %cmp188 = icmp sle i32 %116, 2
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.else.187
  %117 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %117)
  store i32 1, i32* %retval
  br label %return

if.else.191:                                      ; preds = %if.else.187
  %118 = load i32, i32* %argc.addr, align 4
  %dec192 = add nsw i32 %118, -1
  store i32 %dec192, i32* %argc.addr, align 4
  %119 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %incdec.ptr193, i8*** %argv.addr, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.191
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.186
  br label %sw.epilog

sw.bb.196:                                        ; preds = %while.body.135
  %120 = load i8*, i8** %opt, align 8
  %121 = load i8, i8* %120, align 1
  %conv197 = sext i8 %121 to i32
  %cmp198 = icmp ne i32 %conv197, 0
  br i1 %cmp198, label %if.then.200, label %if.else.201

if.then.200:                                      ; preds = %sw.bb.196
  %122 = load i8*, i8** %opt, align 8
  store i8* %122, i8** %extension, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.210

if.else.201:                                      ; preds = %sw.bb.196
  %123 = load i32, i32* %argc.addr, align 4
  %cmp202 = icmp sle i32 %123, 2
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %if.else.201
  %124 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %124)
  store i32 1, i32* %retval
  br label %return

if.else.205:                                      ; preds = %if.else.201
  %125 = load i32, i32* %argc.addr, align 4
  %dec206 = add nsw i32 %125, -1
  store i32 %dec206, i32* %argc.addr, align 4
  %126 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr207 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %incdec.ptr207, i8*** %argv.addr, align 8
  %127 = load i8**, i8*** %argv.addr, align 8
  %arrayidx208 = getelementptr inbounds i8*, i8** %127, i64 1
  %128 = load i8*, i8** %arrayidx208, align 8
  store i8* %128, i8** %extension, align 8
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.205
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.200
  br label %sw.epilog

sw.bb.211:                                        ; preds = %while.body.135
  %129 = load i8*, i8** %opt, align 8
  %130 = load i8, i8* %129, align 1
  %conv212 = sext i8 %130 to i32
  %cmp213 = icmp ne i32 %conv212, 0
  br i1 %cmp213, label %if.then.215, label %if.else.219

if.then.215:                                      ; preds = %sw.bb.211
  %131 = load i8*, i8** %opt, align 8
  %132 = load i32, i32* %num_options, align 4
  %inc216 = add nsw i32 %132, 1
  store i32 %inc216, i32* %num_options, align 4
  %idxprom217 = sext i32 %132 to i64
  %133 = load i8**, i8*** %options, align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %133, i64 %idxprom217
  store i8* %131, i8** %arrayidx218, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.231

if.else.219:                                      ; preds = %sw.bb.211
  %134 = load i32, i32* %argc.addr, align 4
  %cmp220 = icmp sle i32 %134, 2
  br i1 %cmp220, label %if.then.222, label %if.else.223

if.then.222:                                      ; preds = %if.else.219
  %135 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %135)
  store i32 1, i32* %retval
  br label %return

if.else.223:                                      ; preds = %if.else.219
  %136 = load i32, i32* %argc.addr, align 4
  %dec224 = add nsw i32 %136, -1
  store i32 %dec224, i32* %argc.addr, align 4
  %137 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr225 = getelementptr inbounds i8*, i8** %137, i32 1
  store i8** %incdec.ptr225, i8*** %argv.addr, align 8
  %138 = load i8**, i8*** %argv.addr, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %138, i64 1
  %139 = load i8*, i8** %arrayidx226, align 8
  %140 = load i32, i32* %num_options, align 4
  %inc227 = add nsw i32 %140, 1
  store i32 %inc227, i32* %num_options, align 4
  %idxprom228 = sext i32 %140 to i64
  %141 = load i8**, i8*** %options, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %141, i64 %idxprom228
  store i8* %139, i8** %arrayidx229, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.223
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.215
  br label %sw.epilog

sw.bb.232:                                        ; preds = %while.body.135
  store i32 1, i32* %forceCreate, align 4
  br label %sw.epilog

sw.bb.233:                                        ; preds = %while.body.135
  store i32 0, i32* %generateOutput, align 4
  br label %sw.epilog

sw.bb.234:                                        ; preds = %while.body.135
  call void @Version()
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body.135
  %142 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %142)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.233, %sw.bb.232, %if.end.231, %if.end.210, %if.end.195, %if.end.181, %if.end.166, %if.end.151
  br label %while.cond.131

while.end:                                        ; preds = %while.cond.131
  br label %if.end.235

if.end.235:                                       ; preds = %while.end, %if.end.128
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235
  %143 = load i32, i32* %argc.addr, align 4
  %dec237 = add nsw i32 %143, -1
  store i32 %dec237, i32* %argc.addr, align 4
  %144 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr238 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %incdec.ptr238, i8*** %argv.addr, align 8
  br label %while.cond

while.end.239:                                    ; preds = %if.then.27, %if.then.15, %land.end
  %145 = load i32, i32* %argc.addr, align 4
  %cmp240 = icmp sle i32 %145, 1
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %while.end.239
  %146 = load i8*, i8** %progname, align 8
  call void @Usage(i8* %146)
  store i32 1, i32* %retval
  br label %return

if.end.243:                                       ; preds = %while.end.239
  %147 = load i8*, i8** %outputFile, align 8
  %tobool244 = icmp ne i8* %147, null
  br i1 %tobool244, label %if.end.254, label %if.then.245

if.then.245:                                      ; preds = %if.end.243
  %148 = load i8*, i8** %extension, align 8
  %149 = load i8, i8* %148, align 1
  %conv246 = sext i8 %149 to i32
  %cmp247 = icmp eq i32 %conv246, 46
  br i1 %cmp247, label %if.then.249, label %if.end.251

if.then.249:                                      ; preds = %if.then.245
  %150 = load i8*, i8** %extension, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr250, i8** %extension, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.249, %if.then.245
  %151 = load i8**, i8*** %argv.addr, align 8
  %arrayidx252 = getelementptr inbounds i8*, i8** %151, i64 1
  %152 = load i8*, i8** %arrayidx252, align 8
  %153 = load i8*, i8** %extension, align 8
  %call253 = call i8* @GetDefault(i8* %152, i8* %153)
  store i8* %call253, i8** %outputFile, align 8
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.251, %if.end.243
  %154 = load i8*, i8** %headerFile, align 8
  %tobool255 = icmp ne i8* %154, null
  br i1 %tobool255, label %if.end.258, label %if.then.256

if.then.256:                                      ; preds = %if.end.254
  %155 = load i8*, i8** %outputFile, align 8
  %call257 = call i8* @GetDefault(i8* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call257, i8** %headerFile, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %if.end.254
  %156 = load i8*, i8** %progname, align 8
  call void @TreeCCOpen(%struct.TreeCCInput* %input, i8* %156, %struct._IO_FILE* null, i8* null)
  %157 = load i8*, i8** %outputDir, align 8
  %tobool259 = icmp ne i8* %157, null
  br i1 %tobool259, label %if.end.304, label %if.then.260

if.then.260:                                      ; preds = %if.end.258
  %158 = load i8**, i8*** %argv.addr, align 8
  %arrayidx261 = getelementptr inbounds i8*, i8** %158, i64 1
  %159 = load i8*, i8** %arrayidx261, align 8
  %call262 = call i64 @strlen(i8* %159) #5
  %conv263 = trunc i64 %call262 to i32
  store i32 %conv263, i32* %len, align 4
  br label %while.cond.264

while.cond.264:                                   ; preds = %while.body.282, %if.then.260
  %160 = load i32, i32* %len, align 4
  %cmp265 = icmp sgt i32 %160, 0
  br i1 %cmp265, label %land.lhs.true, label %land.end.281

land.lhs.true:                                    ; preds = %while.cond.264
  %161 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %161, 1
  %idxprom267 = sext i32 %sub to i64
  %162 = load i8**, i8*** %argv.addr, align 8
  %arrayidx268 = getelementptr inbounds i8*, i8** %162, i64 1
  %163 = load i8*, i8** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %163, i64 %idxprom267
  %164 = load i8, i8* %arrayidx269, align 1
  %conv270 = sext i8 %164 to i32
  %cmp271 = icmp ne i32 %conv270, 47
  br i1 %cmp271, label %land.rhs.273, label %land.end.281

land.rhs.273:                                     ; preds = %land.lhs.true
  %165 = load i32, i32* %len, align 4
  %sub274 = sub nsw i32 %165, 1
  %idxprom275 = sext i32 %sub274 to i64
  %166 = load i8**, i8*** %argv.addr, align 8
  %arrayidx276 = getelementptr inbounds i8*, i8** %166, i64 1
  %167 = load i8*, i8** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %167, i64 %idxprom275
  %168 = load i8, i8* %arrayidx277, align 1
  %conv278 = sext i8 %168 to i32
  %cmp279 = icmp ne i32 %conv278, 92
  br label %land.end.281

land.end.281:                                     ; preds = %land.rhs.273, %land.lhs.true, %while.cond.264
  %169 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.264 ], [ %cmp279, %land.rhs.273 ]
  br i1 %169, label %while.body.282, label %while.end.284

while.body.282:                                   ; preds = %land.end.281
  %170 = load i32, i32* %len, align 4
  %dec283 = add nsw i32 %170, -1
  store i32 %dec283, i32* %len, align 4
  br label %while.cond.264

while.end.284:                                    ; preds = %land.end.281
  %171 = load i32, i32* %len, align 4
  %cmp285 = icmp sgt i32 %171, 0
  br i1 %cmp285, label %if.then.287, label %if.end.289

if.then.287:                                      ; preds = %while.end.284
  %172 = load i32, i32* %len, align 4
  %dec288 = add nsw i32 %172, -1
  store i32 %dec288, i32* %len, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.287, %while.end.284
  %173 = load i32, i32* %len, align 4
  %cmp290 = icmp sgt i32 %173, 0
  br i1 %cmp290, label %if.then.292, label %if.end.303

if.then.292:                                      ; preds = %if.end.289
  %174 = load i32, i32* %len, align 4
  %add = add nsw i32 %174, 1
  %conv293 = sext i32 %add to i64
  %call294 = call noalias i8* @malloc(i64 %conv293) #4
  store i8* %call294, i8** %outputDir, align 8
  %175 = load i8*, i8** %outputDir, align 8
  %tobool295 = icmp ne i8* %175, null
  br i1 %tobool295, label %if.end.297, label %if.then.296

if.then.296:                                      ; preds = %if.then.292
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %input)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.then.292
  %176 = load i8*, i8** %outputDir, align 8
  %177 = load i8**, i8*** %argv.addr, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %177, i64 1
  %178 = load i8*, i8** %arrayidx298, align 8
  %179 = load i32, i32* %len, align 4
  %conv299 = sext i32 %179 to i64
  %call300 = call i8* @strncpy(i8* %176, i8* %178, i64 %conv299) #4
  %180 = load i32, i32* %len, align 4
  %idxprom301 = sext i32 %180 to i64
  %181 = load i8*, i8** %outputDir, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %181, i64 %idxprom301
  store i8 0, i8* %arrayidx302, align 1
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.297, %if.end.289
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.end.258
  %call305 = call %struct._tagTreeCCContext* @TreeCCContextCreate(%struct.TreeCCInput* %input)
  store %struct._tagTreeCCContext* %call305, %struct._tagTreeCCContext** %context, align 8
  %182 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %tobool306 = icmp ne %struct._tagTreeCCContext* %182, null
  br i1 %tobool306, label %if.end.308, label %if.then.307

if.then.307:                                      ; preds = %if.end.304
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %input)
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %if.end.304
  %183 = load i32, i32* %forceCreate, align 4
  %184 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %force = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %184, i32 0, i32 8
  %185 = trunc i32 %183 to i16
  %bf.load = load i16, i16* %force, align 8
  %bf.value = and i16 %185, 1
  %bf.shl = shl i16 %bf.value, 4
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %force, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  %186 = load i8*, i8** %outputDir, align 8
  %187 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %outputDirectory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %187, i32 0, i32 15
  store i8* %186, i8** %outputDirectory, align 8
  %188 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %189 = load i8**, i8*** %options, align 8
  %190 = load i32, i32* %num_options, align 4
  %call309 = call i32 @ExtraOptions(%struct._tagTreeCCContext* %188, i8** %189, i32 %190)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.end.312, label %if.then.311

if.then.311:                                      ; preds = %if.end.308
  store i32 1, i32* %retval
  br label %return

if.end.312:                                       ; preds = %if.end.308
  %191 = load i8**, i8*** %options, align 8
  %192 = bitcast i8** %191 to i8*
  call void @free(i8* %192) #4
  %193 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %194 = load i8*, i8** %outputFile, align 8
  %call313 = call %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext* %193, i8* %194, i8* null, i32 0)
  %195 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %195, i32 0, i32 5
  store %struct._tagTreeCCStream* %call313, %struct._tagTreeCCStream** %sourceStream, align 8
  %196 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %sourceStream314 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %196, i32 0, i32 5
  %197 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream314, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %197, i32 0, i32 7
  %bf.load315 = load i8, i8* %defaultFile, align 4
  %bf.clear316 = and i8 %bf.load315, -9
  %bf.set317 = or i8 %bf.clear316, 8
  store i8 %bf.set317, i8* %defaultFile, align 4
  %198 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %199 = load i8*, i8** %headerFile, align 8
  %call318 = call %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext* %198, i8* %199, i8* null, i32 1)
  %200 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %200, i32 0, i32 4
  store %struct._tagTreeCCStream* %call318, %struct._tagTreeCCStream** %headerStream, align 8
  %201 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %headerStream319 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %201, i32 0, i32 4
  %202 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream319, align 8
  %defaultFile320 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %202, i32 0, i32 7
  %bf.load321 = load i8, i8* %defaultFile320, align 4
  %bf.clear322 = and i8 %bf.load321, -9
  %bf.set323 = or i8 %bf.clear322, 8
  store i8 %bf.set323, i8* %defaultFile320, align 4
  br label %while.cond.324

while.cond.324:                                   ; preds = %if.end.345, %if.end.312
  %203 = load i32, i32* %argc.addr, align 4
  %cmp325 = icmp sgt i32 %203, 1
  br i1 %cmp325, label %while.body.327, label %while.end.348

while.body.327:                                   ; preds = %while.cond.324
  %204 = load i8**, i8*** %argv.addr, align 8
  %arrayidx328 = getelementptr inbounds i8*, i8** %204, i64 1
  %205 = load i8*, i8** %arrayidx328, align 8
  %call329 = call i32 @strcmp(i8* %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %if.else.335, label %if.then.331

if.then.331:                                      ; preds = %while.body.327
  %206 = load i32, i32* %sawStdin, align 4
  %tobool332 = icmp ne i32 %206, 0
  br i1 %tobool332, label %if.end.334, label %if.then.333

if.then.333:                                      ; preds = %if.then.331
  %207 = load i8*, i8** %progname, align 8
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @TreeCCOpen(%struct.TreeCCInput* %input, i8* %207, %struct._IO_FILE* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  %209 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCParse(%struct._tagTreeCCContext* %209)
  call void @TreeCCClose(%struct.TreeCCInput* %input, i32 0)
  store i32 1, i32* %sawStdin, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.333, %if.then.331
  br label %if.end.345

if.else.335:                                      ; preds = %while.body.327
  %210 = load i8**, i8*** %argv.addr, align 8
  %arrayidx336 = getelementptr inbounds i8*, i8** %210, i64 1
  %211 = load i8*, i8** %arrayidx336, align 8
  %call337 = call %struct._IO_FILE* @fopen(i8* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store %struct._IO_FILE* %call337, %struct._IO_FILE** %file, align 8
  %cmp338 = icmp eq %struct._IO_FILE* %call337, null
  br i1 %cmp338, label %if.then.340, label %if.else.342

if.then.340:                                      ; preds = %if.else.335
  %212 = load i8**, i8*** %argv.addr, align 8
  %arrayidx341 = getelementptr inbounds i8*, i8** %212, i64 1
  %213 = load i8*, i8** %arrayidx341, align 8
  call void @perror(i8* %213)
  %errors = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %input, i32 0, i32 7
  store i32 1, i32* %errors, align 4
  br label %if.end.344

if.else.342:                                      ; preds = %if.else.335
  %214 = load i8*, i8** %progname, align 8
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %216 = load i8**, i8*** %argv.addr, align 8
  %arrayidx343 = getelementptr inbounds i8*, i8** %216, i64 1
  %217 = load i8*, i8** %arrayidx343, align 8
  call void @TreeCCOpen(%struct.TreeCCInput* %input, i8* %214, %struct._IO_FILE* %215, i8* %217)
  %218 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCParse(%struct._tagTreeCCContext* %218)
  call void @TreeCCClose(%struct.TreeCCInput* %input, i32 1)
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.342, %if.then.340
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.334
  %219 = load i32, i32* %argc.addr, align 4
  %dec346 = add nsw i32 %219, -1
  store i32 %dec346, i32* %argc.addr, align 4
  %220 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr347 = getelementptr inbounds i8*, i8** %220, i32 1
  store i8** %incdec.ptr347, i8*** %argv.addr, align 8
  br label %while.cond.324

while.end.348:                                    ; preds = %while.cond.324
  %221 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCNodeValidate(%struct._tagTreeCCContext* %221)
  %222 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCOperationValidate(%struct._tagTreeCCContext* %222)
  %errors349 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %input, i32 0, i32 7
  %223 = load i32, i32* %errors349, align 4
  %tobool350 = icmp ne i32 %223, 0
  br i1 %tobool350, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %while.end.348
  %224 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCContextDestroy(%struct._tagTreeCCContext* %224)
  store i32 1, i32* %retval
  br label %return

if.end.352:                                       ; preds = %while.end.348
  store i32 0, i32* %result, align 4
  %225 = load i32, i32* %generateOutput, align 4
  %tobool353 = icmp ne i32 %225, 0
  br i1 %tobool353, label %if.then.354, label %if.end.364

if.then.354:                                      ; preds = %if.end.352
  %226 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCGenerate(%struct._tagTreeCCContext* %226)
  %227 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %227, i32 0, i32 3
  %228 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %228, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond.355

while.cond.355:                                   ; preds = %if.end.362, %if.then.354
  %229 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %cmp356 = icmp ne %struct._tagTreeCCStream* %229, null
  br i1 %cmp356, label %while.body.358, label %while.end.363

while.body.358:                                   ; preds = %while.cond.355
  %230 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %call359 = call i32 @TreeCCStreamFlush(%struct._tagTreeCCStream* %230)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.end.362, label %if.then.361

if.then.361:                                      ; preds = %while.body.358
  store i32 1, i32* %result, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.361, %while.body.358
  %231 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %231, i32 0, i32 10
  %232 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %232, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond.355

while.end.363:                                    ; preds = %while.cond.355
  br label %if.end.364

if.end.364:                                       ; preds = %while.end.363, %if.end.352
  %233 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  call void @TreeCCContextDestroy(%struct._tagTreeCCContext* %233)
  %234 = load i32, i32* %result, align 4
  store i32 %234, i32* %retval
  br label %return

return:                                           ; preds = %if.end.364, %if.then.351, %if.then.311, %if.then.242, %sw.default, %sw.bb.234, %if.then.222, %if.then.204, %if.then.190, %if.then.175, %if.then.160, %if.then.145, %if.else.120, %if.then.119, %if.then.114, %if.then.96, %if.then.84, %if.then.73, %if.then.61, %if.then.49, %if.then.37
  %235 = load i32, i32* %retval
  ret i32 %235
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @Usage(i8* %progname) #0 {
entry:
  %progname.addr = alloca i8*, align 8
  store i8* %progname, i8** %progname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %progname.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Version() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.36, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.38, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.39, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @GetDefault(i8* %filename, i8* %extension) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %extension.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %extension, i8** %extension.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8** %filename.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv3, 47
  br i1 %cmp4, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %len, align 4
  %sub7 = sub nsw i32 %6, 1
  %idxprom8 = sext i32 %sub7 to i64
  %7 = load i8*, i8** %filename.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 %idxprom8
  %8 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp ne i32 %conv10, 92
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.6
  %9 = load i32, i32* %len, align 4
  %sub13 = sub nsw i32 %9, 1
  %idxprom14 = sext i32 %sub13 to i64
  %10 = load i8*, i8** %filename.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %10, i64 %idxprom14
  %11 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %11 to i32
  %cmp17 = icmp ne i32 %conv16, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.6, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %len, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %len, align 4
  %cmp19 = icmp sgt i32 %14, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %while.end
  %15 = load i32, i32* %len, align 4
  %sub22 = sub nsw i32 %15, 1
  %idxprom23 = sext i32 %sub22 to i64
  %16 = load i8*, i8** %filename.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true.21
  %18 = load i32, i32* %len, align 4
  %conv29 = sext i32 %18 to i64
  %19 = load i8*, i8** %extension.addr, align 8
  %call30 = call i64 @strlen(i8* %19) #5
  %add = add i64 %conv29, %call30
  %add31 = add i64 %add, 1
  %call32 = call noalias i8* @malloc(i64 %add31) #4
  store i8* %call32, i8** %name, align 8
  %20 = load i8*, i8** %name, align 8
  %tobool33 = icmp ne i8* %20, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.28
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.28
  %21 = load i8*, i8** %name, align 8
  %22 = load i8*, i8** %filename.addr, align 8
  %23 = load i32, i32* %len, align 4
  %conv36 = sext i32 %23 to i64
  %call37 = call i8* @strncpy(i8* %21, i8* %22, i64 %conv36) #4
  %24 = load i8*, i8** %name, align 8
  %25 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %26 = load i8*, i8** %extension.addr, align 8
  %call38 = call i8* @strcpy(i8* %add.ptr, i8* %26) #4
  br label %if.end.56

if.else:                                          ; preds = %land.lhs.true.21, %while.end
  %27 = load i8*, i8** %filename.addr, align 8
  %call39 = call i64 @strlen(i8* %27) #5
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* %len, align 4
  %28 = load i32, i32* %len, align 4
  %conv41 = sext i32 %28 to i64
  %29 = load i8*, i8** %extension.addr, align 8
  %call42 = call i64 @strlen(i8* %29) #5
  %add43 = add i64 %conv41, %call42
  %add44 = add i64 %add43, 2
  %call45 = call noalias i8* @malloc(i64 %add44) #4
  store i8* %call45, i8** %name, align 8
  %30 = load i8*, i8** %name, align 8
  %tobool46 = icmp ne i8* %30, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.else
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.else
  %31 = load i8*, i8** %name, align 8
  %32 = load i8*, i8** %filename.addr, align 8
  %call49 = call i8* @strcpy(i8* %31, i8* %32) #4
  %33 = load i32, i32* %len, align 4
  %idxprom50 = sext i32 %33 to i64
  %34 = load i8*, i8** %name, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %34, i64 %idxprom50
  store i8 46, i8* %arrayidx51, align 1
  %35 = load i8*, i8** %name, align 8
  %36 = load i32, i32* %len, align 4
  %idx.ext52 = sext i32 %36 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %35, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 1
  %37 = load i8*, i8** %extension.addr, align 8
  %call55 = call i8* @strcpy(i8* %add.ptr54, i8* %37) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.48, %if.end.35
  %38 = load i8*, i8** %name, align 8
  ret i8* %38
}

declare void @TreeCCOpen(%struct.TreeCCInput*, i8*, %struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare %struct._tagTreeCCContext* @TreeCCContextCreate(%struct.TreeCCInput*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ExtraOptions(%struct._tagTreeCCContext* %context, i8** %options, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %options.addr = alloca i8**, align 8
  %num.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %value = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8** %options, i8*** %options.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %0 = load i32, i32* %num.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end.18

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %options.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %options.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %value, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.7, %while.body
  %4 = load i8*, i8** %value, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %6 = load i8*, i8** %value, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %8 = phi i1 [ false, %while.cond.1 ], [ %cmp5, %land.rhs ]
  br i1 %8, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end
  %9 = load i8*, i8** %value, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %value, align 8
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %value, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i8* null, i8** %value, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %12 = load i8*, i8** %value, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr12, i8** %value, align 8
  store i8 0, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %value, align 8
  %call = call i32 @TreeCCOptionProcess(%struct._tagTreeCCContext* %13, i8* %14, i8* %15)
  %cmp13 = icmp ne i32 %call, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %name, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0), i8* %17)
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  br label %while.cond

while.end.18:                                     ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.18, %if.then.15
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext*, i8*, i8*, i32) #2

declare void @TreeCCParse(%struct._tagTreeCCContext*) #2

declare void @TreeCCClose(%struct.TreeCCInput*, i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @perror(i8*) #2

declare void @TreeCCNodeValidate(%struct._tagTreeCCContext*) #2

declare void @TreeCCOperationValidate(%struct._tagTreeCCContext*) #2

declare void @TreeCCContextDestroy(%struct._tagTreeCCContext*) #2

declare void @TreeCCGenerate(%struct._tagTreeCCContext*) #2

declare i32 @TreeCCStreamFlush(%struct._tagTreeCCStream*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

declare i32 @TreeCCOptionProcess(%struct._tagTreeCCContext*, i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
