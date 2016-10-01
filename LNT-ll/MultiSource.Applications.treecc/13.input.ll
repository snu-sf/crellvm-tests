; ModuleID = './MultiSource.Applications.treecc/13.input.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"keyword\00", align 1
@KeywordTable = internal constant [19 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 20 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 31 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 35 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 32 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 33 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 34 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 28 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 36 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 25 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 23 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 19 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 22 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 27 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 30 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 29 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 37 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 26 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 21 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 24 }], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown keyword `%%%s'\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"`%%' must be followed by a keyword, `{', or `%%'\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"end of file inside comment\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"no text for token type %d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"end of file inside literal code block\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s is too long\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"abstract\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"decls\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"nocreate\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"outdir\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"invalid `%c' character in input\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"invalid `\5Cx%02X' character in input\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"end of file inside string\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"end of line inside string\00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCOpen(%struct.TreeCCInput* %input, i8* %progname, %struct._IO_FILE* %stream, i8* %filename) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %progname.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i8* %progname, i8** %progname.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 0
  store i32 1, i32* %token, align 4
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %1, i32 0, i32 1
  store i8* null, i8** %text, align 8
  %2 = load i8*, i8** %progname.addr, align 8
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %progname1 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 2
  store i8* %2, i8** %progname1, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 3
  store %struct._IO_FILE* %4, %struct._IO_FILE** %stream2, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %filename3 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 4
  store i8* %6, i8** %filename3, align 8
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 5
  store i64 1, i64* %linenum, align 8
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %9, i32 0, i32 6
  store i64 1, i64* %nextline, align 8
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %errors = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %10, i32 0, i32 7
  store i32 0, i32* %errors, align 4
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 8
  store i32 0, i32* %sawEOF, align 4
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %parseLiteral = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %12, i32 0, i32 9
  store i32 1, i32* %parseLiteral, align 4
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %readOnly = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %13, i32 0, i32 10
  store i32 0, i32* %readOnly, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCClose(%struct.TreeCCInput* %input, i32 %closeRaw) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %closeRaw.addr = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %closeRaw, i32* %closeRaw.addr, align 4
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 1
  %1 = load i8*, i8** %text, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text1 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 1
  %3 = load i8*, i8** %text1, align 8
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %cmp = icmp ne i8* %3, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 1
  %6 = load i8*, i8** %text2, align 8
  call void @free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %closeRaw.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @TreeCCNextToken(%struct.TreeCCInput* %input) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %ch = alloca i32, align 4
  %low = alloca i32, align 4
  %middle = alloca i32, align 4
  %high = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 8
  %1 = load i32, i32* %sawEOF, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 6
  %3 = load i64, i64* %nextline, align 8
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 5
  store i64 %3, i64* %linenum, align 8
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 0
  store i32 0, i32* %token, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %6, i32 0, i32 1
  %7 = load i8*, i8** %text, align 8
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 1
  %9 = load i8*, i8** %text2, align 8
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %10, i32 0, i32 11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %cmp = icmp ne i8* %9, %arraydecay
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text4 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 1
  %12 = load i8*, i8** %text4, align 8
  call void @free(i8* %12) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %13, i32 0, i32 1
  store i8* null, i8** %text6, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.301, %if.end.5
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline7 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %14, i32 0, i32 6
  %15 = load i64, i64* %nextline7, align 8
  %16 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum8 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %16, i32 0, i32 5
  store i64 %15, i64* %linenum8, align 8
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %18)
  store i32 %call, i32* %ch, align 4
  %19 = load i32, i32* %ch, align 4
  %cmp9 = icmp eq i32 %19, -1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.cond
  br label %for.end.302

if.else:                                          ; preds = %for.cond
  %20 = load i32, i32* %ch, align 4
  %cmp11 = icmp eq i32 %20, 37
  br i1 %cmp11, label %if.then.12, label %if.else.60

if.then.12:                                       ; preds = %if.else
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream13 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %21, i32 0, i32 3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream13, align 8
  %call14 = call i32 @_IO_getc(%struct._IO_FILE* %22)
  store i32 %call14, i32* %ch, align 4
  %23 = load i32, i32* %ch, align 4
  %cmp15 = icmp eq i32 %23, 123
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.12
  %24 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralCodeDefn(%struct.TreeCCInput* %24, i32 0)
  %25 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token17 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %25, i32 0, i32 0
  store i32 2, i32* %token17, align 4
  store i32 1, i32* %retval
  br label %return

if.else.18:                                       ; preds = %if.then.12
  %26 = load i32, i32* %ch, align 4
  %cmp19 = icmp eq i32 %26, 37
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.18
  %27 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralCodeDefn(%struct.TreeCCInput* %27, i32 1)
  %28 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token21 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %28, i32 0, i32 0
  store i32 4, i32* %token21, align 4
  store i32 1, i32* %retval
  br label %return

if.else.22:                                       ; preds = %if.else.18
  %29 = load i32, i32* %ch, align 4
  %cmp23 = icmp sge i32 %29, 65
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false

land.lhs.true.24:                                 ; preds = %if.else.22
  %30 = load i32, i32* %ch, align 4
  %cmp25 = icmp sle i32 %30, 90
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.24, %if.else.22
  %31 = load i32, i32* %ch, align 4
  %cmp26 = icmp sge i32 %31, 97
  br i1 %cmp26, label %land.lhs.true.27, label %lor.lhs.false.29

land.lhs.true.27:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %ch, align 4
  %cmp28 = icmp sle i32 %32, 122
  br i1 %cmp28, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %land.lhs.true.27, %lor.lhs.false
  %33 = load i32, i32* %ch, align 4
  %cmp30 = icmp eq i32 %33, 95
  br i1 %cmp30, label %if.then.31, label %if.else.50

if.then.31:                                       ; preds = %lor.lhs.false.29, %land.lhs.true.27, %land.lhs.true.24
  %34 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %35 = load i32, i32* %ch, align 4
  call void @RecogIdentifier(%struct.TreeCCInput* %34, i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %low, align 4
  store i32 18, i32* %high, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %if.then.31
  %36 = load i32, i32* %low, align 4
  %37 = load i32, i32* %high, align 4
  %cmp32 = icmp sle i32 %36, %37
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i32, i32* %low, align 4
  %39 = load i32, i32* %high, align 4
  %add = add nsw i32 %38, %39
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %middle, align 4
  %40 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text33 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %40, i32 0, i32 1
  %41 = load i8*, i8** %text33, align 8
  %42 = load i32, i32* %middle, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.anon], [19 x %struct.anon]* @KeywordTable, i32 0, i64 %idxprom
  %keyword = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %43 = load i8*, i8** %keyword, align 8
  %call34 = call i32 @strcmp(i8* %41, i8* %43) #5
  store i32 %call34, i32* %ch, align 4
  %44 = load i32, i32* %ch, align 4
  %tobool35 = icmp ne i32 %44, 0
  br i1 %tobool35, label %if.else.41, label %if.then.36

if.then.36:                                       ; preds = %while.body
  %45 = load i32, i32* %middle, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds [19 x %struct.anon], [19 x %struct.anon]* @KeywordTable, i32 0, i64 %idxprom37
  %token39 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx38, i32 0, i32 1
  %46 = load i32, i32* %token39, align 4
  %47 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token40 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %47, i32 0, i32 0
  store i32 %46, i32* %token40, align 4
  store i32 1, i32* %retval
  br label %return

if.else.41:                                       ; preds = %while.body
  %48 = load i32, i32* %ch, align 4
  %cmp42 = icmp slt i32 %48, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.41
  %49 = load i32, i32* %middle, align 4
  %sub = sub nsw i32 %49, 1
  store i32 %sub, i32* %high, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %if.else.41
  %50 = load i32, i32* %middle, align 4
  %add45 = add nsw i32 %50, 1
  store i32 %add45, i32* %low, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %52 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text48 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %52, i32 0, i32 1
  %53 = load i8*, i8** %text48, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %53)
  %54 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token49 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %54, i32 0, i32 0
  store i32 18, i32* %token49, align 4
  store i32 1, i32* %retval
  br label %return

if.else.50:                                       ; preds = %lor.lhs.false.29
  %55 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  %56 = load i32, i32* %ch, align 4
  %cmp51 = icmp eq i32 %56, -1
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.50
  br label %for.end.302

if.else.53:                                       ; preds = %if.else.50
  %57 = load i32, i32* %ch, align 4
  %58 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream54 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %58, i32 0, i32 3
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %stream54, align 8
  %call55 = call i32 @ungetc(i32 %57, %struct._IO_FILE* %59)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.300

if.else.60:                                       ; preds = %if.else
  %60 = load i32, i32* %ch, align 4
  %cmp61 = icmp sge i32 %60, 65
  br i1 %cmp61, label %land.lhs.true.62, label %lor.lhs.false.64

