; ModuleID = './MultiSource.Benchmarks.Prolangs-C/71.agrep.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@DNA = global i32 0, align 4
@APPROX = global i32 0, align 4
@PAT_FILE = global i32 0, align 4
@CONSTANT = global i32 0, align 4
@total_line = global i32 0, align 4
@old_D_pat = global [16 x i8] c"\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@D_pattern = global [16 x i8] c"\0A; \00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@NOFILENAME = global i32 0, align 4
@FILENAMEONLY = global i32 0, align 4
@Numfiles = global i32 0, align 4
@Progname = common global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"agrep\00", align 1
@COUNT = common global i32 0, align 4
@SILENT = common global i32 0, align 4
@I = common global i32 0, align 4
@WHOLELINE = common global i32 0, align 4
@WORDBOUND = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: illegal option combination\0A\00", align 1
@DELIMITER = common global i32 0, align 4
@D_length = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c">; \00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -e option\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: Can't open pattern file %s\0A\00", align 1
@NOUPPER = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -k option\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%s: -k should be the last option in the command\0A\00", align 1
@LINENUM = common global i32 0, align 4
@INVERSE = common global i32 0, align 4
@OUTTAIL = common global i32 0, align 4
@BESTMATCH = common global i32 0, align 4
@NOPROMPT = common global i32 0, align 4
@JUMP = common global i32 0, align 4
@S = common global i32 0, align 4
@DD = common global i32 0, align 4
@FILEOUT = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: the maximum number of errors is %d \0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: illegal option  -%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%s: -h and -l options are mutually exclusive\0A\00", align 1
@Textfiles = common global i8** null, align 8
@.str.11 = private unnamed_addr constant [60 x i8] c"%s: malloc failure (you probably don't have enough memory)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s: %s: no such file or directory\0A\00", align 1
@SGREP = common global i32 0, align 4
@FNAME = common global i32 0, align 4
@num_of_matched = common global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: -l option is not compatible with standard input\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@CurrentFileName = common global [256 x i8] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: can't open file %s\0A\00", align 1
@NOMATCH = common global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"best match has 1 error, \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"best match has %d errors, \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"there is 1 match, output it? (y/n)\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"there are %d matches, output them? (y/n)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@EATFIRST = common global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REGEX = common global i32 0, align 4
@TRUNCATE = common global i32 0, align 4
@AND = common global i32 0, align 4
@FIRSTOUTPUT = common global i32 0, align 4
@FIRST_IN_RE = common global i32 0, align 4
@TAIL = common global i32 0, align 4
@HEAD = common global i32 0, align 4
@SIMPLEPATTERN = common global i32 0, align 4
@PSIZE = common global i32 0, align 4
@Num_Pat = common global i32 0, align 4
@RE_ERR = common global i32 0, align 4
@Bit = common global [33 x i32] zeroinitializer, align 16
@Mask = common global [256 x i32] zeroinitializer, align 16
@table = common global [32 x [32 x i32]] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1
@NO_ERR_MASK = common global i32 0, align 4
@Init = common global [8 x i32] zeroinitializer, align 16
@Init1 = common global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@Next = common global [66000 x i32] zeroinitializer, align 16
@Next1 = common global [66000 x i32] zeroinitializer, align 16
@buffer = common global [50177 x i8] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [68 x i8] c"usage: %s [-#cdehiklnpstvwxBDGIS] [-f patternfile] pattern [files]\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"summary of frequently used options:\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"-#: find matches with at most # errors\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"-c: output the number of matched records\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"-d: define record delimiter\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"-h: do not output file names\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"-i: case-insensitive search, e.g., 'a' = 'A'\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"-l: output the names of files that contain a match\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"-n: output record prefixed by record number\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"-v: output those records containing no matches\0A\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"-w: pattern has to match as a word, e.g., 'win' will not match 'wind'\0A\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"-B: best match mode. find the closest matches to the pattern\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"-G: output the files that contain a match\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: size of pattern must be greater than number of errors\0A\00", align 1
@.str.41 = private unnamed_addr constant [65 x i8] c"WARNING!!!  some lines have been truncated in output record #%d\0A\00", align 1
@wildmask = common global i32 0, align 4
@endposition = common global i32 0, align 4
@D_endpos = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %M = alloca i32, align 4
  %D = alloca i32, align 4
  %fp = alloca i32, align 4
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %filetype = alloca i32, align 4
  %Pattern = alloca [128 x i8], align 16
  %OldPattern = alloca [128 x i8], align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %D, align 4
  call void @initial_value()
  %call = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #6
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %dec, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %2, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %3 = load i8*, i8** %incdec.ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %add.ptr, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i8, i8* %c, align 1
  %conv6 = sext i8 %9 to i32
  switch i32 %conv6, label %sw.default [
    i32 99, label %sw.bb
    i32 115, label %sw.bb.7
    i32 112, label %sw.bb.8
    i32 120, label %sw.bb.9
    i32 76, label %sw.bb.13
    i32 100, label %sw.bb.14
    i32 101, label %sw.bb.51
    i32 102, label %sw.bb.73
    i32 104, label %sw.bb.84
    i32 105, label %sw.bb.85
    i32 107, label %sw.bb.86
    i32 108, label %sw.bb.107
    i32 110, label %sw.bb.108
    i32 118, label %sw.bb.109
    i32 116, label %sw.bb.110
    i32 66, label %sw.bb.111
    i32 119, label %sw.bb.112
    i32 121, label %sw.bb.117
    i32 73, label %sw.bb.118
    i32 83, label %sw.bb.122
    i32 68, label %sw.bb.126
    i32 71, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* @COUNT, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  store i32 1, i32* @SILENT, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  store i32 0, i32* @I, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  store i32 1, i32* @WHOLELINE, align 4
  %10 = load i32, i32* @WORDBOUND, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb.9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.12:                                        ; preds = %sw.bb.9
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  store i32 1, i32* @DELIMITER, align 4
  %12 = load i32, i32* %argc.addr, align 4
  %cmp15 = icmp sle i32 %12, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.14
  call void @usage()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %sw.bb.14
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.18
  %16 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr25, i8*** %argv.addr, align 8
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i64 @strlen(i8* %18) #8
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, i32* @D_length, align 4
  %cmp29 = icmp sgt i32 %conv28, 16
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.24
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.33:                                        ; preds = %if.then.24
  store i8 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i64 0), align 1
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i64 1), i8* %21) #6
  %22 = load i32, i32* %argc.addr, align 4
  %dec36 = add nsw i32 %22, -1
  store i32 %dec36, i32* %argc.addr, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.18
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %23, i64 0
  %24 = load i8*, i8** %arrayidx37, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %24, i64 2
  %call39 = call i64 @strlen(i8* %add.ptr38) #8
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* @D_length, align 4
  %cmp41 = icmp sgt i32 %conv40, 16
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.else
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.45:                                        ; preds = %if.else
  store i8 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i64 0), align 1
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx46, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %27, i64 2
  %call48 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i64 1), i8* %add.ptr47) #6
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.45, %if.end.33
  %call50 = call i8* @strcat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6
  %28 = load i32, i32* @D_length, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @D_length, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.body
  %29 = load i32, i32* %argc.addr, align 4
  %dec52 = add nsw i32 %29, -1
  store i32 %dec52, i32* %argc.addr, align 4
  %30 = load i32, i32* %argc.addr, align 4
  %cmp53 = icmp eq i32 %30, 0
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %sw.bb.51
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @usage()
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %sw.bb.51
  %32 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %incdec.ptr58, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %incdec.ptr58, i64 0
  %33 = load i8*, i8** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %34 to i32
  %cmp62 = icmp eq i32 %conv61, 45
  br i1 %cmp62, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %if.end.57
  %arrayidx65 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i64 0
  store i8 92, i8* %arrayidx65, align 1
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx66, align 8
  %call67 = call i8* @strcat(i8* %arraydecay, i8* %36) #6
  br label %if.end.72

if.else.68:                                       ; preds = %if.end.57
  %arraydecay69 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx70, align 8
  %call71 = call i8* @strcat(i8* %arraydecay69, i8* %38) #6
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.68, %if.then.64
  br label %sw.epilog

sw.bb.73:                                         ; preds = %while.body
  store i32 1, i32* @PAT_FILE, align 4
  %39 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %incdec.ptr74, i8*** %argv.addr, align 8
  %40 = load i32, i32* %argc.addr, align 4
  %dec75 = add nsw i32 %40, -1
  store i32 %dec75, i32* %argc.addr, align 4
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %41, i64 0
  %42 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 (i8*, i32, ...) @open(i8* %42, i32 0)
  store i32 %call77, i32* %fp, align 4
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %sw.bb.73
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %44, i64 0
  %45 = load i8*, i8** %arrayidx81, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0), i8* %45)
  call void @exit(i32 2) #7
  unreachable

if.end.83:                                        ; preds = %sw.bb.73
  br label %sw.epilog

sw.bb.84:                                         ; preds = %while.body
  store i32 1, i32* @NOFILENAME, align 4
  br label %sw.epilog

sw.bb.85:                                         ; preds = %while.body
  store i32 1, i32* @NOUPPER, align 4
  br label %sw.epilog

sw.bb.86:                                         ; preds = %while.body
  %46 = load i32, i32* %argc.addr, align 4
  %dec87 = add nsw i32 %46, -1
  store i32 %dec87, i32* %argc.addr, align 4
  %47 = load i32, i32* %argc.addr, align 4
  %cmp88 = icmp eq i32 %47, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %sw.bb.86
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @usage()
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %sw.bb.86
  store i32 1, i32* @CONSTANT, align 4
  %49 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr93, i8*** %argv.addr, align 8
  %arraydecay94 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %50 = load i8**, i8*** %argv.addr, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %50, i64 0
  %51 = load i8*, i8** %arrayidx95, align 8
  %call96 = call i8* @strcat(i8* %arraydecay94, i8* %51) #6
  %52 = load i32, i32* %argc.addr, align 4
  %cmp97 = icmp sgt i32 %52, 1
  br i1 %cmp97, label %land.lhs.true, label %if.end.106

land.lhs.true:                                    ; preds = %if.end.92
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %53, i64 1
  %54 = load i8*, i8** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %55 to i32
  %cmp102 = icmp eq i32 %conv101, 45
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %land.lhs.true
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.106:                                       ; preds = %land.lhs.true, %if.end.92
  br label %sw.epilog

sw.bb.107:                                        ; preds = %while.body
  store i32 1, i32* @FILENAMEONLY, align 4
  br label %sw.epilog

sw.bb.108:                                        ; preds = %while.body
  store i32 1, i32* @LINENUM, align 4
  br label %sw.epilog

sw.bb.109:                                        ; preds = %while.body
  store i32 1, i32* @INVERSE, align 4
  br label %sw.epilog

sw.bb.110:                                        ; preds = %while.body
  store i32 1, i32* @OUTTAIL, align 4
  br label %sw.epilog

sw.bb.111:                                        ; preds = %while.body
  store i32 1, i32* @BESTMATCH, align 4
  br label %sw.epilog

sw.bb.112:                                        ; preds = %while.body
  store i32 1, i32* @WORDBOUND, align 4
  %57 = load i32, i32* @WHOLELINE, align 4
  %tobool113 = icmp ne i32 %57, 0
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %sw.bb.112
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.116:                                       ; preds = %sw.bb.112
  br label %sw.epilog

sw.bb.117:                                        ; preds = %while.body
  store i32 1, i32* @NOPROMPT, align 4
  br label %sw.epilog

sw.bb.118:                                        ; preds = %while.body
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %59, i64 0
  %60 = load i8*, i8** %arrayidx119, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %60, i64 2
  %call121 = call i32 @atoi(i8* %add.ptr120) #8
  store i32 %call121, i32* @I, align 4
  store i32 1, i32* @JUMP, align 4
  br label %sw.epilog

sw.bb.122:                                        ; preds = %while.body
  %61 = load i8**, i8*** %argv.addr, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %61, i64 0
  %62 = load i8*, i8** %arrayidx123, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %62, i64 2
  %call125 = call i32 @atoi(i8* %add.ptr124) #8
  store i32 %call125, i32* @S, align 4
  store i32 1, i32* @JUMP, align 4
  br label %sw.epilog

sw.bb.126:                                        ; preds = %while.body
  %63 = load i8**, i8*** %argv.addr, align 8
  %arrayidx127 = getelementptr inbounds i8*, i8** %63, i64 0
  %64 = load i8*, i8** %arrayidx127, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %64, i64 2
  %call129 = call i32 @atoi(i8* %add.ptr128) #8
  store i32 %call129, i32* @DD, align 4
  store i32 1, i32* @JUMP, align 4
  br label %sw.epilog

sw.bb.130:                                        ; preds = %while.body
  store i32 1, i32* @FILEOUT, align 4
  store i32 1, i32* @COUNT, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %65 = load i8, i8* %c, align 1
  %conv131 = sext i8 %65 to i32
  %idxprom = sext i32 %conv131 to i64
  %call132 = call i16** @__ctype_b_loc() #9
  %66 = load i16*, i16** %call132, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %66, i64 %idxprom
  %67 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %67 to i32
  %and = and i32 %conv134, 2048
  %tobool135 = icmp ne i32 %and, 0
  br i1 %tobool135, label %if.then.136, label %if.else.145

if.then.136:                                      ; preds = %sw.default
  store i32 1, i32* @APPROX, align 4
  %68 = load i8**, i8*** %argv.addr, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %68, i64 0
  %69 = load i8*, i8** %arrayidx137, align 8
  %add.ptr138 = getelementptr inbounds i8, i8* %69, i64 1
  %call139 = call i32 @atoi(i8* %add.ptr138) #8
  store i32 %call139, i32* %D, align 4
  %70 = load i32, i32* %D, align 4
  %cmp140 = icmp sgt i32 %70, 8
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.then.136
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0), i32 8)
  call void @exit(i32 2) #7
  unreachable

if.end.144:                                       ; preds = %if.then.136
  br label %if.end.148

if.else.145:                                      ; preds = %sw.default
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i8, i8* %c, align 1
  %conv146 = sext i8 %73 to i32
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0), i32 %conv146)
  call void @usage()
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.end.144
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.148, %sw.bb.130, %sw.bb.126, %sw.bb.122, %sw.bb.118, %sw.bb.117, %if.end.116, %sw.bb.111, %sw.bb.110, %sw.bb.109, %sw.bb.108, %sw.bb.107, %if.end.106, %sw.bb.85, %sw.bb.84, %if.end.83, %if.end.72, %if.end.49, %sw.bb.13, %if.end.12, %sw.bb.8, %sw.bb.7, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %land.end
  %74 = load i32, i32* @FILENAMEONLY, align 4
  %tobool149 = icmp ne i32 %74, 0
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.154

land.lhs.true.150:                                ; preds = %while.end
  %75 = load i32, i32* @NOFILENAME, align 4
  %tobool151 = icmp ne i32 %75, 0
  br i1 %tobool151, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %land.lhs.true.150
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %land.lhs.true.150, %while.end
  %77 = load i32, i32* @COUNT, align 4
  %tobool155 = icmp ne i32 %77, 0
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.163

land.lhs.true.156:                                ; preds = %if.end.154
  %78 = load i32, i32* @FILENAMEONLY, align 4
  %tobool157 = icmp ne i32 %78, 0
  br i1 %tobool157, label %if.then.159, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.156
  %79 = load i32, i32* @NOFILENAME, align 4
  %tobool158 = icmp ne i32 %79, 0
  br i1 %tobool158, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %lor.lhs.false, %land.lhs.true.156
  store i32 0, i32* @FILENAMEONLY, align 4
  %80 = load i32, i32* @FILEOUT, align 4
  %tobool160 = icmp ne i32 %80, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %if.then.159
  store i32 0, i32* @NOFILENAME, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.then.159
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %lor.lhs.false, %if.end.154
  %81 = load i32, i32* @PAT_FILE, align 4
  %tobool164 = icmp ne i32 %81, 0
  br i1 %tobool164, label %if.end.179, label %land.lhs.true.165

land.lhs.true.165:                                ; preds = %if.end.163
  %arrayidx166 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i64 0
  %82 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %82 to i32
  %cmp168 = icmp eq i32 %conv167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.179

if.then.170:                                      ; preds = %land.lhs.true.165
  %83 = load i32, i32* %argc.addr, align 4
  %cmp171 = icmp eq i32 %83, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.then.170
  call void @usage()
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.then.170
  %arraydecay175 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %84 = load i8**, i8*** %argv.addr, align 8
  %85 = load i8*, i8** %84, align 8
  %call176 = call i8* @strcpy(i8* %arraydecay175, i8* %85) #6
  %86 = load i32, i32* %argc.addr, align 4
  %dec177 = add nsw i32 %86, -1
  store i32 %dec177, i32* %argc.addr, align 4
  %87 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %incdec.ptr178, i8*** %argv.addr, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.174, %land.lhs.true.165, %if.end.163
  store i32 0, i32* @Numfiles, align 4
  store i32 3, i32* %fd, align 4
  %88 = load i32, i32* %argc.addr, align 4
  %cmp180 = icmp eq i32 %88, 0
  br i1 %cmp180, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %if.end.179
  store i32 0, i32* %fd, align 4
  br label %if.end.220

if.else.183:                                      ; preds = %if.end.179
  %89 = load i32, i32* %argc.addr, align 4
  %conv184 = sext i32 %89 to i64
  %mul = mul i64 %conv184, 8
  %call185 = call noalias i8* @malloc(i64 %mul) #6
  %90 = bitcast i8* %call185 to i8**
  store i8** %90, i8*** @Textfiles, align 8
  %tobool186 = icmp ne i8** %90, null
  br i1 %tobool186, label %if.end.189, label %if.then.187

if.then.187:                                      ; preds = %if.else.183
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.189:                                       ; preds = %if.else.183
  br label %while.cond.190

while.cond.190:                                   ; preds = %if.end.218, %if.end.189
  %92 = load i32, i32* %argc.addr, align 4
  %dec191 = add nsw i32 %92, -1
  store i32 %dec191, i32* %argc.addr, align 4
  %tobool192 = icmp ne i32 %92, 0
  br i1 %tobool192, label %while.body.193, label %while.end.219

while.body.193:                                   ; preds = %while.cond.190
  %93 = load i8**, i8*** %argv.addr, align 8
  %94 = load i8*, i8** %93, align 8
  %call194 = call i32 @check_file(i8* %94)
  store i32 %call194, i32* %filetype, align 4
  %cmp195 = icmp eq i32 %call194, -3
  br i1 %cmp195, label %if.then.197, label %if.else.204

if.then.197:                                      ; preds = %while.body.193
  %95 = load i32, i32* %filetype, align 4
  %cmp198 = icmp eq i32 %95, -3
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.then.197
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = load i8**, i8*** %argv.addr, align 8
  %98 = load i8*, i8** %97, align 8
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0), i8* %98)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %if.then.197
  %99 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr203 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %incdec.ptr203, i8*** %argv.addr, align 8
  br label %if.end.218

if.else.204:                                      ; preds = %while.body.193
  %100 = load i8**, i8*** %argv.addr, align 8
  %101 = load i8*, i8** %100, align 8
  %call205 = call i64 @strlen(i8* %101) #8
  %add = add i64 %call205, 1
  %call206 = call noalias i8* @malloc(i64 %add) #6
  %102 = load i32, i32* @Numfiles, align 4
  %idxprom207 = sext i32 %102 to i64
  %103 = load i8**, i8*** @Textfiles, align 8
  %arrayidx208 = getelementptr inbounds i8*, i8** %103, i64 %idxprom207
  store i8* %call206, i8** %arrayidx208, align 8
  %tobool209 = icmp ne i8* %call206, null
  br i1 %tobool209, label %if.end.212, label %if.then.210

if.then.210:                                      ; preds = %if.else.204
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.212:                                       ; preds = %if.else.204
  %105 = load i32, i32* @Numfiles, align 4
  %inc213 = add nsw i32 %105, 1
  store i32 %inc213, i32* @Numfiles, align 4
  %idxprom214 = sext i32 %105 to i64
  %106 = load i8**, i8*** @Textfiles, align 8
  %arrayidx215 = getelementptr inbounds i8*, i8** %106, i64 %idxprom214
  %107 = load i8*, i8** %arrayidx215, align 8
  %108 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr216 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %incdec.ptr216, i8*** %argv.addr, align 8
  %109 = load i8*, i8** %108, align 8
  %call217 = call i8* @strcpy(i8* %107, i8* %109) #6
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.212, %if.end.202
  br label %while.cond.190

while.end.219:                                    ; preds = %while.cond.190
  br label %if.end.220

if.end.220:                                       ; preds = %while.end.219, %if.then.182
  %arraydecay221 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %110 = load i32, i32* %D, align 4
  call void @checksg(i8* %arraydecay221, i32 %110)
  %arraydecay222 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %arraydecay223 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %call224 = call i8* @strcpy(i8* %arraydecay222, i8* %arraydecay223) #6
  %111 = load i32, i32* @SGREP, align 4
  %cmp225 = icmp eq i32 %111, 0
  br i1 %cmp225, label %if.then.227, label %if.else.232

if.then.227:                                      ; preds = %if.end.220
  %arraydecay228 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  call void @preprocess(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i32 0), i8* %arraydecay228)
  %call229 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i32 0)) #6
  %arraydecay230 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %112 = load i32, i32* %D, align 4
  %call231 = call i32 @maskgen(i8* %arraydecay230, i32 %112)
  store i32 %call231, i32* %M, align 4
  br label %if.end.236

if.else.232:                                      ; preds = %if.end.220
  %arraydecay233 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %call234 = call i64 @strlen(i8* %arraydecay233) #8
  %conv235 = trunc i64 %call234 to i32
  store i32 %conv235, i32* %M, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.232, %if.then.227
  %113 = load i32, i32* @PAT_FILE, align 4
  %tobool237 = icmp ne i32 %113, 0
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.236
  %114 = load i32, i32* %fp, align 4
  call void @prepf(i32 %114)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %if.end.236
  %115 = load i32, i32* @Numfiles, align 4
  %cmp240 = icmp sgt i32 %115, 1
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.239
  store i32 1, i32* @FNAME, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %if.end.239
  %116 = load i32, i32* @NOFILENAME, align 4
  %tobool244 = icmp ne i32 %116, 0
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.end.243
  store i32 0, i32* @FNAME, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.245, %if.end.243
  store i32 0, i32* @num_of_matched, align 4
  call void @compat()
  %117 = load i32, i32* %fd, align 4
  %cmp247 = icmp eq i32 %117, 0
  br i1 %cmp247, label %if.then.249, label %if.else.278

if.then.249:                                      ; preds = %if.end.246
  %118 = load i32, i32* @FILENAMEONLY, align 4
  %tobool250 = icmp ne i32 %118, 0
  br i1 %tobool250, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.then.249
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.253:                                       ; preds = %if.then.249
  %120 = load i32, i32* @PAT_FILE, align 4
  %tobool254 = icmp ne i32 %120, 0
  br i1 %tobool254, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %if.end.253
  %121 = load i32, i32* %fd, align 4
  call void @mgrep(i32 %121)
  br label %if.end.266

if.else.256:                                      ; preds = %if.end.253
  %122 = load i32, i32* @SGREP, align 4
  %tobool257 = icmp ne i32 %122, 0
  br i1 %tobool257, label %if.then.258, label %if.else.263

if.then.258:                                      ; preds = %if.else.256
  %arraydecay259 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %arraydecay260 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %call261 = call i64 @strlen(i8* %arraydecay260) #8
  %conv262 = trunc i64 %call261 to i32
  %123 = load i32, i32* %fd, align 4
  %124 = load i32, i32* %D, align 4
  call void @sgrep(i8* %arraydecay259, i32 %conv262, i32 %123, i32 %124)
  br label %if.end.265

if.else.263:                                      ; preds = %if.else.256
  %arraydecay264 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %125 = load i32, i32* %fd, align 4
  %126 = load i32, i32* %M, align 4
  %127 = load i32, i32* %D, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i32 0, i32 0), i8* %arraydecay264, i32 %125, i32 %126, i32 %127)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.263, %if.then.258
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.255
  %128 = load i32, i32* @COUNT, align 4
  %tobool267 = icmp ne i32 %128, 0
  br i1 %tobool267, label %if.then.268, label %if.end.277

if.then.268:                                      ; preds = %if.end.266
  %129 = load i32, i32* @INVERSE, align 4
  %tobool269 = icmp ne i32 %129, 0
  br i1 %tobool269, label %land.lhs.true.270, label %if.else.274

land.lhs.true.270:                                ; preds = %if.then.268
  %130 = load i32, i32* @PAT_FILE, align 4
  %tobool271 = icmp ne i32 %130, 0
  br i1 %tobool271, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %land.lhs.true.270
  %131 = load i32, i32* @total_line, align 4
  %132 = load i32, i32* @num_of_matched, align 4
  %sub = sub nsw i32 %131, %132
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %sub)
  br label %if.end.276

if.else.274:                                      ; preds = %land.lhs.true.270, %if.then.268
  %133 = load i32, i32* @num_of_matched, align 4
  %call275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %133)
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.274, %if.then.272
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.266
  br label %if.end.465

