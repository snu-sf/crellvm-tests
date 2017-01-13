; ModuleID = './MultiSource.Benchmarks.VersaBench/28.dbms.openFiles.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@openFiles.name = internal global [10 x i8] c"openFiles\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"missing argument for -i\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [-h], or\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"       %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" [-i <input file = stdin>]\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c" [-o <output file = stdout>]\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" [-m <metrics file = stderr>]\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"missing argument for -o\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"missing argument for -m\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"incorrect format - unknown option\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"error opening input file\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"error opening output file\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"error opening metrics file\00", align 1

; Function Attrs: nounwind uwtable
define i64 @openFiles(i64 %argc, i8** %argv, %struct._IO_FILE** %inputFile, %struct._IO_FILE** %outputFile, %struct._IO_FILE** %metricsFile) #0 {
entry:
  %retval = alloca i64, align 8
  %argc.addr = alloca i64, align 8
  %argv.addr = alloca i8**, align 8
  %inputFile.addr = alloca %struct._IO_FILE**, align 8
  %outputFile.addr = alloca %struct._IO_FILE**, align 8
  %metricsFile.addr = alloca %struct._IO_FILE**, align 8
  %inputFileName = alloca i8*, align 8
  %outputFileName = alloca i8*, align 8
  %metricsFileName = alloca i8*, align 8
  %i = alloca i64, align 8
  store i64 %argc, i64* %argc.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._IO_FILE** %inputFile, %struct._IO_FILE*** %inputFile.addr, align 8
  store %struct._IO_FILE** %outputFile, %struct._IO_FILE*** %outputFile.addr, align 8
  store %struct._IO_FILE** %metricsFile, %struct._IO_FILE*** %metricsFile.addr, align 8
  store i8* null, i8** %inputFileName, align 8
  store i8* null, i8** %outputFileName, align 8
  store i8* null, i8** %metricsFileName, align 8
  %0 = load i64, i64* %argc.addr, align 8
  %cmp = icmp sgt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end.106

if.then:                                          ; preds = %entry
  store i64 1, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.105, %if.then
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %argc.addr, align 8
  %cmp1 = icmp slt i64 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %3
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %5) #3
  %cmp2 = icmp eq i64 %call, 2
  br i1 %cmp2, label %land.lhs.true, label %if.else.97

land.lhs.true:                                    ; preds = %while.body
  %6 = load i64, i64* %i, align 8
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 %6
  %8 = load i8*, i8** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv, 45
  br i1 %cmp5, label %if.then.7, label %if.else.97

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load i64, i64* %i, align 8
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %11, i64 %10
  %12 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 105
  br i1 %cmp11, label %if.then.13, label %if.else.26

if.then.13:                                       ; preds = %if.then.7
  %14 = load i64, i64* %i, align 8
  %add = add nsw i64 %14, 1
  %15 = load i64, i64* %argc.addr, align 8
  %cmp14 = icmp slt i64 %add, %15
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %16 = load i64, i64* %i, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %i, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %17
  %19 = load i8*, i8** %arrayidx17, align 8
  store i8* %19, i8** %inputFileName, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.13
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %inputFileName, align 8
  store i8* null, i8** %outputFileName, align 8
  store i8* null, i8** %metricsFileName, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %24, i64 0
  %25 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i64 2, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.16
  %29 = load i64, i64* %i, align 8
  %inc25 = add nsw i64 %29, 1
  store i64 %inc25, i64* %i, align 8
  br label %if.end.96

if.else.26:                                       ; preds = %if.then.7
  %30 = load i64, i64* %i, align 8
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %31, i64 %30
  %32 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %33 to i32
  %cmp30 = icmp eq i32 %conv29, 111
  br i1 %cmp30, label %if.then.32, label %if.else.49

if.then.32:                                       ; preds = %if.else.26
  %34 = load i64, i64* %i, align 8
  %add33 = add nsw i64 %34, 1
  %35 = load i64, i64* %argc.addr, align 8
  %cmp34 = icmp slt i64 %add33, %35
  br i1 %cmp34, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.then.32
  %36 = load i64, i64* %i, align 8
  %inc37 = add nsw i64 %36, 1
  store i64 %inc37, i64* %i, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %38, i64 %37
  %39 = load i8*, i8** %arrayidx38, align 8
  store i8* %39, i8** %outputFileName, align 8
  br label %if.end.47

if.else.39:                                       ; preds = %if.then.32
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %inputFileName, align 8
  store i8* null, i8** %outputFileName, align 8
  store i8* null, i8** %metricsFileName, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %41, i64 0
  %42 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %44, i64 0
  %45 = load i8*, i8** %arrayidx42, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i64 2, i64* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.36
  %49 = load i64, i64* %i, align 8
  %inc48 = add nsw i64 %49, 1
  store i64 %inc48, i64* %i, align 8
  br label %if.end.95

if.else.49:                                       ; preds = %if.else.26
  %50 = load i64, i64* %i, align 8
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %51, i64 %50
  %52 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %53 to i32
  %cmp53 = icmp eq i32 %conv52, 109
  br i1 %cmp53, label %if.then.55, label %if.else.72

if.then.55:                                       ; preds = %if.else.49
  %54 = load i64, i64* %i, align 8
  %add56 = add nsw i64 %54, 1
  %55 = load i64, i64* %argc.addr, align 8
  %cmp57 = icmp slt i64 %add56, %55
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %if.then.55
  %56 = load i64, i64* %i, align 8
  %inc60 = add nsw i64 %56, 1
  store i64 %inc60, i64* %i, align 8
  %57 = load i64, i64* %i, align 8
  %58 = load i8**, i8*** %argv.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %58, i64 %57
  %59 = load i8*, i8** %arrayidx61, align 8
  store i8* %59, i8** %metricsFileName, align 8
  br label %if.end.70