land.lhs.true.62:                                 ; preds = %if.else.60
  %61 = load i32, i32* %ch, align 4
  %cmp63 = icmp sle i32 %61, 90
  br i1 %cmp63, label %if.then.70, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.62, %if.else.60
  %62 = load i32, i32* %ch, align 4
  %cmp65 = icmp sge i32 %62, 97
  br i1 %cmp65, label %land.lhs.true.66, label %lor.lhs.false.68

land.lhs.true.66:                                 ; preds = %lor.lhs.false.64
  %63 = load i32, i32* %ch, align 4
  %cmp67 = icmp sle i32 %63, 122
  br i1 %cmp67, label %if.then.70, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.lhs.true.66, %lor.lhs.false.64
  %64 = load i32, i32* %ch, align 4
  %cmp69 = icmp eq i32 %64, 95
  br i1 %cmp69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %lor.lhs.false.68, %land.lhs.true.66, %land.lhs.true.62
  %65 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %66 = load i32, i32* %ch, align 4
  call void @RecogIdentifier(%struct.TreeCCInput* %65, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  %67 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token71 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %67, i32 0, i32 0
  store i32 1, i32* %token71, align 4
  store i32 1, i32* %retval
  br label %return

if.else.72:                                       ; preds = %lor.lhs.false.68
  %68 = load i32, i32* %ch, align 4
  %cmp73 = icmp eq i32 %68, 40
  br i1 %cmp73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.else.72
  %69 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token75 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %69, i32 0, i32 0
  store i32 5, i32* %token75, align 4
  store i32 1, i32* %retval
  br label %return

if.else.76:                                       ; preds = %if.else.72
  %70 = load i32, i32* %ch, align 4
  %cmp77 = icmp eq i32 %70, 41
  br i1 %cmp77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.else.76
  %71 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token79 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %71, i32 0, i32 0
  store i32 6, i32* %token79, align 4
  store i32 1, i32* %retval
  br label %return

if.else.80:                                       ; preds = %if.else.76
  %72 = load i32, i32* %ch, align 4
  %cmp81 = icmp eq i32 %72, 125
  br i1 %cmp81, label %if.then.82, label %if.else.84

if.then.82:                                       ; preds = %if.else.80
  %73 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token83 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %73, i32 0, i32 0
  store i32 8, i32* %token83, align 4
  store i32 1, i32* %retval
  br label %return

if.else.84:                                       ; preds = %if.else.80
  %74 = load i32, i32* %ch, align 4
  %cmp85 = icmp eq i32 %74, 91
  br i1 %cmp85, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.else.84
  %75 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token87 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %75, i32 0, i32 0
  store i32 9, i32* %token87, align 4
  store i32 1, i32* %retval
  br label %return

if.else.88:                                       ; preds = %if.else.84
  %76 = load i32, i32* %ch, align 4
  %cmp89 = icmp eq i32 %76, 93
  br i1 %cmp89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.88
  %77 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token91 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %77, i32 0, i32 0
  store i32 10, i32* %token91, align 4
  store i32 1, i32* %retval
  br label %return

if.else.92:                                       ; preds = %if.else.88
  %78 = load i32, i32* %ch, align 4
  %cmp93 = icmp eq i32 %78, 44
  br i1 %cmp93, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else.92
  %79 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token95 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %79, i32 0, i32 0
  store i32 11, i32* %token95, align 4
  store i32 1, i32* %retval
  br label %return

if.else.96:                                       ; preds = %if.else.92
  %80 = load i32, i32* %ch, align 4
  %cmp97 = icmp eq i32 %80, 61
  br i1 %cmp97, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.else.96
  %81 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token99 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %81, i32 0, i32 0
  store i32 12, i32* %token99, align 4
  store i32 1, i32* %retval
  br label %return

if.else.100:                                      ; preds = %if.else.96
  %82 = load i32, i32* %ch, align 4
  %cmp101 = icmp eq i32 %82, 42
  br i1 %cmp101, label %if.then.102, label %if.else.104

if.then.102:                                      ; preds = %if.else.100
  %83 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token103 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %83, i32 0, i32 0
  store i32 13, i32* %token103, align 4
  store i32 1, i32* %retval
  br label %return

if.else.104:                                      ; preds = %if.else.100
  %84 = load i32, i32* %ch, align 4
  %cmp105 = icmp eq i32 %84, 38
  br i1 %cmp105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.else.104
  %85 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token107 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %85, i32 0, i32 0
  store i32 14, i32* %token107, align 4
  store i32 1, i32* %retval
  br label %return

if.else.108:                                      ; preds = %if.else.104
  %86 = load i32, i32* %ch, align 4
  %cmp109 = icmp eq i32 %86, 59
  br i1 %cmp109, label %if.then.110, label %if.else.112

if.then.110:                                      ; preds = %if.else.108
  %87 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token111 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %87, i32 0, i32 0
  store i32 15, i32* %token111, align 4
  store i32 1, i32* %retval
  br label %return

if.else.112:                                      ; preds = %if.else.108
  %88 = load i32, i32* %ch, align 4
  %cmp113 = icmp eq i32 %88, 58
  br i1 %cmp113, label %if.then.114, label %if.else.132

if.then.114:                                      ; preds = %if.else.112
  %89 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream115 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %89, i32 0, i32 3
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %stream115, align 8
  %call116 = call i32 @_IO_getc(%struct._IO_FILE* %90)
  store i32 %call116, i32* %ch, align 4
  %91 = load i32, i32* %ch, align 4
  %cmp117 = icmp eq i32 %91, 58
  br i1 %cmp117, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.then.114
  %92 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token119 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %92, i32 0, i32 0
  store i32 16, i32* %token119, align 4
  store i32 1, i32* %retval
  br label %return

if.else.120:                                      ; preds = %if.then.114
  %93 = load i32, i32* %ch, align 4
  %cmp121 = icmp eq i32 %93, -1
  br i1 %cmp121, label %if.then.122, label %if.else.127

if.then.122:                                      ; preds = %if.else.120
  %94 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @InvalidChar(%struct.TreeCCInput* %94, i32 58)
  %95 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF123 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %95, i32 0, i32 8
  store i32 1, i32* %sawEOF123, align 4
  %96 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline124 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %96, i32 0, i32 6
  %97 = load i64, i64* %nextline124, align 8
  %98 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum125 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %98, i32 0, i32 5
  store i64 %97, i64* %linenum125, align 8
  %99 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token126 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %99, i32 0, i32 0
  store i32 0, i32* %token126, align 4
  store i32 0, i32* %retval
  br label %return

if.else.127:                                      ; preds = %if.else.120
  %100 = load i32, i32* %ch, align 4
  %101 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream128 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %101, i32 0, i32 3
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %stream128, align 8
  %call129 = call i32 @ungetc(i32 %100, %struct._IO_FILE* %102)
  %103 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @InvalidChar(%struct.TreeCCInput* %103, i32 58)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %if.end.288

if.else.132:                                      ; preds = %if.else.112
  %104 = load i32, i32* %ch, align 4
  %cmp133 = icmp eq i32 %104, 34
  br i1 %cmp133, label %if.then.136, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %if.else.132
  %105 = load i32, i32* %ch, align 4
  %cmp135 = icmp eq i32 %105, 39
  br i1 %cmp135, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %lor.lhs.false.134, %if.else.132
  %106 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %107 = load i32, i32* %ch, align 4
  call void @RecogString(%struct.TreeCCInput* %106, i32 %107)
  %108 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token137 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %108, i32 0, i32 0
  store i32 17, i32* %token137, align 4
  store i32 1, i32* %retval
  br label %return

if.else.138:                                      ; preds = %lor.lhs.false.134
  %109 = load i32, i32* %ch, align 4
  %cmp139 = icmp eq i32 %109, 10
  br i1 %cmp139, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %if.else.138
  %110 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline141 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %110, i32 0, i32 6
  %111 = load i64, i64* %nextline141, align 8
  %inc = add nsw i64 %111, 1
  store i64 %inc, i64* %nextline141, align 8
  br label %if.end.286

if.else.142:                                      ; preds = %if.else.138
  %112 = load i32, i32* %ch, align 4
  %cmp143 = icmp eq i32 %112, 13
  br i1 %cmp143, label %if.then.144, label %if.else.159

if.then.144:                                      ; preds = %if.else.142
  %113 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream145 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %113, i32 0, i32 3
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %stream145, align 8
  %call146 = call i32 @_IO_getc(%struct._IO_FILE* %114)
  store i32 %call146, i32* %ch, align 4
  %115 = load i32, i32* %ch, align 4
  %cmp147 = icmp eq i32 %115, -1
  br i1 %cmp147, label %if.then.148, label %if.else.150

if.then.148:                                      ; preds = %if.then.144
  %116 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF149 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %116, i32 0, i32 8
  store i32 1, i32* %sawEOF149, align 4
  br label %if.end.156

if.else.150:                                      ; preds = %if.then.144
  %117 = load i32, i32* %ch, align 4
  %cmp151 = icmp ne i32 %117, 10
  br i1 %cmp151, label %if.then.152, label %if.end.155

if.then.152:                                      ; preds = %if.else.150
  %118 = load i32, i32* %ch, align 4
  %119 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream153 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %119, i32 0, i32 3
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %stream153, align 8
  %call154 = call i32 @ungetc(i32 %118, %struct._IO_FILE* %120)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.152, %if.else.150
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.148
  %121 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline157 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %121, i32 0, i32 6
  %122 = load i64, i64* %nextline157, align 8
  %inc158 = add nsw i64 %122, 1
  store i64 %inc158, i64* %nextline157, align 8
  br label %if.end.285

if.else.159:                                      ; preds = %if.else.142
  %123 = load i32, i32* %ch, align 4
  %cmp160 = icmp eq i32 %123, 123
  br i1 %cmp160, label %if.then.161, label %if.else.167

if.then.161:                                      ; preds = %if.else.159
  %124 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %parseLiteral = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %124, i32 0, i32 9
  %125 = load i32, i32* %parseLiteral, align 4
  %tobool162 = icmp ne i32 %125, 0
  br i1 %tobool162, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.then.161
  %126 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralCode(%struct.TreeCCInput* %126)
  %127 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token164 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %127, i32 0, i32 0
  store i32 3, i32* %token164, align 4
  store i32 1, i32* %retval
  br label %return

if.else.165:                                      ; preds = %if.then.161
  %128 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token166 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %128, i32 0, i32 0
  store i32 7, i32* %token166, align 4
  store i32 1, i32* %retval
  br label %return

if.else.167:                                      ; preds = %if.else.159
  %129 = load i32, i32* %ch, align 4
  %cmp168 = icmp eq i32 %129, 32
  br i1 %cmp168, label %if.then.175, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %if.else.167
  %130 = load i32, i32* %ch, align 4
  %cmp170 = icmp eq i32 %130, 9
  br i1 %cmp170, label %if.then.175, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %lor.lhs.false.169
  %131 = load i32, i32* %ch, align 4
  %cmp172 = icmp eq i32 %131, 12
  br i1 %cmp172, label %if.then.175, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %lor.lhs.false.171
  %132 = load i32, i32* %ch, align 4
  %cmp174 = icmp eq i32 %132, 11
  br i1 %cmp174, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %lor.lhs.false.173, %lor.lhs.false.171, %lor.lhs.false.169, %if.else.167
  br label %if.end.283

if.else.176:                                      ; preds = %lor.lhs.false.173
  %133 = load i32, i32* %ch, align 4
  %cmp177 = icmp eq i32 %133, 47
  br i1 %cmp177, label %if.then.178, label %if.else.281

if.then.178:                                      ; preds = %if.else.176
  %134 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream179 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %134, i32 0, i32 3
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %stream179, align 8
  %call180 = call i32 @_IO_getc(%struct._IO_FILE* %135)
  store i32 %call180, i32* %ch, align 4
  %136 = load i32, i32* %ch, align 4
  %cmp181 = icmp eq i32 %136, 42
  br i1 %cmp181, label %if.then.182, label %if.else.236

if.then.182:                                      ; preds = %if.then.178
  br label %for.cond.183

for.cond.183:                                     ; preds = %if.end.235, %if.then.182
  %137 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream184 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %137, i32 0, i32 3
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %stream184, align 8
  %call185 = call i32 @_IO_getc(%struct._IO_FILE* %138)
  store i32 %call185, i32* %ch, align 4
  %139 = load i32, i32* %ch, align 4
  %cmp186 = icmp eq i32 %139, -1
  br i1 %cmp186, label %if.then.187, label %if.else.192

if.then.187:                                      ; preds = %for.cond.183
  br label %eofInComment

eofInComment:                                     ; preds = %if.then.224, %if.then.199, %if.then.187
  %140 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  %141 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF188 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %141, i32 0, i32 8
  store i32 1, i32* %sawEOF188, align 4
  %142 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline189 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %142, i32 0, i32 6
  %143 = load i64, i64* %nextline189, align 8
  %144 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum190 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %144, i32 0, i32 5
  store i64 %143, i64* %linenum190, align 8
  %145 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token191 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %145, i32 0, i32 0
  store i32 0, i32* %token191, align 4
  store i32 0, i32* %retval
  br label %return

if.else.192:                                      ; preds = %for.cond.183
  %146 = load i32, i32* %ch, align 4
  %cmp193 = icmp eq i32 %146, 42
  br i1 %cmp193, label %if.then.194, label %if.else.211

if.then.194:                                      ; preds = %if.else.192
  br label %for.cond.195

for.cond.195:                                     ; preds = %if.end.210, %if.then.194
  %147 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream196 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %147, i32 0, i32 3
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %stream196, align 8
  %call197 = call i32 @_IO_getc(%struct._IO_FILE* %148)
  store i32 %call197, i32* %ch, align 4
  %149 = load i32, i32* %ch, align 4
  %cmp198 = icmp eq i32 %149, -1
  br i1 %cmp198, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %for.cond.195
  br label %eofInComment

if.else.200:                                      ; preds = %for.cond.195
  %150 = load i32, i32* %ch, align 4
  %cmp201 = icmp eq i32 %150, 47
  br i1 %cmp201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %if.else.200
  br label %endComment

if.else.203:                                      ; preds = %if.else.200
  %151 = load i32, i32* %ch, align 4
  %cmp204 = icmp ne i32 %151, 42
  br i1 %cmp204, label %if.then.205, label %if.end.208

if.then.205:                                      ; preds = %if.else.203
  %152 = load i32, i32* %ch, align 4
  %153 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream206 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %153, i32 0, i32 3
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %stream206, align 8
  %call207 = call i32 @ungetc(i32 %152, %struct._IO_FILE* %154)
  br label %for.end

if.end.208:                                       ; preds = %if.else.203
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209
  br label %for.cond.195

for.end:                                          ; preds = %if.then.205
  br label %if.end.234

if.else.211:                                      ; preds = %if.else.192
  %155 = load i32, i32* %ch, align 4
  %cmp212 = icmp eq i32 %155, 10
  br i1 %cmp212, label %if.then.213, label %if.else.216

if.then.213:                                      ; preds = %if.else.211
  %156 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline214 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %156, i32 0, i32 6
  %157 = load i64, i64* %nextline214, align 8
  %inc215 = add nsw i64 %157, 1
  store i64 %inc215, i64* %nextline214, align 8
  br label %if.end.233

if.else.216:                                      ; preds = %if.else.211
  %158 = load i32, i32* %ch, align 4
  %cmp217 = icmp eq i32 %158, 13
  br i1 %cmp217, label %if.then.218, label %if.end.232

if.then.218:                                      ; preds = %if.else.216
  %159 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline219 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %159, i32 0, i32 6
  %160 = load i64, i64* %nextline219, align 8
  %inc220 = add nsw i64 %160, 1
  store i64 %inc220, i64* %nextline219, align 8
  %161 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream221 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %161, i32 0, i32 3
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %stream221, align 8
  %call222 = call i32 @_IO_getc(%struct._IO_FILE* %162)
  store i32 %call222, i32* %ch, align 4
  %163 = load i32, i32* %ch, align 4
  %cmp223 = icmp eq i32 %163, -1
  br i1 %cmp223, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %if.then.218
  br label %eofInComment

if.else.225:                                      ; preds = %if.then.218
  %164 = load i32, i32* %ch, align 4
  %cmp226 = icmp ne i32 %164, 10
  br i1 %cmp226, label %if.then.227, label %if.end.230

if.then.227:                                      ; preds = %if.else.225
  %165 = load i32, i32* %ch, align 4
  %166 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream228 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %166, i32 0, i32 3
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %stream228, align 8
  %call229 = call i32 @ungetc(i32 %165, %struct._IO_FILE* %167)
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.227, %if.else.225
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.else.216
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.213
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %for.end
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234
  br label %for.cond.183

endComment:                                       ; preds = %if.then.202
  br label %if.end.280

if.else.236:                                      ; preds = %if.then.178
  %168 = load i32, i32* %ch, align 4
  %cmp237 = icmp eq i32 %168, 47
  br i1 %cmp237, label %if.then.238, label %if.else.272

if.then.238:                                      ; preds = %if.else.236
  br label %for.cond.239

for.cond.239:                                     ; preds = %if.end.268, %if.then.238
  %169 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream240 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %169, i32 0, i32 3
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %stream240, align 8
  %call241 = call i32 @_IO_getc(%struct._IO_FILE* %170)
  store i32 %call241, i32* %ch, align 4
  %171 = load i32, i32* %ch, align 4
  %cmp242 = icmp eq i32 %171, -1
  br i1 %cmp242, label %if.then.243, label %if.else.248

if.then.243:                                      ; preds = %for.cond.239
  %172 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF244 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %172, i32 0, i32 8
  store i32 1, i32* %sawEOF244, align 4
  %173 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline245 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %173, i32 0, i32 6
  %174 = load i64, i64* %nextline245, align 8
  %175 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum246 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %175, i32 0, i32 5
  store i64 %174, i64* %linenum246, align 8
  %176 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token247 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %176, i32 0, i32 0
  store i32 0, i32* %token247, align 4
  store i32 0, i32* %retval
  br label %return

if.else.248:                                      ; preds = %for.cond.239
  %177 = load i32, i32* %ch, align 4
  %cmp249 = icmp eq i32 %177, 10
  br i1 %cmp249, label %if.then.250, label %if.else.251

if.then.250:                                      ; preds = %if.else.248
  br label %for.end.269

if.else.251:                                      ; preds = %if.else.248
  %178 = load i32, i32* %ch, align 4
  %cmp252 = icmp eq i32 %178, 13
  br i1 %cmp252, label %if.then.253, label %if.end.266

if.then.253:                                      ; preds = %if.else.251
  %179 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream254 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %179, i32 0, i32 3
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %stream254, align 8
  %call255 = call i32 @_IO_getc(%struct._IO_FILE* %180)
  store i32 %call255, i32* %ch, align 4
  %181 = load i32, i32* %ch, align 4
  %cmp256 = icmp eq i32 %181, -1
  br i1 %cmp256, label %if.then.257, label %if.else.259

if.then.257:                                      ; preds = %if.then.253
  %182 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF258 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %182, i32 0, i32 8
  store i32 1, i32* %sawEOF258, align 4
  br label %if.end.265

if.else.259:                                      ; preds = %if.then.253
  %183 = load i32, i32* %ch, align 4
  %cmp260 = icmp ne i32 %183, 10
  br i1 %cmp260, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %if.else.259
  %184 = load i32, i32* %ch, align 4
  %185 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream262 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %185, i32 0, i32 3
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %stream262, align 8
  %call263 = call i32 @ungetc(i32 %184, %struct._IO_FILE* %186)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %if.else.259
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.257
  br label %for.end.269

if.end.266:                                       ; preds = %if.else.251
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267
  br label %for.cond.239

for.end.269:                                      ; preds = %if.end.265, %if.then.250
  %187 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline270 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %187, i32 0, i32 6
  %188 = load i64, i64* %nextline270, align 8
  %inc271 = add nsw i64 %188, 1
  store i64 %inc271, i64* %nextline270, align 8
  br label %if.end.279

if.else.272:                                      ; preds = %if.else.236
  %189 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @InvalidChar(%struct.TreeCCInput* %189, i32 47)
  %190 = load i32, i32* %ch, align 4
  %cmp273 = icmp eq i32 %190, -1
  br i1 %cmp273, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %if.else.272
  br label %for.end.302

if.else.275:                                      ; preds = %if.else.272
  %191 = load i32, i32* %ch, align 4
  %192 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream276 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %192, i32 0, i32 3
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %stream276, align 8
  %call277 = call i32 @ungetc(i32 %191, %struct._IO_FILE* %193)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %for.end.269
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %endComment
  br label %if.end.282

if.else.281:                                      ; preds = %if.else.176
  %194 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %195 = load i32, i32* %ch, align 4
  call void @InvalidChar(%struct.TreeCCInput* %194, i32 %195)
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.281, %if.end.280
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.175
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.end.156
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.then.140
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.131
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.end.59
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300
  br label %for.cond

for.end.302:                                      ; preds = %if.then.274, %if.then.52, %if.then.10
  %196 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline303 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %196, i32 0, i32 6
  %197 = load i64, i64* %nextline303, align 8
  %198 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum304 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %198, i32 0, i32 5
  store i64 %197, i64* %linenum304, align 8
  %199 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token305 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %199, i32 0, i32 0
  store i32 0, i32* %token305, align 4
  %200 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF306 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %200, i32 0, i32 8
  store i32 1, i32* %sawEOF306, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.302, %if.then.243, %eofInComment, %if.else.165, %if.then.163, %if.then.136, %if.then.122, %if.then.118, %if.then.110, %if.then.106, %if.then.102, %if.then.98, %if.then.94, %if.then.90, %if.then.86, %if.then.82, %if.then.78, %if.then.74, %if.then.70, %while.end, %if.then.36, %if.then.20, %if.then.16, %if.then
  %201 = load i32, i32* %retval
  ret i32 %201
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @LiteralCodeDefn(%struct.TreeCCInput* %input, i32 %tillEnd) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %tillEnd.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %currlen = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %tillEnd, i32* %tillEnd.addr, align 4
  store i32 0, i32* %len, align 4
  store i32 0, i32* %currlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.75, %entry
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call, i32* %ch, align 4
  %2 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 8
  store i32 1, i32* %sawEOF, align 4
  %4 = load i32, i32* %tillEnd.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %for.end

if.else:                                          ; preds = %for.cond
  %6 = load i32, i32* %ch, align 4
  %cmp2 = icmp eq i32 %6, 37
  br i1 %cmp2, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.else
  %7 = load i32, i32* %tillEnd.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.else.26, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream5 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream5, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call6, i32* %ch, align 4
  %10 = load i32, i32* %ch, align 4
  %cmp7 = icmp eq i32 %10, 125
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.then.4
  br label %for.end

if.else.9:                                        ; preds = %if.then.4
  %11 = load i32, i32* %ch, align 4
  %cmp10 = icmp eq i32 %11, -1
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.9
  %12 = load i32, i32* %len, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %13, i32 0, i32 11
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 37, i8* %arrayidx, align 1
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %14, i32 0, i32 8
  store i32 1, i32* %sawEOF12, align 4
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %15)
  br label %for.end