if.else.278:                                      ; preds = %if.end.246
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.278
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* @Numfiles, align 4
  %cmp279 = icmp slt i32 %134, %135
  br i1 %cmp279, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %136 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %136 to i64
  %137 = load i8**, i8*** @Textfiles, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %137, i64 %idxprom281
  %138 = load i8*, i8** %arrayidx282, align 8
  %call283 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0), i8* %138) #6
  %139 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %139 to i64
  %140 = load i8**, i8*** @Textfiles, align 8
  %arrayidx285 = getelementptr inbounds i8*, i8** %140, i64 %idxprom284
  %141 = load i8*, i8** %arrayidx285, align 8
  %call286 = call i32 (i8*, i32, ...) @open(i8* %141, i32 0)
  store i32 %call286, i32* %fd, align 4
  %cmp287 = icmp sle i32 %call286, 0
  br i1 %cmp287, label %if.then.289, label %if.else.293

if.then.289:                                      ; preds = %for.body
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %143 to i64
  %144 = load i8**, i8*** @Textfiles, align 8
  %arrayidx291 = getelementptr inbounds i8*, i8** %144, i64 %idxprom290
  %145 = load i8*, i8** %arrayidx291, align 8
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0), i8* %145)
  br label %if.end.340

if.else.293:                                      ; preds = %for.body
  %146 = load i32, i32* @PAT_FILE, align 4
  %tobool294 = icmp ne i32 %146, 0
  br i1 %tobool294, label %if.then.295, label %if.else.296

if.then.295:                                      ; preds = %if.else.293
  %147 = load i32, i32* %fd, align 4
  call void @mgrep(i32 %147)
  br label %if.end.306

if.else.296:                                      ; preds = %if.else.293
  %148 = load i32, i32* @SGREP, align 4
  %tobool297 = icmp ne i32 %148, 0
  br i1 %tobool297, label %if.then.298, label %if.else.303

if.then.298:                                      ; preds = %if.else.296
  %arraydecay299 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %arraydecay300 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %call301 = call i64 @strlen(i8* %arraydecay300) #8
  %conv302 = trunc i64 %call301 to i32
  %149 = load i32, i32* %fd, align 4
  %150 = load i32, i32* %D, align 4
  call void @sgrep(i8* %arraydecay299, i32 %conv302, i32 %149, i32 %150)
  br label %if.end.305

if.else.303:                                      ; preds = %if.else.296
  %arraydecay304 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %151 = load i32, i32* %fd, align 4
  %152 = load i32, i32* %M, align 4
  %153 = load i32, i32* %D, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i32 0, i32 0), i8* %arraydecay304, i32 %151, i32 %152, i32 %153)
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.303, %if.then.298
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.then.295
  %154 = load i32, i32* @num_of_matched, align 4
  %tobool307 = icmp ne i32 %154, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.end.306
  store i32 0, i32* @NOMATCH, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.308, %if.end.306
  %155 = load i32, i32* @COUNT, align 4
  %tobool310 = icmp ne i32 %155, 0
  br i1 %tobool310, label %land.lhs.true.311, label %if.end.334

land.lhs.true.311:                                ; preds = %if.end.309
  %156 = load i32, i32* @FILEOUT, align 4
  %tobool312 = icmp ne i32 %156, 0
  br i1 %tobool312, label %if.end.334, label %if.then.313

if.then.313:                                      ; preds = %land.lhs.true.311
  %157 = load i32, i32* @INVERSE, align 4
  %tobool314 = icmp ne i32 %157, 0
  br i1 %tobool314, label %land.lhs.true.315, label %if.else.326

land.lhs.true.315:                                ; preds = %if.then.313
  %158 = load i32, i32* @PAT_FILE, align 4
  %tobool316 = icmp ne i32 %158, 0
  br i1 %tobool316, label %if.then.317, label %if.else.326

if.then.317:                                      ; preds = %land.lhs.true.315
  %159 = load i32, i32* @FNAME, align 4
  %tobool318 = icmp ne i32 %159, 0
  br i1 %tobool318, label %if.then.319, label %if.else.322

if.then.319:                                      ; preds = %if.then.317
  %160 = load i32, i32* @total_line, align 4
  %161 = load i32, i32* @num_of_matched, align 4
  %sub320 = sub nsw i32 %160, %161
  %call321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0), i32 %sub320)
  br label %if.end.325

if.else.322:                                      ; preds = %if.then.317
  %162 = load i32, i32* @total_line, align 4
  %163 = load i32, i32* @num_of_matched, align 4
  %sub323 = sub nsw i32 %162, %163
  %call324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %sub323)
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.322, %if.then.319
  br label %if.end.333

if.else.326:                                      ; preds = %land.lhs.true.315, %if.then.313
  %164 = load i32, i32* @FNAME, align 4
  %tobool327 = icmp ne i32 %164, 0
  br i1 %tobool327, label %if.then.328, label %if.else.330

if.then.328:                                      ; preds = %if.else.326
  %165 = load i32, i32* @num_of_matched, align 4
  %call329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0), i32 %165)
  br label %if.end.332

if.else.330:                                      ; preds = %if.else.326
  %166 = load i32, i32* @num_of_matched, align 4
  %call331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %166)
  br label %if.end.332

if.end.332:                                       ; preds = %if.else.330, %if.then.328
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.end.325
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %land.lhs.true.311, %if.end.309
  %167 = load i32, i32* @FILEOUT, align 4
  %tobool335 = icmp ne i32 %167, 0
  br i1 %tobool335, label %land.lhs.true.336, label %if.end.339

land.lhs.true.336:                                ; preds = %if.end.334
  %168 = load i32, i32* @num_of_matched, align 4
  %tobool337 = icmp ne i32 %168, 0
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %land.lhs.true.336
  call void @file_out(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %land.lhs.true.336, %if.end.334
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.289
  br label %for.inc

for.inc:                                          ; preds = %if.end.340
  %169 = load i32, i32* %i, align 4
  %inc341 = add nsw i32 %169, 1
  store i32 %inc341, i32* %i, align 4
  %170 = load i32, i32* %fd, align 4
  %call342 = call i32 @close(i32 %170)
  store i32 0, i32* @num_of_matched, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %171 = load i32, i32* @NOMATCH, align 4
  %tobool343 = icmp ne i32 %171, 0
  br i1 %tobool343, label %land.lhs.true.344, label %if.end.464

land.lhs.true.344:                                ; preds = %for.end
  %172 = load i32, i32* @BESTMATCH, align 4
  %tobool345 = icmp ne i32 %172, 0
  br i1 %tobool345, label %if.then.346, label %if.end.464

if.then.346:                                      ; preds = %land.lhs.true.344
  %173 = load i32, i32* @WORDBOUND, align 4
  %tobool347 = icmp ne i32 %173, 0
  br i1 %tobool347, label %if.then.354, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %if.then.346
  %174 = load i32, i32* @WHOLELINE, align 4
  %tobool349 = icmp ne i32 %174, 0
  br i1 %tobool349, label %if.then.354, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %lor.lhs.false.348
  %175 = load i32, i32* @LINENUM, align 4
  %tobool351 = icmp ne i32 %175, 0
  br i1 %tobool351, label %if.then.354, label %lor.lhs.false.352

lor.lhs.false.352:                                ; preds = %lor.lhs.false.350
  %176 = load i32, i32* @INVERSE, align 4
  %tobool353 = icmp ne i32 %176, 0
  br i1 %tobool353, label %if.then.354, label %if.end.359

if.then.354:                                      ; preds = %lor.lhs.false.352, %lor.lhs.false.350, %lor.lhs.false.348, %if.then.346
  store i32 0, i32* @SGREP, align 4
  %arraydecay355 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  call void @preprocess(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i32 0), i8* %arraydecay355)
  %call356 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i32 0, i32 0)) #6
  %arraydecay357 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %177 = load i32, i32* %D, align 4
  %call358 = call i32 @maskgen(i8* %arraydecay357, i32 %177)
  store i32 %call358, i32* %M, align 4
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.354, %lor.lhs.false.352
  store i32 1, i32* @COUNT, align 4
  store i32 1, i32* %D, align 4
  br label %while.cond.360

while.cond.360:                                   ; preds = %for.end.401, %if.end.359
  %178 = load i32, i32* %D, align 4
  %179 = load i32, i32* %M, align 4
  %cmp361 = icmp slt i32 %178, %179
  br i1 %cmp361, label %land.lhs.true.363, label %land.end.369

land.lhs.true.363:                                ; preds = %while.cond.360
  %180 = load i32, i32* %D, align 4
  %cmp364 = icmp sle i32 %180, 8
  br i1 %cmp364, label %land.rhs.366, label %land.end.369

land.rhs.366:                                     ; preds = %land.lhs.true.363
  %181 = load i32, i32* @num_of_matched, align 4
  %cmp367 = icmp eq i32 %181, 0
  br label %land.end.369

land.end.369:                                     ; preds = %land.rhs.366, %land.lhs.true.363, %while.cond.360
  %182 = phi i1 [ false, %land.lhs.true.363 ], [ false, %while.cond.360 ], [ %cmp367, %land.rhs.366 ]
  br i1 %182, label %while.body.370, label %while.end.403

while.body.370:                                   ; preds = %land.end.369
  store i32 0, i32* %i, align 4
  br label %for.cond.371

for.cond.371:                                     ; preds = %for.inc.398, %while.body.370
  %183 = load i32, i32* %i, align 4
  %184 = load i32, i32* @Numfiles, align 4
  %cmp372 = icmp slt i32 %183, %184
  br i1 %cmp372, label %for.body.374, label %for.end.401

for.body.374:                                     ; preds = %for.cond.371
  %185 = load i32, i32* %i, align 4
  %idxprom375 = sext i32 %185 to i64
  %186 = load i8**, i8*** @Textfiles, align 8
  %arrayidx376 = getelementptr inbounds i8*, i8** %186, i64 %idxprom375
  %187 = load i8*, i8** %arrayidx376, align 8
  %call377 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0), i8* %187) #6
  %188 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %188 to i64
  %189 = load i8**, i8*** @Textfiles, align 8
  %arrayidx379 = getelementptr inbounds i8*, i8** %189, i64 %idxprom378
  %190 = load i8*, i8** %arrayidx379, align 8
  %call380 = call i32 (i8*, i32, ...) @open(i8* %190, i32 0)
  store i32 %call380, i32* %fd, align 4
  %cmp381 = icmp sgt i32 %call380, 0
  br i1 %cmp381, label %if.then.383, label %if.end.397

if.then.383:                                      ; preds = %for.body.374
  %191 = load i32, i32* @PAT_FILE, align 4
  %tobool384 = icmp ne i32 %191, 0
  br i1 %tobool384, label %if.then.385, label %if.else.386

if.then.385:                                      ; preds = %if.then.383
  %192 = load i32, i32* %fd, align 4
  call void @mgrep(i32 %192)
  br label %if.end.396

if.else.386:                                      ; preds = %if.then.383
  %193 = load i32, i32* @SGREP, align 4
  %tobool387 = icmp ne i32 %193, 0
  br i1 %tobool387, label %if.then.388, label %if.else.393

if.then.388:                                      ; preds = %if.else.386
  %arraydecay389 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %arraydecay390 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %call391 = call i64 @strlen(i8* %arraydecay390) #8
  %conv392 = trunc i64 %call391 to i32
  %194 = load i32, i32* %fd, align 4
  %195 = load i32, i32* %D, align 4
  call void @sgrep(i8* %arraydecay389, i32 %conv392, i32 %194, i32 %195)
  br label %if.end.395

if.else.393:                                      ; preds = %if.else.386
  %arraydecay394 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %196 = load i32, i32* %fd, align 4
  %197 = load i32, i32* %M, align 4
  %198 = load i32, i32* %D, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i32 0, i32 0), i8* %arraydecay394, i32 %196, i32 %197, i32 %198)
  br label %if.end.395

if.end.395:                                       ; preds = %if.else.393, %if.then.388
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %if.then.385
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.396, %for.body.374
  br label %for.inc.398

for.inc.398:                                      ; preds = %if.end.397
  %199 = load i32, i32* %i, align 4
  %inc399 = add nsw i32 %199, 1
  store i32 %inc399, i32* %i, align 4
  %200 = load i32, i32* %fd, align 4
  %call400 = call i32 @close(i32 %200)
  br label %for.cond.371

for.end.401:                                      ; preds = %for.cond.371
  %201 = load i32, i32* %D, align 4
  %inc402 = add nsw i32 %201, 1
  store i32 %inc402, i32* %D, align 4
  br label %while.cond.360

while.end.403:                                    ; preds = %land.end.369
  %202 = load i32, i32* @num_of_matched, align 4
  %cmp404 = icmp sgt i32 %202, 0
  br i1 %cmp404, label %if.then.406, label %if.end.463

if.then.406:                                      ; preds = %while.end.403
  %203 = load i32, i32* %D, align 4
  %dec407 = add nsw i32 %203, -1
  store i32 %dec407, i32* %D, align 4
  store i32 0, i32* @COUNT, align 4
  %204 = load i32, i32* @NOPROMPT, align 4
  %tobool408 = icmp ne i32 %204, 0
  br i1 %tobool408, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.then.406
  br label %GO_AHEAD

if.end.410:                                       ; preds = %if.then.406
  %205 = load i32, i32* %D, align 4
  %cmp411 = icmp eq i32 %205, 1
  br i1 %cmp411, label %if.then.413, label %if.else.415

if.then.413:                                      ; preds = %if.end.410
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.417

if.else.415:                                      ; preds = %if.end.410
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %208 = load i32, i32* %D, align 4
  %call416 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 %208)
  br label %if.end.417

if.end.417:                                       ; preds = %if.else.415, %if.then.413
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call418 = call i32 @fflush(%struct._IO_FILE* %209)
  %210 = load i32, i32* @num_of_matched, align 4
  %cmp419 = icmp eq i32 %210, 1
  br i1 %cmp419, label %if.then.421, label %if.else.423

if.then.421:                                      ; preds = %if.end.417
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.425

if.else.423:                                      ; preds = %if.end.417
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %213 = load i32, i32* @num_of_matched, align 4
  %call424 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i32 %213)
  br label %if.end.425

if.end.425:                                       ; preds = %if.else.423, %if.then.421
  %call426 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* %c)
  %214 = load i8, i8* %c, align 1
  %conv427 = sext i8 %214 to i32
  %cmp428 = icmp ne i32 %conv427, 121
  br i1 %cmp428, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %if.end.425
  br label %CONT

if.end.431:                                       ; preds = %if.end.425
  br label %GO_AHEAD

GO_AHEAD:                                         ; preds = %if.end.431, %if.then.409
  store i32 0, i32* %i, align 4
  br label %for.cond.432

for.cond.432:                                     ; preds = %for.inc.459, %GO_AHEAD
  %215 = load i32, i32* %i, align 4
  %216 = load i32, i32* @Numfiles, align 4
  %cmp433 = icmp slt i32 %215, %216
  br i1 %cmp433, label %for.body.435, label %for.end.462

for.body.435:                                     ; preds = %for.cond.432
  %217 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %217 to i64
  %218 = load i8**, i8*** @Textfiles, align 8
  %arrayidx437 = getelementptr inbounds i8*, i8** %218, i64 %idxprom436
  %219 = load i8*, i8** %arrayidx437, align 8
  %call438 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0), i8* %219) #6
  %220 = load i32, i32* %i, align 4
  %idxprom439 = sext i32 %220 to i64
  %221 = load i8**, i8*** @Textfiles, align 8
  %arrayidx440 = getelementptr inbounds i8*, i8** %221, i64 %idxprom439
  %222 = load i8*, i8** %arrayidx440, align 8
  %call441 = call i32 (i8*, i32, ...) @open(i8* %222, i32 0)
  store i32 %call441, i32* %fd, align 4
  %cmp442 = icmp sgt i32 %call441, 0
  br i1 %cmp442, label %if.then.444, label %if.end.458

if.then.444:                                      ; preds = %for.body.435
  %223 = load i32, i32* @PAT_FILE, align 4
  %tobool445 = icmp ne i32 %223, 0
  br i1 %tobool445, label %if.then.446, label %if.else.447

if.then.446:                                      ; preds = %if.then.444
  %224 = load i32, i32* %fd, align 4
  call void @mgrep(i32 %224)
  br label %if.end.457

if.else.447:                                      ; preds = %if.then.444
  %225 = load i32, i32* @SGREP, align 4
  %tobool448 = icmp ne i32 %225, 0
  br i1 %tobool448, label %if.then.449, label %if.else.454

if.then.449:                                      ; preds = %if.else.447
  %arraydecay450 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %arraydecay451 = getelementptr inbounds [128 x i8], [128 x i8]* %OldPattern, i32 0, i32 0
  %call452 = call i64 @strlen(i8* %arraydecay451) #8
  %conv453 = trunc i64 %call452 to i32
  %226 = load i32, i32* %fd, align 4
  %227 = load i32, i32* %D, align 4
  call void @sgrep(i8* %arraydecay450, i32 %conv453, i32 %226, i32 %227)
  br label %if.end.456

if.else.454:                                      ; preds = %if.else.447
  %arraydecay455 = getelementptr inbounds [128 x i8], [128 x i8]* %Pattern, i32 0, i32 0
  %228 = load i32, i32* %fd, align 4
  %229 = load i32, i32* %M, align 4
  %230 = load i32, i32* %D, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i32 0, i32 0), i8* %arraydecay455, i32 %228, i32 %229, i32 %230)
  br label %if.end.456

if.end.456:                                       ; preds = %if.else.454, %if.then.449
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %if.then.446
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %for.body.435
  br label %for.inc.459

for.inc.459:                                      ; preds = %if.end.458
  %231 = load i32, i32* %i, align 4
  %inc460 = add nsw i32 %231, 1
  store i32 %inc460, i32* %i, align 4
  %232 = load i32, i32* %fd, align 4
  %call461 = call i32 @close(i32 %232)
  br label %for.cond.432

for.end.462:                                      ; preds = %for.cond.432
  store i32 0, i32* @NOMATCH, align 4
  br label %if.end.463

if.end.463:                                       ; preds = %for.end.462, %while.end.403
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %land.lhs.true.344, %for.end
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %if.end.277
  br label %CONT

CONT:                                             ; preds = %if.end.465, %if.then.430
  %233 = load i32, i32* @EATFIRST, align 4
  %tobool466 = icmp ne i32 %233, 0
  br i1 %tobool466, label %if.then.467, label %if.end.469

if.then.467:                                      ; preds = %CONT
  %call468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* @EATFIRST, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.467, %CONT
  %234 = load i32, i32* @num_of_matched, align 4
  %tobool470 = icmp ne i32 %234, 0
  br i1 %tobool470, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %if.end.469
  store i32 0, i32* @NOMATCH, align 4
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.471, %if.end.469
  %235 = load i32, i32* @NOMATCH, align 4
  %tobool473 = icmp ne i32 %235, 0
  br i1 %tobool473, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %if.end.472
  call void @exit(i32 1) #7
  unreachable

if.end.475:                                       ; preds = %if.end.472
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %236 = load i32, i32* %retval
  ret i32 %236
}

; Function Attrs: nounwind uwtable
define void @initial_value() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @NOUPPER, align 4
  store i32 0, i32* @NOPROMPT, align 4
  store i32 0, i32* @BESTMATCH, align 4
  store i32 0, i32* @FNAME, align 4
  store i32 0, i32* @REGEX, align 4
  store i32 0, i32* @JUMP, align 4
  store i32 0, i32* @SGREP, align 4
  store i32 0, i32* @WHOLELINE, align 4
  store i32 0, i32* @LINENUM, align 4
  store i32 0, i32* @COUNT, align 4
  store i32 0, i32* @OUTTAIL, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* @AND, align 4
  store i32 0, i32* @INVERSE, align 4
  store i32 0, i32* @EATFIRST, align 4
  store i32 1, i32* @FIRSTOUTPUT, align 4
  store i32 1, i32* @NOMATCH, align 4
  store i32 1, i32* @FIRST_IN_RE, align 4
  store i32 1, i32* @S, align 4
  store i32 1, i32* @DD, align 4
  store i32 1, i32* @I, align 4
  store i32 1, i32* @TAIL, align 4
  store i32 1, i32* @HEAD, align 4
  store i32 2, i32* @D_length, align 4
  store i32 0, i32* @num_of_matched, align 4
  store i32 0, i32* @SIMPLEPATTERN, align 4
  store i32 0, i32* @PSIZE, align 4
  store i32 0, i32* @Num_Pat, align 4
  store i32 0, i32* @SILENT, align 4
  store i32 0, i32* @RE_ERR, align 4
  store i32 0, i32* @DELIMITER, align 4
  store i32 0, i32* @WORDBOUND, align 4
  store i32 1, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i32 0, i64 32), align 4
  store i32 31, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %2, 1
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom1
  store i32 %shl, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.8, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 256
  br i1 %cmp4, label %for.body.5, label %for.end.9

for.body.5:                                       ; preds = %for.cond.3
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end.9:                                        ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.37, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @check_file(i8*) #2

; Function Attrs: nounwind uwtable
define void @checksg(i8* %Pattern, i32 %D) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %D.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 %D, i32* %D.addr, align 4
  %0 = load i8*, i8** %Pattern.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %m, align 4
  %1 = load i32, i32* @PAT_FILE, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %D.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* @SIMPLEPATTERN, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %9 to i32
  switch i32 %conv5, label %sw.default [
    i32 59, label %sw.bb
    i32 44, label %sw.bb.6
    i32 46, label %sw.bb.7
    i32 42, label %sw.bb.8
    i32 45, label %sw.bb.9
    i32 91, label %sw.bb.10
    i32 93, label %sw.bb.11
    i32 40, label %sw.bb.12
    i32 41, label %sw.bb.13
    i32 60, label %sw.bb.14
    i32 62, label %sw.bb.15
    i32 94, label %sw.bb.16
    i32 36, label %sw.bb.21
    i32 124, label %sw.bb.26
    i32 35, label %sw.bb.27
    i32 92, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body
  %10 = load i32, i32* %D.addr, align 4
  %cmp17 = icmp sgt i32 %10, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.16
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb.16
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  %11 = load i32, i32* %D.addr, align 4
  %cmp22 = icmp sgt i32 %11, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.21
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %sw.bb.21
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb.27, %sw.bb.26, %if.end.25, %if.end.20, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* @CONSTANT, align 4
  %tobool29 = icmp ne i32 %13, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  store i32 1, i32* @SIMPLEPATTERN, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %for.end
  %14 = load i32, i32* @SIMPLEPATTERN, align 4
  %cmp32 = icmp eq i32 %14, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %15 = load i32, i32* @NOUPPER, align 4
  %tobool36 = icmp ne i32 %15, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.40

land.lhs.true.37:                                 ; preds = %if.end.35
  %16 = load i32, i32* %D.addr, align 4
  %tobool38 = icmp ne i32 %16, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.37
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.37, %if.end.35
  %17 = load i32, i32* @JUMP, align 4
  %cmp41 = icmp eq i32 %17, 1
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %18 = load i32, i32* @I, align 4
  %cmp45 = icmp eq i32 %18, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %19 = load i32, i32* @LINENUM, align 4
  %tobool49 = icmp ne i32 %19, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  br label %return

if.end.51:                                        ; preds = %if.end.48
  %20 = load i32, i32* @DELIMITER, align 4
  %tobool52 = icmp ne i32 %20, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  br label %return

if.end.54:                                        ; preds = %if.end.51
  %21 = load i32, i32* @INVERSE, align 4
  %tobool55 = icmp ne i32 %21, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  br label %return

if.end.57:                                        ; preds = %if.end.54
  %22 = load i32, i32* @WORDBOUND, align 4
  %tobool58 = icmp ne i32 %22, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.63

land.lhs.true.59:                                 ; preds = %if.end.57
  %23 = load i32, i32* %D.addr, align 4
  %cmp60 = icmp sgt i32 %23, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.59
  br label %return

if.end.63:                                        ; preds = %land.lhs.true.59, %if.end.57
  %24 = load i32, i32* @WHOLELINE, align 4
  %tobool64 = icmp ne i32 %24, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.69

land.lhs.true.65:                                 ; preds = %if.end.63
  %25 = load i32, i32* %D.addr, align 4
  %cmp66 = icmp sgt i32 %25, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.65
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.65, %if.end.63
  %26 = load i32, i32* @SILENT, align 4
  %tobool70 = icmp ne i32 %26, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  br label %return

if.end.72:                                        ; preds = %if.end.69
  store i32 1, i32* @SGREP, align 4
  %27 = load i32, i32* %m, align 4
  %cmp73 = icmp sge i32 %27, 16
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  store i32 1, i32* @DNA, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.72
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.99, %if.end.76
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %m, align 4
  %cmp78 = icmp slt i32 %28, %29
  br i1 %cmp78, label %for.body.80, label %for.end.101

for.body.80:                                      ; preds = %for.cond.77
  %30 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %30 to i64
  %31 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %31, i64 %idxprom81
  %32 = load i8, i8* %arrayidx82, align 1
  store i8 %32, i8* %c, align 1
  %33 = load i8, i8* %c, align 1
  %conv83 = sext i8 %33 to i32
  %cmp84 = icmp eq i32 %conv83, 97
  br i1 %cmp84, label %if.then.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.80
  %34 = load i8, i8* %c, align 1
  %conv86 = sext i8 %34 to i32
  %cmp87 = icmp eq i32 %conv86, 99
  br i1 %cmp87, label %if.then.97, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false
  %35 = load i8, i8* %c, align 1
  %conv90 = sext i8 %35 to i32
  %cmp91 = icmp eq i32 %conv90, 116
  br i1 %cmp91, label %if.then.97, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.89
  %36 = load i8, i8* %c, align 1
  %conv94 = sext i8 %36 to i32
  %cmp95 = icmp eq i32 %conv94, 103
  br i1 %cmp95, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %lor.lhs.false.93, %lor.lhs.false.89, %lor.lhs.false, %for.body.80
  br label %if.end.98

if.else:                                          ; preds = %lor.lhs.false.93
  store i32 0, i32* @DNA, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.97
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %37 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %37, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.77

for.end.101:                                      ; preds = %for.cond.77
  br label %return

return:                                           ; preds = %for.end.101, %if.then.71, %if.then.68, %if.then.62, %if.then.56, %if.then.53, %if.then.50, %if.then.47, %if.then.43, %if.then.39, %if.then.34
  ret void
}

