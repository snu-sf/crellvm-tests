; ModuleID = './MultiSource.Benchmarks.Prolangs-C/90.loader.load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

@START_ADDRESS = global i32 -1, align 4
@.str = private unnamed_addr constant [37 x i8] c"usage:  load [-l location] file ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"load: %s is not a legal starting address. Starting at %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"load: -l must be followed by a location. Starting at %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Illegal command directive, '%s'. Ignoring.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".mem\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".sym\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"load: requires at least one file name.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"ERROR: Expected a main routine. None found. Program not loaded.\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Errors detected. No executable created.\0A\00", align 1
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %INPUT_STREAM = alloca %struct._IO_FILE*, align 8
  %SYM_TAB = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %ERROR = alloca i32, align 4
  %LOCATION = alloca i32, align 4
  %START_LOCATION = alloca i32, align 4
  %EXECUTABLE_FILE = alloca i8*, align 8
  %EXECUTABLE_STREAM = alloca %struct._IO_FILE*, align 8
  %MEM_DUMP_FILE = alloca i8*, align 8
  %MEM_DUMP_STREAM = alloca %struct._IO_FILE*, align 8
  %SYM_TAB_DUMP_FILE = alloca i8*, align 8
  %SYM_TAB_DUMP_STREAM = alloca %struct._IO_FILE*, align 8
  %LOOP_COUNTER = alloca i32, align 4
  %MEMORY = alloca i8*, align 8
  %FILES_START = alloca i32, align 4
  %ARGUMENT = alloca i32, align 4
  %FLAG = alloca i32, align 4
  %NOT_LEGAL_NUM = alloca i32, align 4
  %NEXT = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ERROR, align 4
  store i32 0, i32* %LOCATION, align 4
  store i8* null, i8** %MEMORY, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end.169

if.else:                                          ; preds = %entry
  store i32 1, i32* %ARGUMENT, align 4
  %1 = load i32, i32* %ARGUMENT, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* %ARGUMENT, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 45
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %FLAG, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %if.end
  %7 = load i32, i32* %ARGUMENT, align 4
  %8 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %FLAG, align 4
  %tobool = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %ARGUMENT, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %12, i64 %idxprom8
  %13 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else.28, label %if.then.12

if.then.12:                                       ; preds = %while.body
  store i32 0, i32* %NOT_LEGAL_NUM, align 4
  %14 = load i32, i32* %ARGUMENT, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %ARGUMENT, align 4
  %15 = load i32, i32* %ARGUMENT, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %if.then.15, label %if.else.25

if.then.15:                                       ; preds = %if.then.12
  %17 = load i32, i32* %ARGUMENT, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %idxprom16
  %19 = load i8*, i8** %arrayidx17, align 8
  store i8* %19, i8** %NEXT, align 8
  %call18 = call i32 (i8**, i32, i32, i32*, ...) bitcast (i32 (...)* @GET_NUM to i32 (i8**, i32, i32, i32*, ...)*)(i8** %NEXT, i32 20, i32 10, i32* %NOT_LEGAL_NUM)
  store i32 %call18, i32* %LOCATION, align 4
  %20 = load i32, i32* %NOT_LEGAL_NUM, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.15
  %21 = load i32, i32* %ARGUMENT, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %22, i64 %idxprom21
  %23 = load i8*, i8** %arrayidx22, align 8
  %24 = load i32, i32* %LOCATION, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0), i8* %23, i32 %24)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.27

if.else.25:                                       ; preds = %if.then.12
  %25 = load i32, i32* %LOCATION, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i32 %25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.end.24
  br label %if.end.32

if.else.28:                                       ; preds = %while.body
  %26 = load i32, i32* %ARGUMENT, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %27, i64 %idxprom29
  %28 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* %28)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.end.27
  %29 = load i32, i32* %ARGUMENT, align 4
  %30 = load i32, i32* %argc.addr, align 4
  %cmp33 = icmp slt i32 %29, %30
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %31 = load i32, i32* %ARGUMENT, align 4
  %inc36 = add nsw i32 %31, 1
  store i32 %inc36, i32* %ARGUMENT, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %32 = load i32, i32* %ARGUMENT, align 4
  %33 = load i32, i32* %argc.addr, align 4
  %cmp38 = icmp slt i32 %32, %33
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.37
  %34 = load i32, i32* %ARGUMENT, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %35, i64 %idxprom41
  %36 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 45
  %conv46 = zext i1 %cmp45 to i32
  store i32 %conv46, i32* %FLAG, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.37
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i32, i32* %ARGUMENT, align 4
  %39 = load i32, i32* %argc.addr, align 4
  %cmp48 = icmp slt i32 %38, %39
  br i1 %cmp48, label %if.then.50, label %if.else.110