if.else.13:                                       ; preds = %if.else.9
  %16 = load i32, i32* %ch, align 4
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream14 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream14, align 8
  %call15 = call i32 @ungetc(i32 %16, %struct._IO_FILE* %18)
  %19 = load i32, i32* %len, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %len, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer18 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i32 0, i32 11
  %arrayidx19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer18, i32 0, i64 %idxprom17
  store i8 37, i8* %arrayidx19, align 1
  %21 = load i32, i32* %len, align 4
  %cmp20 = icmp sge i32 %21, 1023
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else.13
  %22 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %23 = load i32, i32* %len, align 4
  %24 = load i32, i32* %currlen, align 4
  %call22 = call i32 @FlushBuffer(%struct.TreeCCInput* %22, i32 %23, i32 %24)
  store i32 %call22, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else.13
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %if.end.74

if.else.26:                                       ; preds = %land.lhs.true, %if.else
  %25 = load i32, i32* %ch, align 4
  %cmp27 = icmp eq i32 %25, 10
  br i1 %cmp27, label %if.then.28, label %if.else.34

if.then.28:                                       ; preds = %if.else.26
  %26 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %26, i32 0, i32 6
  %27 = load i64, i64* %nextline, align 8
  %inc29 = add nsw i64 %27, 1
  store i64 %inc29, i64* %nextline, align 8
  %28 = load i32, i32* %len, align 4
  %inc30 = add nsw i32 %28, 1
  store i32 %inc30, i32* %len, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer32 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %29, i32 0, i32 11
  %arrayidx33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer32, i32 0, i64 %idxprom31
  store i8 10, i8* %arrayidx33, align 1
  br label %if.end.68