declare void @preprocess(i8*, i8*) #2

declare i32 @maskgen(i8*, i32) #2

declare void @prepf(i32) #2

declare void @compat() #2

declare void @mgrep(i32) #2

declare void @sgrep(i8*, i32, i32, i32) #2

declare void @bitap(i8*, i8*, i32, i32, i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @file_out(i8* %fname) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %num_read = alloca i32, align 4
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca [4097 x i8], align 16
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i32, i32* @FNAME, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %call1 = call i32 @putchar(i32 10)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @putchar(i32 58)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i32 @putchar(i32 10)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  %5 = load i8*, i8** %fname.addr, align 8
  %call6 = call i64 @strlen(i8* %5) #8
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.13, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %len, align 4
  %cmp9 = icmp slt i32 %6, %7
  br i1 %cmp9, label %for.body.11, label %for.end.15

for.body.11:                                      ; preds = %for.cond.8
  %call12 = call i32 @putchar(i32 58)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.11
  %8 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %8, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.8

for.end.15:                                       ; preds = %for.cond.8
  %call16 = call i32 @putchar(i32 10)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fflush(%struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %for.end.15, %entry
  %10 = load i8*, i8** %fname.addr, align 8
  %call18 = call i32 (i8*, i32, ...) @open(i8* %10, i32 0)
  store i32 %call18, i32* %fd, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call19 = call i64 @read(i32 %11, i8* %arraydecay, i64 4096)
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %num_read, align 4
  %cmp21 = icmp sgt i32 %conv20, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay23 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %12 = load i32, i32* %num_read, align 4
  %conv24 = sext i32 %12 to i64
  %call25 = call i64 @write(i32 1, i8* %arraydecay23, i64 %conv24)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @close(i32) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @compute_next(i32 %M, i32* %Next, i32* %Next1) #0 {
entry:
  %M.addr = alloca i32, align 4
  %Next.addr = alloca i32*, align 8
  %Next1.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %mid = alloca i32, align 4
  %pp = alloca i32, align 4
  %MM = alloca i32, align 4
  %base = alloca i32, align 4
  %V = alloca [32 x i32], align 16
  store i32 %M, i32* %M.addr, align 4
  store i32* %Next, i32** %Next.addr, align 8
  store i32* %Next1, i32** %Next1.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load i32, i32* %M.addr, align 4
  %sub = sub nsw i32 32, %0
  store i32 %sub, i32* %base, align 4
  %1 = load i32, i32* %base, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %temp, align 4
  %3 = load i32, i32* %base, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %V, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.25, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %M.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body.7, label %for.end.27

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.7
  %9 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @table, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx10, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %11, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %12, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* %V, i32 0, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  %16 = load i32, i32* %base, align 4
  %17 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %j, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @table, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx19, i32 0, i64 %idxprom17
  %19 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %16, %19
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %or = or i32 %15, %20
  %21 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [32 x i32], [32 x i32]* %V, i32 0, i64 %idxprom23
  store i32 %or, i32* %arrayidx24, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.inc.25

for.inc.25:                                       ; preds = %while.end
  %22 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.5

for.end.27:                                       ; preds = %for.cond.5
  %23 = load i32, i32* %temp, align 4
  %24 = load i32, i32* %base, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom28
  store i32 %23, i32* %arrayidx29, align 4
  %25 = load i32, i32* %M.addr, align 4
  %cmp30 = icmp sle i32 %25, 15
  br i1 %cmp30, label %if.then, label %if.end.53

if.then:                                          ; preds = %for.end.27
  %26 = load i32, i32* %M.addr, align 4
  %call = call i32 @exponen(i32 %26)
  store i32 %call, i32* %k, align 4
  %27 = load i32, i32* %k, align 4
  %mul = mul nsw i32 2, %27
  store i32 %mul, i32* %pp, align 4
  %28 = load i32, i32* %k, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.50, %if.then
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %pp, align 4
  %cmp32 = icmp slt i32 %29, %30
  br i1 %cmp32, label %for.body.33, label %for.end.52

for.body.33:                                      ; preds = %for.cond.31
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* %n, align 4
  %32 = load i32, i32* %k, align 4
  %shr = ashr i32 %32, 1
  %33 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load i32*, i32** %Next.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %34, i64 %idxprom34
  store i32 %shr, i32* %arrayidx35, align 4
  %35 = load i32, i32* %M.addr, align 4
  store i32 %35, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.48, %for.body.33
  %36 = load i32, i32* %j, align 4
  %cmp37 = icmp sge i32 %36, 1
  br i1 %cmp37, label %for.body.38, label %for.end.49

for.body.38:                                      ; preds = %for.cond.36
  %37 = load i32, i32* %n, align 4
  %38 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i32 0, i64 32), align 4
  %and = and i32 %37, %38
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %for.body.38
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load i32*, i32** %Next.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %40, i64 %idxprom40
  %41 = load i32, i32* %arrayidx41, align 4
  %42 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds [32 x i32], [32 x i32]* %V, i32 0, i64 %idxprom42
  %43 = load i32, i32* %arrayidx43, align 4
  %or44 = or i32 %41, %43
  %44 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %44 to i64
  %45 = load i32*, i32** %Next.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %45, i64 %idxprom45
  store i32 %or44, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %for.body.38
  %46 = load i32, i32* %n, align 4
  %shr47 = ashr i32 %46, 1
  store i32 %shr47, i32* %n, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end
  %47 = load i32, i32* %j, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.36

for.end.49:                                       ; preds = %for.cond.36
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %48 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.31

for.end.52:                                       ; preds = %for.cond.31
  br label %return

if.end.53:                                        ; preds = %for.end.27
  %49 = load i32, i32* %M.addr, align 4
  %cmp54 = icmp sgt i32 %49, 30
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  %51 = load i32, i32* %M.addr, align 4
  store i32 %51, i32* %MM, align 4
  %52 = load i32, i32* %M.addr, align 4
  %and58 = and i32 %52, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.57
  %53 = load i32, i32* %M.addr, align 4
  %add61 = add nsw i32 %53, 1
  store i32 %add61, i32* %M.addr, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.57
  %54 = load i32, i32* %M.addr, align 4
  %div = sdiv i32 %54, 2
  %call63 = call i32 @exponen(i32 %div)
  store i32 %call63, i32* %k, align 4
  %55 = load i32, i32* %k, align 4
  %mul64 = mul nsw i32 2, %55
  store i32 %mul64, i32* %pp, align 4
  %56 = load i32, i32* %MM, align 4
  %div65 = sdiv i32 %56, 2
  store i32 %div65, i32* %mid, align 4
  %57 = load i32, i32* %k, align 4
  store i32 %57, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.118, %if.end.62
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %pp, align 4
  %cmp67 = icmp slt i32 %58, %59
  br i1 %cmp67, label %for.body.68, label %for.end.120

for.body.68:                                      ; preds = %for.cond.66
  %60 = load i32, i32* %i, align 4
  store i32 %60, i32* %n, align 4
  %61 = load i32, i32* %base, align 4
  %idxprom69 = sext i32 %61 to i64
  %arrayidx70 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom69
  %62 = load i32, i32* %arrayidx70, align 4
  %shr71 = lshr i32 %62, 1
  %63 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %63 to i64
  %64 = load i32*, i32** %Next.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %64, i64 %idxprom72
  store i32 %shr71, i32* %arrayidx73, align 4
  %65 = load i32, i32* %MM, align 4
  store i32 %65, i32* %j, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.90, %for.body.68
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %mid, align 4
  %cmp75 = icmp sgt i32 %66, %67
  br i1 %cmp75, label %for.body.76, label %for.end.92

for.body.76:                                      ; preds = %for.cond.74
  %68 = load i32, i32* %n, align 4
  %69 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i32 0, i64 32), align 4
  %and77 = and i32 %68, %69
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %for.body.76
  %70 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %70 to i64
  %71 = load i32*, i32** %Next.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %71, i64 %idxprom80
  %72 = load i32, i32* %arrayidx81, align 4
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %mid, align 4
  %sub82 = sub nsw i32 %73, %74
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [32 x i32], [32 x i32]* %V, i32 0, i64 %idxprom83
  %75 = load i32, i32* %arrayidx84, align 4
  %or85 = or i32 %72, %75
  %76 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %76 to i64
  %77 = load i32*, i32** %Next.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %77, i64 %idxprom86
  store i32 %or85, i32* %arrayidx87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.79, %for.body.76
  %78 = load i32, i32* %n, align 4
  %shr89 = ashr i32 %78, 1
  store i32 %shr89, i32* %n, align 4
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.88
  %79 = load i32, i32* %j, align 4
  %dec91 = add nsw i32 %79, -1
  store i32 %dec91, i32* %j, align 4
  br label %for.cond.74

for.end.92:                                       ; preds = %for.cond.74
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %k, align 4
  %sub93 = sub nsw i32 %80, %81
  store i32 %sub93, i32* %n, align 4
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %k, align 4
  %sub94 = sub nsw i32 %82, %83
  %idxprom95 = sext i32 %sub94 to i64
  %84 = load i32*, i32** %Next1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %84, i64 %idxprom95
  store i32 0, i32* %arrayidx96, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.115, %for.end.92
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %mid, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %for.body.99, label %for.end.117

for.body.99:                                      ; preds = %for.cond.97
  %87 = load i32, i32* %n, align 4
  %88 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i32 0, i64 32), align 4
  %and100 = and i32 %87, %88
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.113

if.then.102:                                      ; preds = %for.body.99
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %k, align 4
  %sub103 = sub nsw i32 %89, %90
  %idxprom104 = sext i32 %sub103 to i64
  %91 = load i32*, i32** %Next1.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %91, i64 %idxprom104
  %92 = load i32, i32* %arrayidx105, align 4
  %93 = load i32, i32* %MM, align 4
  %94 = load i32, i32* %j, align 4
  %sub106 = sub nsw i32 %93, %94
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [32 x i32], [32 x i32]* %V, i32 0, i64 %idxprom107
  %95 = load i32, i32* %arrayidx108, align 4
  %or109 = or i32 %92, %95
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %k, align 4
  %sub110 = sub nsw i32 %96, %97
  %idxprom111 = sext i32 %sub110 to i64
  %98 = load i32*, i32** %Next1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %98, i64 %idxprom111
  store i32 %or109, i32* %arrayidx112, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.102, %for.body.99
  %99 = load i32, i32* %n, align 4
  %shr114 = ashr i32 %99, 1
  store i32 %shr114, i32* %n, align 4
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.113
  %100 = load i32, i32* %j, align 4
  %inc116 = add nsw i32 %100, 1
  store i32 %inc116, i32* %j, align 4
  br label %for.cond.97

for.end.117:                                      ; preds = %for.cond.97
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.117
  %101 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %101, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.66

for.end.120:                                      ; preds = %for.cond.66
  br label %return