if.else.62:                                       ; preds = %if.then.55
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %inputFileName, align 8
  store i8* null, i8** %outputFileName, align 8
  store i8* null, i8** %metricsFileName, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %61, i64 0
  %62 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %64, i64 0
  %65 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i64 2, i64* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.59
  %69 = load i64, i64* %i, align 8
  %inc71 = add nsw i64 %69, 1
  store i64 %inc71, i64* %i, align 8
  br label %if.end.94

if.else.72:                                       ; preds = %if.else.49
  %70 = load i64, i64* %i, align 8
  %71 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %71, i64 %70
  %72 = load i8*, i8** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %73 to i32
  %cmp76 = icmp eq i32 %conv75, 104
  br i1 %cmp76, label %if.then.78, label %if.else.86

if.then.78:                                       ; preds = %if.else.72
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load i8**, i8*** %argv.addr, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %75, i64 0
  %76 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i8**, i8*** %argv.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %78, i64 0
  %79 = load i8*, i8** %arrayidx81, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i64 1, i64* %retval
  br label %return

if.else.86:                                       ; preds = %if.else.72
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %inputFileName, align 8
  store i8* null, i8** %outputFileName, align 8
  store i8* null, i8** %metricsFileName, align 8
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = load i8**, i8*** %argv.addr, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %84, i64 0
  %85 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i8**, i8*** %argv.addr, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %87, i64 0
  %88 = load i8*, i8** %arrayidx89, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %88)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i64 2, i64* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.70
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.47
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end
  br label %if.end.105

if.else.97:                                       ; preds = %land.lhs.true, %while.body
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %inputFileName, align 8
  store i8* null, i8** %outputFileName, align 8
  store i8* null, i8** %metricsFileName, align 8
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = load i8**, i8*** %argv.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %93, i64 0
  %94 = load i8*, i8** %arrayidx98, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %94)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = load i8**, i8*** %argv.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %96, i64 0
  %97 = load i8*, i8** %arrayidx100, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i64 2, i64* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.96
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.106

if.end.106:                                       ; preds = %while.end, %entry
  %101 = load i8*, i8** %inputFileName, align 8
  %cmp107 = icmp eq i8* %101, null
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %if.end.106
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %103 = load %struct._IO_FILE**, %struct._IO_FILE*** %inputFile.addr, align 8
  store %struct._IO_FILE* %102, %struct._IO_FILE** %103, align 8
  br label %if.end.116

if.else.110:                                      ; preds = %if.end.106
  %104 = load i8*, i8** %inputFileName, align 8
  %call111 = call %struct._IO_FILE* @fopen(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %105 = load %struct._IO_FILE**, %struct._IO_FILE*** %inputFile.addr, align 8
  store %struct._IO_FILE* %call111, %struct._IO_FILE** %105, align 8
  %106 = load %struct._IO_FILE**, %struct._IO_FILE*** %inputFile.addr, align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %106, align 8
  %cmp112 = icmp eq %struct._IO_FILE* %107, null
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.else.110
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.end.115:                                       ; preds = %if.else.110
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.109
  %108 = load i8*, i8** %outputFileName, align 8
  %cmp117 = icmp eq i8* %108, null
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.116
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = load %struct._IO_FILE**, %struct._IO_FILE*** %outputFile.addr, align 8
  store %struct._IO_FILE* %109, %struct._IO_FILE** %110, align 8
  br label %if.end.126

if.else.120:                                      ; preds = %if.end.116
  %111 = load i8*, i8** %outputFileName, align 8
  %call121 = call %struct._IO_FILE* @fopen(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %112 = load %struct._IO_FILE**, %struct._IO_FILE*** %outputFile.addr, align 8
  store %struct._IO_FILE* %call121, %struct._IO_FILE** %112, align 8
  %113 = load %struct._IO_FILE**, %struct._IO_FILE*** %outputFile.addr, align 8
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %113, align 8
  %cmp122 = icmp eq %struct._IO_FILE* %114, null
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.else.120
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %retval
  br label %return

if.end.125:                                       ; preds = %if.else.120
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.119
  %115 = load %struct._IO_FILE**, %struct._IO_FILE*** %outputFile.addr, align 8
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %115, align 8
  call void @initOutputBuffer(%struct._IO_FILE* %116)
  %117 = load i8*, i8** %metricsFileName, align 8
  %cmp127 = icmp eq i8* %117, null
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %if.end.126
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %119 = load %struct._IO_FILE**, %struct._IO_FILE*** %metricsFile.addr, align 8
  store %struct._IO_FILE* %118, %struct._IO_FILE** %119, align 8
  br label %if.end.136

if.else.130:                                      ; preds = %if.end.126
  %120 = load i8*, i8** %metricsFileName, align 8
  %call131 = call %struct._IO_FILE* @fopen(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %121 = load %struct._IO_FILE**, %struct._IO_FILE*** %metricsFile.addr, align 8
  store %struct._IO_FILE* %call131, %struct._IO_FILE** %121, align 8
  %122 = load %struct._IO_FILE**, %struct._IO_FILE*** %metricsFile.addr, align 8
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %122, align 8
  %cmp132 = icmp eq %struct._IO_FILE* %123, null
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.else.130
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i64 5, i64* %retval
  br label %return

if.end.135:                                       ; preds = %if.else.130
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.129
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.136, %if.then.134, %if.then.124, %if.then.114, %if.else.97, %if.else.86, %if.then.78, %if.else.62, %if.else.39, %if.else
  %124 = load i64, i64* %retval
  ret i64 %124
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @errorMessage(i8*, i8 signext) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @initOutputBuffer(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