if.else.34:                                       ; preds = %if.else.26
  %30 = load i32, i32* %ch, align 4
  %cmp35 = icmp eq i32 %30, 13
  br i1 %cmp35, label %if.then.36, label %if.else.58

if.then.36:                                       ; preds = %if.else.34
  %31 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline37 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %31, i32 0, i32 6
  %32 = load i64, i64* %nextline37, align 8
  %inc38 = add nsw i64 %32, 1
  store i64 %inc38, i64* %nextline37, align 8
  %33 = load i32, i32* %len, align 4
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, i32* %len, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer41 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %34, i32 0, i32 11
  %arrayidx42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer41, i32 0, i64 %idxprom40
  store i8 10, i8* %arrayidx42, align 1
  %35 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream43 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %35, i32 0, i32 3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream43, align 8
  %call44 = call i32 @_IO_getc(%struct._IO_FILE* %36)
  store i32 %call44, i32* %ch, align 4
  %37 = load i32, i32* %ch, align 4
  %cmp45 = icmp eq i32 %37, -1
  br i1 %cmp45, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.then.36
  %38 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF47 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %38, i32 0, i32 8
  store i32 1, i32* %sawEOF47, align 4
  %39 = load i32, i32* %tillEnd.addr, align 4
  %tobool48 = icmp ne i32 %39, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.46
  %40 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %40)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.46
  br label %for.end