return:                                           ; preds = %for.end.120, %for.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exponen(i32 %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ex = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 1, i32* %ex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ex, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, i32* %ex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %ex, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @re1(i32 %Text, i32 %M, i32 %D) #0 {
entry:
  %Text.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %r0 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %CMask = alloca i32, align 4
  %Newline = alloca i32, align 4
  %Init0 = alloca i32, align 4
  %r_NO_ERR = alloca i32, align 4
  %end = alloca i32, align 4
  %hh = alloca i32, align 4
  %LL = alloca i32, align 4
  %k = alloca i32, align 4
  %FIRST_TIME = alloca i32, align 4
  %num_read = alloca i32, align 4
  %j = alloca i32, align 4
  %base = alloca i32, align 4
  %A = alloca [5 x i32], align 16
  %B = alloca [5 x i32], align 16
  %Next = alloca [66000 x i32], align 16
  %Next1 = alloca [66000 x i32], align 16
  %buffer = alloca [50177 x i8], align 16
  %FIRST_LOOP = alloca i32, align 4
  store i32 %Text, i32* %Text.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 0, i32* %LL, align 4
  store i32 1, i32* %FIRST_TIME, align 4
  store i32 0, i32* %j, align 4
  store i32 1, i32* %FIRST_LOOP, align 4
  %0 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %0, i32* %r_NO_ERR, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp sgt i32 %1, 30
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %M.addr, align 4
  %sub = sub nsw i32 32, %3
  store i32 %sub, i32* %base, align 4
  %4 = load i32, i32* %M.addr, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, i32* %hh, align 4
  store i32 32, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %hh, align 4
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %LL, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %or = or i32 %7, %9
  store i32 %or, i32* %LL, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* @FIRST_IN_RE, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %for.end
  %13 = load i32, i32* %M.addr, align 4
  %arraydecay = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i32 0
  call void @compute_next(i32 %13, i32* %arraydecay, i32* %arraydecay3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %for.end
  store i32 0, i32* @FIRST_IN_RE, align 4
  store i32 10, i32* %Newline, align 4
  %14 = load i32, i32* %base, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  store i32 %15, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  %16 = load i32, i32* @HEAD, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.4
  %17 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  %18 = load i32, i32* %base, align 4
  %add = add nsw i32 %18, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  %or11 = or i32 %17, %19
  store i32 %or11, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.4
  store i32 1, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.33, %if.end.12
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %D.addr, align 4
  %cmp14 = icmp ule i32 %20, %21
  br i1 %cmp14, label %for.body.15, label %for.end.35

for.body.15:                                      ; preds = %for.cond.13
  %22 = load i32, i32* %i, align 4
  %sub16 = sub i32 %22, 1
  %idxprom17 = zext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom17
  %23 = load i32, i32* %arrayidx18, align 4
  %24 = load i32, i32* %i, align 4
  %sub19 = sub i32 %24, 1
  %idxprom20 = zext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom20
  %25 = load i32, i32* %arrayidx21, align 4
  %26 = load i32, i32* %hh, align 4
  %shr = lshr i32 %25, %26
  %idxprom22 = zext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom22
  %27 = load i32, i32* %arrayidx23, align 4
  %or24 = or i32 %23, %27
  %28 = load i32, i32* %i, align 4
  %sub25 = sub i32 %28, 1
  %idxprom26 = zext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom26
  %29 = load i32, i32* %arrayidx27, align 4
  %30 = load i32, i32* %LL, align 4
  %and = and i32 %29, %30
  %idxprom28 = zext i32 %and to i64
  %arrayidx29 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom28
  %31 = load i32, i32* %arrayidx29, align 4
  %or30 = or i32 %or24, %31
  %32 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom31
  store i32 %or30, i32* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.15
  %33 = load i32, i32* %i, align 4
  %inc34 = add i32 %33, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.13

for.end.35:                                       ; preds = %for.cond.13
  %34 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  %or36 = or i32 %34, 1
  store i32 %or36, i32* @Init1, align 4
  %35 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %35, i32* %Init0, align 4
  %36 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %36, i32* %r3, align 4
  store i32 %36, i32* %r2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.46, %for.end.35
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %D.addr, align 4
  %cmp38 = icmp ule i32 %37, %38
  br i1 %cmp38, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.37
  %39 = load i32, i32* %k, align 4
  %idxprom40 = zext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom40
  %40 = load i32, i32* %arrayidx41, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom42 = zext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom42
  store i32 %40, i32* %arrayidx43, align 4
  %42 = load i32, i32* %k, align 4
  %idxprom44 = zext i32 %42 to i64
  %arrayidx45 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom44
  store i32 %40, i32* %arrayidx45, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %43 = load i32, i32* %k, align 4
  %inc47 = add i32 %43, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.37

for.end.48:                                       ; preds = %for.cond.37
  %44 = load i32, i32* %D.addr, align 4
  %cmp49 = icmp eq i32 %44, 0
  br i1 %cmp49, label %if.then.50, label %if.end.222

if.then.50:                                       ; preds = %for.end.48
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.50
  %45 = load i32, i32* %Text.addr, align 4
  %arraydecay51 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay51, i64 1024
  %call52 = call i64 @read(i32 %45, i8* %add.ptr, i64 49152)
  %conv = trunc i64 %call52 to i32
  store i32 %conv, i32* %num_read, align 4
  %cmp53 = icmp sgt i32 %conv, 0
  br i1 %cmp53, label %while.body, label %while.end.221

while.body:                                       ; preds = %while.cond
  store i32 1024, i32* %i, align 4
  %46 = load i32, i32* %num_read, align 4
  %add55 = add nsw i32 %46, 1024
  store i32 %add55, i32* %end, align 4
  %47 = load i32, i32* %num_read, align 4
  %cmp56 = icmp slt i32 %47, 49152
  br i1 %cmp56, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %while.body
  %48 = load i32, i32* %end, align 4
  %sub58 = sub i32 %48, 1
  %idxprom59 = zext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom59
  %49 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %49 to i32
  %cmp62 = icmp ne i32 %conv61, 10
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %end, align 4
  %idxprom65 = zext i32 %50 to i64
  %arrayidx66 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom65
  store i8 10, i8* %arrayidx66, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %land.lhs.true, %while.body
  %51 = load i32, i32* %FIRST_LOOP, align 4
  %tobool68 = icmp ne i32 %51, 0
  br i1 %tobool68, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.67
  %52 = load i32, i32* %i, align 4
  %sub70 = sub i32 %52, 1
  %idxprom71 = zext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom71
  store i8 10, i8* %arrayidx72, align 1
  %53 = load i32, i32* %i, align 4
  %dec73 = add i32 %53, -1
  store i32 %dec73, i32* %i, align 4
  store i32 0, i32* %FIRST_LOOP, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %if.end.67
  br label %while.cond.75

while.cond.75:                                    ; preds = %if.end.216, %if.end.74
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %end, align 4
  %cmp76 = icmp ult i32 %54, %55
  br i1 %cmp76, label %while.body.78, label %while.end

while.body.78:                                    ; preds = %while.cond.75
  %56 = load i32, i32* %i, align 4
  %inc79 = add i32 %56, 1
  store i32 %inc79, i32* %i, align 4
  %idxprom80 = zext i32 %56 to i64
  %arrayidx81 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom80
  %57 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %57 to i32
  store i32 %conv82, i32* %c, align 4
  %58 = load i32, i32* %c, align 4
  %idxprom83 = zext i32 %58 to i64
  %arrayidx84 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i32 0, i64 %idxprom83
  %59 = load i32, i32* %arrayidx84, align 4
  store i32 %59, i32* %CMask, align 4
  %60 = load i32, i32* %c, align 4
  %61 = load i32, i32* %Newline, align 4
  %cmp85 = icmp ne i32 %60, %61
  br i1 %cmp85, label %if.then.87, label %if.else.103

if.then.87:                                       ; preds = %while.body.78
  %62 = load i32, i32* %CMask, align 4
  %cmp88 = icmp ne i32 %62, 0
  br i1 %cmp88, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %if.then.87
  %63 = load i32, i32* @Init1, align 4
  %64 = load i32, i32* %r3, align 4
  %and91 = and i32 %63, %64
  store i32 %and91, i32* %r1, align 4
  %65 = load i32, i32* %r3, align 4
  %66 = load i32, i32* %hh, align 4
  %shr92 = lshr i32 %65, %66
  %idxprom93 = zext i32 %shr92 to i64
  %arrayidx94 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom93
  %67 = load i32, i32* %arrayidx94, align 4
  %68 = load i32, i32* %r3, align 4
  %69 = load i32, i32* %LL, align 4
  %and95 = and i32 %68, %69
  %idxprom96 = zext i32 %and95 to i64
  %arrayidx97 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom96
  %70 = load i32, i32* %arrayidx97, align 4
  %or98 = or i32 %67, %70
  %71 = load i32, i32* %CMask, align 4
  %and99 = and i32 %or98, %71
  %72 = load i32, i32* %r1, align 4
  %or100 = or i32 %and99, %72
  store i32 %or100, i32* %r2, align 4
  br label %if.end.102

if.else:                                          ; preds = %if.then.87
  %73 = load i32, i32* %r3, align 4
  %74 = load i32, i32* @Init1, align 4
  %and101 = and i32 %73, %74
  store i32 %and101, i32* %r2, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else, %if.then.90
  br label %if.end.146

if.else.103:                                      ; preds = %while.body.78
  %75 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %75, 1
  store i32 %inc104, i32* %j, align 4
  %76 = load i32, i32* @Init1, align 4
  %77 = load i32, i32* %r3, align 4
  %and105 = and i32 %76, %77
  store i32 %and105, i32* %r1, align 4
  %78 = load i32, i32* %r3, align 4
  %79 = load i32, i32* %hh, align 4
  %shr106 = lshr i32 %78, %79
  %idxprom107 = zext i32 %shr106 to i64
  %arrayidx108 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom107
  %80 = load i32, i32* %arrayidx108, align 4
  %81 = load i32, i32* %r3, align 4
  %82 = load i32, i32* %LL, align 4
  %and109 = and i32 %81, %82
  %idxprom110 = zext i32 %and109 to i64
  %arrayidx111 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom110
  %83 = load i32, i32* %arrayidx111, align 4
  %or112 = or i32 %80, %83
  %84 = load i32, i32* %CMask, align 4
  %and113 = and i32 %or112, %84
  %85 = load i32, i32* %r1, align 4
  %or114 = or i32 %and113, %85
  store i32 %or114, i32* %r2, align 4
  %86 = load i32, i32* @TAIL, align 4
  %tobool115 = icmp ne i32 %86, 0
  br i1 %tobool115, label %if.then.116, label %if.end.125

if.then.116:                                      ; preds = %if.else.103
  %87 = load i32, i32* %r2, align 4
  %88 = load i32, i32* %hh, align 4
  %shr117 = lshr i32 %87, %88
  %idxprom118 = zext i32 %shr117 to i64
  %arrayidx119 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom118
  %89 = load i32, i32* %arrayidx119, align 4
  %90 = load i32, i32* %r2, align 4
  %91 = load i32, i32* %LL, align 4
  %and120 = and i32 %90, %91
  %idxprom121 = zext i32 %and120 to i64
  %arrayidx122 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom121
  %92 = load i32, i32* %arrayidx122, align 4
  %or123 = or i32 %89, %92
  %93 = load i32, i32* %r2, align 4
  %or124 = or i32 %or123, %93
  store i32 %or124, i32* %r2, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.116, %if.else.103
  %94 = load i32, i32* %r2, align 4
  %and126 = and i32 %94, 1
  %95 = load i32, i32* @INVERSE, align 4
  %xor = xor i32 %and126, %95
  %tobool127 = icmp ne i32 %xor, 0
  br i1 %tobool127, label %if.then.128, label %if.end.136

if.then.128:                                      ; preds = %if.end.125
  %96 = load i32, i32* @FILENAMEONLY, align 4
  %tobool129 = icmp ne i32 %96, 0
  br i1 %tobool129, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %if.then.128
  %97 = load i32, i32* @num_of_matched, align 4
  %inc131 = add nsw i32 %97, 1
  store i32 %inc131, i32* @num_of_matched, align 4
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.133:                                       ; preds = %if.then.128
  %arraydecay134 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %98 = load i32, i32* %i, align 4
  %sub135 = sub i32 %98, 1
  %99 = load i32, i32* %end, align 4
  %100 = load i32, i32* %j, align 4
  call void @r_output(i8* %arraydecay134, i32 %sub135, i32 %99, i32 %100)
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.133, %if.end.125
  %101 = load i32, i32* %Init0, align 4
  store i32 %101, i32* %r3, align 4
  %102 = load i32, i32* %r3, align 4
  %103 = load i32, i32* %hh, align 4
  %shr137 = lshr i32 %102, %103
  %idxprom138 = zext i32 %shr137 to i64
  %arrayidx139 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom138
  %104 = load i32, i32* %arrayidx139, align 4
  %105 = load i32, i32* %r3, align 4
  %106 = load i32, i32* %LL, align 4
  %and140 = and i32 %105, %106
  %idxprom141 = zext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom141
  %107 = load i32, i32* %arrayidx142, align 4
  %or143 = or i32 %104, %107
  %108 = load i32, i32* %CMask, align 4
  %and144 = and i32 %or143, %108
  %109 = load i32, i32* %Init0, align 4
  %or145 = or i32 %and144, %109
  store i32 %or145, i32* %r2, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.136, %if.end.102
  %110 = load i32, i32* %i, align 4
  %inc147 = add i32 %110, 1
  store i32 %inc147, i32* %i, align 4
  %idxprom148 = zext i32 %110 to i64
  %arrayidx149 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom148
  %111 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %111 to i32
  store i32 %conv150, i32* %c, align 4
  %112 = load i32, i32* %c, align 4
  %idxprom151 = zext i32 %112 to i64
  %arrayidx152 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i32 0, i64 %idxprom151
  %113 = load i32, i32* %arrayidx152, align 4
  store i32 %113, i32* %CMask, align 4
  %114 = load i32, i32* %c, align 4
  %115 = load i32, i32* %Newline, align 4
  %cmp153 = icmp ne i32 %114, %115
  br i1 %cmp153, label %if.then.155, label %if.else.172

if.then.155:                                      ; preds = %if.end.146
  %116 = load i32, i32* %CMask, align 4
  %cmp156 = icmp ne i32 %116, 0
  br i1 %cmp156, label %if.then.158, label %if.else.169

if.then.158:                                      ; preds = %if.then.155
  %117 = load i32, i32* @Init1, align 4
  %118 = load i32, i32* %r2, align 4
  %and159 = and i32 %117, %118
  store i32 %and159, i32* %r1, align 4
  %119 = load i32, i32* %r2, align 4
  %120 = load i32, i32* %hh, align 4
  %shr160 = lshr i32 %119, %120
  %idxprom161 = zext i32 %shr160 to i64
  %arrayidx162 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom161
  %121 = load i32, i32* %arrayidx162, align 4
  %122 = load i32, i32* %r2, align 4
  %123 = load i32, i32* %LL, align 4
  %and163 = and i32 %122, %123
  %idxprom164 = zext i32 %and163 to i64
  %arrayidx165 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom164
  %124 = load i32, i32* %arrayidx165, align 4
  %or166 = or i32 %121, %124
  %125 = load i32, i32* %CMask, align 4
  %and167 = and i32 %or166, %125
  %126 = load i32, i32* %r1, align 4
  %or168 = or i32 %and167, %126
  store i32 %or168, i32* %r3, align 4
  br label %if.end.171

if.else.169:                                      ; preds = %if.then.155
  %127 = load i32, i32* %r2, align 4
  %128 = load i32, i32* @Init1, align 4
  %and170 = and i32 %127, %128
  store i32 %and170, i32* %r3, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %if.then.158
  br label %if.end.216

if.else.172:                                      ; preds = %if.end.146
  %129 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %129, 1
  store i32 %inc173, i32* %j, align 4
  %130 = load i32, i32* @Init1, align 4
  %131 = load i32, i32* %r2, align 4
  %and174 = and i32 %130, %131
  store i32 %and174, i32* %r1, align 4
  %132 = load i32, i32* %r2, align 4
  %133 = load i32, i32* %hh, align 4
  %shr175 = lshr i32 %132, %133
  %idxprom176 = zext i32 %shr175 to i64
  %arrayidx177 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom176
  %134 = load i32, i32* %arrayidx177, align 4
  %135 = load i32, i32* %r2, align 4
  %136 = load i32, i32* %LL, align 4
  %and178 = and i32 %135, %136
  %idxprom179 = zext i32 %and178 to i64
  %arrayidx180 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom179
  %137 = load i32, i32* %arrayidx180, align 4
  %or181 = or i32 %134, %137
  %138 = load i32, i32* %CMask, align 4
  %and182 = and i32 %or181, %138
  %139 = load i32, i32* %r1, align 4
  %or183 = or i32 %and182, %139
  store i32 %or183, i32* %r3, align 4
  %140 = load i32, i32* @TAIL, align 4
  %tobool184 = icmp ne i32 %140, 0
  br i1 %tobool184, label %if.then.185, label %if.end.194

if.then.185:                                      ; preds = %if.else.172
  %141 = load i32, i32* %r3, align 4
  %142 = load i32, i32* %hh, align 4
  %shr186 = lshr i32 %141, %142
  %idxprom187 = zext i32 %shr186 to i64
  %arrayidx188 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom187
  %143 = load i32, i32* %arrayidx188, align 4
  %144 = load i32, i32* %r3, align 4
  %145 = load i32, i32* %LL, align 4
  %and189 = and i32 %144, %145
  %idxprom190 = zext i32 %and189 to i64
  %arrayidx191 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom190
  %146 = load i32, i32* %arrayidx191, align 4
  %or192 = or i32 %143, %146
  %147 = load i32, i32* %r3, align 4
  %or193 = or i32 %or192, %147
  store i32 %or193, i32* %r3, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.185, %if.else.172
  %148 = load i32, i32* %r3, align 4
  %and195 = and i32 %148, 1
  %149 = load i32, i32* @INVERSE, align 4
  %xor196 = xor i32 %and195, %149
  %tobool197 = icmp ne i32 %xor196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.206

if.then.198:                                      ; preds = %if.end.194
  %150 = load i32, i32* @FILENAMEONLY, align 4
  %tobool199 = icmp ne i32 %150, 0
  br i1 %tobool199, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %if.then.198
  %151 = load i32, i32* @num_of_matched, align 4
  %inc201 = add nsw i32 %151, 1
  store i32 %inc201, i32* @num_of_matched, align 4
  %call202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.203:                                       ; preds = %if.then.198
  %arraydecay204 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %152 = load i32, i32* %i, align 4
  %sub205 = sub i32 %152, 1
  %153 = load i32, i32* %end, align 4
  %154 = load i32, i32* %j, align 4
  call void @r_output(i8* %arraydecay204, i32 %sub205, i32 %153, i32 %154)
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.203, %if.end.194
  %155 = load i32, i32* %Init0, align 4
  store i32 %155, i32* %r2, align 4
  %156 = load i32, i32* %r2, align 4
  %157 = load i32, i32* %hh, align 4
  %shr207 = lshr i32 %156, %157
  %idxprom208 = zext i32 %shr207 to i64
  %arrayidx209 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom208
  %158 = load i32, i32* %arrayidx209, align 4
  %159 = load i32, i32* %r2, align 4
  %160 = load i32, i32* %LL, align 4
  %and210 = and i32 %159, %160
  %idxprom211 = zext i32 %and210 to i64
  %arrayidx212 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom211
  %161 = load i32, i32* %arrayidx212, align 4
  %or213 = or i32 %158, %161
  %162 = load i32, i32* %CMask, align 4
  %and214 = and i32 %or213, %162
  %163 = load i32, i32* %Init0, align 4
  %or215 = or i32 %and214, %163
  store i32 %or215, i32* %r3, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.206, %if.end.171
  br label %while.cond.75

while.end:                                        ; preds = %while.cond.75
  %arraydecay217 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %arraydecay218 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %164 = load i32, i32* %num_read, align 4
  %idx.ext = sext i32 %164 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %arraydecay218, i64 %idx.ext
  %call220 = call i8* @strncpy(i8* %arraydecay217, i8* %add.ptr219, i64 1024) #6
  br label %while.cond

while.end.221:                                    ; preds = %while.cond
  br label %return

if.end.222:                                       ; preds = %for.end.48
  br label %while.cond.223

while.cond.223:                                   ; preds = %while.end.924, %if.end.222
  %165 = load i32, i32* %Text.addr, align 4
  %arraydecay224 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %add.ptr225 = getelementptr inbounds i8, i8* %arraydecay224, i64 1024
  %call226 = call i64 @read(i32 %165, i8* %add.ptr225, i64 49152)
  %conv227 = trunc i64 %call226 to i32
  store i32 %conv227, i32* %num_read, align 4
  %cmp228 = icmp sgt i32 %conv227, 0
  br i1 %cmp228, label %while.body.230, label %while.end.930

while.body.230:                                   ; preds = %while.cond.223
  store i32 1024, i32* %i, align 4
  %166 = load i32, i32* %num_read, align 4
  %add231 = add nsw i32 1024, %166
  store i32 %add231, i32* %end, align 4
  %167 = load i32, i32* %num_read, align 4
  %cmp232 = icmp slt i32 %167, 49152
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.244

land.lhs.true.234:                                ; preds = %while.body.230
  %168 = load i32, i32* %end, align 4
  %sub235 = sub i32 %168, 1
  %idxprom236 = zext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom236
  %169 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %169 to i32
  %cmp239 = icmp ne i32 %conv238, 10
  br i1 %cmp239, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %land.lhs.true.234
  %170 = load i32, i32* %end, align 4
  %idxprom242 = zext i32 %170 to i64
  %arrayidx243 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom242
  store i8 10, i8* %arrayidx243, align 1
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.241, %land.lhs.true.234, %while.body.230
  %171 = load i32, i32* %FIRST_TIME, align 4
  %tobool245 = icmp ne i32 %171, 0
  br i1 %tobool245, label %if.then.246, label %if.end.251

if.then.246:                                      ; preds = %if.end.244
  %172 = load i32, i32* %i, align 4
  %sub247 = sub i32 %172, 1
  %idxprom248 = zext i32 %sub247 to i64
  %arrayidx249 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom248
  store i8 10, i8* %arrayidx249, align 1
  %173 = load i32, i32* %i, align 4
  %dec250 = add i32 %173, -1
  store i32 %dec250, i32* %i, align 4
  store i32 0, i32* %FIRST_TIME, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.246, %if.end.244
  br label %while.cond.252

while.cond.252:                                   ; preds = %Nextchar1, %if.end.251
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %end, align 4
  %cmp253 = icmp ult i32 %174, %175
  br i1 %cmp253, label %while.body.255, label %while.end.924

while.body.255:                                   ; preds = %while.cond.252
  %176 = load i32, i32* %i, align 4
  %idxprom256 = zext i32 %176 to i64
  %arrayidx257 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom256
  %177 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %177 to i32
  store i32 %conv258, i32* %c, align 4
  %178 = load i32, i32* %c, align 4
  %idxprom259 = zext i32 %178 to i64
  %arrayidx260 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i32 0, i64 %idxprom259
  %179 = load i32, i32* %arrayidx260, align 4
  store i32 %179, i32* %CMask, align 4
  %180 = load i32, i32* %c, align 4
  %181 = load i32, i32* %Newline, align 4
  %cmp261 = icmp ne i32 %180, %181
  br i1 %cmp261, label %if.then.263, label %if.else.472

if.then.263:                                      ; preds = %while.body.255
  %182 = load i32, i32* %CMask, align 4
  %cmp264 = icmp ne i32 %182, 0
  br i1 %cmp264, label %if.then.266, label %if.else.391

if.then.266:                                      ; preds = %if.then.263
  %arrayidx267 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %183 = load i32, i32* %arrayidx267, align 4
  store i32 %183, i32* %r2, align 4
  %184 = load i32, i32* @Init1, align 4
  %185 = load i32, i32* %r2, align 4
  %and268 = and i32 %184, %185
  store i32 %and268, i32* %r1, align 4
  %186 = load i32, i32* %r2, align 4
  %187 = load i32, i32* %hh, align 4
  %shr269 = lshr i32 %186, %187
  %idxprom270 = zext i32 %shr269 to i64
  %arrayidx271 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom270
  %188 = load i32, i32* %arrayidx271, align 4
  %189 = load i32, i32* %r2, align 4
  %190 = load i32, i32* %LL, align 4
  %and272 = and i32 %189, %190
  %idxprom273 = zext i32 %and272 to i64
  %arrayidx274 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom273
  %191 = load i32, i32* %arrayidx274, align 4
  %or275 = or i32 %188, %191
  %192 = load i32, i32* %CMask, align 4
  %and276 = and i32 %or275, %192
  %193 = load i32, i32* %r1, align 4
  %or277 = or i32 %and276, %193
  %arrayidx278 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  store i32 %or277, i32* %arrayidx278, align 4
  %arrayidx279 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  %194 = load i32, i32* %arrayidx279, align 4
  store i32 %194, i32* %r3, align 4
  %195 = load i32, i32* @Init1, align 4
  %196 = load i32, i32* %r3, align 4
  %and280 = and i32 %195, %196
  store i32 %and280, i32* %r1, align 4
  %197 = load i32, i32* %r2, align 4
  %arrayidx281 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %198 = load i32, i32* %arrayidx281, align 4
  %or282 = or i32 %197, %198
  store i32 %or282, i32* %r0, align 4
  %199 = load i32, i32* %r3, align 4
  %200 = load i32, i32* %hh, align 4
  %shr283 = lshr i32 %199, %200
  %idxprom284 = zext i32 %shr283 to i64
  %arrayidx285 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom284
  %201 = load i32, i32* %arrayidx285, align 4
  %202 = load i32, i32* %r3, align 4
  %203 = load i32, i32* %LL, align 4
  %and286 = and i32 %202, %203
  %idxprom287 = zext i32 %and286 to i64
  %arrayidx288 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom287
  %204 = load i32, i32* %arrayidx288, align 4
  %or289 = or i32 %201, %204
  %205 = load i32, i32* %CMask, align 4
  %and290 = and i32 %or289, %205
  %206 = load i32, i32* %r2, align 4
  %207 = load i32, i32* %r0, align 4
  %208 = load i32, i32* %hh, align 4
  %shr291 = lshr i32 %207, %208
  %idxprom292 = zext i32 %shr291 to i64
  %arrayidx293 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom292
  %209 = load i32, i32* %arrayidx293, align 4
  %or294 = or i32 %206, %209
  %210 = load i32, i32* %r0, align 4
  %211 = load i32, i32* %LL, align 4
  %and295 = and i32 %210, %211
  %idxprom296 = zext i32 %and295 to i64
  %arrayidx297 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom296
  %212 = load i32, i32* %arrayidx297, align 4
  %or298 = or i32 %or294, %212
  %213 = load i32, i32* %r_NO_ERR, align 4
  %and299 = and i32 %or298, %213
  %or300 = or i32 %and290, %and299
  %214 = load i32, i32* %r1, align 4
  %or301 = or i32 %or300, %214
  %arrayidx302 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  store i32 %or301, i32* %arrayidx302, align 4
  %215 = load i32, i32* %D.addr, align 4
  %cmp303 = icmp eq i32 %215, 1
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.then.266
  br label %Nextchar

if.end.306:                                       ; preds = %if.then.266
  %arrayidx307 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  %216 = load i32, i32* %arrayidx307, align 4
  store i32 %216, i32* %r2, align 4
  %217 = load i32, i32* @Init1, align 4
  %218 = load i32, i32* %r2, align 4
  %and308 = and i32 %217, %218
  store i32 %and308, i32* %r1, align 4
  %219 = load i32, i32* %r3, align 4
  %arrayidx309 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %220 = load i32, i32* %arrayidx309, align 4
  %or310 = or i32 %219, %220
  store i32 %or310, i32* %r0, align 4
  %221 = load i32, i32* %r2, align 4
  %222 = load i32, i32* %hh, align 4
  %shr311 = lshr i32 %221, %222
  %idxprom312 = zext i32 %shr311 to i64
  %arrayidx313 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom312
  %223 = load i32, i32* %arrayidx313, align 4
  %224 = load i32, i32* %r2, align 4
  %225 = load i32, i32* %LL, align 4
  %and314 = and i32 %224, %225
  %idxprom315 = zext i32 %and314 to i64
  %arrayidx316 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom315
  %226 = load i32, i32* %arrayidx316, align 4
  %or317 = or i32 %223, %226
  %227 = load i32, i32* %CMask, align 4
  %and318 = and i32 %or317, %227
  %228 = load i32, i32* %r3, align 4
  %229 = load i32, i32* %r0, align 4
  %230 = load i32, i32* %hh, align 4
  %shr319 = lshr i32 %229, %230
  %idxprom320 = zext i32 %shr319 to i64
  %arrayidx321 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom320
  %231 = load i32, i32* %arrayidx321, align 4
  %or322 = or i32 %228, %231
  %232 = load i32, i32* %r0, align 4
  %233 = load i32, i32* %LL, align 4
  %and323 = and i32 %232, %233
  %idxprom324 = zext i32 %and323 to i64
  %arrayidx325 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom324
  %234 = load i32, i32* %arrayidx325, align 4
  %or326 = or i32 %or322, %234
  %235 = load i32, i32* %r_NO_ERR, align 4
  %and327 = and i32 %or326, %235
  %or328 = or i32 %and318, %and327
  %236 = load i32, i32* %r1, align 4
  %or329 = or i32 %or328, %236
  %arrayidx330 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  store i32 %or329, i32* %arrayidx330, align 4
  %237 = load i32, i32* %D.addr, align 4
  %cmp331 = icmp eq i32 %237, 2
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.end.306
  br label %Nextchar

if.end.334:                                       ; preds = %if.end.306
  %arrayidx335 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  %238 = load i32, i32* %arrayidx335, align 4
  store i32 %238, i32* %r3, align 4
  %239 = load i32, i32* @Init1, align 4
  %240 = load i32, i32* %r3, align 4
  %and336 = and i32 %239, %240
  store i32 %and336, i32* %r1, align 4
  %241 = load i32, i32* %r2, align 4
  %arrayidx337 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %242 = load i32, i32* %arrayidx337, align 4
  %or338 = or i32 %241, %242
  store i32 %or338, i32* %r0, align 4
  %243 = load i32, i32* %r3, align 4
  %244 = load i32, i32* %hh, align 4
  %shr339 = lshr i32 %243, %244
  %idxprom340 = zext i32 %shr339 to i64
  %arrayidx341 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom340
  %245 = load i32, i32* %arrayidx341, align 4
  %246 = load i32, i32* %r3, align 4
  %247 = load i32, i32* %LL, align 4
  %and342 = and i32 %246, %247
  %idxprom343 = zext i32 %and342 to i64
  %arrayidx344 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom343
  %248 = load i32, i32* %arrayidx344, align 4
  %or345 = or i32 %245, %248
  %249 = load i32, i32* %CMask, align 4
  %and346 = and i32 %or345, %249
  %250 = load i32, i32* %r2, align 4
  %251 = load i32, i32* %r0, align 4
  %252 = load i32, i32* %hh, align 4
  %shr347 = lshr i32 %251, %252
  %idxprom348 = zext i32 %shr347 to i64
  %arrayidx349 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom348
  %253 = load i32, i32* %arrayidx349, align 4
  %or350 = or i32 %250, %253
  %254 = load i32, i32* %r0, align 4
  %255 = load i32, i32* %LL, align 4
  %and351 = and i32 %254, %255
  %idxprom352 = zext i32 %and351 to i64
  %arrayidx353 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom352
  %256 = load i32, i32* %arrayidx353, align 4
  %or354 = or i32 %or350, %256
  %257 = load i32, i32* %r_NO_ERR, align 4
  %and355 = and i32 %or354, %257
  %or356 = or i32 %and346, %and355
  %258 = load i32, i32* %r1, align 4
  %or357 = or i32 %or356, %258
  %arrayidx358 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  store i32 %or357, i32* %arrayidx358, align 4
  %259 = load i32, i32* %D.addr, align 4
  %cmp359 = icmp eq i32 %259, 3
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.end.334
  br label %Nextchar

if.end.362:                                       ; preds = %if.end.334
  %arrayidx363 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 4
  %260 = load i32, i32* %arrayidx363, align 4
  store i32 %260, i32* %r2, align 4
  %261 = load i32, i32* @Init1, align 4
  %262 = load i32, i32* %r2, align 4
  %and364 = and i32 %261, %262
  store i32 %and364, i32* %r1, align 4
  %263 = load i32, i32* %r3, align 4
  %arrayidx365 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %264 = load i32, i32* %arrayidx365, align 4
  %or366 = or i32 %263, %264
  store i32 %or366, i32* %r0, align 4
  %265 = load i32, i32* %r2, align 4
  %266 = load i32, i32* %hh, align 4
  %shr367 = lshr i32 %265, %266
  %idxprom368 = zext i32 %shr367 to i64
  %arrayidx369 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom368
  %267 = load i32, i32* %arrayidx369, align 4
  %268 = load i32, i32* %r2, align 4
  %269 = load i32, i32* %LL, align 4
  %and370 = and i32 %268, %269
  %idxprom371 = zext i32 %and370 to i64
  %arrayidx372 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom371
  %270 = load i32, i32* %arrayidx372, align 4
  %or373 = or i32 %267, %270
  %271 = load i32, i32* %CMask, align 4
  %and374 = and i32 %or373, %271
  %272 = load i32, i32* %r3, align 4
  %273 = load i32, i32* %r0, align 4
  %274 = load i32, i32* %hh, align 4
  %shr375 = lshr i32 %273, %274
  %idxprom376 = zext i32 %shr375 to i64
  %arrayidx377 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom376
  %275 = load i32, i32* %arrayidx377, align 4
  %or378 = or i32 %272, %275
  %276 = load i32, i32* %r0, align 4
  %277 = load i32, i32* %LL, align 4
  %and379 = and i32 %276, %277
  %idxprom380 = zext i32 %and379 to i64
  %arrayidx381 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom380
  %278 = load i32, i32* %arrayidx381, align 4
  %or382 = or i32 %or378, %278
  %279 = load i32, i32* %r_NO_ERR, align 4
  %and383 = and i32 %or382, %279
  %or384 = or i32 %and374, %and383
  %280 = load i32, i32* %r1, align 4
  %or385 = or i32 %or384, %280
  %arrayidx386 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  store i32 %or385, i32* %arrayidx386, align 4
  %281 = load i32, i32* %D.addr, align 4
  %cmp387 = icmp eq i32 %281, 4
  br i1 %cmp387, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %if.end.362
  br label %Nextchar

if.end.390:                                       ; preds = %if.end.362
  br label %if.end.471

if.else.391:                                      ; preds = %if.then.263
  %arrayidx392 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %282 = load i32, i32* %arrayidx392, align 4
  store i32 %282, i32* %r2, align 4
  %283 = load i32, i32* %r2, align 4
  %284 = load i32, i32* @Init1, align 4
  %and393 = and i32 %283, %284
  %arrayidx394 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  store i32 %and393, i32* %arrayidx394, align 4
  %arrayidx395 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  %285 = load i32, i32* %arrayidx395, align 4
  store i32 %285, i32* %r3, align 4
  %286 = load i32, i32* @Init1, align 4
  %287 = load i32, i32* %r3, align 4
  %and396 = and i32 %286, %287
  store i32 %and396, i32* %r1, align 4
  %288 = load i32, i32* %r2, align 4
  %arrayidx397 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %289 = load i32, i32* %arrayidx397, align 4
  %or398 = or i32 %288, %289
  store i32 %or398, i32* %r0, align 4
  %290 = load i32, i32* %r2, align 4
  %291 = load i32, i32* %r0, align 4
  %292 = load i32, i32* %hh, align 4
  %shr399 = lshr i32 %291, %292
  %idxprom400 = zext i32 %shr399 to i64
  %arrayidx401 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom400
  %293 = load i32, i32* %arrayidx401, align 4
  %or402 = or i32 %290, %293
  %294 = load i32, i32* %r0, align 4
  %295 = load i32, i32* %LL, align 4
  %and403 = and i32 %294, %295
  %idxprom404 = zext i32 %and403 to i64
  %arrayidx405 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom404
  %296 = load i32, i32* %arrayidx405, align 4
  %or406 = or i32 %or402, %296
  %297 = load i32, i32* %r_NO_ERR, align 4
  %and407 = and i32 %or406, %297
  %298 = load i32, i32* %r1, align 4
  %or408 = or i32 %and407, %298
  %arrayidx409 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  store i32 %or408, i32* %arrayidx409, align 4
  %299 = load i32, i32* %D.addr, align 4
  %cmp410 = icmp eq i32 %299, 1
  br i1 %cmp410, label %if.then.412, label %if.end.413

if.then.412:                                      ; preds = %if.else.391
  br label %Nextchar

if.end.413:                                       ; preds = %if.else.391
  %arrayidx414 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  %300 = load i32, i32* %arrayidx414, align 4
  store i32 %300, i32* %r2, align 4
  %301 = load i32, i32* @Init1, align 4
  %302 = load i32, i32* %r2, align 4
  %and415 = and i32 %301, %302
  store i32 %and415, i32* %r1, align 4
  %303 = load i32, i32* %r3, align 4
  %arrayidx416 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %304 = load i32, i32* %arrayidx416, align 4
  %or417 = or i32 %303, %304
  store i32 %or417, i32* %r0, align 4
  %305 = load i32, i32* %r3, align 4
  %306 = load i32, i32* %r0, align 4
  %307 = load i32, i32* %hh, align 4
  %shr418 = lshr i32 %306, %307
  %idxprom419 = zext i32 %shr418 to i64
  %arrayidx420 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom419
  %308 = load i32, i32* %arrayidx420, align 4
  %or421 = or i32 %305, %308
  %309 = load i32, i32* %r0, align 4
  %310 = load i32, i32* %LL, align 4
  %and422 = and i32 %309, %310
  %idxprom423 = zext i32 %and422 to i64
  %arrayidx424 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom423
  %311 = load i32, i32* %arrayidx424, align 4
  %or425 = or i32 %or421, %311
  %312 = load i32, i32* %r_NO_ERR, align 4
  %and426 = and i32 %or425, %312
  %313 = load i32, i32* %r1, align 4
  %or427 = or i32 %and426, %313
  %arrayidx428 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  store i32 %or427, i32* %arrayidx428, align 4
  %314 = load i32, i32* %D.addr, align 4
  %cmp429 = icmp eq i32 %314, 2
  br i1 %cmp429, label %if.then.431, label %if.end.432

if.then.431:                                      ; preds = %if.end.413
  br label %Nextchar

if.end.432:                                       ; preds = %if.end.413
  %arrayidx433 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  %315 = load i32, i32* %arrayidx433, align 4
  store i32 %315, i32* %r3, align 4
  %316 = load i32, i32* @Init1, align 4
  %317 = load i32, i32* %r3, align 4
  %and434 = and i32 %316, %317
  store i32 %and434, i32* %r1, align 4
  %318 = load i32, i32* %r2, align 4
  %arrayidx435 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %319 = load i32, i32* %arrayidx435, align 4
  %or436 = or i32 %318, %319
  store i32 %or436, i32* %r0, align 4
  %320 = load i32, i32* %r2, align 4
  %321 = load i32, i32* %r0, align 4
  %322 = load i32, i32* %hh, align 4
  %shr437 = lshr i32 %321, %322
  %idxprom438 = zext i32 %shr437 to i64
  %arrayidx439 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom438
  %323 = load i32, i32* %arrayidx439, align 4
  %or440 = or i32 %320, %323
  %324 = load i32, i32* %r0, align 4
  %325 = load i32, i32* %LL, align 4
  %and441 = and i32 %324, %325
  %idxprom442 = zext i32 %and441 to i64
  %arrayidx443 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom442
  %326 = load i32, i32* %arrayidx443, align 4
  %or444 = or i32 %or440, %326
  %327 = load i32, i32* %r_NO_ERR, align 4
  %and445 = and i32 %or444, %327
  %328 = load i32, i32* %r1, align 4
  %or446 = or i32 %and445, %328
  %arrayidx447 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  store i32 %or446, i32* %arrayidx447, align 4
  %329 = load i32, i32* %D.addr, align 4
  %cmp448 = icmp eq i32 %329, 3
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.end.432
  br label %Nextchar

if.end.451:                                       ; preds = %if.end.432
  %arrayidx452 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 4
  %330 = load i32, i32* %arrayidx452, align 4
  store i32 %330, i32* %r2, align 4
  %331 = load i32, i32* @Init1, align 4
  %332 = load i32, i32* %r2, align 4
  %and453 = and i32 %331, %332
  store i32 %and453, i32* %r1, align 4
  %333 = load i32, i32* %r3, align 4
  %arrayidx454 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %334 = load i32, i32* %arrayidx454, align 4
  %or455 = or i32 %333, %334
  store i32 %or455, i32* %r0, align 4
  %335 = load i32, i32* %r3, align 4
  %336 = load i32, i32* %r0, align 4
  %337 = load i32, i32* %hh, align 4
  %shr456 = lshr i32 %336, %337
  %idxprom457 = zext i32 %shr456 to i64
  %arrayidx458 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom457
  %338 = load i32, i32* %arrayidx458, align 4
  %or459 = or i32 %335, %338
  %339 = load i32, i32* %r0, align 4
  %340 = load i32, i32* %LL, align 4
  %and460 = and i32 %339, %340
  %idxprom461 = zext i32 %and460 to i64
  %arrayidx462 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom461
  %341 = load i32, i32* %arrayidx462, align 4
  %or463 = or i32 %or459, %341
  %342 = load i32, i32* %r_NO_ERR, align 4
  %and464 = and i32 %or463, %342
  %343 = load i32, i32* %r1, align 4
  %or465 = or i32 %and464, %343
  %arrayidx466 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  store i32 %or465, i32* %arrayidx466, align 4
  %344 = load i32, i32* %D.addr, align 4
  %cmp467 = icmp eq i32 %344, 4
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %if.end.451
  br label %Nextchar

if.end.470:                                       ; preds = %if.end.451
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.end.390
  br label %if.end.588

if.else.472:                                      ; preds = %while.body.255
  %345 = load i32, i32* %j, align 4
  %inc473 = add nsw i32 %345, 1
  store i32 %inc473, i32* %j, align 4
  %346 = load i32, i32* @Init1, align 4
  %347 = load i32, i32* %D.addr, align 4
  %idxprom474 = sext i32 %347 to i64
  %arrayidx475 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom474
  %348 = load i32, i32* %arrayidx475, align 4
  %and476 = and i32 %346, %348
  store i32 %and476, i32* %r1, align 4
  %349 = load i32, i32* %D.addr, align 4
  %idxprom477 = sext i32 %349 to i64
  %arrayidx478 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom477
  %350 = load i32, i32* %arrayidx478, align 4
  %351 = load i32, i32* %hh, align 4
  %shr479 = lshr i32 %350, %351
  %idxprom480 = zext i32 %shr479 to i64
  %arrayidx481 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom480
  %352 = load i32, i32* %arrayidx481, align 4
  %353 = load i32, i32* %D.addr, align 4
  %idxprom482 = sext i32 %353 to i64
  %arrayidx483 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom482
  %354 = load i32, i32* %arrayidx483, align 4
  %355 = load i32, i32* %LL, align 4
  %and484 = and i32 %354, %355
  %idxprom485 = zext i32 %and484 to i64
  %arrayidx486 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom485
  %356 = load i32, i32* %arrayidx486, align 4
  %or487 = or i32 %352, %356
  %357 = load i32, i32* %CMask, align 4
  %and488 = and i32 %or487, %357
  %358 = load i32, i32* %r1, align 4
  %or489 = or i32 %and488, %358
  %359 = load i32, i32* %D.addr, align 4
  %idxprom490 = sext i32 %359 to i64
  %arrayidx491 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom490
  store i32 %or489, i32* %arrayidx491, align 4
  %360 = load i32, i32* @TAIL, align 4
  %tobool492 = icmp ne i32 %360, 0
  br i1 %tobool492, label %if.then.493, label %if.end.510

if.then.493:                                      ; preds = %if.else.472
  %361 = load i32, i32* %D.addr, align 4
  %idxprom494 = sext i32 %361 to i64
  %arrayidx495 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom494
  %362 = load i32, i32* %arrayidx495, align 4
  %363 = load i32, i32* %hh, align 4
  %shr496 = lshr i32 %362, %363
  %idxprom497 = zext i32 %shr496 to i64
  %arrayidx498 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom497
  %364 = load i32, i32* %arrayidx498, align 4
  %365 = load i32, i32* %D.addr, align 4
  %idxprom499 = sext i32 %365 to i64
  %arrayidx500 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom499
  %366 = load i32, i32* %arrayidx500, align 4
  %367 = load i32, i32* %LL, align 4
  %and501 = and i32 %366, %367
  %idxprom502 = zext i32 %and501 to i64
  %arrayidx503 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom502
  %368 = load i32, i32* %arrayidx503, align 4
  %or504 = or i32 %364, %368
  %369 = load i32, i32* %D.addr, align 4
  %idxprom505 = sext i32 %369 to i64
  %arrayidx506 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom505
  %370 = load i32, i32* %arrayidx506, align 4
  %or507 = or i32 %or504, %370
  %371 = load i32, i32* %D.addr, align 4
  %idxprom508 = sext i32 %371 to i64
  %arrayidx509 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom508
  store i32 %or507, i32* %arrayidx509, align 4
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.493, %if.else.472
  %372 = load i32, i32* %D.addr, align 4
  %idxprom511 = sext i32 %372 to i64
  %arrayidx512 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom511
  %373 = load i32, i32* %arrayidx512, align 4
  %and513 = and i32 %373, 1
  %374 = load i32, i32* @INVERSE, align 4
  %xor514 = xor i32 %and513, %374
  %tobool515 = icmp ne i32 %xor514, 0
  br i1 %tobool515, label %if.then.516, label %if.end.523

if.then.516:                                      ; preds = %if.end.510
  %375 = load i32, i32* @FILENAMEONLY, align 4
  %tobool517 = icmp ne i32 %375, 0
  br i1 %tobool517, label %if.then.518, label %if.end.521

if.then.518:                                      ; preds = %if.then.516
  %376 = load i32, i32* @num_of_matched, align 4
  %inc519 = add nsw i32 %376, 1
  store i32 %inc519, i32* @num_of_matched, align 4
  %call520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.521:                                       ; preds = %if.then.516
  %arraydecay522 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %377 = load i32, i32* %i, align 4
  %378 = load i32, i32* %end, align 4
  %379 = load i32, i32* %j, align 4
  call void @r_output(i8* %arraydecay522, i32 %377, i32 %378, i32 %379)
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.521, %if.end.510
  store i32 0, i32* %k, align 4
  br label %for.cond.524

for.cond.524:                                     ; preds = %for.inc.530, %if.end.523
  %380 = load i32, i32* %k, align 4
  %381 = load i32, i32* %D.addr, align 4
  %cmp525 = icmp ule i32 %380, %381
  br i1 %cmp525, label %for.body.527, label %for.end.532

for.body.527:                                     ; preds = %for.cond.524
  %382 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  %383 = load i32, i32* %k, align 4
  %idxprom528 = zext i32 %383 to i64
  %arrayidx529 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom528
  store i32 %382, i32* %arrayidx529, align 4
  br label %for.inc.530

for.inc.530:                                      ; preds = %for.body.527
  %384 = load i32, i32* %k, align 4
  %inc531 = add i32 %384, 1
  store i32 %inc531, i32* %k, align 4
  br label %for.cond.524

for.end.532:                                      ; preds = %for.cond.524
  %385 = load i32, i32* @Init1, align 4
  %arrayidx533 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %386 = load i32, i32* %arrayidx533, align 4
  %and534 = and i32 %385, %386
  store i32 %and534, i32* %r1, align 4
  %arrayidx535 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %387 = load i32, i32* %arrayidx535, align 4
  %388 = load i32, i32* %hh, align 4
  %shr536 = lshr i32 %387, %388
  %idxprom537 = zext i32 %shr536 to i64
  %arrayidx538 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom537
  %389 = load i32, i32* %arrayidx538, align 4
  %arrayidx539 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %390 = load i32, i32* %arrayidx539, align 4
  %391 = load i32, i32* %LL, align 4
  %and540 = and i32 %390, %391
  %idxprom541 = zext i32 %and540 to i64
  %arrayidx542 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom541
  %392 = load i32, i32* %arrayidx542, align 4
  %or543 = or i32 %389, %392
  %393 = load i32, i32* %CMask, align 4
  %and544 = and i32 %or543, %393
  %394 = load i32, i32* %r1, align 4
  %or545 = or i32 %and544, %394
  %arrayidx546 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  store i32 %or545, i32* %arrayidx546, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.547

for.cond.547:                                     ; preds = %for.inc.585, %for.end.532
  %395 = load i32, i32* %k, align 4
  %396 = load i32, i32* %D.addr, align 4
  %cmp548 = icmp ule i32 %395, %396
  br i1 %cmp548, label %for.body.550, label %for.end.587

for.body.550:                                     ; preds = %for.cond.547
  %397 = load i32, i32* %k, align 4
  %idxprom551 = zext i32 %397 to i64
  %arrayidx552 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom551
  %398 = load i32, i32* %arrayidx552, align 4
  store i32 %398, i32* %r3, align 4
  %399 = load i32, i32* @Init1, align 4
  %400 = load i32, i32* %r3, align 4
  %and553 = and i32 %399, %400
  store i32 %and553, i32* %r1, align 4
  %401 = load i32, i32* %k, align 4
  %sub554 = sub i32 %401, 1
  %idxprom555 = zext i32 %sub554 to i64
  %arrayidx556 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom555
  %402 = load i32, i32* %arrayidx556, align 4
  %403 = load i32, i32* %k, align 4
  %sub557 = sub i32 %403, 1
  %idxprom558 = zext i32 %sub557 to i64
  %arrayidx559 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom558
  %404 = load i32, i32* %arrayidx559, align 4
  %or560 = or i32 %402, %404
  store i32 %or560, i32* %r2, align 4
  %405 = load i32, i32* %r3, align 4
  %406 = load i32, i32* %hh, align 4
  %shr561 = lshr i32 %405, %406
  %idxprom562 = zext i32 %shr561 to i64
  %arrayidx563 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom562
  %407 = load i32, i32* %arrayidx563, align 4
  %408 = load i32, i32* %r3, align 4
  %409 = load i32, i32* %LL, align 4
  %and564 = and i32 %408, %409
  %idxprom565 = zext i32 %and564 to i64
  %arrayidx566 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom565
  %410 = load i32, i32* %arrayidx566, align 4
  %or567 = or i32 %407, %410
  %411 = load i32, i32* %CMask, align 4
  %and568 = and i32 %or567, %411
  %412 = load i32, i32* %k, align 4
  %sub569 = sub i32 %412, 1
  %idxprom570 = zext i32 %sub569 to i64
  %arrayidx571 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom570
  %413 = load i32, i32* %arrayidx571, align 4
  %414 = load i32, i32* %r2, align 4
  %415 = load i32, i32* %hh, align 4
  %shr572 = lshr i32 %414, %415
  %idxprom573 = zext i32 %shr572 to i64
  %arrayidx574 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom573
  %416 = load i32, i32* %arrayidx574, align 4
  %or575 = or i32 %413, %416
  %417 = load i32, i32* %r2, align 4
  %418 = load i32, i32* %LL, align 4
  %and576 = and i32 %417, %418
  %idxprom577 = zext i32 %and576 to i64
  %arrayidx578 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom577
  %419 = load i32, i32* %arrayidx578, align 4
  %or579 = or i32 %or575, %419
  %420 = load i32, i32* %r_NO_ERR, align 4
  %and580 = and i32 %or579, %420
  %or581 = or i32 %and568, %and580
  %421 = load i32, i32* %r1, align 4
  %or582 = or i32 %or581, %421
  %422 = load i32, i32* %k, align 4
  %idxprom583 = zext i32 %422 to i64
  %arrayidx584 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom583
  store i32 %or582, i32* %arrayidx584, align 4
  br label %for.inc.585

for.inc.585:                                      ; preds = %for.body.550
  %423 = load i32, i32* %k, align 4
  %inc586 = add i32 %423, 1
  store i32 %inc586, i32* %k, align 4
  br label %for.cond.547

for.end.587:                                      ; preds = %for.cond.547
  br label %if.end.588

if.end.588:                                       ; preds = %for.end.587, %if.end.471
  br label %Nextchar

Nextchar:                                         ; preds = %if.end.588, %if.then.469, %if.then.450, %if.then.431, %if.then.412, %if.then.389, %if.then.361, %if.then.333, %if.then.305
  %424 = load i32, i32* %i, align 4
  %add589 = add i32 %424, 1
  store i32 %add589, i32* %i, align 4
  %425 = load i32, i32* %i, align 4
  %idxprom590 = zext i32 %425 to i64
  %arrayidx591 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i64 %idxprom590
  %426 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %426 to i32
  store i32 %conv592, i32* %c, align 4
  %427 = load i32, i32* %c, align 4
  %idxprom593 = zext i32 %427 to i64
  %arrayidx594 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i32 0, i64 %idxprom593
  %428 = load i32, i32* %arrayidx594, align 4
  store i32 %428, i32* %CMask, align 4
  %429 = load i32, i32* %c, align 4
  %430 = load i32, i32* %Newline, align 4
  %cmp595 = icmp ne i32 %429, %430
  br i1 %cmp595, label %if.then.597, label %if.else.806

if.then.597:                                      ; preds = %Nextchar
  %431 = load i32, i32* %CMask, align 4
  %cmp598 = icmp ne i32 %431, 0
  br i1 %cmp598, label %if.then.600, label %if.else.725

if.then.600:                                      ; preds = %if.then.597
  %arrayidx601 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %432 = load i32, i32* %arrayidx601, align 4
  store i32 %432, i32* %r2, align 4
  %433 = load i32, i32* @Init1, align 4
  %434 = load i32, i32* %r2, align 4
  %and602 = and i32 %433, %434
  store i32 %and602, i32* %r1, align 4
  %435 = load i32, i32* %r2, align 4
  %436 = load i32, i32* %hh, align 4
  %shr603 = lshr i32 %435, %436
  %idxprom604 = zext i32 %shr603 to i64
  %arrayidx605 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom604
  %437 = load i32, i32* %arrayidx605, align 4
  %438 = load i32, i32* %r2, align 4
  %439 = load i32, i32* %LL, align 4
  %and606 = and i32 %438, %439
  %idxprom607 = zext i32 %and606 to i64
  %arrayidx608 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom607
  %440 = load i32, i32* %arrayidx608, align 4
  %or609 = or i32 %437, %440
  %441 = load i32, i32* %CMask, align 4
  %and610 = and i32 %or609, %441
  %442 = load i32, i32* %r1, align 4
  %or611 = or i32 %and610, %442
  %arrayidx612 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  store i32 %or611, i32* %arrayidx612, align 4
  %arrayidx613 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %443 = load i32, i32* %arrayidx613, align 4
  store i32 %443, i32* %r3, align 4
  %444 = load i32, i32* @Init1, align 4
  %445 = load i32, i32* %r3, align 4
  %and614 = and i32 %444, %445
  store i32 %and614, i32* %r1, align 4
  %arrayidx615 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %446 = load i32, i32* %arrayidx615, align 4
  %447 = load i32, i32* %r2, align 4
  %or616 = or i32 %446, %447
  store i32 %or616, i32* %r0, align 4
  %448 = load i32, i32* %r3, align 4
  %449 = load i32, i32* %hh, align 4
  %shr617 = lshr i32 %448, %449
  %idxprom618 = zext i32 %shr617 to i64
  %arrayidx619 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom618
  %450 = load i32, i32* %arrayidx619, align 4
  %451 = load i32, i32* %r3, align 4
  %452 = load i32, i32* %LL, align 4
  %and620 = and i32 %451, %452
  %idxprom621 = zext i32 %and620 to i64
  %arrayidx622 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom621
  %453 = load i32, i32* %arrayidx622, align 4
  %or623 = or i32 %450, %453
  %454 = load i32, i32* %CMask, align 4
  %and624 = and i32 %or623, %454
  %455 = load i32, i32* %r2, align 4
  %456 = load i32, i32* %r0, align 4
  %457 = load i32, i32* %hh, align 4
  %shr625 = lshr i32 %456, %457
  %idxprom626 = zext i32 %shr625 to i64
  %arrayidx627 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom626
  %458 = load i32, i32* %arrayidx627, align 4
  %or628 = or i32 %455, %458
  %459 = load i32, i32* %r0, align 4
  %460 = load i32, i32* %LL, align 4
  %and629 = and i32 %459, %460
  %idxprom630 = zext i32 %and629 to i64
  %arrayidx631 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom630
  %461 = load i32, i32* %arrayidx631, align 4
  %or632 = or i32 %or628, %461
  %462 = load i32, i32* %r_NO_ERR, align 4
  %and633 = and i32 %or632, %462
  %or634 = or i32 %and624, %and633
  %463 = load i32, i32* %r1, align 4
  %or635 = or i32 %or634, %463
  %arrayidx636 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  store i32 %or635, i32* %arrayidx636, align 4
  %464 = load i32, i32* %D.addr, align 4
  %cmp637 = icmp eq i32 %464, 1
  br i1 %cmp637, label %if.then.639, label %if.end.640

if.then.639:                                      ; preds = %if.then.600
  br label %Nextchar1

if.end.640:                                       ; preds = %if.then.600
  %arrayidx641 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %465 = load i32, i32* %arrayidx641, align 4
  store i32 %465, i32* %r2, align 4
  %466 = load i32, i32* @Init1, align 4
  %467 = load i32, i32* %r2, align 4
  %and642 = and i32 %466, %467
  store i32 %and642, i32* %r1, align 4
  %arrayidx643 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  %468 = load i32, i32* %arrayidx643, align 4
  %469 = load i32, i32* %r3, align 4
  %or644 = or i32 %468, %469
  store i32 %or644, i32* %r0, align 4
  %470 = load i32, i32* %r2, align 4
  %471 = load i32, i32* %hh, align 4
  %shr645 = lshr i32 %470, %471
  %idxprom646 = zext i32 %shr645 to i64
  %arrayidx647 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom646
  %472 = load i32, i32* %arrayidx647, align 4
  %473 = load i32, i32* %r2, align 4
  %474 = load i32, i32* %LL, align 4
  %and648 = and i32 %473, %474
  %idxprom649 = zext i32 %and648 to i64
  %arrayidx650 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom649
  %475 = load i32, i32* %arrayidx650, align 4
  %or651 = or i32 %472, %475
  %476 = load i32, i32* %CMask, align 4
  %and652 = and i32 %or651, %476
  %477 = load i32, i32* %r3, align 4
  %478 = load i32, i32* %r0, align 4
  %479 = load i32, i32* %hh, align 4
  %shr653 = lshr i32 %478, %479
  %idxprom654 = zext i32 %shr653 to i64
  %arrayidx655 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom654
  %480 = load i32, i32* %arrayidx655, align 4
  %or656 = or i32 %477, %480
  %481 = load i32, i32* %r0, align 4
  %482 = load i32, i32* %LL, align 4
  %and657 = and i32 %481, %482
  %idxprom658 = zext i32 %and657 to i64
  %arrayidx659 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom658
  %483 = load i32, i32* %arrayidx659, align 4
  %or660 = or i32 %or656, %483
  %484 = load i32, i32* %r_NO_ERR, align 4
  %and661 = and i32 %or660, %484
  %or662 = or i32 %and652, %and661
  %485 = load i32, i32* %r1, align 4
  %or663 = or i32 %or662, %485
  %arrayidx664 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  store i32 %or663, i32* %arrayidx664, align 4
  %486 = load i32, i32* %D.addr, align 4
  %cmp665 = icmp eq i32 %486, 2
  br i1 %cmp665, label %if.then.667, label %if.end.668

if.then.667:                                      ; preds = %if.end.640
  br label %Nextchar1

if.end.668:                                       ; preds = %if.end.640
  %arrayidx669 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %487 = load i32, i32* %arrayidx669, align 4
  store i32 %487, i32* %r3, align 4
  %488 = load i32, i32* @Init1, align 4
  %489 = load i32, i32* %r3, align 4
  %and670 = and i32 %488, %489
  store i32 %and670, i32* %r1, align 4
  %arrayidx671 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  %490 = load i32, i32* %arrayidx671, align 4
  %491 = load i32, i32* %r2, align 4
  %or672 = or i32 %490, %491
  store i32 %or672, i32* %r0, align 4
  %492 = load i32, i32* %r3, align 4
  %493 = load i32, i32* %hh, align 4
  %shr673 = lshr i32 %492, %493
  %idxprom674 = zext i32 %shr673 to i64
  %arrayidx675 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom674
  %494 = load i32, i32* %arrayidx675, align 4
  %495 = load i32, i32* %r3, align 4
  %496 = load i32, i32* %LL, align 4
  %and676 = and i32 %495, %496
  %idxprom677 = zext i32 %and676 to i64
  %arrayidx678 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom677
  %497 = load i32, i32* %arrayidx678, align 4
  %or679 = or i32 %494, %497
  %498 = load i32, i32* %CMask, align 4
  %and680 = and i32 %or679, %498
  %499 = load i32, i32* %r2, align 4
  %500 = load i32, i32* %r0, align 4
  %501 = load i32, i32* %hh, align 4
  %shr681 = lshr i32 %500, %501
  %idxprom682 = zext i32 %shr681 to i64
  %arrayidx683 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom682
  %502 = load i32, i32* %arrayidx683, align 4
  %or684 = or i32 %499, %502
  %503 = load i32, i32* %r0, align 4
  %504 = load i32, i32* %LL, align 4
  %and685 = and i32 %503, %504
  %idxprom686 = zext i32 %and685 to i64
  %arrayidx687 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom686
  %505 = load i32, i32* %arrayidx687, align 4
  %or688 = or i32 %or684, %505
  %506 = load i32, i32* %r_NO_ERR, align 4
  %and689 = and i32 %or688, %506
  %or690 = or i32 %and680, %and689
  %507 = load i32, i32* %r1, align 4
  %or691 = or i32 %or690, %507
  %arrayidx692 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  store i32 %or691, i32* %arrayidx692, align 4
  %508 = load i32, i32* %D.addr, align 4
  %cmp693 = icmp eq i32 %508, 3
  br i1 %cmp693, label %if.then.695, label %if.end.696

if.then.695:                                      ; preds = %if.end.668
  br label %Nextchar1

if.end.696:                                       ; preds = %if.end.668
  %arrayidx697 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  %509 = load i32, i32* %arrayidx697, align 4
  store i32 %509, i32* %r2, align 4
  %510 = load i32, i32* @Init1, align 4
  %511 = load i32, i32* %r2, align 4
  %and698 = and i32 %510, %511
  store i32 %and698, i32* %r1, align 4
  %arrayidx699 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  %512 = load i32, i32* %arrayidx699, align 4
  %513 = load i32, i32* %r3, align 4
  %or700 = or i32 %512, %513
  store i32 %or700, i32* %r0, align 4
  %514 = load i32, i32* %r2, align 4
  %515 = load i32, i32* %hh, align 4
  %shr701 = lshr i32 %514, %515
  %idxprom702 = zext i32 %shr701 to i64
  %arrayidx703 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom702
  %516 = load i32, i32* %arrayidx703, align 4
  %517 = load i32, i32* %r2, align 4
  %518 = load i32, i32* %LL, align 4
  %and704 = and i32 %517, %518
  %idxprom705 = zext i32 %and704 to i64
  %arrayidx706 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom705
  %519 = load i32, i32* %arrayidx706, align 4
  %or707 = or i32 %516, %519
  %520 = load i32, i32* %CMask, align 4
  %and708 = and i32 %or707, %520
  %521 = load i32, i32* %r3, align 4
  %522 = load i32, i32* %r0, align 4
  %523 = load i32, i32* %hh, align 4
  %shr709 = lshr i32 %522, %523
  %idxprom710 = zext i32 %shr709 to i64
  %arrayidx711 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom710
  %524 = load i32, i32* %arrayidx711, align 4
  %or712 = or i32 %521, %524
  %525 = load i32, i32* %r0, align 4
  %526 = load i32, i32* %LL, align 4
  %and713 = and i32 %525, %526
  %idxprom714 = zext i32 %and713 to i64
  %arrayidx715 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom714
  %527 = load i32, i32* %arrayidx715, align 4
  %or716 = or i32 %or712, %527
  %528 = load i32, i32* %r_NO_ERR, align 4
  %and717 = and i32 %or716, %528
  %or718 = or i32 %and708, %and717
  %529 = load i32, i32* %r1, align 4
  %or719 = or i32 %or718, %529
  %arrayidx720 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 4
  store i32 %or719, i32* %arrayidx720, align 4
  %530 = load i32, i32* %D.addr, align 4
  %cmp721 = icmp eq i32 %530, 4
  br i1 %cmp721, label %if.then.723, label %if.end.724

if.then.723:                                      ; preds = %if.end.696
  br label %Nextchar1

if.end.724:                                       ; preds = %if.end.696
  br label %if.end.805

if.else.725:                                      ; preds = %if.then.597
  %arrayidx726 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %531 = load i32, i32* %arrayidx726, align 4
  store i32 %531, i32* %r2, align 4
  %532 = load i32, i32* %r2, align 4
  %533 = load i32, i32* @Init1, align 4
  %and727 = and i32 %532, %533
  %arrayidx728 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  store i32 %and727, i32* %arrayidx728, align 4
  %arrayidx729 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %534 = load i32, i32* %arrayidx729, align 4
  store i32 %534, i32* %r3, align 4
  %535 = load i32, i32* @Init1, align 4
  %536 = load i32, i32* %r3, align 4
  %and730 = and i32 %535, %536
  store i32 %and730, i32* %r1, align 4
  %arrayidx731 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %537 = load i32, i32* %arrayidx731, align 4
  %538 = load i32, i32* %r2, align 4
  %or732 = or i32 %537, %538
  store i32 %or732, i32* %r0, align 4
  %539 = load i32, i32* %r2, align 4
  %540 = load i32, i32* %r0, align 4
  %541 = load i32, i32* %hh, align 4
  %shr733 = lshr i32 %540, %541
  %idxprom734 = zext i32 %shr733 to i64
  %arrayidx735 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom734
  %542 = load i32, i32* %arrayidx735, align 4
  %or736 = or i32 %539, %542
  %543 = load i32, i32* %r0, align 4
  %544 = load i32, i32* %LL, align 4
  %and737 = and i32 %543, %544
  %idxprom738 = zext i32 %and737 to i64
  %arrayidx739 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom738
  %545 = load i32, i32* %arrayidx739, align 4
  %or740 = or i32 %or736, %545
  %546 = load i32, i32* %r_NO_ERR, align 4
  %and741 = and i32 %or740, %546
  %547 = load i32, i32* %r1, align 4
  %or742 = or i32 %and741, %547
  %arrayidx743 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  store i32 %or742, i32* %arrayidx743, align 4
  %548 = load i32, i32* %D.addr, align 4
  %cmp744 = icmp eq i32 %548, 1
  br i1 %cmp744, label %if.then.746, label %if.end.747

if.then.746:                                      ; preds = %if.else.725
  br label %Nextchar1

if.end.747:                                       ; preds = %if.else.725
  %arrayidx748 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %549 = load i32, i32* %arrayidx748, align 4
  store i32 %549, i32* %r2, align 4
  %550 = load i32, i32* @Init1, align 4
  %551 = load i32, i32* %r2, align 4
  %and749 = and i32 %550, %551
  store i32 %and749, i32* %r1, align 4
  %arrayidx750 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  %552 = load i32, i32* %arrayidx750, align 4
  %553 = load i32, i32* %r3, align 4
  %or751 = or i32 %552, %553
  store i32 %or751, i32* %r0, align 4
  %554 = load i32, i32* %r3, align 4
  %555 = load i32, i32* %r0, align 4
  %556 = load i32, i32* %hh, align 4
  %shr752 = lshr i32 %555, %556
  %idxprom753 = zext i32 %shr752 to i64
  %arrayidx754 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom753
  %557 = load i32, i32* %arrayidx754, align 4
  %or755 = or i32 %554, %557
  %558 = load i32, i32* %r0, align 4
  %559 = load i32, i32* %LL, align 4
  %and756 = and i32 %558, %559
  %idxprom757 = zext i32 %and756 to i64
  %arrayidx758 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom757
  %560 = load i32, i32* %arrayidx758, align 4
  %or759 = or i32 %or755, %560
  %561 = load i32, i32* %r_NO_ERR, align 4
  %and760 = and i32 %or759, %561
  %562 = load i32, i32* %r1, align 4
  %or761 = or i32 %and760, %562
  %arrayidx762 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  store i32 %or761, i32* %arrayidx762, align 4
  %563 = load i32, i32* %D.addr, align 4
  %cmp763 = icmp eq i32 %563, 2
  br i1 %cmp763, label %if.then.765, label %if.end.766

if.then.765:                                      ; preds = %if.end.747
  br label %Nextchar1

if.end.766:                                       ; preds = %if.end.747
  %arrayidx767 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %564 = load i32, i32* %arrayidx767, align 4
  store i32 %564, i32* %r3, align 4
  %565 = load i32, i32* @Init1, align 4
  %566 = load i32, i32* %r3, align 4
  %and768 = and i32 %565, %566
  store i32 %and768, i32* %r1, align 4
  %arrayidx769 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  %567 = load i32, i32* %arrayidx769, align 4
  %568 = load i32, i32* %r2, align 4
  %or770 = or i32 %567, %568
  store i32 %or770, i32* %r0, align 4
  %569 = load i32, i32* %r2, align 4
  %570 = load i32, i32* %r0, align 4
  %571 = load i32, i32* %hh, align 4
  %shr771 = lshr i32 %570, %571
  %idxprom772 = zext i32 %shr771 to i64
  %arrayidx773 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom772
  %572 = load i32, i32* %arrayidx773, align 4
  %or774 = or i32 %569, %572
  %573 = load i32, i32* %r0, align 4
  %574 = load i32, i32* %LL, align 4
  %and775 = and i32 %573, %574
  %idxprom776 = zext i32 %and775 to i64
  %arrayidx777 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom776
  %575 = load i32, i32* %arrayidx777, align 4
  %or778 = or i32 %or774, %575
  %576 = load i32, i32* %r_NO_ERR, align 4
  %and779 = and i32 %or778, %576
  %577 = load i32, i32* %r1, align 4
  %or780 = or i32 %and779, %577
  %arrayidx781 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  store i32 %or780, i32* %arrayidx781, align 4
  %578 = load i32, i32* %D.addr, align 4
  %cmp782 = icmp eq i32 %578, 3
  br i1 %cmp782, label %if.then.784, label %if.end.785

if.then.784:                                      ; preds = %if.end.766
  br label %Nextchar1

if.end.785:                                       ; preds = %if.end.766
  %arrayidx786 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  %579 = load i32, i32* %arrayidx786, align 4
  store i32 %579, i32* %r2, align 4
  %580 = load i32, i32* @Init1, align 4
  %581 = load i32, i32* %r2, align 4
  %and787 = and i32 %580, %581
  store i32 %and787, i32* %r1, align 4
  %arrayidx788 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  %582 = load i32, i32* %arrayidx788, align 4
  %583 = load i32, i32* %r3, align 4
  %or789 = or i32 %582, %583
  store i32 %or789, i32* %r0, align 4
  %584 = load i32, i32* %r3, align 4
  %585 = load i32, i32* %r0, align 4
  %586 = load i32, i32* %hh, align 4
  %shr790 = lshr i32 %585, %586
  %idxprom791 = zext i32 %shr790 to i64
  %arrayidx792 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom791
  %587 = load i32, i32* %arrayidx792, align 4
  %or793 = or i32 %584, %587
  %588 = load i32, i32* %r0, align 4
  %589 = load i32, i32* %LL, align 4
  %and794 = and i32 %588, %589
  %idxprom795 = zext i32 %and794 to i64
  %arrayidx796 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom795
  %590 = load i32, i32* %arrayidx796, align 4
  %or797 = or i32 %or793, %590
  %591 = load i32, i32* %r_NO_ERR, align 4
  %and798 = and i32 %or797, %591
  %592 = load i32, i32* %r1, align 4
  %or799 = or i32 %and798, %592
  %arrayidx800 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 4
  store i32 %or799, i32* %arrayidx800, align 4
  %593 = load i32, i32* %D.addr, align 4
  %cmp801 = icmp eq i32 %593, 4
  br i1 %cmp801, label %if.then.803, label %if.end.804

if.then.803:                                      ; preds = %if.end.785
  br label %Nextchar1

if.end.804:                                       ; preds = %if.end.785
  br label %if.end.805

if.end.805:                                       ; preds = %if.end.804, %if.end.724
  br label %if.end.922

if.else.806:                                      ; preds = %Nextchar
  %594 = load i32, i32* %j, align 4
  %inc807 = add nsw i32 %594, 1
  store i32 %inc807, i32* %j, align 4
  %595 = load i32, i32* @Init1, align 4
  %596 = load i32, i32* %D.addr, align 4
  %idxprom808 = sext i32 %596 to i64
  %arrayidx809 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom808
  %597 = load i32, i32* %arrayidx809, align 4
  %and810 = and i32 %595, %597
  store i32 %and810, i32* %r1, align 4
  %598 = load i32, i32* %D.addr, align 4
  %idxprom811 = sext i32 %598 to i64
  %arrayidx812 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom811
  %599 = load i32, i32* %arrayidx812, align 4
  %600 = load i32, i32* %hh, align 4
  %shr813 = lshr i32 %599, %600
  %idxprom814 = zext i32 %shr813 to i64
  %arrayidx815 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom814
  %601 = load i32, i32* %arrayidx815, align 4
  %602 = load i32, i32* %D.addr, align 4
  %idxprom816 = sext i32 %602 to i64
  %arrayidx817 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom816
  %603 = load i32, i32* %arrayidx817, align 4
  %604 = load i32, i32* %LL, align 4
  %and818 = and i32 %603, %604
  %idxprom819 = zext i32 %and818 to i64
  %arrayidx820 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom819
  %605 = load i32, i32* %arrayidx820, align 4
  %or821 = or i32 %601, %605
  %606 = load i32, i32* %CMask, align 4
  %and822 = and i32 %or821, %606
  %607 = load i32, i32* %r1, align 4
  %or823 = or i32 %and822, %607
  %608 = load i32, i32* %D.addr, align 4
  %idxprom824 = sext i32 %608 to i64
  %arrayidx825 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom824
  store i32 %or823, i32* %arrayidx825, align 4
  %609 = load i32, i32* @TAIL, align 4
  %tobool826 = icmp ne i32 %609, 0
  br i1 %tobool826, label %if.then.827, label %if.end.844

if.then.827:                                      ; preds = %if.else.806
  %610 = load i32, i32* %D.addr, align 4
  %idxprom828 = sext i32 %610 to i64
  %arrayidx829 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom828
  %611 = load i32, i32* %arrayidx829, align 4
  %612 = load i32, i32* %hh, align 4
  %shr830 = lshr i32 %611, %612
  %idxprom831 = zext i32 %shr830 to i64
  %arrayidx832 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom831
  %613 = load i32, i32* %arrayidx832, align 4
  %614 = load i32, i32* %D.addr, align 4
  %idxprom833 = sext i32 %614 to i64
  %arrayidx834 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom833
  %615 = load i32, i32* %arrayidx834, align 4
  %616 = load i32, i32* %LL, align 4
  %and835 = and i32 %615, %616
  %idxprom836 = zext i32 %and835 to i64
  %arrayidx837 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom836
  %617 = load i32, i32* %arrayidx837, align 4
  %or838 = or i32 %613, %617
  %618 = load i32, i32* %D.addr, align 4
  %idxprom839 = sext i32 %618 to i64
  %arrayidx840 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom839
  %619 = load i32, i32* %arrayidx840, align 4
  %or841 = or i32 %or838, %619
  %620 = load i32, i32* %D.addr, align 4
  %idxprom842 = sext i32 %620 to i64
  %arrayidx843 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom842
  store i32 %or841, i32* %arrayidx843, align 4
  br label %if.end.844

if.end.844:                                       ; preds = %if.then.827, %if.else.806
  %621 = load i32, i32* %D.addr, align 4
  %idxprom845 = sext i32 %621 to i64
  %arrayidx846 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom845
  %622 = load i32, i32* %arrayidx846, align 4
  %and847 = and i32 %622, 1
  %623 = load i32, i32* @INVERSE, align 4
  %xor848 = xor i32 %and847, %623
  %tobool849 = icmp ne i32 %xor848, 0
  br i1 %tobool849, label %if.then.850, label %if.end.857

if.then.850:                                      ; preds = %if.end.844
  %624 = load i32, i32* @FILENAMEONLY, align 4
  %tobool851 = icmp ne i32 %624, 0
  br i1 %tobool851, label %if.then.852, label %if.end.855

if.then.852:                                      ; preds = %if.then.850
  %625 = load i32, i32* @num_of_matched, align 4
  %inc853 = add nsw i32 %625, 1
  store i32 %inc853, i32* @num_of_matched, align 4
  %call854 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.855:                                       ; preds = %if.then.850
  %arraydecay856 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %626 = load i32, i32* %i, align 4
  %627 = load i32, i32* %end, align 4
  %628 = load i32, i32* %j, align 4
  call void @r_output(i8* %arraydecay856, i32 %626, i32 %627, i32 %628)
  br label %if.end.857

if.end.857:                                       ; preds = %if.end.855, %if.end.844
  store i32 0, i32* %k, align 4
  br label %for.cond.858

for.cond.858:                                     ; preds = %for.inc.864, %if.end.857
  %629 = load i32, i32* %k, align 4
  %630 = load i32, i32* %D.addr, align 4
  %cmp859 = icmp ule i32 %629, %630
  br i1 %cmp859, label %for.body.861, label %for.end.866

for.body.861:                                     ; preds = %for.cond.858
  %631 = load i32, i32* %Init0, align 4
  %632 = load i32, i32* %k, align 4
  %idxprom862 = zext i32 %632 to i64
  %arrayidx863 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom862
  store i32 %631, i32* %arrayidx863, align 4
  br label %for.inc.864

for.inc.864:                                      ; preds = %for.body.861
  %633 = load i32, i32* %k, align 4
  %inc865 = add i32 %633, 1
  store i32 %inc865, i32* %k, align 4
  br label %for.cond.858

for.end.866:                                      ; preds = %for.cond.858
  %634 = load i32, i32* @Init1, align 4
  %arrayidx867 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %635 = load i32, i32* %arrayidx867, align 4
  %and868 = and i32 %634, %635
  store i32 %and868, i32* %r1, align 4
  %arrayidx869 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %636 = load i32, i32* %arrayidx869, align 4
  %637 = load i32, i32* %hh, align 4
  %shr870 = lshr i32 %636, %637
  %idxprom871 = zext i32 %shr870 to i64
  %arrayidx872 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom871
  %638 = load i32, i32* %arrayidx872, align 4
  %arrayidx873 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %639 = load i32, i32* %arrayidx873, align 4
  %640 = load i32, i32* %LL, align 4
  %and874 = and i32 %639, %640
  %idxprom875 = zext i32 %and874 to i64
  %arrayidx876 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom875
  %641 = load i32, i32* %arrayidx876, align 4
  %or877 = or i32 %638, %641
  %642 = load i32, i32* %CMask, align 4
  %and878 = and i32 %or877, %642
  %643 = load i32, i32* %r1, align 4
  %or879 = or i32 %and878, %643
  %arrayidx880 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  store i32 %or879, i32* %arrayidx880, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.881

for.cond.881:                                     ; preds = %for.inc.919, %for.end.866
  %644 = load i32, i32* %k, align 4
  %645 = load i32, i32* %D.addr, align 4
  %cmp882 = icmp ule i32 %644, %645
  br i1 %cmp882, label %for.body.884, label %for.end.921

for.body.884:                                     ; preds = %for.cond.881
  %646 = load i32, i32* %k, align 4
  %idxprom885 = zext i32 %646 to i64
  %arrayidx886 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom885
  %647 = load i32, i32* %arrayidx886, align 4
  store i32 %647, i32* %r3, align 4
  %648 = load i32, i32* @Init1, align 4
  %649 = load i32, i32* %r3, align 4
  %and887 = and i32 %648, %649
  store i32 %and887, i32* %r1, align 4
  %650 = load i32, i32* %k, align 4
  %sub888 = sub i32 %650, 1
  %idxprom889 = zext i32 %sub888 to i64
  %arrayidx890 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom889
  %651 = load i32, i32* %arrayidx890, align 4
  %652 = load i32, i32* %k, align 4
  %sub891 = sub i32 %652, 1
  %idxprom892 = zext i32 %sub891 to i64
  %arrayidx893 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom892
  %653 = load i32, i32* %arrayidx893, align 4
  %or894 = or i32 %651, %653
  store i32 %or894, i32* %r2, align 4
  %654 = load i32, i32* %r3, align 4
  %655 = load i32, i32* %hh, align 4
  %shr895 = lshr i32 %654, %655
  %idxprom896 = zext i32 %shr895 to i64
  %arrayidx897 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom896
  %656 = load i32, i32* %arrayidx897, align 4
  %657 = load i32, i32* %r3, align 4
  %658 = load i32, i32* %LL, align 4
  %and898 = and i32 %657, %658
  %idxprom899 = zext i32 %and898 to i64
  %arrayidx900 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom899
  %659 = load i32, i32* %arrayidx900, align 4
  %or901 = or i32 %656, %659
  %660 = load i32, i32* %CMask, align 4
  %and902 = and i32 %or901, %660
  %661 = load i32, i32* %k, align 4
  %sub903 = sub i32 %661, 1
  %idxprom904 = zext i32 %sub903 to i64
  %arrayidx905 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom904
  %662 = load i32, i32* %arrayidx905, align 4
  %663 = load i32, i32* %r2, align 4
  %664 = load i32, i32* %hh, align 4
  %shr906 = lshr i32 %663, %664
  %idxprom907 = zext i32 %shr906 to i64
  %arrayidx908 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next, i32 0, i64 %idxprom907
  %665 = load i32, i32* %arrayidx908, align 4
  %or909 = or i32 %662, %665
  %666 = load i32, i32* %r2, align 4
  %667 = load i32, i32* %LL, align 4
  %and910 = and i32 %666, %667
  %idxprom911 = zext i32 %and910 to i64
  %arrayidx912 = getelementptr inbounds [66000 x i32], [66000 x i32]* %Next1, i32 0, i64 %idxprom911
  %668 = load i32, i32* %arrayidx912, align 4
  %or913 = or i32 %or909, %668
  %669 = load i32, i32* %r_NO_ERR, align 4
  %and914 = and i32 %or913, %669
  %or915 = or i32 %and902, %and914
  %670 = load i32, i32* %r1, align 4
  %or916 = or i32 %or915, %670
  %671 = load i32, i32* %k, align 4
  %idxprom917 = zext i32 %671 to i64
  %arrayidx918 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom917
  store i32 %or916, i32* %arrayidx918, align 4
  br label %for.inc.919

for.inc.919:                                      ; preds = %for.body.884
  %672 = load i32, i32* %k, align 4
  %inc920 = add i32 %672, 1
  store i32 %inc920, i32* %k, align 4
  br label %for.cond.881

for.end.921:                                      ; preds = %for.cond.881
  br label %if.end.922

if.end.922:                                       ; preds = %for.end.921, %if.end.805
  br label %Nextchar1

Nextchar1:                                        ; preds = %if.end.922, %if.then.803, %if.then.784, %if.then.765, %if.then.746, %if.then.723, %if.then.695, %if.then.667, %if.then.639
  %673 = load i32, i32* %i, align 4
  %add923 = add i32 %673, 1
  store i32 %add923, i32* %i, align 4
  br label %while.cond.252

while.end.924:                                    ; preds = %while.cond.252
  %arraydecay925 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %arraydecay926 = getelementptr inbounds [50177 x i8], [50177 x i8]* %buffer, i32 0, i32 0
  %674 = load i32, i32* %num_read, align 4
  %idx.ext927 = sext i32 %674 to i64
  %add.ptr928 = getelementptr inbounds i8, i8* %arraydecay926, i64 %idx.ext927
  %call929 = call i8* @strncpy(i8* %arraydecay925, i8* %add.ptr928, i64 1024) #6
  br label %while.cond.223

while.end.930:                                    ; preds = %while.cond.223
  br label %return

return:                                           ; preds = %while.end.930, %if.then.852, %if.then.518, %while.end.221, %if.then.200, %if.then.130
  ret void
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @r_output(i8* %buffer, i32 %i, i32 %end, i32 %j) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %bp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %end.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.31

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @num_of_matched, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @num_of_matched, align 4
  %3 = load i32, i32* @COUNT, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %while.end.31

if.end.2:                                         ; preds = %if.end
  %4 = load i32, i32* @FNAME, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %5 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %bp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %6 = load i32, i32* %bp, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv, 10
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %bp, align 4
  %cmp8 = icmp sgt i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %bp, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %bp, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* @LINENUM, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %while.end
  %13 = load i32, i32* %j.addr, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %while.end
  %14 = load i32, i32* %bp, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %cmp17 = icmp ne i32 %conv16, 10
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  store i32 1023, i32* %bp, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.13
  %17 = load i32, i32* %bp, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* %bp, align 4
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.25, %if.end.20
  %18 = load i32, i32* %bp, align 4
  %19 = load i32, i32* %i.addr, align 4
  %cmp23 = icmp sle i32 %18, %19
  br i1 %cmp23, label %while.body.25, label %while.end.31

while.body.25:                                    ; preds = %while.cond.22
  %20 = load i32, i32* %bp, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* %bp, align 4
  %idxprom27 = sext i32 %20 to i64
  %21 = load i8*, i8** %buffer.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 %idxprom27
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %call30 = call i32 @putchar(i32 %conv29)
  br label %while.cond.22

while.end.31:                                     ; preds = %if.then, %if.then.1, %while.cond.22
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @re(i32 %Text, i32 %M, i32 %D) #0 {
entry:
  %Text.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %CMask = alloca i32, align 4
  %k = alloca i32, align 4
  %Newline = alloca i32, align 4
  %Init0 = alloca i32, align 4
  %Init1 = alloca i32, align 4
  %end = alloca i32, align 4
  %r_even = alloca i32, align 4
  %r_odd = alloca i32, align 4
  %r_NO_ERR = alloca i32, align 4
  %RMask = alloca [256 x i32], align 16
  %A = alloca [5 x i32], align 16
  %B = alloca [5 x i32], align 16
  %num_read = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %base = alloca i32, align 4
  %ResidueSize = alloca i32, align 4
  %FIRST_TIME = alloca i32, align 4
  store i32 %Text, i32* %Text.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 0, i32* %j, align 4
  %0 = load i32, i32* %M.addr, align 4
  %sub = sub nsw i32 32, %0
  store i32 %sub, i32* %base, align 4
  %1 = load i32, i32* %M.addr, align 4
  %call = call i32 @exponen(i32 %1)
  %mul = mul nsw i32 2, %call
  store i32 %mul, i32* %k, align 4
  %2 = load i32, i32* @FIRST_IN_RE, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %M.addr, align 4
  call void @compute_next(i32 %3, i32* getelementptr inbounds ([66000 x i32], [66000 x i32]* @Next, i32 0, i32 0), i32* getelementptr inbounds ([66000 x i32], [66000 x i32]* @Next1, i32 0, i32 0))
  store i32 0, i32* @FIRST_IN_RE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %RMask, i32 0, i64 %idxprom1
  store i32 %6, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %9, i32* %r_NO_ERR, align 4
  store i32 10, i32* %Newline, align 4
  store i32 1024, i32* %lasti, align 4
  %10 = load i32, i32* %base, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %11, i32* %Init0, align 4
  %12 = load i32, i32* @HEAD, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.end
  %13 = load i32, i32* %Init0, align 4
  %14 = load i32, i32* %base, align 4
  %add = add nsw i32 %14, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i32 0, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %or = or i32 %13, %15
  store i32 %or, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %or, i32* %Init0, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.end
  store i32 1, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %if.end.9
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %D.addr, align 4
  %cmp11 = icmp ule i32 %16, %17
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %i, align 4
  %sub13 = sub i32 %18, 1
  %idxprom14 = zext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom14
  %19 = load i32, i32* %arrayidx15, align 4
  %20 = load i32, i32* %i, align 4
  %sub16 = sub i32 %20, 1
  %idxprom17 = zext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom17
  %21 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = zext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom19
  %22 = load i32, i32* %arrayidx20, align 4
  %or21 = or i32 %19, %22
  %23 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom22
  store i32 %or21, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.12
  %24 = load i32, i32* %i, align 4
  %inc25 = add i32 %24, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  %25 = load i32, i32* %Init0, align 4
  %or27 = or i32 %25, 1
  store i32 %or27, i32* %Init1, align 4
  %26 = load i32, i32* %Init0, align 4
  store i32 %26, i32* %r3, align 4
  store i32 %26, i32* %r2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.end.26
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %D.addr, align 4
  %cmp29 = icmp ule i32 %27, %28
  br i1 %cmp29, label %for.body.30, label %for.end.37

for.body.30:                                      ; preds = %for.cond.28
  %29 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i32 0, i64 0), align 4
  %30 = load i32, i32* %k, align 4
  %idxprom31 = zext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom31
  store i32 %29, i32* %arrayidx32, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom33 = zext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom33
  store i32 %29, i32* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.30
  %32 = load i32, i32* %k, align 4
  %inc36 = add i32 %32, 1
  store i32 %inc36, i32* %k, align 4
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  store i32 1, i32* %FIRST_TIME, align 4
  %33 = load i32, i32* %D.addr, align 4
  %cmp38 = icmp eq i32 %33, 0
  br i1 %cmp38, label %if.then.39, label %if.end.163

if.then.39:                                       ; preds = %for.end.37
  br label %while.cond

while.cond:                                       ; preds = %if.end.156, %if.then.39
  %34 = load i32, i32* %Text.addr, align 4
  %call40 = call i64 @read(i32 %34, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i64 1024), i64 49152)
  %conv = trunc i64 %call40 to i32
  store i32 %conv, i32* %num_read, align 4
  %cmp41 = icmp sgt i32 %conv, 0
  br i1 %cmp41, label %while.body, label %while.end.162