if.then.50:                                       ; preds = %while.end
  %40 = load i32, i32* %ARGUMENT, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %41, i64 %idxprom51
  %42 = load i8*, i8** %arrayidx52, align 8
  %call53 = call i64 @strlen(i8* %42) #4
  %add = add i64 %call53, 5
  %conv54 = trunc i64 %add to i32
  %conv55 = zext i32 %conv54 to i64
  %call56 = call noalias i8* @malloc(i64 %conv55) #5
  store i8* %call56, i8** %EXECUTABLE_FILE, align 8
  %43 = load i32, i32* %ARGUMENT, align 4
  %idxprom57 = sext i32 %43 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %44, i64 %idxprom57
  %45 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i64 @strlen(i8* %45) #4
  %add60 = add i64 %call59, 5
  %conv61 = trunc i64 %add60 to i32
  %conv62 = zext i32 %conv61 to i64
  %call63 = call noalias i8* @malloc(i64 %conv62) #5
  store i8* %call63, i8** %MEM_DUMP_FILE, align 8
  %46 = load i32, i32* %ARGUMENT, align 4
  %idxprom64 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %47, i64 %idxprom64
  %48 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i64 @strlen(i8* %48) #4
  %add67 = add i64 %call66, 5
  %conv68 = trunc i64 %add67 to i32
  %conv69 = zext i32 %conv68 to i64
  %call70 = call noalias i8* @malloc(i64 %conv69) #5
  store i8* %call70, i8** %SYM_TAB_DUMP_FILE, align 8
  %49 = load i8*, i8** %EXECUTABLE_FILE, align 8
  %50 = load i32, i32* %ARGUMENT, align 4
  %idxprom71 = sext i32 %50 to i64
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %51, i64 %idxprom71
  %52 = load i8*, i8** %arrayidx72, align 8
  %call73 = call i8* @strcpy(i8* %49, i8* %52) #5
  %53 = load i8*, i8** %MEM_DUMP_FILE, align 8
  %54 = load i32, i32* %ARGUMENT, align 4
  %idxprom74 = sext i32 %54 to i64
  %55 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %55, i64 %idxprom74
  %56 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i8* @strcpy(i8* %53, i8* %56) #5
  %57 = load i8*, i8** %SYM_TAB_DUMP_FILE, align 8
  %58 = load i32, i32* %ARGUMENT, align 4
  %idxprom77 = sext i32 %58 to i64
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %59, i64 %idxprom77
  %60 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i8* @strcpy(i8* %57, i8* %60) #5
  %61 = load i32, i32* %ARGUMENT, align 4
  %idxprom80 = sext i32 %61 to i64
  %62 = load i8**, i8*** %argv.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %62, i64 %idxprom80
  %63 = load i8*, i8** %arrayidx81, align 8
  %call82 = call i64 @strlen(i8* %63) #4
  %conv83 = trunc i64 %call82 to i32
  store i32 %conv83, i32* %LOOP_COUNTER, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.50
  %64 = load i32, i32* %LOOP_COUNTER, align 4
  %cmp84 = icmp sge i32 %64, 0
  br i1 %cmp84, label %land.rhs.86, label %land.end.92