if.else.51:                                       ; preds = %if.then.36
  %41 = load i32, i32* %ch, align 4
  %cmp52 = icmp ne i32 %41, 10
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.else.51
  %42 = load i32, i32* %ch, align 4
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream54 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %43, i32 0, i32 3
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stream54, align 8
  %call55 = call i32 @ungetc(i32 %42, %struct._IO_FILE* %44)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.else.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.67

if.else.58:                                       ; preds = %if.else.34
  %45 = load i32, i32* %ch, align 4
  %cmp59 = icmp eq i32 %45, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.else.58
  %46 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %47 = load i32, i32* %ch, align 4
  call void @InvalidChar(%struct.TreeCCInput* %46, i32 %47)
  br label %if.end.66

if.else.61:                                       ; preds = %if.else.58
  %48 = load i32, i32* %ch, align 4
  %conv = trunc i32 %48 to i8
  %49 = load i32, i32* %len, align 4
  %inc62 = add nsw i32 %49, 1
  store i32 %inc62, i32* %len, align 4
  %idxprom63 = sext i32 %49 to i64
  %50 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer64 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %50, i32 0, i32 11
  %arrayidx65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer64, i32 0, i64 %idxprom63
  store i8 %conv, i8* %arrayidx65, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.61, %if.then.60
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.57
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.28
  %51 = load i32, i32* %len, align 4
  %cmp69 = icmp sge i32 %51, 1023
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.68
  %52 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %53 = load i32, i32* %len, align 4
  %54 = load i32, i32* %currlen, align 4
  %call72 = call i32 @FlushBuffer(%struct.TreeCCInput* %52, i32 %53, i32 %54)
  store i32 %call72, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.25
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  br label %for.cond

for.end:                                          ; preds = %if.end.50, %if.then.11, %if.then.8, %if.end
  %55 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %56 = load i32, i32* %len, align 4
  %57 = load i32, i32* %currlen, align 4
  call void @FinalizeBuffer(%struct.TreeCCInput* %55, i32 %56, i32 %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RecogIdentifier(%struct.TreeCCInput* %input, i32 %ch, i8* %name) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %ch.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %overflow = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %overflow, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.27, %entry
  %0 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %0, 1023
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %1 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %len, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 11
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.cond
  store i32 1, i32* %overflow, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call, i32* %ch.addr, align 4
  %6 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp eq i32 %6, -1
  br i1 %cmp1, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 8
  store i32 1, i32* %sawEOF, align 4
  br label %for.end

if.else.4:                                        ; preds = %if.end
  %8 = load i32, i32* %ch.addr, align 4
  %cmp5 = icmp sge i32 %8, 65
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else.4
  %9 = load i32, i32* %ch.addr, align 4
  %cmp7 = icmp sle i32 %9, 90
  br i1 %cmp7, label %if.end.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.4
  %10 = load i32, i32* %ch.addr, align 4
  %cmp9 = icmp sge i32 %10, 97
  br i1 %cmp9, label %land.lhs.true.11, label %lor.lhs.false.14

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %11 = load i32, i32* %ch.addr, align 4
  %cmp12 = icmp sle i32 %11, 122
  br i1 %cmp12, label %if.end.26, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.11, %lor.lhs.false
  %12 = load i32, i32* %ch.addr, align 4
  %cmp15 = icmp sge i32 %12, 48
  br i1 %cmp15, label %land.lhs.true.17, label %lor.lhs.false.20

land.lhs.true.17:                                 ; preds = %lor.lhs.false.14
  %13 = load i32, i32* %ch.addr, align 4
  %cmp18 = icmp sle i32 %13, 57
  br i1 %cmp18, label %if.end.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.17, %lor.lhs.false.14
  %14 = load i32, i32* %ch.addr, align 4
  %cmp21 = icmp eq i32 %14, 95
  br i1 %cmp21, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.20
  %15 = load i32, i32* %ch.addr, align 4
  %16 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream24 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %16, i32 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream24, align 8
  %call25 = call i32 @ungetc(i32 %15, %struct._IO_FILE* %17)
  br label %for.end

if.end.26:                                        ; preds = %lor.lhs.false.20, %land.lhs.true.17, %land.lhs.true.11, %land.lhs.true
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %if.then.3
  %18 = load i32, i32* %overflow, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  %19 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %20 = load i8*, i8** %name.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %20)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.end
  %21 = load i32, i32* %len, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer31 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %22, i32 0, i32 11
  %arrayidx32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer31, i32 0, i64 %idxprom30
  store i8 0, i8* %arrayidx32, align 1
  %23 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer33 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %23, i32 0, i32 11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer33, i32 0, i32 0
  %24 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %24, i32 0, i32 1
  store i8* %arraydecay, i8** %text, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @TreeCCError(%struct.TreeCCInput*, i8*, ...) #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @InvalidChar(%struct.TreeCCInput* %input, i32 %ch) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %ch.addr = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp sle i32 %1, 126
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %3 = load i32, i32* %ch.addr, align 4
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), i32 %3)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %5 = load i32, i32* %ch.addr, align 4
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RecogString(%struct.TreeCCInput* %input, i32 %quotech) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %quotech.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %currlen = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %quotech, i32* %quotech.addr, align 4
  store i32 0, i32* %len, align 4
  store i32 0, i32* %currlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.20, %entry
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call, i32* %ch, align 4
  %2 = load i32, i32* %ch, align 4
  %3 = load i32, i32* %quotech.addr, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  br label %for.end

if.else:                                          ; preds = %for.cond
  %4 = load i32, i32* %ch, align 4
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 8
  store i32 1, i32* %sawEOF, align 4
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  br label %for.end

if.else.3:                                        ; preds = %if.else
  %7 = load i32, i32* %ch, align 4
  %cmp4 = icmp eq i32 %7, 10
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.3
  %8 = load i32, i32* %ch, align 4
  %cmp5 = icmp eq i32 %8, 13
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %lor.lhs.false, %if.else.3
  %9 = load i32, i32* %ch, align 4
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream7 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream7, align 8
  %call8 = call i32 @ungetc(i32 %9, %struct._IO_FILE* %11)
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0))
  br label %for.end

if.else.9:                                        ; preds = %lor.lhs.false
  %13 = load i32, i32* %ch, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %15 = load i32, i32* %ch, align 4
  call void @InvalidChar(%struct.TreeCCInput* %14, i32 %15)
  br label %if.end.17

if.else.12:                                       ; preds = %if.else.9
  %16 = load i32, i32* %ch, align 4
  %conv = trunc i32 %16 to i8
  %17 = load i32, i32* %len, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %18, i32 0, i32 11
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %19 = load i32, i32* %len, align 4
  %cmp13 = icmp sge i32 %19, 1023
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else.12
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %21 = load i32, i32* %len, align 4
  %22 = load i32, i32* %currlen, align 4
  %call16 = call i32 @FlushBuffer(%struct.TreeCCInput* %20, i32 %21, i32 %22)
  store i32 %call16, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %if.then.2, %if.then
  %23 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %24 = load i32, i32* %len, align 4
  %25 = load i32, i32* %currlen, align 4
  call void @FinalizeBuffer(%struct.TreeCCInput* %23, i32 %24, i32 %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LiteralCode(%struct.TreeCCInput* %input) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %level = alloca i64, align 8
  %len = alloca i32, align 4
  %currlen = alloca i32, align 4
  %ch = alloca i32, align 4
  %quotech = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i64 0, i64* %level, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %currlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.304, %entry
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call, i32* %ch, align 4
  %2 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 8
  store i32 1, i32* %sawEOF, align 4
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %4)
  br label %for.end.305

if.else:                                          ; preds = %for.cond
  %5 = load i32, i32* %ch, align 4
  %cmp1 = icmp eq i32 %5, 125
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %6 = load i64, i64* %level, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  br label %for.end.305

if.end:                                           ; preds = %if.then.2
  %7 = load i64, i64* %level, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %level, align 8
  %8 = load i32, i32* %len, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %9, i32 0, i32 11
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 125, i8* %arrayidx, align 1
  br label %if.end.298

if.else.5:                                        ; preds = %if.else
  %10 = load i32, i32* %ch, align 4
  %cmp6 = icmp eq i32 %10, 123
  br i1 %cmp6, label %if.then.7, label %if.else.13

if.then.7:                                        ; preds = %if.else.5
  %11 = load i64, i64* %level, align 8
  %inc8 = add i64 %11, 1
  store i64 %inc8, i64* %level, align 8
  %12 = load i32, i32* %len, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %len, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer11 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %13, i32 0, i32 11
  %arrayidx12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer11, i32 0, i64 %idxprom10
  store i8 123, i8* %arrayidx12, align 1
  br label %if.end.297

if.else.13:                                       ; preds = %if.else.5
  %14 = load i32, i32* %ch, align 4
  %cmp14 = icmp eq i32 %14, 34
  br i1 %cmp14, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.13
  %15 = load i32, i32* %ch, align 4
  %cmp15 = icmp eq i32 %15, 39
  br i1 %cmp15, label %if.then.16, label %if.else.82