while.body:                                       ; preds = %while.cond
  store i32 1024, i32* %i, align 4
  %35 = load i32, i32* %num_read, align 4
  %add43 = add nsw i32 1024, %35
  store i32 %add43, i32* %end, align 4
  %36 = load i32, i32* %num_read, align 4
  %cmp44 = icmp slt i32 %36, 49152
  br i1 %cmp44, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %while.body
  %37 = load i32, i32* %end, align 4
  %sub46 = sub i32 %37, 1
  %idxprom47 = zext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom47
  %38 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %38 to i32
  %cmp50 = icmp ne i32 %conv49, 10
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %end, align 4
  %idxprom53 = zext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom53
  store i8 10, i8* %arrayidx54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %land.lhs.true, %while.body
  %40 = load i32, i32* %FIRST_TIME, align 4
  %tobool56 = icmp ne i32 %40, 0
  br i1 %tobool56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.55
  %41 = load i32, i32* %i, align 4
  %sub58 = sub i32 %41, 1
  %idxprom59 = zext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom59
  store i8 10, i8* %arrayidx60, align 1
  %42 = load i32, i32* %i, align 4
  %dec = add i32 %42, -1
  store i32 %dec, i32* %i, align 4
  store i32 0, i32* %FIRST_TIME, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.55
  br label %while.cond.62