land.rhs.86:                                      ; preds = %for.cond
  %65 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom87 = sext i32 %65 to i64
  %66 = load i8*, i8** %EXECUTABLE_FILE, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %66, i64 %idxprom87
  %67 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %67 to i32
  %cmp90 = icmp ne i32 %conv89, 46
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.86, %for.cond
  %68 = phi i1 [ false, %for.cond ], [ %cmp90, %land.rhs.86 ]
  br i1 %68, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.92
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %LOOP_COUNTER, align 4
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* %LOOP_COUNTER, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.92
  %70 = load i32, i32* %LOOP_COUNTER, align 4
  %cmp93 = icmp sle i32 %70, 0
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %for.end
  %71 = load i32, i32* %ARGUMENT, align 4
  %idxprom96 = sext i32 %71 to i64
  %72 = load i8**, i8*** %argv.addr, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %72, i64 %idxprom96
  %73 = load i8*, i8** %arrayidx97, align 8
  %call98 = call i64 @strlen(i8* %73) #4
  %conv99 = trunc i64 %call98 to i32
  store i32 %conv99, i32* %LOOP_COUNTER, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %for.end
  %74 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom101 = sext i32 %74 to i64
  %75 = load i8*, i8** %EXECUTABLE_FILE, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %75, i64 %idxprom101
  %call103 = call i8* @strcpy(i8* %arrayidx102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #5
  %76 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom104 = sext i32 %76 to i64
  %77 = load i8*, i8** %MEM_DUMP_FILE, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %77, i64 %idxprom104
  %call106 = call i8* @strcpy(i8* %arrayidx105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #5
  %78 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load i8*, i8** %SYM_TAB_DUMP_FILE, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %79, i64 %idxprom107
  %call109 = call i8* @strcpy(i8* %arrayidx108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.112

if.else.110:                                      ; preds = %while.end
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.end.100
  call void (%struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @INIT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY**, ...)*)(%struct.SYMBOL_TABLE_ENTRY** %SYM_TAB)
  call void (i8**, ...) bitcast (void (...)* @CREATE_MEMORY to void (i8**, ...)*)(i8** %MEMORY)
  %80 = load i32, i32* %ARGUMENT, align 4
  store i32 %80, i32* %FILES_START, align 4
  %81 = load i32, i32* %LOCATION, align 4
  store i32 %81, i32* %START_LOCATION, align 4
  br label %while.cond.113

while.cond.113:                                   ; preds = %if.end.132, %if.end.112
  %82 = load i32, i32* %ARGUMENT, align 4
  %83 = load i32, i32* %argc.addr, align 4
  %cmp114 = icmp slt i32 %82, %83
  br i1 %cmp114, label %land.rhs.116, label %land.end.119

land.rhs.116:                                     ; preds = %while.cond.113
  %84 = load i32, i32* %LOCATION, align 4
  %cmp117 = icmp sle i32 %84, 1048576
  br label %land.end.119

land.end.119:                                     ; preds = %land.rhs.116, %while.cond.113
  %85 = phi i1 [ false, %while.cond.113 ], [ %cmp117, %land.rhs.116 ]
  br i1 %85, label %while.body.120, label %while.end.134

while.body.120:                                   ; preds = %land.end.119
  %86 = load i32, i32* %ARGUMENT, align 4
  %idxprom121 = sext i32 %86 to i64
  %87 = load i8**, i8*** %argv.addr, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %87, i64 %idxprom121
  %88 = load i8*, i8** %arrayidx122, align 8
  %call123 = call %struct._IO_FILE* @fopen(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call123, %struct._IO_FILE** %INPUT_STREAM, align 8
  %cmp124 = icmp eq %struct._IO_FILE* %call123, null
  br i1 %cmp124, label %if.then.126, label %if.else.130

if.then.126:                                      ; preds = %while.body.120
  %89 = load i32, i32* %ARGUMENT, align 4
  %idxprom127 = sext i32 %89 to i64
  %90 = load i8**, i8*** %argv.addr, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %90, i64 %idxprom127
  %91 = load i8*, i8** %arrayidx128, align 8
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* %91)
  br label %if.end.132

if.else.130:                                      ; preds = %while.body.120
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  call void (%struct.SYMBOL_TABLE_ENTRY**, i32*, i32*, %struct._IO_FILE*, ...) bitcast (void (...)* @PASS1 to void (%struct.SYMBOL_TABLE_ENTRY**, i32*, i32*, %struct._IO_FILE*, ...)*)(%struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %LOCATION, i32* %ERROR, %struct._IO_FILE* %92)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %call131 = call i32 @fclose(%struct._IO_FILE* %93)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.126
  %94 = load i32, i32* %ARGUMENT, align 4
  %inc133 = add nsw i32 %94, 1
  store i32 %inc133, i32* %ARGUMENT, align 4
  br label %while.cond.113

while.end.134:                                    ; preds = %land.end.119
  %95 = load i32, i32* %FILES_START, align 4
  store i32 %95, i32* %ARGUMENT, align 4
  %96 = load i32, i32* %START_LOCATION, align 4
  store i32 %96, i32* %LOCATION, align 4
  br label %while.cond.135

while.cond.135:                                   ; preds = %if.end.150, %while.end.134
  %97 = load i32, i32* %ARGUMENT, align 4
  %98 = load i32, i32* %argc.addr, align 4
  %cmp136 = icmp slt i32 %97, %98
  br i1 %cmp136, label %land.rhs.138, label %land.end.141

land.rhs.138:                                     ; preds = %while.cond.135
  %99 = load i32, i32* %LOCATION, align 4
  %cmp139 = icmp sle i32 %99, 1048576
  br label %land.end.141

land.end.141:                                     ; preds = %land.rhs.138, %while.cond.135
  %100 = phi i1 [ false, %while.cond.135 ], [ %cmp139, %land.rhs.138 ]
  br i1 %100, label %while.body.142, label %while.end.152

while.body.142:                                   ; preds = %land.end.141
  %101 = load i32, i32* %ARGUMENT, align 4
  %idxprom143 = sext i32 %101 to i64
  %102 = load i8**, i8*** %argv.addr, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %102, i64 %idxprom143
  %103 = load i8*, i8** %arrayidx144, align 8
  %call145 = call %struct._IO_FILE* @fopen(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call145, %struct._IO_FILE** %INPUT_STREAM, align 8
  %cmp146 = icmp ne %struct._IO_FILE* %call145, null
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %while.body.142
  %104 = load i8*, i8** %MEMORY, align 8
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, i32*, i32*, %struct._IO_FILE*, ...) bitcast (void (...)* @PASS2 to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, i32*, i32*, %struct._IO_FILE*, ...)*)(i8* %104, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %LOCATION, i32* %ERROR, %struct._IO_FILE* %105)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %call149 = call i32 @fclose(%struct._IO_FILE* %106)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %while.body.142
  %107 = load i32, i32* %ARGUMENT, align 4
  %inc151 = add nsw i32 %107, 1
  store i32 %inc151, i32* %ARGUMENT, align 4
  br label %while.cond.135

while.end.152:                                    ; preds = %land.end.141
  %108 = load i32, i32* @START_ADDRESS, align 4
  %cmp153 = icmp eq i32 %108, -1
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %while.end.152
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %ERROR, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %while.end.152
  %109 = load i8*, i8** %SYM_TAB_DUMP_FILE, align 8
  %call158 = call %struct._IO_FILE* @fopen(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call158, %struct._IO_FILE** %SYM_TAB_DUMP_STREAM, align 8
  %110 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %SYM_TAB_DUMP_STREAM, align 8
  call void (%struct.SYMBOL_TABLE_ENTRY*, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY*, %struct._IO_FILE*, ...)*)(%struct.SYMBOL_TABLE_ENTRY* %110, %struct._IO_FILE* %111)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %SYM_TAB_DUMP_STREAM, align 8
  %call159 = call i32 @fclose(%struct._IO_FILE* %112)
  %113 = load i32, i32* %ERROR, align 4
  %tobool160 = icmp ne i32 %113, 0
  br i1 %tobool160, label %if.else.166, label %if.then.161

if.then.161:                                      ; preds = %if.end.157
  %114 = load i8*, i8** %EXECUTABLE_FILE, align 8
  %call162 = call %struct._IO_FILE* @fopen(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call162, %struct._IO_FILE** %EXECUTABLE_STREAM, align 8
  %115 = load i8*, i8** %MEM_DUMP_FILE, align 8
  %call163 = call %struct._IO_FILE* @fopen(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call163, %struct._IO_FILE** %MEM_DUMP_STREAM, align 8
  %116 = load i8*, i8** %MEMORY, align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %MEM_DUMP_STREAM, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @PRINT_MEM to void (i8*, %struct._IO_FILE*, ...)*)(i8* %116, %struct._IO_FILE* %117)
  %118 = load i8*, i8** %MEMORY, align 8
  %119 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, align 8
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %EXECUTABLE_STREAM, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY*, %struct._IO_FILE*, ...) bitcast (void (...)* @PRINT_EXEC to void (i8*, %struct.SYMBOL_TABLE_ENTRY*, %struct._IO_FILE*, ...)*)(i8* %118, %struct.SYMBOL_TABLE_ENTRY* %119, %struct._IO_FILE* %120)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %EXECUTABLE_STREAM, align 8
  %call164 = call i32 @fclose(%struct._IO_FILE* %121)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %MEM_DUMP_STREAM, align 8
  %call165 = call i32 @fclose(%struct._IO_FILE* %122)
  br label %if.end.168

if.else.166:                                      ; preds = %if.end.157
  %call167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.then.161
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @GET_NUM(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare void @INIT_SYM_TAB(...) #1

declare void @CREATE_MEMORY(...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @PASS1(...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @PASS2(...) #1

declare void @PRT_SYM_TAB(...) #1

declare void @PRINT_MEM(...) #1

declare void @PRINT_EXEC(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