if.then.16:                                       ; preds = %lor.lhs.false, %if.else.13
  %16 = load i32, i32* %ch, align 4
  store i32 %16, i32* %quotech, align 4
  %17 = load i32, i32* %ch, align 4
  %conv = trunc i32 %17 to i8
  %18 = load i32, i32* %len, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %len, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer19 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %19, i32 0, i32 11
  %arrayidx20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer19, i32 0, i64 %idxprom18
  store i8 %conv, i8* %arrayidx20, align 1
  %20 = load i32, i32* %len, align 4
  %cmp21 = icmp sge i32 %20, 1023
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.16
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %22 = load i32, i32* %len, align 4
  %23 = load i32, i32* %currlen, align 4
  %call24 = call i32 @FlushBuffer(%struct.TreeCCInput* %21, i32 %22, i32 %23)
  store i32 %call24, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.70, %if.end.25
  %24 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream26 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %24, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream26, align 8
  %call27 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call27, i32* %ch, align 4
  %cmp28 = icmp ne i32 %call27, -1
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i32, i32* %ch, align 4
  %27 = load i32, i32* %quotech, align 4
  %cmp30 = icmp ne i32 %26, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i32, i32* %ch, align 4
  %cmp32 = icmp eq i32 %29, 92
  br i1 %cmp32, label %if.then.34, label %if.end.51

if.then.34:                                       ; preds = %while.body
  %30 = load i32, i32* %ch, align 4
  %conv35 = trunc i32 %30 to i8
  %31 = load i32, i32* %len, align 4
  %inc36 = add nsw i32 %31, 1
  store i32 %inc36, i32* %len, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer38 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %32, i32 0, i32 11
  %arrayidx39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer38, i32 0, i64 %idxprom37
  store i8 %conv35, i8* %arrayidx39, align 1
  %33 = load i32, i32* %len, align 4
  %cmp40 = icmp sge i32 %33, 1023
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.34
  %34 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %35 = load i32, i32* %len, align 4
  %36 = load i32, i32* %currlen, align 4
  %call43 = call i32 @FlushBuffer(%struct.TreeCCInput* %34, i32 %35, i32 %36)
  store i32 %call43, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.34
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream45 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 3
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %stream45, align 8
  %call46 = call i32 @_IO_getc(%struct._IO_FILE* %38)
  store i32 %call46, i32* %ch, align 4
  %39 = load i32, i32* %ch, align 4
  %cmp47 = icmp eq i32 %39, -1
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  br label %while.end

if.end.50:                                        ; preds = %if.end.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %while.body
  %40 = load i32, i32* %ch, align 4
  %cmp52 = icmp eq i32 %40, 10
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.51
  %41 = load i32, i32* %ch, align 4
  %cmp55 = icmp eq i32 %41, 13
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %lor.lhs.false.54, %if.end.51
  %42 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0))
  %43 = load i32, i32* %ch, align 4
  %44 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream58 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %44, i32 0, i32 3
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %stream58, align 8
  %call59 = call i32 @ungetc(i32 %43, %struct._IO_FILE* %45)
  br label %while.end

if.end.60:                                        ; preds = %lor.lhs.false.54
  %46 = load i32, i32* %ch, align 4
  %conv61 = trunc i32 %46 to i8
  %47 = load i32, i32* %len, align 4
  %inc62 = add nsw i32 %47, 1
  store i32 %inc62, i32* %len, align 4
  %idxprom63 = sext i32 %47 to i64
  %48 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer64 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %48, i32 0, i32 11
  %arrayidx65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer64, i32 0, i64 %idxprom63
  store i8 %conv61, i8* %arrayidx65, align 1
  %49 = load i32, i32* %len, align 4
  %cmp66 = icmp sge i32 %49, 1023
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.60
  %50 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %51 = load i32, i32* %len, align 4
  %52 = load i32, i32* %currlen, align 4
  %call69 = call i32 @FlushBuffer(%struct.TreeCCInput* %50, i32 %51, i32 %52)
  store i32 %call69, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.60
  br label %while.cond

while.end:                                        ; preds = %if.then.57, %if.then.49, %land.end
  %53 = load i32, i32* %ch, align 4
  %cmp71 = icmp eq i32 %53, -1
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %while.end
  %54 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF74 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %54, i32 0, i32 8
  store i32 1, i32* %sawEOF74, align 4
  %55 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  br label %for.end.305

if.else.75:                                       ; preds = %while.end
  %56 = load i32, i32* %quotech, align 4
  %conv76 = trunc i32 %56 to i8
  %57 = load i32, i32* %len, align 4
  %inc77 = add nsw i32 %57, 1
  store i32 %inc77, i32* %len, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer79 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %58, i32 0, i32 11
  %arrayidx80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer79, i32 0, i64 %idxprom78
  store i8 %conv76, i8* %arrayidx80, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.75
  br label %if.end.296

if.else.82:                                       ; preds = %lor.lhs.false
  %59 = load i32, i32* %ch, align 4
  %cmp83 = icmp eq i32 %59, 47
  br i1 %cmp83, label %if.then.85, label %if.else.248

if.then.85:                                       ; preds = %if.else.82
  %60 = load i32, i32* %len, align 4
  %inc86 = add nsw i32 %60, 1
  store i32 %inc86, i32* %len, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer88 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %61, i32 0, i32 11
  %arrayidx89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer88, i32 0, i64 %idxprom87
  store i8 47, i8* %arrayidx89, align 1
  %62 = load i32, i32* %len, align 4
  %cmp90 = icmp sge i32 %62, 1023
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.then.85
  %63 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %64 = load i32, i32* %len, align 4
  %65 = load i32, i32* %currlen, align 4
  %call93 = call i32 @FlushBuffer(%struct.TreeCCInput* %63, i32 %64, i32 %65)
  store i32 %call93, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.then.85
  %66 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream95 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %66, i32 0, i32 3
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %stream95, align 8
  %call96 = call i32 @_IO_getc(%struct._IO_FILE* %67)
  store i32 %call96, i32* %ch, align 4
  %68 = load i32, i32* %ch, align 4
  %cmp97 = icmp eq i32 %68, -1
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.end.94
  %69 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF100 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %69, i32 0, i32 8
  store i32 1, i32* %sawEOF100, align 4
  %70 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %70)
  br label %for.end.305

if.else.101:                                      ; preds = %if.end.94
  %71 = load i32, i32* %ch, align 4
  %cmp102 = icmp eq i32 %71, 47
  br i1 %cmp102, label %if.then.104, label %if.else.149

if.then.104:                                      ; preds = %if.else.101
  %72 = load i32, i32* %len, align 4
  %inc105 = add nsw i32 %72, 1
  store i32 %inc105, i32* %len, align 4
  %idxprom106 = sext i32 %72 to i64
  %73 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer107 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %73, i32 0, i32 11
  %arrayidx108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer107, i32 0, i64 %idxprom106
  store i8 47, i8* %arrayidx108, align 1
  %74 = load i32, i32* %len, align 4
  %cmp109 = icmp sge i32 %74, 1023
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.104
  %75 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %76 = load i32, i32* %len, align 4
  %77 = load i32, i32* %currlen, align 4
  %call112 = call i32 @FlushBuffer(%struct.TreeCCInput* %75, i32 %76, i32 %77)
  store i32 %call112, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.then.104
  br label %while.cond.114

while.cond.114:                                   ; preds = %if.end.140, %if.end.113
  %78 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream115 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %78, i32 0, i32 3
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %stream115, align 8
  %call116 = call i32 @_IO_getc(%struct._IO_FILE* %79)
  store i32 %call116, i32* %ch, align 4
  %cmp117 = icmp ne i32 %call116, 10
  br i1 %cmp117, label %land.lhs.true, label %land.end.124

land.lhs.true:                                    ; preds = %while.cond.114
  %80 = load i32, i32* %ch, align 4
  %cmp119 = icmp ne i32 %80, 13
  br i1 %cmp119, label %land.rhs.121, label %land.end.124

land.rhs.121:                                     ; preds = %land.lhs.true
  %81 = load i32, i32* %ch, align 4
  %cmp122 = icmp ne i32 %81, -1
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.121, %land.lhs.true, %while.cond.114
  %82 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.114 ], [ %cmp122, %land.rhs.121 ]
  br i1 %82, label %while.body.125, label %while.end.141

while.body.125:                                   ; preds = %land.end.124
  %83 = load i32, i32* %ch, align 4
  %cmp126 = icmp ne i32 %83, 0
  br i1 %cmp126, label %if.then.128, label %if.else.139