while.cond.62:                                    ; preds = %if.end.150, %if.end.61
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %end, align 4
  %cmp63 = icmp ult i32 %43, %44
  br i1 %cmp63, label %while.body.65, label %while.end

while.body.65:                                    ; preds = %while.cond.62
  %45 = load i32, i32* %i, align 4
  %inc66 = add i32 %45, 1
  store i32 %inc66, i32* %i, align 4
  %idxprom67 = zext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom67
  %46 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %46 to i32
  store i32 %conv69, i32* %c, align 4
  %47 = load i32, i32* %c, align 4
  %idxprom70 = zext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* %RMask, i32 0, i64 %idxprom70
  %48 = load i32, i32* %arrayidx71, align 4
  store i32 %48, i32* %CMask, align 4
  %49 = load i32, i32* %c, align 4
  %50 = load i32, i32* %Newline, align 4
  %cmp72 = icmp ne i32 %49, %50
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %while.body.65
  %51 = load i32, i32* %Init1, align 4
  %52 = load i32, i32* %r3, align 4
  %and = and i32 %51, %52
  store i32 %and, i32* %r1, align 4
  %53 = load i32, i32* %r3, align 4
  %idxprom75 = zext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom75
  %54 = load i32, i32* %arrayidx76, align 4
  %55 = load i32, i32* %CMask, align 4
  %and77 = and i32 %54, %55
  %56 = load i32, i32* %r1, align 4
  %or78 = or i32 %and77, %56
  store i32 %or78, i32* %r2, align 4
  br label %if.end.106

if.else:                                          ; preds = %while.body.65
  %57 = load i32, i32* %Init1, align 4
  %58 = load i32, i32* %r3, align 4
  %and79 = and i32 %57, %58
  store i32 %and79, i32* %r1, align 4
  %59 = load i32, i32* %r3, align 4
  %idxprom80 = zext i32 %59 to i64
  %arrayidx81 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom80
  %60 = load i32, i32* %arrayidx81, align 4
  %61 = load i32, i32* %CMask, align 4
  %and82 = and i32 %60, %61
  %62 = load i32, i32* %r1, align 4
  %or83 = or i32 %and82, %62
  store i32 %or83, i32* %r2, align 4
  %63 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %63, 1
  store i32 %inc84, i32* %j, align 4
  %64 = load i32, i32* @TAIL, align 4
  %tobool85 = icmp ne i32 %64, 0
  br i1 %tobool85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.else
  %65 = load i32, i32* %r2, align 4
  %idxprom87 = zext i32 %65 to i64
  %arrayidx88 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom87
  %66 = load i32, i32* %arrayidx88, align 4
  %67 = load i32, i32* %r2, align 4
  %or89 = or i32 %66, %67
  store i32 %or89, i32* %r2, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %if.else
  %68 = load i32, i32* %r2, align 4
  %and91 = and i32 %68, 1
  %69 = load i32, i32* @INVERSE, align 4
  %xor = xor i32 %and91, %69
  %tobool92 = icmp ne i32 %xor, 0
  br i1 %tobool92, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %if.end.90
  %70 = load i32, i32* @FILENAMEONLY, align 4
  %tobool94 = icmp ne i32 %70, 0
  br i1 %tobool94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.then.93
  %71 = load i32, i32* @num_of_matched, align 4
  %inc96 = add nsw i32 %71, 1
  store i32 %inc96, i32* @num_of_matched, align 4
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.98:                                        ; preds = %if.then.93
  %72 = load i32, i32* %i, align 4
  %sub99 = sub i32 %72, 1
  %73 = load i32, i32* %end, align 4
  %74 = load i32, i32* %j, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i32 %sub99, i32 %73, i32 %74)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %if.end.90
  %75 = load i32, i32* %i, align 4
  %sub101 = sub i32 %75, 1
  store i32 %sub101, i32* %lasti, align 4
  %76 = load i32, i32* %Init0, align 4
  store i32 %76, i32* %r3, align 4
  %77 = load i32, i32* %r3, align 4
  %idxprom102 = zext i32 %77 to i64
  %arrayidx103 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom102
  %78 = load i32, i32* %arrayidx103, align 4
  %79 = load i32, i32* %CMask, align 4
  %and104 = and i32 %78, %79
  %80 = load i32, i32* %Init0, align 4
  %or105 = or i32 %and104, %80
  store i32 %or105, i32* %r2, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.100, %if.then.74
  %81 = load i32, i32* %i, align 4
  %inc107 = add i32 %81, 1
  store i32 %inc107, i32* %i, align 4
  %idxprom108 = zext i32 %81 to i64
  %arrayidx109 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom108
  %82 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %82 to i32
  store i32 %conv110, i32* %c, align 4
  %83 = load i32, i32* %c, align 4
  %idxprom111 = zext i32 %83 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], [256 x i32]* %RMask, i32 0, i64 %idxprom111
  %84 = load i32, i32* %arrayidx112, align 4
  store i32 %84, i32* %CMask, align 4
  %85 = load i32, i32* %c, align 4
  %86 = load i32, i32* %Newline, align 4
  %cmp113 = icmp ne i32 %85, %86
  br i1 %cmp113, label %if.then.115, label %if.else.121

if.then.115:                                      ; preds = %if.end.106
  %87 = load i32, i32* %Init1, align 4
  %88 = load i32, i32* %r2, align 4
  %and116 = and i32 %87, %88
  store i32 %and116, i32* %r1, align 4
  %89 = load i32, i32* %r2, align 4
  %idxprom117 = zext i32 %89 to i64
  %arrayidx118 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom117
  %90 = load i32, i32* %arrayidx118, align 4
  %91 = load i32, i32* %CMask, align 4
  %and119 = and i32 %90, %91
  %92 = load i32, i32* %r1, align 4
  %or120 = or i32 %and119, %92
  store i32 %or120, i32* %r3, align 4
  br label %if.end.150

if.else.121:                                      ; preds = %if.end.106
  %93 = load i32, i32* %j, align 4
  %inc122 = add nsw i32 %93, 1
  store i32 %inc122, i32* %j, align 4
  %94 = load i32, i32* %Init1, align 4
  %95 = load i32, i32* %r2, align 4
  %and123 = and i32 %94, %95
  store i32 %and123, i32* %r1, align 4
  %96 = load i32, i32* %r2, align 4
  %idxprom124 = zext i32 %96 to i64
  %arrayidx125 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom124
  %97 = load i32, i32* %arrayidx125, align 4
  %98 = load i32, i32* %CMask, align 4
  %and126 = and i32 %97, %98
  %99 = load i32, i32* %r1, align 4
  %or127 = or i32 %and126, %99
  store i32 %or127, i32* %r3, align 4
  %100 = load i32, i32* @TAIL, align 4
  %tobool128 = icmp ne i32 %100, 0
  br i1 %tobool128, label %if.then.129, label %if.end.133

if.then.129:                                      ; preds = %if.else.121
  %101 = load i32, i32* %r3, align 4
  %idxprom130 = zext i32 %101 to i64
  %arrayidx131 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom130
  %102 = load i32, i32* %arrayidx131, align 4
  %103 = load i32, i32* %r3, align 4
  %or132 = or i32 %102, %103
  store i32 %or132, i32* %r3, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.129, %if.else.121
  %104 = load i32, i32* %r3, align 4
  %and134 = and i32 %104, 1
  %105 = load i32, i32* @INVERSE, align 4
  %xor135 = xor i32 %and134, %105
  %tobool136 = icmp ne i32 %xor135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.144

if.then.137:                                      ; preds = %if.end.133
  %106 = load i32, i32* @FILENAMEONLY, align 4
  %tobool138 = icmp ne i32 %106, 0
  br i1 %tobool138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.then.137
  %107 = load i32, i32* @num_of_matched, align 4
  %inc140 = add nsw i32 %107, 1
  store i32 %inc140, i32* @num_of_matched, align 4
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.142:                                       ; preds = %if.then.137
  %108 = load i32, i32* %i, align 4
  %sub143 = sub i32 %108, 1
  %109 = load i32, i32* %end, align 4
  %110 = load i32, i32* %j, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i32 %sub143, i32 %109, i32 %110)
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.142, %if.end.133
  %111 = load i32, i32* %i, align 4
  %sub145 = sub i32 %111, 1
  store i32 %sub145, i32* %lasti, align 4
  %112 = load i32, i32* %Init0, align 4
  store i32 %112, i32* %r2, align 4
  %113 = load i32, i32* %r2, align 4
  %idxprom146 = zext i32 %113 to i64
  %arrayidx147 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom146
  %114 = load i32, i32* %arrayidx147, align 4
  %115 = load i32, i32* %CMask, align 4
  %and148 = and i32 %114, %115
  %116 = load i32, i32* %Init0, align 4
  %or149 = or i32 %and148, %116
  store i32 %or149, i32* %r3, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.144, %if.then.115
  br label %while.cond.62

while.end:                                        ; preds = %while.cond.62
  %117 = load i32, i32* %num_read, align 4
  %add151 = add nsw i32 1024, %117
  %118 = load i32, i32* %lasti, align 4
  %sub152 = sub nsw i32 %add151, %118
  store i32 %sub152, i32* %ResidueSize, align 4
  %119 = load i32, i32* %ResidueSize, align 4
  %cmp153 = icmp sgt i32 %119, 1024
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %while.end
  store i32 1024, i32* %ResidueSize, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %while.end
  %120 = load i32, i32* %ResidueSize, align 4
  %idx.ext = sext i32 %120 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i64 1024), i64 %idx.neg
  %121 = load i32, i32* %lasti, align 4
  %idx.ext157 = sext i32 %121 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i64 %idx.ext157
  %122 = load i32, i32* %ResidueSize, align 4
  %conv159 = sext i32 %122 to i64
  %call160 = call i8* @strncpy(i8* %add.ptr, i8* %add.ptr158, i64 %conv159) #6
  %123 = load i32, i32* %ResidueSize, align 4
  %sub161 = sub nsw i32 1024, %123
  store i32 %sub161, i32* %lasti, align 4
  br label %while.cond

while.end.162:                                    ; preds = %while.cond
  br label %return

if.end.163:                                       ; preds = %for.end.37
  br label %while.cond.164

while.cond.164:                                   ; preds = %while.end.561, %if.end.163
  %124 = load i32, i32* %Text.addr, align 4
  %call165 = call i64 @read(i32 %124, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i64 1024), i64 49152)
  %conv166 = trunc i64 %call165 to i32
  store i32 %conv166, i32* %num_read, align 4
  %cmp167 = icmp sgt i32 %conv166, 0
  br i1 %cmp167, label %while.body.169, label %while.end.565

while.body.169:                                   ; preds = %while.cond.164
  store i32 1024, i32* %i, align 4
  %125 = load i32, i32* %num_read, align 4
  %add170 = add nsw i32 1024, %125
  store i32 %add170, i32* %end, align 4
  %126 = load i32, i32* %num_read, align 4
  %cmp171 = icmp slt i32 %126, 49152
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.183

land.lhs.true.173:                                ; preds = %while.body.169
  %127 = load i32, i32* %end, align 4
  %sub174 = sub i32 %127, 1
  %idxprom175 = zext i32 %sub174 to i64
  %arrayidx176 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom175
  %128 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %128 to i32
  %cmp178 = icmp ne i32 %conv177, 10
  br i1 %cmp178, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %land.lhs.true.173
  %129 = load i32, i32* %end, align 4
  %idxprom181 = zext i32 %129 to i64
  %arrayidx182 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom181
  store i8 10, i8* %arrayidx182, align 1
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %land.lhs.true.173, %while.body.169
  %130 = load i32, i32* %FIRST_TIME, align 4
  %tobool184 = icmp ne i32 %130, 0
  br i1 %tobool184, label %if.then.185, label %if.end.190

if.then.185:                                      ; preds = %if.end.183
  %131 = load i32, i32* %i, align 4
  %sub186 = sub i32 %131, 1
  %idxprom187 = zext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom187
  store i8 10, i8* %arrayidx188, align 1
  %132 = load i32, i32* %i, align 4
  %dec189 = add i32 %132, -1
  store i32 %dec189, i32* %i, align 4
  store i32 0, i32* %FIRST_TIME, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.185, %if.end.183
  br label %while.cond.191

while.cond.191:                                   ; preds = %Nextchar1, %if.end.190
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %end, align 4
  %cmp192 = icmp ult i32 %133, %134
  br i1 %cmp192, label %while.body.194, label %while.end.561

while.body.194:                                   ; preds = %while.cond.191
  %135 = load i32, i32* %i, align 4
  %inc195 = add i32 %135, 1
  store i32 %inc195, i32* %i, align 4
  %idxprom196 = zext i32 %135 to i64
  %arrayidx197 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom196
  %136 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %136 to i32
  store i32 %conv198, i32* %c, align 4
  %137 = load i32, i32* %c, align 4
  %idxprom199 = zext i32 %137 to i64
  %arrayidx200 = getelementptr inbounds [256 x i32], [256 x i32]* %RMask, i32 0, i64 %idxprom199
  %138 = load i32, i32* %arrayidx200, align 4
  store i32 %138, i32* %CMask, align 4
  %139 = load i32, i32* %c, align 4
  %140 = load i32, i32* %Newline, align 4
  %cmp201 = icmp ne i32 %139, %140
  br i1 %cmp201, label %if.then.203, label %if.else.279

if.then.203:                                      ; preds = %while.body.194
  %arrayidx204 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %141 = load i32, i32* %arrayidx204, align 4
  store i32 %141, i32* %r_even, align 4
  %142 = load i32, i32* %Init1, align 4
  %143 = load i32, i32* %r_even, align 4
  %and205 = and i32 %142, %143
  store i32 %and205, i32* %r1, align 4
  %144 = load i32, i32* %r_even, align 4
  %idxprom206 = zext i32 %144 to i64
  %arrayidx207 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom206
  %145 = load i32, i32* %arrayidx207, align 4
  %146 = load i32, i32* %CMask, align 4
  %and208 = and i32 %145, %146
  %147 = load i32, i32* %r1, align 4
  %or209 = or i32 %and208, %147
  %arrayidx210 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  store i32 %or209, i32* %arrayidx210, align 4
  %arrayidx211 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  %148 = load i32, i32* %arrayidx211, align 4
  store i32 %148, i32* %r_odd, align 4
  %149 = load i32, i32* %Init1, align 4
  %150 = load i32, i32* %r_odd, align 4
  %and212 = and i32 %149, %150
  store i32 %and212, i32* %r1, align 4
  %151 = load i32, i32* %r_even, align 4
  %152 = load i32, i32* %r_even, align 4
  %arrayidx213 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %153 = load i32, i32* %arrayidx213, align 4
  %or214 = or i32 %152, %153
  %idxprom215 = zext i32 %or214 to i64
  %arrayidx216 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom215
  %154 = load i32, i32* %arrayidx216, align 4
  %or217 = or i32 %151, %154
  %155 = load i32, i32* %r_NO_ERR, align 4
  %and218 = and i32 %or217, %155
  store i32 %and218, i32* %r2, align 4
  %156 = load i32, i32* %r_odd, align 4
  %idxprom219 = zext i32 %156 to i64
  %arrayidx220 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom219
  %157 = load i32, i32* %arrayidx220, align 4
  %158 = load i32, i32* %CMask, align 4
  %and221 = and i32 %157, %158
  %159 = load i32, i32* %r2, align 4
  %or222 = or i32 %and221, %159
  %160 = load i32, i32* %r1, align 4
  %or223 = or i32 %or222, %160
  %arrayidx224 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  store i32 %or223, i32* %arrayidx224, align 4
  %161 = load i32, i32* %D.addr, align 4
  %cmp225 = icmp eq i32 %161, 1
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.then.203
  br label %Nextchar

if.end.228:                                       ; preds = %if.then.203
  %arrayidx229 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  %162 = load i32, i32* %arrayidx229, align 4
  store i32 %162, i32* %r_even, align 4
  %163 = load i32, i32* %Init1, align 4
  %164 = load i32, i32* %r_even, align 4
  %and230 = and i32 %163, %164
  store i32 %and230, i32* %r1, align 4
  %165 = load i32, i32* %r_odd, align 4
  %166 = load i32, i32* %r_odd, align 4
  %arrayidx231 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %167 = load i32, i32* %arrayidx231, align 4
  %or232 = or i32 %166, %167
  %idxprom233 = zext i32 %or232 to i64
  %arrayidx234 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom233
  %168 = load i32, i32* %arrayidx234, align 4
  %or235 = or i32 %165, %168
  %169 = load i32, i32* %r_NO_ERR, align 4
  %and236 = and i32 %or235, %169
  store i32 %and236, i32* %r2, align 4
  %170 = load i32, i32* %r_even, align 4
  %idxprom237 = zext i32 %170 to i64
  %arrayidx238 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom237
  %171 = load i32, i32* %arrayidx238, align 4
  %172 = load i32, i32* %CMask, align 4
  %and239 = and i32 %171, %172
  %173 = load i32, i32* %r2, align 4
  %or240 = or i32 %and239, %173
  %174 = load i32, i32* %r1, align 4
  %or241 = or i32 %or240, %174
  %arrayidx242 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  store i32 %or241, i32* %arrayidx242, align 4
  %175 = load i32, i32* %D.addr, align 4
  %cmp243 = icmp eq i32 %175, 2
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.end.228
  br label %Nextchar

if.end.246:                                       ; preds = %if.end.228
  %arrayidx247 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  %176 = load i32, i32* %arrayidx247, align 4
  store i32 %176, i32* %r_odd, align 4
  %177 = load i32, i32* %Init1, align 4
  %178 = load i32, i32* %r_odd, align 4
  %and248 = and i32 %177, %178
  store i32 %and248, i32* %r1, align 4
  %179 = load i32, i32* %r_even, align 4
  %180 = load i32, i32* %r_even, align 4
  %arrayidx249 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %181 = load i32, i32* %arrayidx249, align 4
  %or250 = or i32 %180, %181
  %idxprom251 = zext i32 %or250 to i64
  %arrayidx252 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom251
  %182 = load i32, i32* %arrayidx252, align 4
  %or253 = or i32 %179, %182
  %183 = load i32, i32* %r_NO_ERR, align 4
  %and254 = and i32 %or253, %183
  store i32 %and254, i32* %r2, align 4
  %184 = load i32, i32* %r_odd, align 4
  %idxprom255 = zext i32 %184 to i64
  %arrayidx256 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom255
  %185 = load i32, i32* %arrayidx256, align 4
  %186 = load i32, i32* %CMask, align 4
  %and257 = and i32 %185, %186
  %187 = load i32, i32* %r2, align 4
  %or258 = or i32 %and257, %187
  %188 = load i32, i32* %r1, align 4
  %or259 = or i32 %or258, %188
  %arrayidx260 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  store i32 %or259, i32* %arrayidx260, align 4
  %189 = load i32, i32* %D.addr, align 4
  %cmp261 = icmp eq i32 %189, 3
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.246
  br label %Nextchar

if.end.264:                                       ; preds = %if.end.246
  %arrayidx265 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 4
  %190 = load i32, i32* %arrayidx265, align 4
  store i32 %190, i32* %r_even, align 4
  %191 = load i32, i32* %Init1, align 4
  %192 = load i32, i32* %r_even, align 4
  %and266 = and i32 %191, %192
  store i32 %and266, i32* %r1, align 4
  %193 = load i32, i32* %r_odd, align 4
  %194 = load i32, i32* %r_odd, align 4
  %arrayidx267 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %195 = load i32, i32* %arrayidx267, align 4
  %or268 = or i32 %194, %195
  %idxprom269 = zext i32 %or268 to i64
  %arrayidx270 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom269
  %196 = load i32, i32* %arrayidx270, align 4
  %or271 = or i32 %193, %196
  %197 = load i32, i32* %r_NO_ERR, align 4
  %and272 = and i32 %or271, %197
  store i32 %and272, i32* %r2, align 4
  %198 = load i32, i32* %r_even, align 4
  %idxprom273 = zext i32 %198 to i64
  %arrayidx274 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom273
  %199 = load i32, i32* %arrayidx274, align 4
  %200 = load i32, i32* %CMask, align 4
  %and275 = and i32 %199, %200
  %201 = load i32, i32* %r2, align 4
  %or276 = or i32 %and275, %201
  %202 = load i32, i32* %r1, align 4
  %or277 = or i32 %or276, %202
  %arrayidx278 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  store i32 %or277, i32* %arrayidx278, align 4
  br label %Nextchar

if.else.279:                                      ; preds = %while.body.194
  %203 = load i32, i32* %j, align 4
  %inc280 = add nsw i32 %203, 1
  store i32 %inc280, i32* %j, align 4
  %204 = load i32, i32* %Init1, align 4
  %205 = load i32, i32* %D.addr, align 4
  %idxprom281 = sext i32 %205 to i64
  %arrayidx282 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom281
  %206 = load i32, i32* %arrayidx282, align 4
  %and283 = and i32 %204, %206
  store i32 %and283, i32* %r1, align 4
  %207 = load i32, i32* %D.addr, align 4
  %idxprom284 = sext i32 %207 to i64
  %arrayidx285 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom284
  %208 = load i32, i32* %arrayidx285, align 4
  %idxprom286 = zext i32 %208 to i64
  %arrayidx287 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom286
  %209 = load i32, i32* %arrayidx287, align 4
  %210 = load i32, i32* %CMask, align 4
  %and288 = and i32 %209, %210
  %211 = load i32, i32* %r1, align 4
  %or289 = or i32 %and288, %211
  %212 = load i32, i32* %D.addr, align 4
  %idxprom290 = sext i32 %212 to i64
  %arrayidx291 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom290
  store i32 %or289, i32* %arrayidx291, align 4
  %213 = load i32, i32* @TAIL, align 4
  %tobool292 = icmp ne i32 %213, 0
  br i1 %tobool292, label %if.then.293, label %if.end.303

if.then.293:                                      ; preds = %if.else.279
  %214 = load i32, i32* %D.addr, align 4
  %idxprom294 = sext i32 %214 to i64
  %arrayidx295 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom294
  %215 = load i32, i32* %arrayidx295, align 4
  %idxprom296 = zext i32 %215 to i64
  %arrayidx297 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom296
  %216 = load i32, i32* %arrayidx297, align 4
  %217 = load i32, i32* %D.addr, align 4
  %idxprom298 = sext i32 %217 to i64
  %arrayidx299 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom298
  %218 = load i32, i32* %arrayidx299, align 4
  %or300 = or i32 %216, %218
  %219 = load i32, i32* %D.addr, align 4
  %idxprom301 = sext i32 %219 to i64
  %arrayidx302 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom301
  store i32 %or300, i32* %arrayidx302, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.293, %if.else.279
  %220 = load i32, i32* %D.addr, align 4
  %idxprom304 = sext i32 %220 to i64
  %arrayidx305 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom304
  %221 = load i32, i32* %arrayidx305, align 4
  %and306 = and i32 %221, 1
  %222 = load i32, i32* @INVERSE, align 4
  %xor307 = xor i32 %and306, %222
  %tobool308 = icmp ne i32 %xor307, 0
  br i1 %tobool308, label %if.then.309, label %if.end.316

if.then.309:                                      ; preds = %if.end.303
  %223 = load i32, i32* @FILENAMEONLY, align 4
  %tobool310 = icmp ne i32 %223, 0
  br i1 %tobool310, label %if.then.311, label %if.end.314