if.then.128:                                      ; preds = %while.body.125
  %84 = load i32, i32* %ch, align 4
  %conv129 = trunc i32 %84 to i8
  %85 = load i32, i32* %len, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %len, align 4
  %idxprom131 = sext i32 %85 to i64
  %86 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer132 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %86, i32 0, i32 11
  %arrayidx133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer132, i32 0, i64 %idxprom131
  store i8 %conv129, i8* %arrayidx133, align 1
  %87 = load i32, i32* %len, align 4
  %cmp134 = icmp sge i32 %87, 1023
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.then.128
  %88 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %89 = load i32, i32* %len, align 4
  %90 = load i32, i32* %currlen, align 4
  %call137 = call i32 @FlushBuffer(%struct.TreeCCInput* %88, i32 %89, i32 %90)
  store i32 %call137, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.then.128
  br label %if.end.140

if.else.139:                                      ; preds = %while.body.125
  %91 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %92 = load i32, i32* %ch, align 4
  call void @InvalidChar(%struct.TreeCCInput* %91, i32 %92)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.139, %if.end.138
  br label %while.cond.114

while.end.141:                                    ; preds = %land.end.124
  %93 = load i32, i32* %ch, align 4
  %cmp142 = icmp eq i32 %93, -1
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %while.end.141
  %94 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF145 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %94, i32 0, i32 8
  store i32 1, i32* %sawEOF145, align 4
  %95 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %95)
  br label %for.end.305

if.end.146:                                       ; preds = %while.end.141
  %96 = load i32, i32* %ch, align 4
  %97 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream147 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %97, i32 0, i32 3
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %stream147, align 8
  %call148 = call i32 @ungetc(i32 %96, %struct._IO_FILE* %98)
  br label %if.end.246

if.else.149:                                      ; preds = %if.else.101
  %99 = load i32, i32* %ch, align 4
  %cmp150 = icmp eq i32 %99, 42
  br i1 %cmp150, label %if.then.152, label %if.else.242

if.then.152:                                      ; preds = %if.else.149
  %100 = load i32, i32* %len, align 4
  %inc153 = add nsw i32 %100, 1
  store i32 %inc153, i32* %len, align 4
  %idxprom154 = sext i32 %100 to i64
  %101 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer155 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %101, i32 0, i32 11
  %arrayidx156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer155, i32 0, i64 %idxprom154
  store i8 42, i8* %arrayidx156, align 1
  %102 = load i32, i32* %len, align 4
  %cmp157 = icmp sge i32 %102, 1023
  br i1 %cmp157, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.then.152
  %103 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %104 = load i32, i32* %len, align 4
  %105 = load i32, i32* %currlen, align 4
  %call160 = call i32 @FlushBuffer(%struct.TreeCCInput* %103, i32 %104, i32 %105)
  store i32 %call160, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.then.152
  br label %for.cond.162

for.cond.162:                                     ; preds = %if.end.241, %if.else.196, %if.end.161
  %106 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream163 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %106, i32 0, i32 3
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %stream163, align 8
  %call164 = call i32 @_IO_getc(%struct._IO_FILE* %107)
  store i32 %call164, i32* %ch, align 4
  %108 = load i32, i32* %ch, align 4
  %cmp165 = icmp eq i32 %108, -1
  br i1 %cmp165, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %for.cond.162
  %109 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF168 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %109, i32 0, i32 8
  store i32 1, i32* %sawEOF168, align 4
  %110 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %110)
  br label %finalize

if.else.169:                                      ; preds = %for.cond.162
  %111 = load i32, i32* %ch, align 4
  %cmp170 = icmp eq i32 %111, 42
  br i1 %cmp170, label %if.then.172, label %if.else.199

if.then.172:                                      ; preds = %if.else.169
  %112 = load i32, i32* %len, align 4
  %inc173 = add nsw i32 %112, 1
  store i32 %inc173, i32* %len, align 4
  %idxprom174 = sext i32 %112 to i64
  %113 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer175 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %113, i32 0, i32 11
  %arrayidx176 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer175, i32 0, i64 %idxprom174
  store i8 42, i8* %arrayidx176, align 1
  %114 = load i32, i32* %len, align 4
  %cmp177 = icmp sge i32 %114, 1023
  br i1 %cmp177, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.then.172
  %115 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %116 = load i32, i32* %len, align 4
  %117 = load i32, i32* %currlen, align 4
  %call180 = call i32 @FlushBuffer(%struct.TreeCCInput* %115, i32 %116, i32 %117)
  store i32 %call180, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %if.then.172
  %118 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream182 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %118, i32 0, i32 3
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %stream182, align 8
  %call183 = call i32 @_IO_getc(%struct._IO_FILE* %119)
  store i32 %call183, i32* %ch, align 4
  %120 = load i32, i32* %ch, align 4
  %cmp184 = icmp eq i32 %120, 47
  br i1 %cmp184, label %if.then.186, label %if.else.191

if.then.186:                                      ; preds = %if.end.181
  %121 = load i32, i32* %len, align 4
  %inc187 = add nsw i32 %121, 1
  store i32 %inc187, i32* %len, align 4
  %idxprom188 = sext i32 %121 to i64
  %122 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer189 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %122, i32 0, i32 11
  %arrayidx190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer189, i32 0, i64 %idxprom188
  store i8 47, i8* %arrayidx190, align 1
  br label %for.end

if.else.191:                                      ; preds = %if.end.181
  %123 = load i32, i32* %ch, align 4
  %cmp192 = icmp eq i32 %123, -1
  br i1 %cmp192, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.else.191
  %124 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF195 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %124, i32 0, i32 8
  store i32 1, i32* %sawEOF195, align 4
  %125 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %125)
  br label %finalize

if.else.196:                                      ; preds = %if.else.191
  %126 = load i32, i32* %ch, align 4
  %127 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream197 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %127, i32 0, i32 3
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %stream197, align 8
  %call198 = call i32 @ungetc(i32 %126, %struct._IO_FILE* %128)
  br label %for.cond.162

if.else.199:                                      ; preds = %if.else.169
  %129 = load i32, i32* %ch, align 4
  %cmp200 = icmp eq i32 %129, 10
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.else.199
  %130 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %130, i32 0, i32 6
  %131 = load i64, i64* %nextline, align 8
  %inc203 = add nsw i64 %131, 1
  store i64 %inc203, i64* %nextline, align 8
  br label %if.end.229

if.else.204:                                      ; preds = %if.else.199
  %132 = load i32, i32* %ch, align 4
  %cmp205 = icmp eq i32 %132, 13
  br i1 %cmp205, label %if.then.207, label %if.end.228

if.then.207:                                      ; preds = %if.else.204
  %133 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline208 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %133, i32 0, i32 6
  %134 = load i64, i64* %nextline208, align 8
  %inc209 = add nsw i64 %134, 1
  store i64 %inc209, i64* %nextline208, align 8
  %135 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream210 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %135, i32 0, i32 3
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %stream210, align 8
  %call211 = call i32 @_IO_getc(%struct._IO_FILE* %136)
  store i32 %call211, i32* %ch, align 4
  %137 = load i32, i32* %ch, align 4
  %cmp212 = icmp eq i32 %137, -1
  br i1 %cmp212, label %if.then.214, label %if.else.220

if.then.214:                                      ; preds = %if.then.207
  %138 = load i32, i32* %len, align 4
  %inc215 = add nsw i32 %138, 1
  store i32 %inc215, i32* %len, align 4
  %idxprom216 = sext i32 %138 to i64
  %139 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer217 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %139, i32 0, i32 11
  %arrayidx218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer217, i32 0, i64 %idxprom216
  store i8 10, i8* %arrayidx218, align 1
  %140 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF219 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %140, i32 0, i32 8
  store i32 1, i32* %sawEOF219, align 4
  %141 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %141)
  br label %finalize

if.else.220:                                      ; preds = %if.then.207
  %142 = load i32, i32* %ch, align 4
  %cmp221 = icmp ne i32 %142, 10
  br i1 %cmp221, label %if.then.223, label %if.end.226

if.then.223:                                      ; preds = %if.else.220
  %143 = load i32, i32* %ch, align 4
  %144 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream224 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %144, i32 0, i32 3
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %stream224, align 8
  %call225 = call i32 @ungetc(i32 %143, %struct._IO_FILE* %145)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.223, %if.else.220
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226
  store i32 10, i32* %ch, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.else.204
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.202
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230
  %146 = load i32, i32* %ch, align 4
  %conv232 = trunc i32 %146 to i8
  %147 = load i32, i32* %len, align 4
  %inc233 = add nsw i32 %147, 1
  store i32 %inc233, i32* %len, align 4
  %idxprom234 = sext i32 %147 to i64
  %148 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer235 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %148, i32 0, i32 11
  %arrayidx236 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer235, i32 0, i64 %idxprom234
  store i8 %conv232, i8* %arrayidx236, align 1
  %149 = load i32, i32* %len, align 4
  %cmp237 = icmp sge i32 %149, 1023
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %if.end.231
  %150 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %151 = load i32, i32* %len, align 4
  %152 = load i32, i32* %currlen, align 4
  %call240 = call i32 @FlushBuffer(%struct.TreeCCInput* %150, i32 %151, i32 %152)
  store i32 %call240, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.end.231
  br label %for.cond.162