if.then.311:                                      ; preds = %if.then.309
  %224 = load i32, i32* @num_of_matched, align 4
  %inc312 = add nsw i32 %224, 1
  store i32 %inc312, i32* @num_of_matched, align 4
  %call313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.314:                                       ; preds = %if.then.309
  %225 = load i32, i32* %i, align 4
  %sub315 = sub i32 %225, 1
  %226 = load i32, i32* %end, align 4
  %227 = load i32, i32* %j, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i32 %sub315, i32 %226, i32 %227)
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.314, %if.end.303
  store i32 0, i32* %k, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.327, %if.end.316
  %228 = load i32, i32* %k, align 4
  %229 = load i32, i32* %D.addr, align 4
  %cmp318 = icmp ule i32 %228, %229
  br i1 %cmp318, label %for.body.320, label %for.end.329

for.body.320:                                     ; preds = %for.cond.317
  %230 = load i32, i32* %k, align 4
  %idxprom321 = zext i32 %230 to i64
  %arrayidx322 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom321
  %231 = load i32, i32* %arrayidx322, align 4
  %232 = load i32, i32* %k, align 4
  %idxprom323 = zext i32 %232 to i64
  %arrayidx324 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom323
  store i32 %231, i32* %arrayidx324, align 4
  %233 = load i32, i32* %k, align 4
  %idxprom325 = zext i32 %233 to i64
  %arrayidx326 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom325
  store i32 %231, i32* %arrayidx326, align 4
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.body.320
  %234 = load i32, i32* %k, align 4
  %inc328 = add i32 %234, 1
  store i32 %inc328, i32* %k, align 4
  br label %for.cond.317

for.end.329:                                      ; preds = %for.cond.317
  %235 = load i32, i32* %Init1, align 4
  %arrayidx330 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %236 = load i32, i32* %arrayidx330, align 4
  %and331 = and i32 %235, %236
  store i32 %and331, i32* %r1, align 4
  %arrayidx332 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %237 = load i32, i32* %arrayidx332, align 4
  %idxprom333 = zext i32 %237 to i64
  %arrayidx334 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom333
  %238 = load i32, i32* %arrayidx334, align 4
  %239 = load i32, i32* %CMask, align 4
  %and335 = and i32 %238, %239
  %240 = load i32, i32* %r1, align 4
  %or336 = or i32 %and335, %240
  %arrayidx337 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  store i32 %or336, i32* %arrayidx337, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.368, %for.end.329
  %241 = load i32, i32* %k, align 4
  %242 = load i32, i32* %D.addr, align 4
  %cmp339 = icmp ule i32 %241, %242
  br i1 %cmp339, label %for.body.341, label %for.end.370

for.body.341:                                     ; preds = %for.cond.338
  %243 = load i32, i32* %Init1, align 4
  %244 = load i32, i32* %k, align 4
  %idxprom342 = zext i32 %244 to i64
  %arrayidx343 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom342
  %245 = load i32, i32* %arrayidx343, align 4
  %and344 = and i32 %243, %245
  store i32 %and344, i32* %r1, align 4
  %246 = load i32, i32* %k, align 4
  %sub345 = sub i32 %246, 1
  %idxprom346 = zext i32 %sub345 to i64
  %arrayidx347 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom346
  %247 = load i32, i32* %arrayidx347, align 4
  %248 = load i32, i32* %k, align 4
  %sub348 = sub i32 %248, 1
  %idxprom349 = zext i32 %sub348 to i64
  %arrayidx350 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom349
  %249 = load i32, i32* %arrayidx350, align 4
  %250 = load i32, i32* %k, align 4
  %sub351 = sub i32 %250, 1
  %idxprom352 = zext i32 %sub351 to i64
  %arrayidx353 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom352
  %251 = load i32, i32* %arrayidx353, align 4
  %or354 = or i32 %249, %251
  %idxprom355 = zext i32 %or354 to i64
  %arrayidx356 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom355
  %252 = load i32, i32* %arrayidx356, align 4
  %or357 = or i32 %247, %252
  %253 = load i32, i32* %r_NO_ERR, align 4
  %and358 = and i32 %or357, %253
  store i32 %and358, i32* %r2, align 4
  %254 = load i32, i32* %k, align 4
  %idxprom359 = zext i32 %254 to i64
  %arrayidx360 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom359
  %255 = load i32, i32* %arrayidx360, align 4
  %idxprom361 = zext i32 %255 to i64
  %arrayidx362 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom361
  %256 = load i32, i32* %arrayidx362, align 4
  %257 = load i32, i32* %CMask, align 4
  %and363 = and i32 %256, %257
  %258 = load i32, i32* %r1, align 4
  %or364 = or i32 %and363, %258
  %259 = load i32, i32* %r2, align 4
  %or365 = or i32 %or364, %259
  %260 = load i32, i32* %k, align 4
  %idxprom366 = zext i32 %260 to i64
  %arrayidx367 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom366
  store i32 %or365, i32* %arrayidx367, align 4
  br label %for.inc.368

for.inc.368:                                      ; preds = %for.body.341
  %261 = load i32, i32* %k, align 4
  %inc369 = add i32 %261, 1
  store i32 %inc369, i32* %k, align 4
  br label %for.cond.338

for.end.370:                                      ; preds = %for.cond.338
  br label %if.end.371

if.end.371:                                       ; preds = %for.end.370
  br label %Nextchar

Nextchar:                                         ; preds = %if.end.371, %if.end.264, %if.then.263, %if.then.245, %if.then.227
  %262 = load i32, i32* %i, align 4
  %idxprom372 = zext i32 %262 to i64
  %arrayidx373 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i32 0, i64 %idxprom372
  %263 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %263 to i32
  store i32 %conv374, i32* %c, align 4
  %264 = load i32, i32* %c, align 4
  %idxprom375 = zext i32 %264 to i64
  %arrayidx376 = getelementptr inbounds [256 x i32], [256 x i32]* %RMask, i32 0, i64 %idxprom375
  %265 = load i32, i32* %arrayidx376, align 4
  store i32 %265, i32* %CMask, align 4
  %266 = load i32, i32* %c, align 4
  %267 = load i32, i32* %Newline, align 4
  %cmp377 = icmp ne i32 %266, %267
  br i1 %cmp377, label %if.then.379, label %if.else.468

if.then.379:                                      ; preds = %Nextchar
  %268 = load i32, i32* %Init1, align 4
  %arrayidx380 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %269 = load i32, i32* %arrayidx380, align 4
  %and381 = and i32 %268, %269
  store i32 %and381, i32* %r1, align 4
  %arrayidx382 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %270 = load i32, i32* %arrayidx382, align 4
  %idxprom383 = zext i32 %270 to i64
  %arrayidx384 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom383
  %271 = load i32, i32* %arrayidx384, align 4
  %272 = load i32, i32* %CMask, align 4
  %and385 = and i32 %271, %272
  %273 = load i32, i32* %r1, align 4
  %or386 = or i32 %and385, %273
  %arrayidx387 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  store i32 %or386, i32* %arrayidx387, align 4
  %274 = load i32, i32* %Init1, align 4
  %arrayidx388 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %275 = load i32, i32* %arrayidx388, align 4
  %and389 = and i32 %274, %275
  store i32 %and389, i32* %r1, align 4
  %arrayidx390 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %276 = load i32, i32* %arrayidx390, align 4
  %idxprom391 = zext i32 %276 to i64
  %arrayidx392 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom391
  %277 = load i32, i32* %arrayidx392, align 4
  %278 = load i32, i32* %CMask, align 4
  %and393 = and i32 %277, %278
  %arrayidx394 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %279 = load i32, i32* %arrayidx394, align 4
  %arrayidx395 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %280 = load i32, i32* %arrayidx395, align 4
  %arrayidx396 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  %281 = load i32, i32* %arrayidx396, align 4
  %or397 = or i32 %280, %281
  %idxprom398 = zext i32 %or397 to i64
  %arrayidx399 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom398
  %282 = load i32, i32* %arrayidx399, align 4
  %or400 = or i32 %279, %282
  %283 = load i32, i32* %r_NO_ERR, align 4
  %and401 = and i32 %or400, %283
  %or402 = or i32 %and393, %and401
  %284 = load i32, i32* %r1, align 4
  %or403 = or i32 %or402, %284
  %arrayidx404 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  store i32 %or403, i32* %arrayidx404, align 4
  %285 = load i32, i32* %D.addr, align 4
  %cmp405 = icmp eq i32 %285, 1
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.then.379
  br label %Nextchar1

if.end.408:                                       ; preds = %if.then.379
  %286 = load i32, i32* %Init1, align 4
  %arrayidx409 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %287 = load i32, i32* %arrayidx409, align 4
  %and410 = and i32 %286, %287
  store i32 %and410, i32* %r1, align 4
  %arrayidx411 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %288 = load i32, i32* %arrayidx411, align 4
  %idxprom412 = zext i32 %288 to i64
  %arrayidx413 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom412
  %289 = load i32, i32* %arrayidx413, align 4
  %290 = load i32, i32* %CMask, align 4
  %and414 = and i32 %289, %290
  %arrayidx415 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %291 = load i32, i32* %arrayidx415, align 4
  %arrayidx416 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 1
  %292 = load i32, i32* %arrayidx416, align 4
  %arrayidx417 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 1
  %293 = load i32, i32* %arrayidx417, align 4
  %or418 = or i32 %292, %293
  %idxprom419 = zext i32 %or418 to i64
  %arrayidx420 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom419
  %294 = load i32, i32* %arrayidx420, align 4
  %or421 = or i32 %291, %294
  %295 = load i32, i32* %r_NO_ERR, align 4
  %and422 = and i32 %or421, %295
  %or423 = or i32 %and414, %and422
  %296 = load i32, i32* %r1, align 4
  %or424 = or i32 %or423, %296
  %arrayidx425 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  store i32 %or424, i32* %arrayidx425, align 4
  %297 = load i32, i32* %D.addr, align 4
  %cmp426 = icmp eq i32 %297, 2
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.end.408
  br label %Nextchar1

if.end.429:                                       ; preds = %if.end.408
  %298 = load i32, i32* %Init1, align 4
  %arrayidx430 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %299 = load i32, i32* %arrayidx430, align 4
  %and431 = and i32 %298, %299
  store i32 %and431, i32* %r1, align 4
  %arrayidx432 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %300 = load i32, i32* %arrayidx432, align 4
  %idxprom433 = zext i32 %300 to i64
  %arrayidx434 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom433
  %301 = load i32, i32* %arrayidx434, align 4
  %302 = load i32, i32* %CMask, align 4
  %and435 = and i32 %301, %302
  %arrayidx436 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %303 = load i32, i32* %arrayidx436, align 4
  %arrayidx437 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 2
  %304 = load i32, i32* %arrayidx437, align 4
  %arrayidx438 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 2
  %305 = load i32, i32* %arrayidx438, align 4
  %or439 = or i32 %304, %305
  %idxprom440 = zext i32 %or439 to i64
  %arrayidx441 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom440
  %306 = load i32, i32* %arrayidx441, align 4
  %or442 = or i32 %303, %306
  %307 = load i32, i32* %r_NO_ERR, align 4
  %and443 = and i32 %or442, %307
  %or444 = or i32 %and435, %and443
  %308 = load i32, i32* %r1, align 4
  %or445 = or i32 %or444, %308
  %arrayidx446 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  store i32 %or445, i32* %arrayidx446, align 4
  %309 = load i32, i32* %D.addr, align 4
  %cmp447 = icmp eq i32 %309, 3
  br i1 %cmp447, label %if.then.449, label %if.end.450

if.then.449:                                      ; preds = %if.end.429
  br label %Nextchar1

if.end.450:                                       ; preds = %if.end.429
  %310 = load i32, i32* %Init1, align 4
  %arrayidx451 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  %311 = load i32, i32* %arrayidx451, align 4
  %and452 = and i32 %310, %311
  store i32 %and452, i32* %r1, align 4
  %arrayidx453 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 4
  %312 = load i32, i32* %arrayidx453, align 4
  %idxprom454 = zext i32 %312 to i64
  %arrayidx455 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom454
  %313 = load i32, i32* %arrayidx455, align 4
  %314 = load i32, i32* %CMask, align 4
  %and456 = and i32 %313, %314
  %arrayidx457 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %315 = load i32, i32* %arrayidx457, align 4
  %arrayidx458 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 3
  %316 = load i32, i32* %arrayidx458, align 4
  %arrayidx459 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 3
  %317 = load i32, i32* %arrayidx459, align 4
  %or460 = or i32 %316, %317
  %idxprom461 = zext i32 %or460 to i64
  %arrayidx462 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom461
  %318 = load i32, i32* %arrayidx462, align 4
  %or463 = or i32 %315, %318
  %319 = load i32, i32* %r_NO_ERR, align 4
  %and464 = and i32 %or463, %319
  %or465 = or i32 %and456, %and464
  %320 = load i32, i32* %r1, align 4
  %or466 = or i32 %or465, %320
  %arrayidx467 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 4
  store i32 %or466, i32* %arrayidx467, align 4
  br label %Nextchar1

if.else.468:                                      ; preds = %Nextchar
  %321 = load i32, i32* %j, align 4
  %inc469 = add nsw i32 %321, 1
  store i32 %inc469, i32* %j, align 4
  %322 = load i32, i32* %Init1, align 4
  %323 = load i32, i32* %D.addr, align 4
  %idxprom470 = sext i32 %323 to i64
  %arrayidx471 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom470
  %324 = load i32, i32* %arrayidx471, align 4
  %and472 = and i32 %322, %324
  store i32 %and472, i32* %r1, align 4
  %325 = load i32, i32* %D.addr, align 4
  %idxprom473 = sext i32 %325 to i64
  %arrayidx474 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom473
  %326 = load i32, i32* %arrayidx474, align 4
  %idxprom475 = zext i32 %326 to i64
  %arrayidx476 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom475
  %327 = load i32, i32* %arrayidx476, align 4
  %328 = load i32, i32* %CMask, align 4
  %and477 = and i32 %327, %328
  %329 = load i32, i32* %r1, align 4
  %or478 = or i32 %and477, %329
  %330 = load i32, i32* %D.addr, align 4
  %idxprom479 = sext i32 %330 to i64
  %arrayidx480 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom479
  store i32 %or478, i32* %arrayidx480, align 4
  %331 = load i32, i32* @TAIL, align 4
  %tobool481 = icmp ne i32 %331, 0
  br i1 %tobool481, label %if.then.482, label %if.end.492

if.then.482:                                      ; preds = %if.else.468
  %332 = load i32, i32* %D.addr, align 4
  %idxprom483 = sext i32 %332 to i64
  %arrayidx484 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom483
  %333 = load i32, i32* %arrayidx484, align 4
  %idxprom485 = zext i32 %333 to i64
  %arrayidx486 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom485
  %334 = load i32, i32* %arrayidx486, align 4
  %335 = load i32, i32* %D.addr, align 4
  %idxprom487 = sext i32 %335 to i64
  %arrayidx488 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom487
  %336 = load i32, i32* %arrayidx488, align 4
  %or489 = or i32 %334, %336
  %337 = load i32, i32* %D.addr, align 4
  %idxprom490 = sext i32 %337 to i64
  %arrayidx491 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom490
  store i32 %or489, i32* %arrayidx491, align 4
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.482, %if.else.468
  %338 = load i32, i32* %D.addr, align 4
  %idxprom493 = sext i32 %338 to i64
  %arrayidx494 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom493
  %339 = load i32, i32* %arrayidx494, align 4
  %and495 = and i32 %339, 1
  %340 = load i32, i32* @INVERSE, align 4
  %xor496 = xor i32 %and495, %340
  %tobool497 = icmp ne i32 %xor496, 0
  br i1 %tobool497, label %if.then.498, label %if.end.504

if.then.498:                                      ; preds = %if.end.492
  %341 = load i32, i32* @FILENAMEONLY, align 4
  %tobool499 = icmp ne i32 %341, 0
  br i1 %tobool499, label %if.then.500, label %if.end.503

if.then.500:                                      ; preds = %if.then.498
  %342 = load i32, i32* @num_of_matched, align 4
  %inc501 = add nsw i32 %342, 1
  store i32 %inc501, i32* @num_of_matched, align 4
  %call502 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.503:                                       ; preds = %if.then.498
  %343 = load i32, i32* %i, align 4
  %344 = load i32, i32* %end, align 4
  %345 = load i32, i32* %j, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i32 %343, i32 %344, i32 %345)
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %if.end.492
  store i32 0, i32* %k, align 4
  br label %for.cond.505

for.cond.505:                                     ; preds = %for.inc.515, %if.end.504
  %346 = load i32, i32* %k, align 4
  %347 = load i32, i32* %D.addr, align 4
  %cmp506 = icmp ule i32 %346, %347
  br i1 %cmp506, label %for.body.508, label %for.end.517

for.body.508:                                     ; preds = %for.cond.505
  %348 = load i32, i32* %k, align 4
  %idxprom509 = zext i32 %348 to i64
  %arrayidx510 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i32 0, i64 %idxprom509
  %349 = load i32, i32* %arrayidx510, align 4
  %350 = load i32, i32* %k, align 4
  %idxprom511 = zext i32 %350 to i64
  %arrayidx512 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom511
  store i32 %349, i32* %arrayidx512, align 4
  %351 = load i32, i32* %k, align 4
  %idxprom513 = zext i32 %351 to i64
  %arrayidx514 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom513
  store i32 %349, i32* %arrayidx514, align 4
  br label %for.inc.515

for.inc.515:                                      ; preds = %for.body.508
  %352 = load i32, i32* %k, align 4
  %inc516 = add i32 %352, 1
  store i32 %inc516, i32* %k, align 4
  br label %for.cond.505

for.end.517:                                      ; preds = %for.cond.505
  %353 = load i32, i32* %Init1, align 4
  %arrayidx518 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %354 = load i32, i32* %arrayidx518, align 4
  %and519 = and i32 %353, %354
  store i32 %and519, i32* %r1, align 4
  %arrayidx520 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 0
  %355 = load i32, i32* %arrayidx520, align 4
  %idxprom521 = zext i32 %355 to i64
  %arrayidx522 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom521
  %356 = load i32, i32* %arrayidx522, align 4
  %357 = load i32, i32* %CMask, align 4
  %and523 = and i32 %356, %357
  %358 = load i32, i32* %r1, align 4
  %or524 = or i32 %and523, %358
  %arrayidx525 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 0
  store i32 %or524, i32* %arrayidx525, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.526

for.cond.526:                                     ; preds = %for.inc.556, %for.end.517
  %359 = load i32, i32* %k, align 4
  %360 = load i32, i32* %D.addr, align 4
  %cmp527 = icmp ule i32 %359, %360
  br i1 %cmp527, label %for.body.529, label %for.end.558

for.body.529:                                     ; preds = %for.cond.526
  %361 = load i32, i32* %Init1, align 4
  %362 = load i32, i32* %k, align 4
  %idxprom530 = zext i32 %362 to i64
  %arrayidx531 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom530
  %363 = load i32, i32* %arrayidx531, align 4
  %and532 = and i32 %361, %363
  store i32 %and532, i32* %r1, align 4
  %364 = load i32, i32* %k, align 4
  %sub533 = sub i32 %364, 1
  %idxprom534 = zext i32 %sub533 to i64
  %arrayidx535 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom534
  %365 = load i32, i32* %arrayidx535, align 4
  %366 = load i32, i32* %k, align 4
  %sub536 = sub i32 %366, 1
  %idxprom537 = zext i32 %sub536 to i64
  %arrayidx538 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom537
  %367 = load i32, i32* %arrayidx538, align 4
  %368 = load i32, i32* %k, align 4
  %sub539 = sub i32 %368, 1
  %idxprom540 = zext i32 %sub539 to i64
  %arrayidx541 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom540
  %369 = load i32, i32* %arrayidx541, align 4
  %or542 = or i32 %367, %369
  %idxprom543 = zext i32 %or542 to i64
  %arrayidx544 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom543
  %370 = load i32, i32* %arrayidx544, align 4
  %or545 = or i32 %365, %370
  %371 = load i32, i32* %r_NO_ERR, align 4
  %and546 = and i32 %or545, %371
  store i32 %and546, i32* %r2, align 4
  %372 = load i32, i32* %k, align 4
  %idxprom547 = zext i32 %372 to i64
  %arrayidx548 = getelementptr inbounds [5 x i32], [5 x i32]* %A, i32 0, i64 %idxprom547
  %373 = load i32, i32* %arrayidx548, align 4
  %idxprom549 = zext i32 %373 to i64
  %arrayidx550 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i32 0, i64 %idxprom549
  %374 = load i32, i32* %arrayidx550, align 4
  %375 = load i32, i32* %CMask, align 4
  %and551 = and i32 %374, %375
  %376 = load i32, i32* %r1, align 4
  %or552 = or i32 %and551, %376
  %377 = load i32, i32* %r2, align 4
  %or553 = or i32 %or552, %377
  %378 = load i32, i32* %k, align 4
  %idxprom554 = zext i32 %378 to i64
  %arrayidx555 = getelementptr inbounds [5 x i32], [5 x i32]* %B, i32 0, i64 %idxprom554
  store i32 %or553, i32* %arrayidx555, align 4
  br label %for.inc.556

for.inc.556:                                      ; preds = %for.body.529
  %379 = load i32, i32* %k, align 4
  %inc557 = add i32 %379, 1
  store i32 %inc557, i32* %k, align 4
  br label %for.cond.526

for.end.558:                                      ; preds = %for.cond.526
  br label %if.end.559

if.end.559:                                       ; preds = %for.end.558
  br label %Nextchar1

Nextchar1:                                        ; preds = %if.end.559, %if.end.450, %if.then.449, %if.then.428, %if.then.407
  %380 = load i32, i32* %i, align 4
  %inc560 = add i32 %380, 1
  store i32 %inc560, i32* %i, align 4
  br label %while.cond.191

while.end.561:                                    ; preds = %while.cond.191
  %381 = load i32, i32* %num_read, align 4
  %idx.ext562 = sext i32 %381 to i64
  %add.ptr563 = getelementptr inbounds i8, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i64 %idx.ext562
  %call564 = call i8* @strncpy(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i32 0, i32 0), i8* %add.ptr563, i64 1024) #6
  br label %while.cond.164

while.end.565:                                    ; preds = %while.cond.164
  br label %return

return:                                           ; preds = %while.end.565, %if.then.500, %if.then.311, %while.end.162, %if.then.139, %if.then.95
  ret void
}

declare i32 @putchar(i32) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @output(i8* %buffer, i32 %i1, i32 %i2, i32 %j) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %bp = alloca i8*, align 8
  %outend = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i1.addr, align 4
  %1 = load i32, i32* %i2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.52

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @num_of_matched, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @num_of_matched, align 4
  %3 = load i32, i32* @COUNT, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %while.end.52

if.end.2:                                         ; preds = %if.end
  %4 = load i32, i32* @SILENT, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  br label %while.end.52

if.end.5:                                         ; preds = %if.end.2
  %5 = load i32, i32* @OUTTAIL, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %6 = load i32, i32* %i1.addr, align 4
  %7 = load i32, i32* @D_length, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %i1.addr, align 4
  %8 = load i32, i32* %i2.addr, align 4
  %9 = load i32, i32* @D_length, align 4
  %add8 = add nsw i32 %8, %9
  store i32 %add8, i32* %i2.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i32, i32* @DELIMITER, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %11 = load i32, i32* %j.addr, align 4
  %add12 = add nsw i32 %11, 1
  store i32 %add12, i32* %j.addr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %12 = load i32, i32* @FIRSTOUTPUT, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.13
  %13 = load i32, i32* %i1.addr, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv, 10
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.15
  %16 = load i32, i32* %i1.addr, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %i1.addr, align 4
  store i32 1, i32* @EATFIRST, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.15
  store i32 0, i32* @FIRSTOUTPUT, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.13
  %17 = load i32, i32* @TRUNCATE, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* @num_of_matched, align 4
  %sub = sub nsw i32 %19, 1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.41, i32 0, i32 0), i32 %sub)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.24
  %20 = load i32, i32* %i1.addr, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8*, i8** %buffer.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %22 to i32
  %cmp28 = icmp eq i32 %conv27, 10
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i32, i32* %i1.addr, align 4
  %24 = load i32, i32* %i2.addr, align 4
  %cmp30 = icmp sle i32 %23, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %26 = load i32, i32* %i1.addr, align 4
  %inc33 = add nsw i32 %26, 1
  store i32 %inc33, i32* %i1.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i32, i32* @FNAME, align 4
  %cmp34 = icmp eq i32 %27, 1
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  %28 = load i32, i32* @LINENUM, align 4
  %tobool39 = icmp ne i32 %28, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %29 = load i32, i32* %j.addr, align 4
  %sub41 = sub nsw i32 %29, 1
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %sub41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %30 = load i8*, i8** %buffer.addr, align 8
  %31 = load i32, i32* %i1.addr, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %32 = load i8*, i8** %buffer.addr, align 8
  %33 = load i32, i32* %i2.addr, align 4
  %idx.ext44 = sext i32 %33 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %32, i64 %idx.ext44
  store i8* %add.ptr45, i8** %outend, align 8
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.49, %if.end.43
  %34 = load i8*, i8** %bp, align 8
  %35 = load i8*, i8** %outend, align 8
  %cmp47 = icmp ule i8* %34, %35
  br i1 %cmp47, label %while.body.49, label %while.end.52

while.body.49:                                    ; preds = %while.cond.46
  %36 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %37 = load i8, i8* %36, align 1
  %conv50 = zext i8 %37 to i32
  %call51 = call i32 @putchar(i32 %conv50)
  br label %while.cond.46

while.end.52:                                     ; preds = %if.then, %if.then.1, %if.then.4, %while.cond.46
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