for.end:                                          ; preds = %if.then.186
  br label %if.end.245

if.else.242:                                      ; preds = %if.else.149
  %153 = load i32, i32* %ch, align 4
  %154 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream243 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %154, i32 0, i32 3
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %stream243, align 8
  %call244 = call i32 @ungetc(i32 %153, %struct._IO_FILE* %155)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %for.end
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.146
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246
  br label %if.end.295

if.else.248:                                      ; preds = %if.else.82
  %156 = load i32, i32* %ch, align 4
  %cmp249 = icmp eq i32 %156, 10
  br i1 %cmp249, label %if.then.251, label %if.else.258

if.then.251:                                      ; preds = %if.else.248
  %157 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline252 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %157, i32 0, i32 6
  %158 = load i64, i64* %nextline252, align 8
  %inc253 = add nsw i64 %158, 1
  store i64 %inc253, i64* %nextline252, align 8
  %159 = load i32, i32* %len, align 4
  %inc254 = add nsw i32 %159, 1
  store i32 %inc254, i32* %len, align 4
  %idxprom255 = sext i32 %159 to i64
  %160 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer256 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %160, i32 0, i32 11
  %arrayidx257 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer256, i32 0, i64 %idxprom255
  store i8 10, i8* %arrayidx257, align 1
  br label %if.end.294

if.else.258:                                      ; preds = %if.else.248
  %161 = load i32, i32* %ch, align 4
  %cmp259 = icmp eq i32 %161, 13
  br i1 %cmp259, label %if.then.261, label %if.else.282

if.then.261:                                      ; preds = %if.else.258
  %162 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %nextline262 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %162, i32 0, i32 6
  %163 = load i64, i64* %nextline262, align 8
  %inc263 = add nsw i64 %163, 1
  store i64 %inc263, i64* %nextline262, align 8
  %164 = load i32, i32* %len, align 4
  %inc264 = add nsw i32 %164, 1
  store i32 %inc264, i32* %len, align 4
  %idxprom265 = sext i32 %164 to i64
  %165 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer266 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %165, i32 0, i32 11
  %arrayidx267 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer266, i32 0, i64 %idxprom265
  store i8 10, i8* %arrayidx267, align 1
  %166 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream268 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %166, i32 0, i32 3
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %stream268, align 8
  %call269 = call i32 @_IO_getc(%struct._IO_FILE* %167)
  store i32 %call269, i32* %ch, align 4
  %168 = load i32, i32* %ch, align 4
  %cmp270 = icmp eq i32 %168, -1
  br i1 %cmp270, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %if.then.261
  %169 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %sawEOF273 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %169, i32 0, i32 8
  store i32 1, i32* %sawEOF273, align 4
  %170 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @LiteralEOF(%struct.TreeCCInput* %170)
  br label %for.end.305

if.else.274:                                      ; preds = %if.then.261
  %171 = load i32, i32* %ch, align 4
  %cmp275 = icmp ne i32 %171, 10
  br i1 %cmp275, label %if.then.277, label %if.end.280

if.then.277:                                      ; preds = %if.else.274
  %172 = load i32, i32* %ch, align 4
  %173 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %stream278 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %173, i32 0, i32 3
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %stream278, align 8
  %call279 = call i32 @ungetc(i32 %172, %struct._IO_FILE* %174)
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.277, %if.else.274
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280
  br label %if.end.293

if.else.282:                                      ; preds = %if.else.258
  %175 = load i32, i32* %ch, align 4
  %cmp283 = icmp eq i32 %175, 0
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %if.else.282
  %176 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %177 = load i32, i32* %ch, align 4
  call void @InvalidChar(%struct.TreeCCInput* %176, i32 %177)
  br label %if.end.292

if.else.286:                                      ; preds = %if.else.282
  %178 = load i32, i32* %ch, align 4
  %conv287 = trunc i32 %178 to i8
  %179 = load i32, i32* %len, align 4
  %inc288 = add nsw i32 %179, 1
  store i32 %inc288, i32* %len, align 4
  %idxprom289 = sext i32 %179 to i64
  %180 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer290 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %180, i32 0, i32 11
  %arrayidx291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer290, i32 0, i64 %idxprom289
  store i8 %conv287, i8* %arrayidx291, align 1
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.286, %if.then.285
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.end.281
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.251
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.247
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.81
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.7
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.end
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298
  %181 = load i32, i32* %len, align 4
  %cmp300 = icmp sge i32 %181, 1023
  br i1 %cmp300, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %if.end.299
  %182 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %183 = load i32, i32* %len, align 4
  %184 = load i32, i32* %currlen, align 4
  %call303 = call i32 @FlushBuffer(%struct.TreeCCInput* %182, i32 %183, i32 %184)
  store i32 %call303, i32* %currlen, align 4
  store i32 0, i32* %len, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %if.end.299
  br label %for.cond

for.end.305:                                      ; preds = %if.then.272, %if.then.144, %if.then.99, %if.then.73, %if.then.4, %if.then
  br label %finalize

finalize:                                         ; preds = %for.end.305, %if.then.214, %if.then.194, %if.then.167
  %185 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %186 = load i32, i32* %len, align 4
  %187 = load i32, i32* %currlen, align 4
  call void @FinalizeBuffer(%struct.TreeCCInput* %185, i32 %186, i32 %187)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @TreeCCValue(%struct.TreeCCInput* %input) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %result = alloca i8*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 1
  %1 = load i8*, i8** %text, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCAbort(%struct.TreeCCInput* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i32 %4)
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text1 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 1
  %6 = load i8*, i8** %text1, align 8
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %cmp = icmp ne i8* %6, %arraydecay
  br i1 %cmp, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text3 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 1
  %9 = load i8*, i8** %text3, align 8
  store i8* %9, i8** %result, align 8
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text4 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %10, i32 0, i32 1
  store i8* null, i8** %text4, align 8
  %11 = load i8*, i8** %result, align 8
  store i8* %11, i8** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %12, i32 0, i32 11
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer6, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay7) #5
  %add = add i64 %call, 1
  %call8 = call noalias i8* @malloc(i64 %add) #4
  store i8* %call8, i8** %result, align 8
  %13 = load i8*, i8** %result, align 8
  %tobool9 = icmp ne i8* %13, null
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.else.5
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.5
  %15 = load i8*, i8** %result, align 8
  %16 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer11 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %16, i32 0, i32 11
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer11, i32 0, i32 0
  %call13 = call i8* @strcpy(i8* %15, i8* %arraydecay12) #4
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text14 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 1
  store i8* null, i8** %text14, align 8
  %18 = load i8*, i8** %result, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.2, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare void @TreeCCAbort(%struct.TreeCCInput*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @LiteralEOF(%struct.TreeCCInput* %input) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @FlushBuffer(%struct.TreeCCInput* %input, i32 %len, i32 %currlen) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %len.addr = alloca i32, align 4
  %currlen.addr = alloca i32, align 4
  %newText = alloca i8*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %currlen, i32* %currlen.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %currlen.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 1
  %3 = load i8*, i8** %text, align 8
  %4 = load i32, i32* %currlen.addr, align 4
  %5 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %4, %5
  %add1 = add nsw i32 %add, 1
  %conv = sext i32 %add1 to i64
  %call = call i8* @realloc(i8* %3, i64 %conv) #4
  store i8* %call, i8** %newText, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load i8*, i8** %newText, align 8
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text5 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 1
  store i8* %7, i8** %text5, align 8
  %9 = load i8*, i8** %newText, align 8
  %10 = load i32, i32* %currlen.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %12 = load i32, i32* %len.addr, align 4
  %conv6 = sext i32 %12 to i64
  %call7 = call i8* @strncpy(i8* %add.ptr, i8* %arraydecay, i64 %conv6) #4
  %13 = load i32, i32* %currlen.addr, align 4
  %14 = load i32, i32* %len.addr, align 4
  %add8 = add nsw i32 %13, %14
  %idxprom = sext i32 %add8 to i64
  %15 = load i8*, i8** %newText, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %16 = load i32, i32* %currlen.addr, align 4
  %17 = load i32, i32* %len.addr, align 4
  %add9 = add nsw i32 %16, %17
  store i32 %add9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @FinalizeBuffer(%struct.TreeCCInput* %input, i32 %len, i32 %currlen) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %len.addr = alloca i32, align 4
  %currlen.addr = alloca i32, align 4
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %currlen, i32* %currlen.addr, align 4
  %0 = load i32, i32* %currlen.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %currlen.addr, align 4
  %call = call i32 @FlushBuffer(%struct.TreeCCInput* %1, i32 %2, i32 %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 11
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %buffer1 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %6, i32 0, i32 11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer1, i32 0, i32 0
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 1
  store i8* %arraydecay, i8** %text, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
