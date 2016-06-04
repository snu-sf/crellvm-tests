; ModuleID = 'ssi.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.ssiindex_s = type { i32, i32, i32, i32, i8**, i32*, i32*, i32*, i32, i16, %struct.ssipkey_s*, i32, i32, i8*, %struct._IO_FILE*, %struct.ssiskey_s*, i32, i32, i8*, %struct._IO_FILE* }
%struct.ssipkey_s = type { i8*, i16, %struct.ssioffset_s, %struct.ssioffset_s, i32 }
%struct.ssiskey_s = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Can't create a 64-bit SSI index on this system, sorry;\0AI don't have 64-bit file offset functions available.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tmp.ssi.1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tmp.ssi.2\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s\09%d\09%lu\09%lu\09%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s\09%d\09%llu\09%llu\09%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [115 x i8] c"Can't switch to 64-bit SSI index mode on this system, sorry;\0AI don't have 64-bit file offset functions available.\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"env LC_ALL=POSIX sort -o %s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@v20magic = internal global i32 -202118735, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"ok (no error)\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"no data, fread() failed\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"no such key\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"out of memory, malloc() failed\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"file not found, fopen() failed\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"not a SSI file? (bad magic)\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"corrupt format? unexpected data\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"no large file support for this system\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"failed to reposition on disk\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"failed to get file position on disk\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"no fast subseq support for this seqfile\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"subseq start is out of range\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"an argument is out of range\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"number of files exceeds limit\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"number of keys exceeds limit\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"an fwrite() failed\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"some problem with external sorting\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"unrecognized code\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"failed to turn external sorting on.\00", align 1
@v20swap = internal global i32 -1310067725, align 4
@.str.30 = private unnamed_addr constant [3 x i8] c"\09\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"%s\09%u\09%lu\09%lu\09%lu\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%s\09%u\09%llu\09%llu\09%lu\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SSIOpen(i8* %filename, %struct.ssifile_s** %ret_sfp) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %ret_sfp.addr = alloca %struct.ssifile_s**, align 8
  %sfp = alloca %struct.ssifile_s*, align 8
  %status = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.ssifile_s** %ret_sfp, %struct.ssifile_s*** %ret_sfp.addr, align 8
  store %struct.ssifile_s* null, %struct.ssifile_s** %sfp, align 8
  %call = call noalias i8* @malloc(i64 144) #5
  %0 = bitcast i8* %call to %struct.ssifile_s*
  store %struct.ssifile_s* %0, %struct.ssifile_s** %sfp, align 8
  %cmp = icmp eq %struct.ssifile_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %2, i32 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp, align 8
  %4 = bitcast %struct.ssifile_s* %3 to i8*
  call void @free(i8* %4) #5
  store i32 4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp, align 8
  %call5 = call i32 @load_indexfile(%struct.ssifile_s* %5)
  store i32 %call5, i32* %status, align 4
  %6 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp, align 8
  %7 = load %struct.ssifile_s**, %struct.ssifile_s*** %ret_sfp.addr, align 8
  store %struct.ssifile_s* %6, %struct.ssifile_s** %7, align 8
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_indexfile(%struct.ssifile_s* %sfp) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %magic = alloca i32, align 4
  %i = alloca i16, align 2
  %status = alloca i32, align 4
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store i32 6, i32* %status, align 4
  %0 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %0, i32 0, i32 16
  store i8** null, i8*** %filename, align 8
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileformat = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %1, i32 0, i32 17
  store i32* null, i32** %fileformat, align 8
  %2 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileflags = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %2, i32 0, i32 18
  store i32* null, i32** %fileflags, align 8
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %bpl = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %3, i32 0, i32 19
  store i32* null, i32** %bpl, align 8
  %4 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %rpl = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %4, i32 0, i32 20
  store i32* null, i32** %rpl, align 8
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %5, i32 0, i32 2
  store i16 0, i16* %nfiles, align 2
  %6 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @read_i32(%struct._IO_FILE* %7, i32* %magic)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 5, i32* %status, align 4
  br label %FAILURE

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %magic, align 4
  %9 = load i32, i32* @v20magic, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %magic, align 4
  %11 = load i32, i32* @v20swap, align 4
  %cmp1 = icmp ne i32 %10, %11
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  store i32 5, i32* %status, align 4
  br label %FAILURE

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp4 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp4, align 8
  %14 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flags = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %14, i32 0, i32 1
  %call5 = call i32 @read_i32(%struct._IO_FILE* %13, i32* %flags)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  br label %FAILURE

if.end.8:                                         ; preds = %if.end.3
  %15 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flags9 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %15, i32 0, i32 1
  %16 = load i32, i32* %flags9, align 4
  %and = and i32 %16, 2
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %17 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flags11 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %17, i32 0, i32 1
  %18 = load i32, i32* %flags11, align 4
  %and12 = and i32 %18, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.8
  store i32 7, i32* %status, align 4
  br label %FAILURE

if.end.15:                                        ; preds = %lor.lhs.false
  %19 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flags16 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %19, i32 0, i32 1
  %20 = load i32, i32* %flags16, align 4
  %and17 = and i32 %20, 2
  %tobool18 = icmp ne i32 %and17, 0
  %cond = select i1 %tobool18, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %21 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %imode = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %21, i32 0, i32 14
  store i8 %conv, i8* %imode, align 1
  %22 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flags19 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %22, i32 0, i32 1
  %23 = load i32, i32* %flags19, align 4
  %and20 = and i32 %23, 1
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 1, i32 0
  %conv23 = trunc i32 %cond22 to i8
  %24 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %24, i32 0, i32 15
  store i8 %conv23, i8* %smode, align 1
  %25 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp24 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %25, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp24, align 8
  %27 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles25 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %27, i32 0, i32 2
  %call26 = call i32 @read_i16(%struct._IO_FILE* %26, i16* %nfiles25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.15
  br label %FAILURE

if.end.29:                                        ; preds = %if.end.15
  %28 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp30 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %28, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp30, align 8
  %30 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %30, i32 0, i32 3
  %call31 = call i32 @read_i32(%struct._IO_FILE* %29, i32* %nprimary)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.29
  br label %FAILURE

if.end.34:                                        ; preds = %if.end.29
  %31 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp35 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp35, align 8
  %33 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %33, i32 0, i32 4
  %call36 = call i32 @read_i32(%struct._IO_FILE* %32, i32* %nsecondary)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.34
  br label %FAILURE

if.end.39:                                        ; preds = %if.end.34
  %34 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp40 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %34, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp40, align 8
  %36 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flen = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %36, i32 0, i32 5
  %call41 = call i32 @read_i32(%struct._IO_FILE* %35, i32* %flen)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.39
  br label %FAILURE

if.end.44:                                        ; preds = %if.end.39
  %37 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp45 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %37, i32 0, i32 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp45, align 8
  %39 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %39, i32 0, i32 6
  %call46 = call i32 @read_i32(%struct._IO_FILE* %38, i32* %plen)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.44
  br label %FAILURE

if.end.49:                                        ; preds = %if.end.44
  %40 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp50 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %40, i32 0, i32 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp50, align 8
  %42 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %slen = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %42, i32 0, i32 7
  %call51 = call i32 @read_i32(%struct._IO_FILE* %41, i32* %slen)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  br label %FAILURE

if.end.54:                                        ; preds = %if.end.49
  %43 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp55 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %43, i32 0, i32 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp55, align 8
  %45 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %frecsize = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %45, i32 0, i32 8
  %call56 = call i32 @read_i32(%struct._IO_FILE* %44, i32* %frecsize)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.54
  br label %FAILURE

if.end.59:                                        ; preds = %if.end.54
  %46 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp60 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %46, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp60, align 8
  %48 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %precsize = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %48, i32 0, i32 9
  %call61 = call i32 @read_i32(%struct._IO_FILE* %47, i32* %precsize)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.59
  br label %FAILURE

if.end.64:                                        ; preds = %if.end.59
  %49 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp65 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %49, i32 0, i32 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp65, align 8
  %51 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %srecsize = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %51, i32 0, i32 10
  %call66 = call i32 @read_i32(%struct._IO_FILE* %50, i32* %srecsize)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.64
  br label %FAILURE

if.end.69:                                        ; preds = %if.end.64
  %52 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp70 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %52, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp70, align 8
  %54 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %imode71 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %54, i32 0, i32 14
  %55 = load i8, i8* %imode71, align 1
  %56 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %foffset = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %56, i32 0, i32 11
  %call72 = call i32 @read_offset(%struct._IO_FILE* %53, i8 signext %55, %struct.ssioffset_s* %foffset)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.69
  br label %FAILURE

if.end.75:                                        ; preds = %if.end.69
  %57 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp76 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %57, i32 0, i32 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp76, align 8
  %59 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %imode77 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %59, i32 0, i32 14
  %60 = load i8, i8* %imode77, align 1
  %61 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %poffset = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %61, i32 0, i32 12
  %call78 = call i32 @read_offset(%struct._IO_FILE* %58, i8 signext %60, %struct.ssioffset_s* %poffset)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.75
  br label %FAILURE

if.end.81:                                        ; preds = %if.end.75
  %62 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp82 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %62, i32 0, i32 0
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp82, align 8
  %64 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %imode83 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %64, i32 0, i32 14
  %65 = load i8, i8* %imode83, align 1
  %66 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %soffset = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %66, i32 0, i32 13
  %call84 = call i32 @read_offset(%struct._IO_FILE* %63, i8 signext %65, %struct.ssioffset_s* %soffset)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.end.81
  br label %FAILURE

if.end.87:                                        ; preds = %if.end.81
  %67 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles88 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %67, i32 0, i32 2
  %68 = load i16, i16* %nfiles88, align 2
  %conv89 = zext i16 %68 to i32
  %cmp90 = icmp eq i32 %conv89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.87
  br label %FAILURE

if.end.93:                                        ; preds = %if.end.87
  %69 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles94 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %69, i32 0, i32 2
  %70 = load i16, i16* %nfiles94, align 2
  %conv95 = zext i16 %70 to i64
  %mul = mul i64 8, %conv95
  %call96 = call noalias i8* @malloc(i64 %mul) #5
  %71 = bitcast i8* %call96 to i8**
  %72 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename97 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %72, i32 0, i32 16
  store i8** %71, i8*** %filename97, align 8
  %cmp98 = icmp eq i8** %71, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.93
  store i32 3, i32* %status, align 4
  br label %FAILURE

if.end.101:                                       ; preds = %if.end.93
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.101
  %73 = load i16, i16* %i, align 2
  %conv102 = zext i16 %73 to i32
  %74 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles103 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %74, i32 0, i32 2
  %75 = load i16, i16* %nfiles103, align 2
  %conv104 = zext i16 %75 to i32
  %cmp105 = icmp slt i32 %conv102, %conv104
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i16, i16* %i, align 2
  %idxprom = zext i16 %76 to i64
  %77 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename107 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %77, i32 0, i32 16
  %78 = load i8**, i8*** %filename107, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %78, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i16, i16* %i, align 2
  %inc = add i16 %79, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles108 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %80, i32 0, i32 2
  %81 = load i16, i16* %nfiles108, align 2
  %conv109 = zext i16 %81 to i64
  %mul110 = mul i64 4, %conv109
  %call111 = call noalias i8* @malloc(i64 %mul110) #5
  %82 = bitcast i8* %call111 to i32*
  %83 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileformat112 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %83, i32 0, i32 17
  store i32* %82, i32** %fileformat112, align 8
  %cmp113 = icmp eq i32* %82, null
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %for.end
  store i32 3, i32* %status, align 4
  br label %FAILURE

if.end.116:                                       ; preds = %for.end
  %84 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles117 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %84, i32 0, i32 2
  %85 = load i16, i16* %nfiles117, align 2
  %conv118 = zext i16 %85 to i64
  %mul119 = mul i64 4, %conv118
  %call120 = call noalias i8* @malloc(i64 %mul119) #5
  %86 = bitcast i8* %call120 to i32*
  %87 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileflags121 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %87, i32 0, i32 18
  store i32* %86, i32** %fileflags121, align 8
  %cmp122 = icmp eq i32* %86, null
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.116
  store i32 3, i32* %status, align 4
  br label %FAILURE

if.end.125:                                       ; preds = %if.end.116
  %88 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles126 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %88, i32 0, i32 2
  %89 = load i16, i16* %nfiles126, align 2
  %conv127 = zext i16 %89 to i64
  %mul128 = mul i64 4, %conv127
  %call129 = call noalias i8* @malloc(i64 %mul128) #5
  %90 = bitcast i8* %call129 to i32*
  %91 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %bpl130 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %91, i32 0, i32 19
  store i32* %90, i32** %bpl130, align 8
  %cmp131 = icmp eq i32* %90, null
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.125
  store i32 3, i32* %status, align 4
  br label %FAILURE

if.end.134:                                       ; preds = %if.end.125
  %92 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles135 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %92, i32 0, i32 2
  %93 = load i16, i16* %nfiles135, align 2
  %conv136 = zext i16 %93 to i64
  %mul137 = mul i64 4, %conv136
  %call138 = call noalias i8* @malloc(i64 %mul137) #5
  %94 = bitcast i8* %call138 to i32*
  %95 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %rpl139 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %95, i32 0, i32 20
  store i32* %94, i32** %rpl139, align 8
  %cmp140 = icmp eq i32* %94, null
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.134
  store i32 3, i32* %status, align 4
  br label %FAILURE

if.end.143:                                       ; preds = %if.end.134
  store i16 0, i16* %i, align 2
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.215, %if.end.143
  %96 = load i16, i16* %i, align 2
  %conv145 = zext i16 %96 to i32
  %97 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles146 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %97, i32 0, i32 2
  %98 = load i16, i16* %nfiles146, align 2
  %conv147 = zext i16 %98 to i32
  %cmp148 = icmp slt i32 %conv145, %conv147
  br i1 %cmp148, label %for.body.150, label %for.end.217

for.body.150:                                     ; preds = %for.cond.144
  %99 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %100 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %foffset151 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %100, i32 0, i32 11
  %101 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %frecsize152 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %101, i32 0, i32 8
  %102 = load i32, i32* %frecsize152, align 4
  %103 = load i16, i16* %i, align 2
  %conv153 = zext i16 %103 to i32
  %call154 = call i32 @indexfile_position(%struct.ssifile_s* %99, %struct.ssioffset_s* %foffset151, i32 %102, i32 %conv153)
  %cmp155 = icmp ne i32 %call154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %for.body.150
  br label %FAILURE

if.end.158:                                       ; preds = %for.body.150
  %104 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flen159 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %104, i32 0, i32 5
  %105 = load i32, i32* %flen159, align 4
  %conv160 = zext i32 %105 to i64
  %mul161 = mul i64 1, %conv160
  %call162 = call noalias i8* @malloc(i64 %mul161) #5
  %106 = load i16, i16* %i, align 2
  %idxprom163 = zext i16 %106 to i64
  %107 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename164 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %107, i32 0, i32 16
  %108 = load i8**, i8*** %filename164, align 8
  %arrayidx165 = getelementptr inbounds i8*, i8** %108, i64 %idxprom163
  store i8* %call162, i8** %arrayidx165, align 8
  %cmp166 = icmp eq i8* %call162, null
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.158
  store i32 3, i32* %status, align 4
  br label %FAILURE

if.end.169:                                       ; preds = %if.end.158
  %109 = load i16, i16* %i, align 2
  %idxprom170 = zext i16 %109 to i64
  %110 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename171 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %110, i32 0, i32 16
  %111 = load i8**, i8*** %filename171, align 8
  %arrayidx172 = getelementptr inbounds i8*, i8** %111, i64 %idxprom170
  %112 = load i8*, i8** %arrayidx172, align 8
  %113 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flen173 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %113, i32 0, i32 5
  %114 = load i32, i32* %flen173, align 4
  %conv174 = zext i32 %114 to i64
  %115 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp175 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %115, i32 0, i32 0
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp175, align 8
  %call176 = call i64 @fread(i8* %112, i64 1, i64 %conv174, %struct._IO_FILE* %116)
  %117 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %flen177 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %117, i32 0, i32 5
  %118 = load i32, i32* %flen177, align 4
  %conv178 = zext i32 %118 to i64
  %cmp179 = icmp ne i64 %call176, %conv178
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.169
  br label %FAILURE

if.end.182:                                       ; preds = %if.end.169
  %119 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp183 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %119, i32 0, i32 0
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %fp183, align 8
  %121 = load i16, i16* %i, align 2
  %idxprom184 = zext i16 %121 to i64
  %122 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileformat185 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %122, i32 0, i32 17
  %123 = load i32*, i32** %fileformat185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %123, i64 %idxprom184
  %call187 = call i32 @read_i32(%struct._IO_FILE* %120, i32* %arrayidx186)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %if.end.182
  br label %FAILURE

if.end.190:                                       ; preds = %if.end.182
  %124 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp191 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %124, i32 0, i32 0
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp191, align 8
  %126 = load i16, i16* %i, align 2
  %idxprom192 = zext i16 %126 to i64
  %127 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileflags193 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %127, i32 0, i32 18
  %128 = load i32*, i32** %fileflags193, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %128, i64 %idxprom192
  %call195 = call i32 @read_i32(%struct._IO_FILE* %125, i32* %arrayidx194)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.end.198, label %if.then.197

if.then.197:                                      ; preds = %if.end.190
  br label %FAILURE

if.end.198:                                       ; preds = %if.end.190
  %129 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp199 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %129, i32 0, i32 0
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp199, align 8
  %131 = load i16, i16* %i, align 2
  %idxprom200 = zext i16 %131 to i64
  %132 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %bpl201 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %132, i32 0, i32 19
  %133 = load i32*, i32** %bpl201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %133, i64 %idxprom200
  %call203 = call i32 @read_i32(%struct._IO_FILE* %130, i32* %arrayidx202)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.end.206, label %if.then.205

if.then.205:                                      ; preds = %if.end.198
  br label %FAILURE

if.end.206:                                       ; preds = %if.end.198
  %134 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp207 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %134, i32 0, i32 0
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp207, align 8
  %136 = load i16, i16* %i, align 2
  %idxprom208 = zext i16 %136 to i64
  %137 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %rpl209 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %137, i32 0, i32 20
  %138 = load i32*, i32** %rpl209, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %138, i64 %idxprom208
  %call211 = call i32 @read_i32(%struct._IO_FILE* %135, i32* %arrayidx210)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %if.end.206
  br label %FAILURE

if.end.214:                                       ; preds = %if.end.206
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214
  %139 = load i16, i16* %i, align 2
  %inc216 = add i16 %139, 1
  store i16 %inc216, i16* %i, align 2
  br label %for.cond.144

for.end.217:                                      ; preds = %for.cond.144
  store i32 0, i32* %retval
  br label %return

FAILURE:                                          ; preds = %if.then.213, %if.then.205, %if.then.197, %if.then.189, %if.then.181, %if.then.168, %if.then.157, %if.then.142, %if.then.133, %if.then.124, %if.then.115, %if.then.100, %if.then.92, %if.then.86, %if.then.80, %if.then.74, %if.then.68, %if.then.63, %if.then.58, %if.then.53, %if.then.48, %if.then.43, %if.then.38, %if.then.33, %if.then.28, %if.then.14, %if.then.7, %if.then.2, %if.then
  %140 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  call void @SSIClose(%struct.ssifile_s* %140)
  %141 = load i32, i32* %status, align 4
  store i32 %141, i32* %retval
  br label %return

return:                                           ; preds = %FAILURE, %for.end.217
  %142 = load i32, i32* %retval
  ret i32 %142
}

; Function Attrs: nounwind uwtable
define i32 @SSIGetOffsetByName(%struct.ssifile_s* %sfp, i8* %key, i32* %ret_fh, %struct.ssioffset_s* %ret_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %key.addr = alloca i8*, align 8
  %ret_fh.addr = alloca i32*, align 8
  %ret_offset.addr = alloca %struct.ssioffset_s*, align 8
  %status = alloca i32, align 4
  %fnum = alloca i16, align 2
  %pkey = alloca i8*, align 8
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32* %ret_fh, i32** %ret_fh.addr, align 8
  store %struct.ssioffset_s* %ret_offset, %struct.ssioffset_s** %ret_offset.addr, align 8
  %0 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %2, i32 0, i32 6
  %3 = load i32, i32* %plen, align 4
  %4 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %poffset = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %4, i32 0, i32 12
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %precsize = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %5, i32 0, i32 9
  %6 = load i32, i32* %precsize, align 4
  %7 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %7, i32 0, i32 3
  %8 = load i32, i32* %nprimary, align 4
  %call = call i32 @binary_search(%struct.ssifile_s* %0, i8* %1, i32 %3, %struct.ssioffset_s* %poffset, i32 %6, i32 %8)
  store i32 %call, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @read_i16(%struct._IO_FILE* %11, i16* %fnum)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load i16, i16* %fnum, align 2
  %conv = zext i16 %12 to i32
  %13 = load i32*, i32** %ret_fh.addr, align 8
  store i32 %conv, i32* %13, align 4
  %14 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp3 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp3, align 8
  %16 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %16, i32 0, i32 15
  %17 = load i8, i8* %smode, align 1
  %18 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %call4 = call i32 @read_offset(%struct._IO_FILE* %15, i8 signext %17, %struct.ssioffset_s* %18)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %19, 2
  br i1 %cmp8, label %if.then.10, label %if.else.39

if.then.10:                                       ; preds = %if.else
  %20 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %20, i32 0, i32 4
  %21 = load i32, i32* %nsecondary, align 4
  %cmp11 = icmp ugt i32 %21, 0
  br i1 %cmp11, label %if.then.13, label %if.end.38

if.then.13:                                       ; preds = %if.then.10
  %22 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %23 = load i8*, i8** %key.addr, align 8
  %24 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %slen = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %24, i32 0, i32 7
  %25 = load i32, i32* %slen, align 4
  %26 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %soffset = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %26, i32 0, i32 13
  %27 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %srecsize = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %27, i32 0, i32 10
  %28 = load i32, i32* %srecsize, align 4
  %29 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nsecondary14 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %29, i32 0, i32 4
  %30 = load i32, i32* %nsecondary14, align 4
  %call15 = call i32 @binary_search(%struct.ssifile_s* %22, i8* %23, i32 %25, %struct.ssioffset_s* %soffset, i32 %28, i32 %30)
  store i32 %call15, i32* %status, align 4
  %31 = load i32, i32* %status, align 4
  %cmp16 = icmp ne i32 %31, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.13
  %32 = load i32, i32* %status, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.13
  %33 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen20 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %33, i32 0, i32 6
  %34 = load i32, i32* %plen20, align 4
  %conv21 = zext i32 %34 to i64
  %mul = mul i64 1, %conv21
  %call22 = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call22, i8** %pkey, align 8
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  store i32 3, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.19
  %35 = load i8*, i8** %pkey, align 8
  %36 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen27 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %36, i32 0, i32 6
  %37 = load i32, i32* %plen27, align 4
  %conv28 = zext i32 %37 to i64
  %38 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp29 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %38, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp29, align 8
  %call30 = call i64 @fread(i8* %35, i64 1, i64 %conv28, %struct._IO_FILE* %39)
  %40 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen31 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %40, i32 0, i32 6
  %41 = load i32, i32* %plen31, align 4
  %conv32 = zext i32 %41 to i64
  %cmp33 = icmp ne i64 %call30, %conv32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.26
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.26
  %42 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %43 = load i8*, i8** %pkey, align 8
  %44 = load i32*, i32** %ret_fh.addr, align 8
  %45 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %call37 = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %42, i8* %43, i32* %44, %struct.ssioffset_s* %45)
  store i32 %call37, i32* %status, align 4
  %46 = load i8*, i8** %pkey, align 8
  call void @free(i8* %46) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.then.10
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* %retval
  br label %return

if.else.39:                                       ; preds = %if.else
  %48 = load i32, i32* %status, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %if.else.39, %if.end.38, %if.then.35, %if.then.25, %if.then.18, %if.end.7, %if.then.6, %if.then.2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @binary_search(%struct.ssifile_s* %sfp, i8* %key, i32 %klen, %struct.ssioffset_s* %base, i32 %recsize, i32 %maxidx) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i32, align 4
  %base.addr = alloca %struct.ssioffset_s*, align 8
  %recsize.addr = alloca i32, align 4
  %maxidx.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %mid = alloca i32, align 4
  %cmp = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen, i32* %klen.addr, align 4
  store %struct.ssioffset_s* %base, %struct.ssioffset_s** %base.addr, align 8
  store i32 %recsize, i32* %recsize.addr, align 4
  store i32 %maxidx, i32* %maxidx.addr, align 4
  %0 = load i32, i32* %maxidx.addr, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %klen.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 1, %conv
  %call = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call, i8** %name, align 8
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %left, align 4
  %2 = load i32, i32* %maxidx.addr, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %right, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.5, %if.end.43
  %3 = load i32, i32* %left, align 4
  %4 = load i32, i32* %right, align 4
  %add = add i32 %3, %4
  %div = udiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %6 = load %struct.ssioffset_s*, %struct.ssioffset_s** %base.addr, align 8
  %7 = load i32, i32* %recsize.addr, align 4
  %8 = load i32, i32* %mid, align 4
  %call6 = call i32 @indexfile_position(%struct.ssifile_s* %5, %struct.ssioffset_s* %6, i32 %7, i32 %8)
  store i32 %call6, i32* %status, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  %9 = load i8*, i8** %name, align 8
  call void @free(i8* %9) #5
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %11 = load i8*, i8** %name, align 8
  %12 = load i32, i32* %klen.addr, align 4
  %conv11 = sext i32 %12 to i64
  %13 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i64 @fread(i8* %11, i64 1, i64 %conv11, %struct._IO_FILE* %14)
  %15 = load i32, i32* %klen.addr, align 4
  %conv13 = sext i32 %15 to i64
  %cmp14 = icmp ne i64 %call12, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  %16 = load i8*, i8** %name, align 8
  call void @free(i8* %16) #5
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %17 = load i8*, i8** %name, align 8
  %18 = load i8*, i8** %key.addr, align 8
  %call18 = call i32 @strcmp(i8* %17, i8* %18) #6
  store i32 %call18, i32* %cmp, align 4
  %19 = load i32, i32* %cmp, align 4
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.17
  br label %while.end

if.else:                                          ; preds = %if.end.17
  %20 = load i32, i32* %left, align 4
  %21 = load i32, i32* %right, align 4
  %cmp22 = icmp uge i32 %20, %21
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else
  %22 = load i8*, i8** %name, align 8
  call void @free(i8* %22) #5
  store i32 2, i32* %retval
  br label %return

if.else.25:                                       ; preds = %if.else
  %23 = load i32, i32* %cmp, align 4
  %cmp26 = icmp slt i32 %23, 0
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.25
  %24 = load i32, i32* %mid, align 4
  %add29 = add i32 %24, 1
  store i32 %add29, i32* %left, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %if.else.25
  %25 = load i32, i32* %cmp, align 4
  %cmp31 = icmp sgt i32 %25, 0
  br i1 %cmp31, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %if.else.30
  %26 = load i32, i32* %mid, align 4
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.then.33
  %27 = load i8*, i8** %name, align 8
  call void @free(i8* %27) #5
  store i32 2, i32* %retval
  br label %return

if.else.37:                                       ; preds = %if.then.33
  %28 = load i32, i32* %mid, align 4
  %sub38 = sub i32 %28, 1
  store i32 %sub38, i32* %right, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else.30
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.28
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %while.body

while.end:                                        ; preds = %if.then.21
  %29 = load i8*, i8** %name, align 8
  call void @free(i8* %29) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.36, %if.then.24, %if.then.16, %if.then.9, %if.then.4, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @read_i16(%struct._IO_FILE* %fp, i16* %ret_result) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ret_result.addr = alloca i16*, align 8
  %result = alloca i16, align 2
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i16* %ret_result, i16** %ret_result.addr, align 8
  %0 = bitcast i16* %result to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 2, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %result, align 2
  %call1 = call zeroext i16 @sre_ntoh16(i16 zeroext %2)
  %3 = load i16*, i16** %ret_result.addr, align 8
  store i16 %call1, i16* %3, align 2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @read_offset(%struct._IO_FILE* %fp, i8 signext %mode, %struct.ssioffset_s* %ret_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %mode.addr = alloca i8, align 1
  %ret_offset.addr = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8 %mode, i8* %mode.addr, align 1
  store %struct.ssioffset_s* %ret_offset, %struct.ssioffset_s** %ret_offset.addr, align 8
  %0 = load i8, i8* %mode.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %mode2 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %1, i32 0, i32 0
  store i8 0, i8* %mode2, align 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %3, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %call = call i32 @read_i32(%struct._IO_FILE* %2, i32* %i32)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  %4 = load i8, i8* %mode.addr, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  br i1 %cmp5, label %if.then.7, label %if.else.14

if.then.7:                                        ; preds = %if.else
  %5 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %mode8 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %5, i32 0, i32 0
  store i8 1, i8* %mode8, align 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %off9 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %7, i32 0, i32 1
  %i64 = bitcast %union.anon* %off9 to i64*
  %call10 = call i32 @read_i64(%struct._IO_FILE* %6, i64* %i64)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.15

if.else.14:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.14, %if.then.12, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %sfp, i32 %n, i32* %ret_fh, %struct.ssioffset_s* %ret_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %n.addr = alloca i32, align 4
  %ret_fh.addr = alloca i32*, align 8
  %ret_offset.addr = alloca %struct.ssioffset_s*, align 8
  %fnum = alloca i16, align 2
  %pkey = alloca i8*, align 8
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ret_fh, i32** %ret_fh.addr, align 8
  store %struct.ssioffset_s* %ret_offset, %struct.ssioffset_s** %ret_offset.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %1, i32 0, i32 3
  %2 = load i32, i32* %nprimary, align 4
  %cmp = icmp uge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %4 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %poffset = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %4, i32 0, i32 12
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %precsize = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %5, i32 0, i32 9
  %6 = load i32, i32* %precsize, align 4
  %7 = load i32, i32* %n.addr, align 4
  %call = call i32 @indexfile_position(%struct.ssifile_s* %3, %struct.ssioffset_s* %poffset, i32 %6, i32 %7)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 8, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %8, i32 0, i32 6
  %9 = load i32, i32* %plen, align 4
  %conv = zext i32 %9 to i64
  %mul = mul i64 1, %conv
  %call4 = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call4, i8** %pkey, align 8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store i32 3, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %10 = load i8*, i8** %pkey, align 8
  %11 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen9 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %11, i32 0, i32 6
  %12 = load i32, i32* %plen9, align 4
  %conv10 = zext i32 %12 to i64
  %13 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i64 @fread(i8* %10, i64 1, i64 %conv10, %struct._IO_FILE* %14)
  %15 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %plen12 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %15, i32 0, i32 6
  %16 = load i32, i32* %plen12, align 4
  %conv13 = zext i32 %16 to i64
  %cmp14 = icmp ne i64 %call11, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.8
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.8
  %17 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp18 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp18, align 8
  %call19 = call i32 @read_i16(%struct._IO_FILE* %18, i16* %fnum)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %19 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp22 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %19, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8
  %21 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %21, i32 0, i32 15
  %22 = load i8, i8* %smode, align 1
  %23 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %call23 = call i32 @read_offset(%struct._IO_FILE* %20, i8 signext %22, %struct.ssioffset_s* %23)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %24 = load i16, i16* %fnum, align 2
  %conv27 = zext i16 %24 to i32
  %25 = load i32*, i32** %ret_fh.addr, align 8
  store i32 %conv27, i32* %25, align 4
  %26 = load i8*, i8** %pkey, align 8
  call void @free(i8* %26) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.20, %if.then.16, %if.then.7, %if.then.2, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %len, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %base.addr = alloca %struct.ssioffset_s*, align 8
  %len.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %pos = alloca %struct.ssioffset_s, align 8
  %status = alloca i32, align 4
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store %struct.ssioffset_s* %base, %struct.ssioffset_s** %base.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.ssioffset_s*, %struct.ssioffset_s** %base.addr, align 8
  %mode = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %0, i32 0, i32 0
  %1 = load i8, i8* %mode, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mode2 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %pos, i32 0, i32 0
  store i8 0, i8* %mode2, align 1
  %2 = load %struct.ssioffset_s*, %struct.ssioffset_s** %base.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %2, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %3 = load i32, i32* %i32, align 4
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* %len.addr, align 4
  %mul = mul i32 %4, %5
  %add = add i32 %3, %mul
  %off3 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %pos, i32 0, i32 1
  %i324 = bitcast %union.anon* %off3 to i32*
  store i32 %add, i32* %i324, align 4
  br label %if.end.18

if.else:                                          ; preds = %entry
  %6 = load %struct.ssioffset_s*, %struct.ssioffset_s** %base.addr, align 8
  %mode5 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %6, i32 0, i32 0
  %7 = load i8, i8* %mode5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  br i1 %cmp7, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %if.else
  %mode10 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %pos, i32 0, i32 0
  store i8 1, i8* %mode10, align 1
  %8 = load %struct.ssioffset_s*, %struct.ssioffset_s** %base.addr, align 8
  %off11 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %8, i32 0, i32 1
  %i64 = bitcast %union.anon* %off11 to i64*
  %9 = load i64, i64* %i64, align 8
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %len.addr, align 4
  %mul12 = mul i32 %10, %11
  %conv13 = zext i32 %mul12 to i64
  %add14 = add i64 %9, %conv13
  %off15 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %pos, i32 0, i32 1
  %i6416 = bitcast %union.anon* %off15 to i64*
  store i64 %add14, i64* %i6416, align 8
  br label %if.end

if.else.17:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %12 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @SSISetFilePosition(%struct._IO_FILE* %13, %struct.ssioffset_s* %pos)
  store i32 %call, i32* %status, align 4
  %cmp19 = icmp ne i32 %call, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.17
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @SSIGetSubseqOffset(%struct.ssifile_s* %sfp, i8* %key, i32 %requested_start, i32* %ret_fh, %struct.ssioffset_s* %record_offset, %struct.ssioffset_s* %data_offset, i32* %ret_actual_start) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %key.addr = alloca i8*, align 8
  %requested_start.addr = alloca i32, align 4
  %ret_fh.addr = alloca i32*, align 8
  %record_offset.addr = alloca %struct.ssioffset_s*, align 8
  %data_offset.addr = alloca %struct.ssioffset_s*, align 8
  %ret_actual_start.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %len = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %requested_start, i32* %requested_start.addr, align 4
  store i32* %ret_fh, i32** %ret_fh.addr, align 8
  store %struct.ssioffset_s* %record_offset, %struct.ssioffset_s** %record_offset.addr, align 8
  store %struct.ssioffset_s* %data_offset, %struct.ssioffset_s** %data_offset.addr, align 8
  store i32* %ret_actual_start, i32** %ret_actual_start.addr, align 8
  %0 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32*, i32** %ret_fh.addr, align 8
  %3 = load %struct.ssioffset_s*, %struct.ssioffset_s** %record_offset.addr, align 8
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %0, i8* %1, i32* %2, %struct.ssioffset_s* %3)
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %ret_fh.addr, align 8
  %7 = load i32, i32* %6, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileflags = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %8, i32 0, i32 18
  %9 = load i32*, i32** %fileflags, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 10, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %11 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %11, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %13 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %13, i32 0, i32 15
  %14 = load i8, i8* %smode, align 1
  %15 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %call3 = call i32 @read_offset(%struct._IO_FILE* %12, i8 signext %14, %struct.ssioffset_s* %15)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %16 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp7 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %16, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp7, align 8
  %call8 = call i32 @read_i32(%struct._IO_FILE* %17, i32* %len)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %18 = load i32*, i32** %ret_fh.addr, align 8
  %19 = load i32, i32* %18, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %rpl = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %20, i32 0, i32 20
  %21 = load i32*, i32** %rpl, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  store i32 %22, i32* %r, align 4
  %23 = load i32*, i32** %ret_fh.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %bpl = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %25, i32 0, i32 19
  %26 = load i32*, i32** %bpl, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 %idxprom14
  %27 = load i32, i32* %arrayidx15, align 4
  store i32 %27, i32* %b, align 4
  %28 = load i32, i32* %requested_start.addr, align 4
  store i32 %28, i32* %i, align 4
  %29 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %29, 1
  %30 = load i32, i32* %r, align 4
  %div = sdiv i32 %sub, %30
  store i32 %div, i32* %l, align 4
  %31 = load i32, i32* %r, align 4
  %cmp16 = icmp eq i32 %31, 0
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %32 = load i32, i32* %b, align 4
  %cmp17 = icmp eq i32 %32, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.11
  store i32 10, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  %33 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %33, 0
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.19
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %len, align 4
  %cmp22 = icmp ugt i32 %34, %35
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.21, %if.end.19
  store i32 11, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.21
  %36 = load i32, i32* %b, align 4
  %37 = load i32, i32* %r, align 4
  %add = add nsw i32 %37, 1
  %cmp25 = icmp eq i32 %36, %add
  br i1 %cmp25, label %if.then.26, label %if.else.54

if.then.26:                                       ; preds = %if.end.24
  %38 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode27 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %38, i32 0, i32 15
  %39 = load i8, i8* %smode27, align 1
  %conv = sext i8 %39 to i32
  %cmp28 = icmp eq i32 %conv, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.26
  %40 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %mode = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %40, i32 0, i32 0
  store i8 0, i8* %mode, align 1
  %41 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %41, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %42 = load i32, i32* %i32, align 4
  %43 = load i32, i32* %l, align 4
  %44 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %43, %44
  %add31 = add i32 %42, %mul
  %45 = load i32, i32* %i, align 4
  %sub32 = sub nsw i32 %45, 1
  %46 = load i32, i32* %r, align 4
  %rem = srem i32 %sub32, %46
  %add33 = add i32 %add31, %rem
  %47 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off34 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %47, i32 0, i32 1
  %i3235 = bitcast %union.anon* %off34 to i32*
  store i32 %add33, i32* %i3235, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.then.26
  %48 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode36 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %48, i32 0, i32 15
  %49 = load i8, i8* %smode36, align 1
  %conv37 = sext i8 %49 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %if.else
  %50 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %mode41 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %50, i32 0, i32 0
  store i8 1, i8* %mode41, align 1
  %51 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off42 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %51, i32 0, i32 1
  %i64 = bitcast %union.anon* %off42 to i64*
  %52 = load i64, i64* %i64, align 8
  %53 = load i32, i32* %l, align 4
  %54 = load i32, i32* %b, align 4
  %mul43 = mul nsw i32 %53, %54
  %conv44 = sext i32 %mul43 to i64
  %add45 = add i64 %52, %conv44
  %55 = load i32, i32* %i, align 4
  %sub46 = sub nsw i32 %55, 1
  %56 = load i32, i32* %r, align 4
  %rem47 = srem i32 %sub46, %56
  %conv48 = sext i32 %rem47 to i64
  %add49 = add i64 %add45, %conv48
  %57 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off50 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %57, i32 0, i32 1
  %i6451 = bitcast %union.anon* %off50 to i64*
  store i64 %add49, i64* %i6451, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.40, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.30
  %58 = load i32, i32* %requested_start.addr, align 4
  %59 = load i32*, i32** %ret_actual_start.addr, align 8
  store i32 %58, i32* %59, align 4
  br label %if.end.85

if.else.54:                                       ; preds = %if.end.24
  %60 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode55 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %60, i32 0, i32 15
  %61 = load i8, i8* %smode55, align 1
  %conv56 = sext i8 %61 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.67

if.then.59:                                       ; preds = %if.else.54
  %62 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %mode60 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %62, i32 0, i32 0
  store i8 0, i8* %mode60, align 1
  %63 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off61 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %63, i32 0, i32 1
  %i3262 = bitcast %union.anon* %off61 to i32*
  %64 = load i32, i32* %i3262, align 4
  %65 = load i32, i32* %l, align 4
  %66 = load i32, i32* %b, align 4
  %mul63 = mul nsw i32 %65, %66
  %add64 = add i32 %64, %mul63
  %67 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off65 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %67, i32 0, i32 1
  %i3266 = bitcast %union.anon* %off65 to i32*
  store i32 %add64, i32* %i3266, align 4
  br label %if.end.82

if.else.67:                                       ; preds = %if.else.54
  %68 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %smode68 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %68, i32 0, i32 15
  %69 = load i8, i8* %smode68, align 1
  %conv69 = sext i8 %69 to i32
  %cmp70 = icmp eq i32 %conv69, 1
  br i1 %cmp70, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %if.else.67
  %70 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %mode73 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %70, i32 0, i32 0
  store i8 1, i8* %mode73, align 1
  %71 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off74 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %71, i32 0, i32 1
  %i6475 = bitcast %union.anon* %off74 to i64*
  %72 = load i64, i64* %i6475, align 8
  %73 = load i32, i32* %l, align 4
  %74 = load i32, i32* %b, align 4
  %mul76 = mul nsw i32 %73, %74
  %conv77 = sext i32 %mul76 to i64
  %add78 = add i64 %72, %conv77
  %75 = load %struct.ssioffset_s*, %struct.ssioffset_s** %data_offset.addr, align 8
  %off79 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %75, i32 0, i32 1
  %i6480 = bitcast %union.anon* %off79 to i64*
  store i64 %add78, i64* %i6480, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.72, %if.else.67
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.59
  %76 = load i32, i32* %l, align 4
  %77 = load i32, i32* %r, align 4
  %mul83 = mul nsw i32 %76, %77
  %add84 = add nsw i32 1, %mul83
  %78 = load i32*, i32** %ret_actual_start.addr, align 8
  store i32 %add84, i32* %78, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.82, %if.end.53
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.23, %if.then.18, %if.then.10, %if.then.5, %if.then.1, %if.then
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @read_i32(%struct._IO_FILE* %fp, i32* %ret_result) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ret_result.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %ret_result, i32** %ret_result.addr, align 8
  %0 = bitcast i32* %result to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %result, align 4
  %call1 = call i32 @sre_ntoh32(i32 %2)
  %3 = load i32*, i32** %ret_result.addr, align 8
  store i32 %call1, i32* %3, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @SSISetFilePosition(%struct._IO_FILE* %fp, %struct.ssioffset_s* %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.ssioffset_s* %offset, %struct.ssioffset_s** %offset.addr, align 8
  %0 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %mode = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %0, i32 0, i32 0
  %1 = load i8, i8* %mode, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %3, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %4 = load i32, i32* %i32, align 4
  %conv2 = zext i32 %4 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %2, i64 %conv2, i32 0)
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.else, %if.then.5
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @SSIFileInfo(%struct.ssifile_s* %sfp, i32 %fh, i8** %ret_filename, i32* %ret_format) #0 {
entry:
  %retval = alloca i32, align 4
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %fh.addr = alloca i32, align 4
  %ret_filename.addr = alloca i8**, align 8
  %ret_format.addr = alloca i32*, align 8
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  store i32 %fh, i32* %fh.addr, align 4
  store i8** %ret_filename, i8*** %ret_filename.addr, align 8
  store i32* %ret_format, i32** %ret_format.addr, align 8
  %0 = load i32, i32* %fh.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %fh.addr, align 4
  %2 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %2, i32 0, i32 2
  %3 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %3 to i32
  %cmp1 = icmp sge i32 %1, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %fh.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %5, i32 0, i32 16
  %6 = load i8**, i8*** %filename, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i8**, i8*** %ret_filename.addr, align 8
  store i8* %7, i8** %8, align 8
  %9 = load i32, i32* %fh.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileformat = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %10, i32 0, i32 17
  %11 = load i32*, i32** %fileformat, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32*, i32** %ret_format.addr, align 8
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @SSIClose(%struct.ssifile_s* %sfp) #0 {
entry:
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  %0 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %cmp = icmp ne %struct.ssifile_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  call void @clear_ssifile(%struct.ssifile_s* %1)
  %2 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp ne %struct._IO_FILE* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fp3 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp3, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %7 = bitcast %struct.ssifile_s* %6 to i8*
  call void @free(i8* %7) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_ssifile(%struct.ssifile_s* %sfp) #0 {
entry:
  %sfp.addr = alloca %struct.ssifile_s*, align 8
  %i = alloca i32, align 4
  store %struct.ssifile_s* %sfp, %struct.ssifile_s** %sfp.addr, align 8
  %0 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %0, i32 0, i32 16
  %1 = load i8**, i8*** %filename, align 8
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %3, i32 0, i32 2
  %4 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %4 to i32
  %cmp1 = icmp slt i32 %2, %conv
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename3 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %6, i32 0, i32 16
  %7 = load i8**, i8*** %filename3, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %cmp4 = icmp ne i8* %8, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename8 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %10, i32 0, i32 16
  %11 = load i8**, i8*** %filename8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx9, align 8
  call void @free(i8* %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %filename10 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %14, i32 0, i32 16
  %15 = load i8**, i8*** %filename10, align 8
  %16 = bitcast i8** %15 to i8*
  call void @free(i8* %16) #5
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  %17 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileformat = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %17, i32 0, i32 17
  %18 = load i32*, i32** %fileformat, align 8
  %cmp12 = icmp ne i32* %18, null
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %19 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileformat15 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %19, i32 0, i32 17
  %20 = load i32*, i32** %fileformat15, align 8
  %21 = bitcast i32* %20 to i8*
  call void @free(i8* %21) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %22 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileflags = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %22, i32 0, i32 18
  %23 = load i32*, i32** %fileflags, align 8
  %cmp17 = icmp ne i32* %23, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %24 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %fileflags20 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %24, i32 0, i32 18
  %25 = load i32*, i32** %fileflags20, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %27 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %bpl = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %27, i32 0, i32 19
  %28 = load i32*, i32** %bpl, align 8
  %cmp22 = icmp ne i32* %28, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %29 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %bpl25 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %29, i32 0, i32 19
  %30 = load i32*, i32** %bpl25, align 8
  %31 = bitcast i32* %30 to i8*
  call void @free(i8* %31) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %32 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %rpl = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %32, i32 0, i32 20
  %33 = load i32*, i32** %rpl, align 8
  %cmp27 = icmp ne i32* %33, null
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %34 = load %struct.ssifile_s*, %struct.ssifile_s** %sfp.addr, align 8
  %rpl30 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %34, i32 0, i32 20
  %35 = load i32*, i32** %rpl30, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.26
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @SSIRecommendMode(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.ssiindex_s* @SSICreateIndex(i32 %mode) #0 {
entry:
  %retval = alloca %struct.ssiindex_s*, align 8
  %mode.addr = alloca i32, align 4
  %g = alloca %struct.ssiindex_s*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.ssiindex_s* null, %struct.ssiindex_s** %g, align 8
  %call = call noalias i8* @malloc(i64 120) #5
  %0 = bitcast i8* %call to %struct.ssiindex_s*
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %g, align 8
  %cmp = icmp eq %struct.ssiindex_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %FAILURE

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %smode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %2, i32 0, i32 0
  store i32 %1, i32* %smode, align 4
  %3 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %imode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %3, i32 0, i32 1
  store i32 0, i32* %imode, align 4
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %external = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %4, i32 0, i32 2
  store i32 0, i32* %external, align 4
  %5 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %max_ram = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %5, i32 0, i32 3
  store i32 200, i32* %max_ram, align 4
  %6 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %filenames = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %7, i32 0, i32 4
  store i8** null, i8*** %filenames, align 8
  %8 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %fileformat = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %8, i32 0, i32 5
  store i32* null, i32** %fileformat, align 8
  %9 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %bpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %9, i32 0, i32 6
  store i32* null, i32** %bpl, align 8
  %10 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %rpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %10, i32 0, i32 7
  store i32* null, i32** %rpl, align 8
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %flen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 8
  store i32 0, i32* %flen, align 4
  %12 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %nfiles = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %12, i32 0, i32 9
  store i16 0, i16* %nfiles, align 2
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %pkeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 10
  store %struct.ssipkey_s* null, %struct.ssipkey_s** %pkeys, align 8
  %14 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %plen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %14, i32 0, i32 11
  store i32 0, i32* %plen, align 4
  %15 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %nprimary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %15, i32 0, i32 12
  store i32 0, i32* %nprimary, align 4
  %16 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %16, i32 0, i32 13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %ptmpfile, align 8
  %17 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %ptmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %17, i32 0, i32 14
  store %struct._IO_FILE* null, %struct._IO_FILE** %ptmp, align 8
  %18 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %skeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %18, i32 0, i32 15
  store %struct.ssiskey_s* null, %struct.ssiskey_s** %skeys, align 8
  %19 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %slen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %19, i32 0, i32 16
  store i32 0, i32* %slen, align 4
  %20 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %nsecondary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %20, i32 0, i32 17
  store i32 0, i32* %nsecondary, align 4
  %21 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %stmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %21, i32 0, i32 18
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %stmpfile, align 8
  %22 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %stmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %22, i32 0, i32 19
  store %struct._IO_FILE* null, %struct._IO_FILE** %stmp, align 8
  %call4 = call noalias i8* @malloc(i64 80) #5
  %23 = bitcast i8* %call4 to i8**
  %24 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %filenames5 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %24, i32 0, i32 4
  store i8** %23, i8*** %filenames5, align 8
  %cmp6 = icmp eq i8** %23, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  br label %FAILURE

if.end.8:                                         ; preds = %if.end.3
  %call9 = call noalias i8* @malloc(i64 40) #5
  %25 = bitcast i8* %call9 to i32*
  %26 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %fileformat10 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %26, i32 0, i32 5
  store i32* %25, i32** %fileformat10, align 8
  %cmp11 = icmp eq i32* %25, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  br label %FAILURE

if.end.13:                                        ; preds = %if.end.8
  %call14 = call noalias i8* @malloc(i64 40) #5
  %27 = bitcast i8* %call14 to i32*
  %28 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %bpl15 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %28, i32 0, i32 6
  store i32* %27, i32** %bpl15, align 8
  %cmp16 = icmp eq i32* %27, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  br label %FAILURE

if.end.18:                                        ; preds = %if.end.13
  %call19 = call noalias i8* @malloc(i64 40) #5
  %29 = bitcast i8* %call19 to i32*
  %30 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %rpl20 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %30, i32 0, i32 7
  store i32* %29, i32** %rpl20, align 8
  %cmp21 = icmp eq i32* %29, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  br label %FAILURE

if.end.23:                                        ; preds = %if.end.18
  %call24 = call noalias i8* @malloc(i64 5600) #5
  %31 = bitcast i8* %call24 to %struct.ssipkey_s*
  %32 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %pkeys25 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %32, i32 0, i32 10
  store %struct.ssipkey_s* %31, %struct.ssipkey_s** %pkeys25, align 8
  %cmp26 = icmp eq %struct.ssipkey_s* %31, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %FAILURE

if.end.28:                                        ; preds = %if.end.23
  %call29 = call noalias i8* @malloc(i64 5600) #5
  %33 = bitcast i8* %call29 to %struct.ssiskey_s*
  %34 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  %skeys30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %34, i32 0, i32 15
  store %struct.ssiskey_s* %33, %struct.ssiskey_s** %skeys30, align 8
  %cmp31 = icmp eq %struct.ssiskey_s* %33, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  br label %FAILURE

if.end.33:                                        ; preds = %if.end.28
  %35 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  store %struct.ssiindex_s* %35, %struct.ssiindex_s** %retval
  br label %return

FAILURE:                                          ; preds = %if.then.32, %if.then.27, %if.then.22, %if.then.17, %if.then.12, %if.then.7, %if.then
  %36 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g, align 8
  call void @SSIFreeIndex(%struct.ssiindex_s* %36)
  store %struct.ssiindex_s* null, %struct.ssiindex_s** %retval
  br label %return

return:                                           ; preds = %FAILURE, %if.end.33
  %37 = load %struct.ssiindex_s*, %struct.ssiindex_s** %retval
  ret %struct.ssiindex_s* %37
}

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @SSIFreeIndex(%struct.ssiindex_s* %g) #0 {
entry:
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %i = alloca i32, align 4
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  %0 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %cmp = icmp ne %struct.ssiindex_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %1 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %1, i32 0, i32 2
  %2 = load i32, i32* %external, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %4, i32 0, i32 12
  %5 = load i32, i32* %nprimary, align 4
  %cmp3 = icmp ult i32 %3, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %7, i32 0, i32 10
  %8 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys, align 8
  %arrayidx = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %8, i64 %idxprom
  %key = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %key, align 8
  call void @free(i8* %9) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %12, i32 0, i32 17
  %13 = load i32, i32* %nsecondary, align 4
  %cmp5 = icmp ult i32 %11, %13
  br i1 %cmp5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %15, i32 0, i32 15
  %16 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys, align 8
  %arrayidx8 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %16, i64 %idxprom7
  %key9 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx8, i32 0, i32 0
  %17 = load i8*, i8** %key9, align 8
  call void @free(i8* %17) #5
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end.12
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary14 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %20, i32 0, i32 17
  %21 = load i32, i32* %nsecondary14, align 4
  %cmp15 = icmp ult i32 %19, %21
  br i1 %cmp15, label %for.body.16, label %for.end.22

for.body.16:                                      ; preds = %for.cond.13
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys18 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %23, i32 0, i32 15
  %24 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys18, align 8
  %arrayidx19 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %24, i64 %idxprom17
  %pkey = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx19, i32 0, i32 1
  %25 = load i8*, i8** %pkey, align 8
  call void @free(i8* %25) #5
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.16
  %26 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  %27 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys23 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %27, i32 0, i32 10
  %28 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys23, align 8
  %cmp24 = icmp ne %struct.ssipkey_s* %28, null
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %for.end.22
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys26 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 10
  %30 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys26, align 8
  %31 = bitcast %struct.ssipkey_s* %30 to i8*
  call void @free(i8* %31) #5
  br label %if.end

if.end:                                           ; preds = %if.then.25, %for.end.22
  %32 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys27 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %32, i32 0, i32 15
  %33 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys27, align 8
  %cmp28 = icmp ne %struct.ssiskey_s* %33, null
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end
  %34 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %34, i32 0, i32 15
  %35 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys30, align 8
  %36 = bitcast %struct.ssiskey_s* %35 to i8*
  call void @free(i8* %36) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end
  br label %if.end.43

if.else:                                          ; preds = %if.then
  %37 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %37, i32 0, i32 14
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp, align 8
  %cmp32 = icmp ne %struct._IO_FILE* %38, null
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else
  %39 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp34 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %39, i32 0, i32 14
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp34, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else
  %41 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %41, i32 0, i32 19
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %stmp, align 8
  %cmp36 = icmp ne %struct._IO_FILE* %42, null
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.35
  %43 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp38 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %43, i32 0, i32 19
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stmp38, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %44)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.35
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 13
  %46 = load i8*, i8** %ptmpfile, align 8
  %call41 = call i32 @remove(i8* %46) #5
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 18
  %48 = load i8*, i8** %stmpfile, align 8
  %call42 = call i32 @remove(i8* %48) #5
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.40, %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.50, %if.end.43
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %50, i32 0, i32 9
  %51 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %51 to i32
  %cmp45 = icmp slt i32 %49, %conv
  br i1 %cmp45, label %for.body.47, label %for.end.52

for.body.47:                                      ; preds = %for.cond.44
  %52 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %52 to i64
  %53 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %53, i32 0, i32 4
  %54 = load i8**, i8*** %filenames, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %54, i64 %idxprom48
  %55 = load i8*, i8** %arrayidx49, align 8
  call void @free(i8* %55) #5
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.47
  %56 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %56, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.44

for.end.52:                                       ; preds = %for.cond.44
  %57 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames53 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %57, i32 0, i32 4
  %58 = load i8**, i8*** %filenames53, align 8
  %cmp54 = icmp ne i8** %58, null
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %for.end.52
  %59 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames57 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %59, i32 0, i32 4
  %60 = load i8**, i8*** %filenames57, align 8
  %61 = bitcast i8** %60 to i8*
  call void @free(i8* %61) #5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %for.end.52
  %62 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %62, i32 0, i32 5
  %63 = load i32*, i32** %fileformat, align 8
  %cmp59 = icmp ne i32* %63, null
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.58
  %64 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat62 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %64, i32 0, i32 5
  %65 = load i32*, i32** %fileformat62, align 8
  %66 = bitcast i32* %65 to i8*
  call void @free(i8* %66) #5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.58
  %67 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %67, i32 0, i32 6
  %68 = load i32*, i32** %bpl, align 8
  %cmp64 = icmp ne i32* %68, null
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.63
  %69 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl67 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %69, i32 0, i32 6
  %70 = load i32*, i32** %bpl67, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.63
  %72 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %72, i32 0, i32 7
  %73 = load i32*, i32** %rpl, align 8
  %cmp69 = icmp ne i32* %73, null
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.68
  %74 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl72 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %74, i32 0, i32 7
  %75 = load i32*, i32** %rpl72, align 8
  %76 = bitcast i32* %75 to i8*
  call void @free(i8* %76) #5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.68
  %77 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %78 = bitcast %struct.ssiindex_s* %77 to i8*
  call void @free(i8* %78) #5
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SSIGetFilePosition(%struct._IO_FILE* %fp, i32 %mode, %struct.ssioffset_s* %ret_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %mode.addr = alloca i32, align 4
  %ret_offset.addr = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.ssioffset_s* %ret_offset, %struct.ssioffset_s** %ret_offset.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %mode1 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %1, i32 0, i32 0
  store i8 0, i8* %mode1, align 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %2)
  %conv = trunc i64 %call to i32
  %3 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %3, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  store i32 %conv, i32* %i32, align 4
  %4 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %off2 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %4, i32 0, i32 1
  %i323 = bitcast %union.anon* %off2 to i32*
  %5 = load i32, i32* %i323, align 4
  %cmp4 = icmp eq i32 %5, -1
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.12

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %mode.addr, align 4
  %cmp7 = icmp ne i32 %6, 1
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  call void @abort() #7
  unreachable

if.else.10:                                       ; preds = %if.else
  %7 = load %struct.ssioffset_s*, %struct.ssioffset_s** %ret_offset.addr, align 8
  %mode11 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %7, i32 0, i32 0
  store i8 1, i8* %mode11, align 1
  store i32 7, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.else.10, %if.then.6
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i64 @ftell(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define i32 @SSIAddFileToIndex(%struct.ssiindex_s* %g, i8* %filename, i32 %fmt, i32* %ret_fh) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %filename.addr = alloca i8*, align 8
  %fmt.addr = alloca i32, align 4
  %ret_fh.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %fmt, i32* %fmt.addr, align 4
  store i32* %ret_fh, i32** %ret_fh.addr, align 8
  %0 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %0, i32 0, i32 9
  %1 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp sge i32 %conv, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 13, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %add = add nsw i32 %3, 1
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %4, i32 0, i32 8
  %5 = load i32, i32* %flen, align 4
  %cmp3 = icmp ugt i32 %add, %5
  br i1 %cmp3, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* %n, align 4
  %add6 = add nsw i32 %6, 1
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen7 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %7, i32 0, i32 8
  store i32 %add6, i32* %flen7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %8 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @FileTail(i8* %8, i32 0)
  %9 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles10 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %9, i32 0, i32 9
  %10 = load i16, i16* %nfiles10, align 2
  %idxprom = zext i16 %10 to i64
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 4
  %12 = load i8**, i8*** %filenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  store i8* %call9, i8** %arrayidx, align 8
  %13 = load i32, i32* %fmt.addr, align 4
  %14 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles11 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %14, i32 0, i32 9
  %15 = load i16, i16* %nfiles11, align 2
  %idxprom12 = zext i16 %15 to i64
  %16 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %16, i32 0, i32 5
  %17 = load i32*, i32** %fileformat, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  store i32 %13, i32* %arrayidx13, align 4
  %18 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles14 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %18, i32 0, i32 9
  %19 = load i16, i16* %nfiles14, align 2
  %idxprom15 = zext i16 %19 to i64
  %20 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %20, i32 0, i32 6
  %21 = load i32*, i32** %bpl, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  %22 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles17 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %22, i32 0, i32 9
  %23 = load i16, i16* %nfiles17, align 2
  %idxprom18 = zext i16 %23 to i64
  %24 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %24, i32 0, i32 7
  %25 = load i32*, i32** %rpl, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %25, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  %26 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles20 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %26, i32 0, i32 9
  %27 = load i16, i16* %nfiles20, align 2
  %conv21 = zext i16 %27 to i32
  %28 = load i32*, i32** %ret_fh.addr, align 8
  store i32 %conv21, i32* %28, align 4
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles22 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 9
  %30 = load i16, i16* %nfiles22, align 2
  %inc = add i16 %30, 1
  store i16 %inc, i16* %nfiles22, align 2
  %31 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles23 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %31, i32 0, i32 9
  %32 = load i16, i16* %nfiles23, align 2
  %conv24 = zext i16 %32 to i32
  %rem = srem i32 %conv24, 10
  %cmp25 = icmp eq i32 %rem, 0
  br i1 %cmp25, label %if.then.27, label %if.end.79

if.then.27:                                       ; preds = %if.end.8
  %33 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames28 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %33, i32 0, i32 4
  %34 = load i8**, i8*** %filenames28, align 8
  %35 = bitcast i8** %34 to i8*
  %36 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles29 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %36, i32 0, i32 9
  %37 = load i16, i16* %nfiles29, align 2
  %conv30 = zext i16 %37 to i32
  %add31 = add nsw i32 %conv30, 10
  %conv32 = sext i32 %add31 to i64
  %mul = mul i64 8, %conv32
  %call33 = call i8* @realloc(i8* %35, i64 %mul) #5
  %38 = bitcast i8* %call33 to i8**
  %39 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames34 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %39, i32 0, i32 4
  store i8** %38, i8*** %filenames34, align 8
  %40 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames35 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %40, i32 0, i32 4
  %41 = load i8**, i8*** %filenames35, align 8
  %cmp36 = icmp eq i8** %41, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.27
  store i32 3, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.27
  %42 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat40 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %42, i32 0, i32 5
  %43 = load i32*, i32** %fileformat40, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles41 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 9
  %46 = load i16, i16* %nfiles41, align 2
  %conv42 = zext i16 %46 to i32
  %add43 = add nsw i32 %conv42, 10
  %conv44 = sext i32 %add43 to i64
  %mul45 = mul i64 4, %conv44
  %call46 = call i8* @realloc(i8* %44, i64 %mul45) #5
  %47 = bitcast i8* %call46 to i32*
  %48 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat47 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %48, i32 0, i32 5
  store i32* %47, i32** %fileformat47, align 8
  %49 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat48 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %49, i32 0, i32 5
  %50 = load i32*, i32** %fileformat48, align 8
  %cmp49 = icmp eq i32* %50, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.39
  store i32 3, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.39
  %51 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl53 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %51, i32 0, i32 6
  %52 = load i32*, i32** %bpl53, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles54 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %54, i32 0, i32 9
  %55 = load i16, i16* %nfiles54, align 2
  %conv55 = zext i16 %55 to i32
  %add56 = add nsw i32 %conv55, 10
  %conv57 = sext i32 %add56 to i64
  %mul58 = mul i64 4, %conv57
  %call59 = call i8* @realloc(i8* %53, i64 %mul58) #5
  %56 = bitcast i8* %call59 to i32*
  %57 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl60 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %57, i32 0, i32 6
  store i32* %56, i32** %bpl60, align 8
  %58 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl61 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %58, i32 0, i32 6
  %59 = load i32*, i32** %bpl61, align 8
  %cmp62 = icmp eq i32* %59, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.52
  store i32 3, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.52
  %60 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl66 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %60, i32 0, i32 7
  %61 = load i32*, i32** %rpl66, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles67 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %63, i32 0, i32 9
  %64 = load i16, i16* %nfiles67, align 2
  %conv68 = zext i16 %64 to i32
  %add69 = add nsw i32 %conv68, 10
  %conv70 = sext i32 %add69 to i64
  %mul71 = mul i64 4, %conv70
  %call72 = call i8* @realloc(i8* %62, i64 %mul71) #5
  %65 = bitcast i8* %call72 to i32*
  %66 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl73 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %66, i32 0, i32 7
  store i32* %65, i32** %rpl73, align 8
  %67 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl74 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %67, i32 0, i32 7
  %68 = load i32*, i32** %rpl74, align 8
  %cmp75 = icmp eq i32* %68, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.65
  store i32 3, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.65
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.77, %if.then.64, %if.then.51, %if.then.38, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @FileTail(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @SSISetFileForSubseq(%struct.ssiindex_s* %g, i32 %fh, i32 %bpl, i32 %rpl) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %fh.addr = alloca i32, align 4
  %bpl.addr = alloca i32, align 4
  %rpl.addr = alloca i32, align 4
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  store i32 %fh, i32* %fh.addr, align 4
  store i32 %bpl, i32* %bpl.addr, align 4
  store i32 %rpl, i32* %rpl.addr, align 4
  %0 = load i32, i32* %fh.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %fh.addr, align 4
  %2 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %2, i32 0, i32 9
  %3 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %3 to i32
  %cmp1 = icmp sge i32 %1, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %bpl.addr, align 4
  %cmp3 = icmp sle i32 %4, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %5 = load i32, i32* %rpl.addr, align 4
  %cmp6 = icmp sle i32 %5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.end
  store i32 12, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.5
  %6 = load i32, i32* %bpl.addr, align 4
  %7 = load i32, i32* %fh.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl10 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %8, i32 0, i32 6
  %9 = load i32*, i32** %bpl10, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  %10 = load i32, i32* %rpl.addr, align 4
  %11 = load i32, i32* %fh.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl12 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %12, i32 0, i32 7
  %13 = load i32*, i32** %rpl12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom11
  store i32 %10, i32* %arrayidx13, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @SSIAddPrimaryKeyToIndex(%struct.ssiindex_s* %g, i8* %key, i32 %fh, %struct.ssioffset_s* %r_off, %struct.ssioffset_s* %d_off, i32 %L) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %key.addr = alloca i8*, align 8
  %fh.addr = alloca i32, align 4
  %r_off.addr = alloca %struct.ssioffset_s*, align 8
  %d_off.addr = alloca %struct.ssioffset_s*, align 8
  %L.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %fh, i32* %fh.addr, align 4
  store %struct.ssioffset_s* %r_off, %struct.ssioffset_s** %r_off.addr, align 8
  store %struct.ssioffset_s* %d_off, %struct.ssioffset_s** %d_off.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  %0 = load i32, i32* %fh.addr, align 4
  %cmp = icmp sge i32 %0, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 13, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %1, i32 0, i32 12
  %2 = load i32, i32* %nprimary, align 4
  %conv = zext i32 %2 to i64
  %cmp1 = icmp sge i64 %conv, 2147483647
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 14, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %L.addr, align 4
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.4
  %4 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %cmp7 = icmp eq %struct.ssioffset_s* %4, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  call void @abort() #7
  unreachable

if.end.10:                                        ; preds = %land.lhs.true, %if.end.4
  %5 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %5, i32 0, i32 2
  %6 = load i32, i32* %external, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.21, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.end.10
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %call = call i64 @current_index_size(%struct.ssiindex_s* %7)
  %8 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %max_ram = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %8, i32 0, i32 3
  %9 = load i32, i32* %max_ram, align 4
  %conv12 = sext i32 %9 to i64
  %cmp13 = icmp uge i64 %call, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %land.lhs.true.11
  %10 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %call16 = call i32 @activate_external_sort(%struct.ssiindex_s* %10)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.15
  store i32 4, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true.11, %if.end.10
  %11 = load i8*, i8** %key.addr, align 8
  %call22 = call i64 @strlen(i8* %11) #6
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %n, align 4
  %12 = load i32, i32* %n, align 4
  %add = add nsw i32 %12, 1
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 11
  %14 = load i32, i32* %plen, align 4
  %cmp24 = icmp ugt i32 %add, %14
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.21
  %15 = load i32, i32* %n, align 4
  %add27 = add nsw i32 %15, 1
  %16 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen28 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %16, i32 0, i32 11
  store i32 %add27, i32* %plen28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.21
  %17 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %17, i32 0, i32 2
  %18 = load i32, i32* %external30, align 4
  %tobool31 = icmp ne i32 %18, 0
  br i1 %tobool31, label %if.then.32, label %if.end.58

if.then.32:                                       ; preds = %if.end.29
  %19 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %smode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %19, i32 0, i32 0
  %20 = load i32, i32* %smode, align 4
  %cmp33 = icmp eq i32 %20, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.32
  %21 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %21, i32 0, i32 14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp, align 8
  %23 = load i8*, i8** %key.addr, align 8
  %24 = load i32, i32* %fh.addr, align 4
  %25 = load %struct.ssioffset_s*, %struct.ssioffset_s** %r_off.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %25, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %26 = load i32, i32* %i32, align 4
  %conv36 = zext i32 %26 to i64
  %27 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %cmp37 = icmp eq %struct.ssioffset_s* %27, null
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %28 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %off39 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %28, i32 0, i32 1
  %i3240 = bitcast %union.anon* %off39 to i32*
  %29 = load i32, i32* %i3240, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %29, %cond.false ]
  %conv41 = zext i32 %cond to i64
  %30 = load i32, i32* %L.addr, align 4
  %conv42 = sext i32 %30 to i64
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* %23, i32 %24, i64 %conv36, i64 %conv41, i64 %conv42)
  br label %if.end.56

if.else:                                          ; preds = %if.then.32
  %31 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp44 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %31, i32 0, i32 14
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp44, align 8
  %33 = load i8*, i8** %key.addr, align 8
  %34 = load i32, i32* %fh.addr, align 4
  %35 = load %struct.ssioffset_s*, %struct.ssioffset_s** %r_off.addr, align 8
  %off45 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %35, i32 0, i32 1
  %i64 = bitcast %union.anon* %off45 to i64*
  %36 = load i64, i64* %i64, align 8
  %37 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %cmp46 = icmp eq %struct.ssioffset_s* %37, null
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.else
  br label %cond.end.52

cond.false.49:                                    ; preds = %if.else
  %38 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %off50 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %38, i32 0, i32 1
  %i6451 = bitcast %union.anon* %off50 to i64*
  %39 = load i64, i64* %i6451, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.48
  %cond53 = phi i64 [ 0, %cond.true.48 ], [ %39, %cond.false.49 ]
  %40 = load i32, i32* %L.addr, align 4
  %conv54 = sext i32 %40 to i64
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* %33, i32 %34, i64 %36, i64 %cond53, i64 %conv54)
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.52, %cond.end
  %41 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary57 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %41, i32 0, i32 12
  %42 = load i32, i32* %nprimary57, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %nprimary57, align 4
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.29
  %43 = load i8*, i8** %key.addr, align 8
  %44 = load i32, i32* %n, align 4
  %call59 = call i8* @sre_strdup(i8* %43, i32 %44)
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary60 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 12
  %46 = load i32, i32* %nprimary60, align 4
  %idxprom = zext i32 %46 to i64
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 10
  %48 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys, align 8
  %arrayidx = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %48, i64 %idxprom
  %key61 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx, i32 0, i32 0
  store i8* %call59, i8** %key61, align 8
  %cmp62 = icmp eq i8* %call59, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.58
  store i32 3, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.58
  %49 = load i32, i32* %fh.addr, align 4
  %conv66 = trunc i32 %49 to i16
  %50 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary67 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %50, i32 0, i32 12
  %51 = load i32, i32* %nprimary67, align 4
  %idxprom68 = zext i32 %51 to i64
  %52 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys69 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %52, i32 0, i32 10
  %53 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys69, align 8
  %arrayidx70 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %53, i64 %idxprom68
  %fnum = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx70, i32 0, i32 1
  store i16 %conv66, i16* %fnum, align 2
  %54 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary71 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %54, i32 0, i32 12
  %55 = load i32, i32* %nprimary71, align 4
  %idxprom72 = zext i32 %55 to i64
  %56 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys73 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %56, i32 0, i32 10
  %57 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys73, align 8
  %arrayidx74 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %57, i64 %idxprom72
  %r_off75 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx74, i32 0, i32 2
  %58 = load %struct.ssioffset_s*, %struct.ssioffset_s** %r_off.addr, align 8
  %59 = bitcast %struct.ssioffset_s* %r_off75 to i8*
  %60 = bitcast %struct.ssioffset_s* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false)
  %61 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %cmp76 = icmp ne %struct.ssioffset_s* %61, null
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.91

land.lhs.true.78:                                 ; preds = %if.end.65
  %62 = load i32, i32* %L.addr, align 4
  %cmp79 = icmp sgt i32 %62, 0
  br i1 %cmp79, label %if.then.81, label %if.else.91

if.then.81:                                       ; preds = %land.lhs.true.78
  %63 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary82 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %63, i32 0, i32 12
  %64 = load i32, i32* %nprimary82, align 4
  %idxprom83 = zext i32 %64 to i64
  %65 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys84 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %65, i32 0, i32 10
  %66 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys84, align 8
  %arrayidx85 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %66, i64 %idxprom83
  %d_off86 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx85, i32 0, i32 3
  %67 = load %struct.ssioffset_s*, %struct.ssioffset_s** %d_off.addr, align 8
  %68 = bitcast %struct.ssioffset_s* %d_off86 to i8*
  %69 = bitcast %struct.ssioffset_s* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false)
  %70 = load i32, i32* %L.addr, align 4
  %71 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary87 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %71, i32 0, i32 12
  %72 = load i32, i32* %nprimary87, align 4
  %idxprom88 = zext i32 %72 to i64
  %73 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys89 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %73, i32 0, i32 10
  %74 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys89, align 8
  %arrayidx90 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %74, i64 %idxprom88
  %len = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx90, i32 0, i32 4
  store i32 %70, i32* %len, align 4
  br label %if.end.102

if.else.91:                                       ; preds = %land.lhs.true.78, %if.end.65
  %75 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary92 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %75, i32 0, i32 12
  %76 = load i32, i32* %nprimary92, align 4
  %idxprom93 = zext i32 %76 to i64
  %77 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys94 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %77, i32 0, i32 10
  %78 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys94, align 8
  %arrayidx95 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %78, i64 %idxprom93
  %d_off96 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx95, i32 0, i32 3
  %79 = load %struct.ssioffset_s*, %struct.ssioffset_s** %r_off.addr, align 8
  %80 = bitcast %struct.ssioffset_s* %d_off96 to i8*
  %81 = bitcast %struct.ssioffset_s* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 16, i32 8, i1 false)
  %82 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary97 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %82, i32 0, i32 12
  %83 = load i32, i32* %nprimary97, align 4
  %idxprom98 = zext i32 %83 to i64
  %84 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys99 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %84, i32 0, i32 10
  %85 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys99, align 8
  %arrayidx100 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %85, i64 %idxprom98
  %len101 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx100, i32 0, i32 4
  store i32 0, i32* %len101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.91, %if.then.81
  %86 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary103 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %86, i32 0, i32 12
  %87 = load i32, i32* %nprimary103, align 4
  %inc104 = add i32 %87, 1
  store i32 %inc104, i32* %nprimary103, align 4
  %88 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary105 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %88, i32 0, i32 12
  %89 = load i32, i32* %nprimary105, align 4
  %rem = urem i32 %89, 100
  %cmp106 = icmp eq i32 %rem, 0
  br i1 %cmp106, label %if.then.108, label %if.end.120

if.then.108:                                      ; preds = %if.end.102
  %90 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys109 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %90, i32 0, i32 10
  %91 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys109, align 8
  %92 = bitcast %struct.ssipkey_s* %91 to i8*
  %93 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary110 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %93, i32 0, i32 12
  %94 = load i32, i32* %nprimary110, align 4
  %add111 = add i32 %94, 100
  %conv112 = zext i32 %add111 to i64
  %mul = mul i64 56, %conv112
  %call113 = call i8* @realloc(i8* %92, i64 %mul) #5
  %95 = bitcast i8* %call113 to %struct.ssipkey_s*
  %96 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys114 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %96, i32 0, i32 10
  store %struct.ssipkey_s* %95, %struct.ssipkey_s** %pkeys114, align 8
  %97 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys115 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %97, i32 0, i32 10
  %98 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys115, align 8
  %cmp116 = icmp eq %struct.ssipkey_s* %98, null
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.108
  store i32 3, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.then.108
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.102
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.then.118, %if.then.64, %if.end.56, %if.then.19, %if.then.3, %if.then
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i64 @current_index_size(%struct.ssiindex_s* %g) #0 {
entry:
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %frecsize = alloca i64, align 8
  %precsize = alloca i64, align 8
  %srecsize = alloca i64, align 8
  %total = alloca i64, align 8
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  %0 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %0, i32 0, i32 8
  %1 = load i32, i32* %flen, align 4
  %add = add i32 16, %1
  %conv = zext i32 %add to i64
  store i64 %conv, i64* %frecsize, align 8
  %2 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %smode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %2, i32 0, i32 0
  %3 = load i32, i32* %smode, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %4, i32 0, i32 11
  %5 = load i32, i32* %plen, align 4
  %add2 = add i32 22, %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen3 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %6, i32 0, i32 11
  %7 = load i32, i32* %plen3, align 4
  %add4 = add i32 14, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add2, %cond.true ], [ %add4, %cond.false ]
  %conv5 = zext i32 %cond to i64
  store i64 %conv5, i64* %precsize, align 8
  %8 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen6 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %8, i32 0, i32 11
  %9 = load i32, i32* %plen6, align 4
  %10 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %10, i32 0, i32 16
  %11 = load i32, i32* %slen, align 4
  %add7 = add i32 %9, %11
  %conv8 = zext i32 %add7 to i64
  store i64 %conv8, i64* %srecsize, align 8
  %12 = load i64, i64* %frecsize, align 8
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 9
  %14 = load i16, i16* %nfiles, align 2
  %conv9 = zext i16 %14 to i64
  %mul = mul i64 %12, %conv9
  %add10 = add i64 66, %mul
  %15 = load i64, i64* %precsize, align 8
  %16 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %16, i32 0, i32 12
  %17 = load i32, i32* %nprimary, align 4
  %conv11 = zext i32 %17 to i64
  %mul12 = mul i64 %15, %conv11
  %add13 = add i64 %add10, %mul12
  %18 = load i64, i64* %srecsize, align 8
  %19 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %19, i32 0, i32 17
  %20 = load i32, i32* %nsecondary, align 4
  %conv14 = zext i32 %20 to i64
  %mul15 = mul i64 %18, %conv14
  %add16 = add i64 %add13, %mul15
  %div = udiv i64 %add16, 1048576
  store i64 %div, i64* %total, align 8
  %21 = load i64, i64* %total, align 8
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @activate_external_sort(%struct.ssiindex_s* %g) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %i = alloca i32, align 4
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  %0 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %0, i32 0, i32 2
  %1 = load i32, i32* %external, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %2, i32 0, i32 13
  %3 = load i8*, i8** %ptmpfile, align 8
  %call = call i32 @FileExists(i8* %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %4, i32 0, i32 18
  %5 = load i8*, i8** %stmpfile, align 8
  %call4 = call i32 @FileExists(i8* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmpfile8 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %6, i32 0, i32 13
  %7 = load i8*, i8** %ptmpfile8, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  %8 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %8, i32 0, i32 14
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %ptmp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %9 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmpfile12 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %9, i32 0, i32 18
  %10 = load i8*, i8** %stmpfile12, align 8
  %call13 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 19
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %stmp, align 8
  %cmp14 = icmp eq %struct._IO_FILE* %call13, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 12
  %14 = load i32, i32* %nprimary, align 4
  %cmp17 = icmp ult i32 %12, %14
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %smode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %15, i32 0, i32 0
  %16 = load i32, i32* %smode, align 4
  %cmp18 = icmp eq i32 %16, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.body
  %17 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp20 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %17, i32 0, i32 14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp20, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %20, i32 0, i32 10
  %21 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys, align 8
  %arrayidx = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %21, i64 %idxprom
  %key = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx, i32 0, i32 0
  %22 = load i8*, i8** %key, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys22 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %24, i32 0, i32 10
  %25 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys22, align 8
  %arrayidx23 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %25, i64 %idxprom21
  %fnum = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx23, i32 0, i32 1
  %26 = load i16, i16* %fnum, align 2
  %conv = zext i16 %26 to i32
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys25 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %28, i32 0, i32 10
  %29 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys25, align 8
  %arrayidx26 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %29, i64 %idxprom24
  %r_off = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx26, i32 0, i32 2
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %r_off, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %30 = load i32, i32* %i32, align 4
  %conv27 = zext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys29 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %32, i32 0, i32 10
  %33 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys29, align 8
  %arrayidx30 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %33, i64 %idxprom28
  %d_off = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx30, i32 0, i32 3
  %off31 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %d_off, i32 0, i32 1
  %i3232 = bitcast %union.anon* %off31 to i32*
  %34 = load i32, i32* %i3232, align 4
  %conv33 = zext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %35 to i64
  %36 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys35 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %36, i32 0, i32 10
  %37 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys35, align 8
  %arrayidx36 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %37, i64 %idxprom34
  %len = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx36, i32 0, i32 4
  %38 = load i32, i32* %len, align 4
  %conv37 = zext i32 %38 to i64
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %22, i32 %conv, i64 %conv27, i64 %conv33, i64 %conv37)
  br label %if.end.66

if.else:                                          ; preds = %for.body
  %39 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %39, i32 0, i32 14
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp39, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys41 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %42, i32 0, i32 10
  %43 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys41, align 8
  %arrayidx42 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %43, i64 %idxprom40
  %key43 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx42, i32 0, i32 0
  %44 = load i8*, i8** %key43, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %45 to i64
  %46 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys45 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %46, i32 0, i32 10
  %47 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys45, align 8
  %arrayidx46 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %47, i64 %idxprom44
  %fnum47 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx46, i32 0, i32 1
  %48 = load i16, i16* %fnum47, align 2
  %conv48 = zext i16 %48 to i32
  %49 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %49 to i64
  %50 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys50 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %50, i32 0, i32 10
  %51 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys50, align 8
  %arrayidx51 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %51, i64 %idxprom49
  %r_off52 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx51, i32 0, i32 2
  %off53 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %r_off52, i32 0, i32 1
  %i64 = bitcast %union.anon* %off53 to i64*
  %52 = load i64, i64* %i64, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys55 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %54, i32 0, i32 10
  %55 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys55, align 8
  %arrayidx56 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %55, i64 %idxprom54
  %d_off57 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx56, i32 0, i32 3
  %off58 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %d_off57, i32 0, i32 1
  %i6459 = bitcast %union.anon* %off58 to i64*
  %56 = load i64, i64* %i6459, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %57 to i64
  %58 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys61 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %58, i32 0, i32 10
  %59 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys61, align 8
  %arrayidx62 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %59, i64 %idxprom60
  %len63 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx62, i32 0, i32 4
  %60 = load i32, i32* %len63, align 4
  %conv64 = zext i32 %60 to i64
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* %44, i32 %conv48, i64 %52, i64 %56, i64 %conv64)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.79, %for.end
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %63, i32 0, i32 17
  %64 = load i32, i32* %nsecondary, align 4
  %cmp68 = icmp ult i32 %62, %64
  br i1 %cmp68, label %for.body.70, label %for.end.81

for.body.70:                                      ; preds = %for.cond.67
  %65 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp71 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %65, i32 0, i32 19
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %stmp71, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %67 to i64
  %68 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %68, i32 0, i32 15
  %69 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys, align 8
  %arrayidx73 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %69, i64 %idxprom72
  %key74 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx73, i32 0, i32 0
  %70 = load i8*, i8** %key74, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %71 to i64
  %72 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys76 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %72, i32 0, i32 15
  %73 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys76, align 8
  %arrayidx77 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %73, i64 %idxprom75
  %pkey = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx77, i32 0, i32 1
  %74 = load i8*, i8** %pkey, align 8
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %70, i8* %74)
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.70
  %75 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %75, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.67

for.end.81:                                       ; preds = %for.cond.67
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.91, %for.end.81
  %76 = load i32, i32* %i, align 4
  %77 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary83 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %77, i32 0, i32 12
  %78 = load i32, i32* %nprimary83, align 4
  %cmp84 = icmp ult i32 %76, %78
  br i1 %cmp84, label %for.body.86, label %for.end.93

for.body.86:                                      ; preds = %for.cond.82
  %79 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %79 to i64
  %80 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys88 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %80, i32 0, i32 10
  %81 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys88, align 8
  %arrayidx89 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %81, i64 %idxprom87
  %key90 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx89, i32 0, i32 0
  %82 = load i8*, i8** %key90, align 8
  call void @free(i8* %82) #5
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.86
  %83 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %83, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.82

for.end.93:                                       ; preds = %for.cond.82
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.103, %for.end.93
  %84 = load i32, i32* %i, align 4
  %85 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary95 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %85, i32 0, i32 17
  %86 = load i32, i32* %nsecondary95, align 4
  %cmp96 = icmp ult i32 %84, %86
  br i1 %cmp96, label %for.body.98, label %for.end.105

for.body.98:                                      ; preds = %for.cond.94
  %87 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %87 to i64
  %88 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys100 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %88, i32 0, i32 15
  %89 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys100, align 8
  %arrayidx101 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %89, i64 %idxprom99
  %key102 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx101, i32 0, i32 0
  %90 = load i8*, i8** %key102, align 8
  call void @free(i8* %90) #5
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.98
  %91 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %91, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.94

for.end.105:                                      ; preds = %for.cond.94
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.115, %for.end.105
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary107 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %93, i32 0, i32 17
  %94 = load i32, i32* %nsecondary107, align 4
  %cmp108 = icmp ult i32 %92, %94
  br i1 %cmp108, label %for.body.110, label %for.end.117

for.body.110:                                     ; preds = %for.cond.106
  %95 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %95 to i64
  %96 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys112 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %96, i32 0, i32 15
  %97 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys112, align 8
  %arrayidx113 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %97, i64 %idxprom111
  %pkey114 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx113, i32 0, i32 1
  %98 = load i8*, i8** %pkey114, align 8
  call void @free(i8* %98) #5
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.110
  %99 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %99, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.106

for.end.117:                                      ; preds = %for.cond.106
  %100 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys118 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %100, i32 0, i32 10
  %101 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys118, align 8
  %cmp119 = icmp ne %struct.ssipkey_s* %101, null
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %for.end.117
  %102 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys122 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %102, i32 0, i32 10
  %103 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys122, align 8
  %104 = bitcast %struct.ssipkey_s* %103 to i8*
  call void @free(i8* %104) #5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %for.end.117
  %105 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys124 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %105, i32 0, i32 15
  %106 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys124, align 8
  %cmp125 = icmp ne %struct.ssiskey_s* %106, null
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.123
  %107 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys128 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %107, i32 0, i32 15
  %108 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys128, align 8
  %109 = bitcast %struct.ssiskey_s* %108 to i8*
  call void @free(i8* %109) #5
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.123
  %110 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys130 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %110, i32 0, i32 10
  store %struct.ssipkey_s* null, %struct.ssipkey_s** %pkeys130, align 8
  %111 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys131 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %111, i32 0, i32 15
  store %struct.ssiskey_s* null, %struct.ssiskey_s** %skeys131, align 8
  %112 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external132 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %112, i32 0, i32 2
  store i32 1, i32* %external132, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.129, %if.then.15, %if.then.10, %if.then.6, %if.then.2, %if.then
  %113 = load i32, i32* %retval
  ret i32 %113
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @SSIAddSecondaryKeyToIndex(%struct.ssiindex_s* %g, i8* %key, i8* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %key.addr = alloca i8*, align 8
  %pkey.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %pkey, i8** %pkey.addr, align 8
  %0 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %0, i32 0, i32 17
  %1 = load i32, i32* %nsecondary, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp sge i64 %conv, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %2, i32 0, i32 2
  %3 = load i32, i32* %external, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %call = call i64 @current_index_size(%struct.ssiindex_s* %4)
  %5 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %max_ram = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %5, i32 0, i32 3
  %6 = load i32, i32* %max_ram, align 4
  %conv2 = sext i32 %6 to i64
  %cmp3 = icmp uge i64 %call, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %call6 = call i32 @activate_external_sort(%struct.ssiindex_s* %7)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  store i32 4, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %land.lhs.true, %if.end
  %8 = load i8*, i8** %key.addr, align 8
  %call12 = call i64 @strlen(i8* %8) #6
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %n, align 4
  %9 = load i32, i32* %n, align 4
  %add = add nsw i32 %9, 1
  %10 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %10, i32 0, i32 16
  %11 = load i32, i32* %slen, align 4
  %cmp14 = icmp ugt i32 %add, %11
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.11
  %12 = load i32, i32* %n, align 4
  %add17 = add nsw i32 %12, 1
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen18 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 16
  store i32 %add17, i32* %slen18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.11
  %14 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external20 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %14, i32 0, i32 2
  %15 = load i32, i32* %external20, align 4
  %tobool21 = icmp ne i32 %15, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %16 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %16, i32 0, i32 19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stmp, align 8
  %18 = load i8*, i8** %key.addr, align 8
  %19 = load i8*, i8** %pkey.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %18, i8* %19)
  %20 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary24 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %20, i32 0, i32 17
  %21 = load i32, i32* %nsecondary24, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %nsecondary24, align 4
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %22 = load i8*, i8** %key.addr, align 8
  %23 = load i32, i32* %n, align 4
  %call26 = call i8* @sre_strdup(i8* %22, i32 %23)
  %24 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary27 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %24, i32 0, i32 17
  %25 = load i32, i32* %nsecondary27, align 4
  %idxprom = zext i32 %25 to i64
  %26 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %26, i32 0, i32 15
  %27 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys, align 8
  %arrayidx = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %27, i64 %idxprom
  %key28 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx, i32 0, i32 0
  store i8* %call26, i8** %key28, align 8
  %cmp29 = icmp eq i8* %call26, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.25
  store i32 3, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.25
  %28 = load i8*, i8** %pkey.addr, align 8
  %call33 = call i8* @sre_strdup(i8* %28, i32 -1)
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary34 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 17
  %30 = load i32, i32* %nsecondary34, align 4
  %idxprom35 = zext i32 %30 to i64
  %31 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys36 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %31, i32 0, i32 15
  %32 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys36, align 8
  %arrayidx37 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %32, i64 %idxprom35
  %pkey38 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx37, i32 0, i32 1
  store i8* %call33, i8** %pkey38, align 8
  %cmp39 = icmp eq i8* %call33, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.32
  store i32 3, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.32
  %33 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary43 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %33, i32 0, i32 17
  %34 = load i32, i32* %nsecondary43, align 4
  %inc44 = add i32 %34, 1
  store i32 %inc44, i32* %nsecondary43, align 4
  %35 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary45 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %35, i32 0, i32 17
  %36 = load i32, i32* %nsecondary45, align 4
  %rem = urem i32 %36, 100
  %cmp46 = icmp eq i32 %rem, 0
  br i1 %cmp46, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %if.end.42
  %37 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys49 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %37, i32 0, i32 15
  %38 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys49, align 8
  %39 = bitcast %struct.ssiskey_s* %38 to i8*
  %40 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary50 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %40, i32 0, i32 17
  %41 = load i32, i32* %nsecondary50, align 4
  %add51 = add i32 %41, 100
  %conv52 = zext i32 %add51 to i64
  %mul = mul i64 16, %conv52
  %call53 = call i8* @realloc(i8* %39, i64 %mul) #5
  %42 = bitcast i8* %call53 to %struct.ssiskey_s*
  %43 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys54 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %43, i32 0, i32 15
  store %struct.ssiskey_s* %42, %struct.ssiskey_s** %skeys54, align 8
  %44 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys55 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %44, i32 0, i32 15
  %45 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys55, align 8
  %cmp56 = icmp eq %struct.ssiskey_s* %45, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.48
  store i32 3, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.then.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.58, %if.then.41, %if.then.31, %if.then.22, %if.then.9, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @SSIWriteIndex(i8* %file, %struct.ssiindex_s* %g) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %g.addr = alloca %struct.ssiindex_s*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %header_flags = alloca i32, align 4
  %file_flags = alloca i32, align 4
  %frecsize = alloca i32, align 4
  %precsize = alloca i32, align 4
  %srecsize = alloca i32, align 4
  %foffset = alloca i64, align 8
  %poffset = alloca i64, align 8
  %soffset = alloca i64, align 8
  %s = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %cmd = alloca [1024 x i8], align 16
  %buf = alloca i8*, align 8
  %buflen = alloca i32, align 4
  %pkey = alloca %struct.ssipkey_s, align 8
  %skey = alloca %struct.ssiskey_s, align 8
  %buf337 = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %status, align 4
  %1 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %call1 = call i64 @current_index_size(%struct.ssiindex_s* %1)
  %cmp2 = icmp uge i64 %call1, 2047
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %imode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %2, i32 0, i32 1
  store i32 1, i32* %imode, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %3, i32 0, i32 8
  %4 = load i32, i32* %flen, align 4
  %add = add i32 16, %4
  store i32 %add, i32* %frecsize, align 4
  %5 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %smode = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %5, i32 0, i32 0
  %6 = load i32, i32* %smode, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %7, i32 0, i32 11
  %8 = load i32, i32* %plen, align 4
  %add6 = add i32 22, %8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %9 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen7 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %9, i32 0, i32 11
  %10 = load i32, i32* %plen7, align 4
  %add8 = add i32 14, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add6, %cond.true ], [ %add8, %cond.false ]
  store i32 %cond, i32* %precsize, align 4
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 16
  %12 = load i32, i32* %slen, align 4
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen9 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 11
  %14 = load i32, i32* %plen9, align 4
  %add10 = add i32 %12, %14
  store i32 %add10, i32* %srecsize, align 4
  store i32 0, i32* %header_flags, align 4
  %15 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %smode11 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %15, i32 0, i32 0
  %16 = load i32, i32* %smode11, align 4
  %cmp12 = icmp eq i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %cond.end
  %17 = load i32, i32* %header_flags, align 4
  %or = or i32 %17, 1
  store i32 %or, i32* %header_flags, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %cond.end
  %18 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %imode15 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %18, i32 0, i32 1
  %19 = load i32, i32* %imode15, align 4
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %20 = load i32, i32* %header_flags, align 4
  %or18 = or i32 %20, 2
  store i32 %or18, i32* %header_flags, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %21 = load i32, i32* %header_flags, align 4
  %and = and i32 %21, 2
  %tobool = icmp ne i32 %and, 0
  %cond20 = select i1 %tobool, i32 66, i32 54
  %conv = sext i32 %cond20 to i64
  store i64 %conv, i64* %foffset, align 8
  %22 = load i64, i64* %foffset, align 8
  %23 = load i32, i32* %frecsize, align 4
  %24 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %24, i32 0, i32 9
  %25 = load i16, i16* %nfiles, align 2
  %conv21 = zext i16 %25 to i32
  %mul = mul i32 %23, %conv21
  %conv22 = zext i32 %mul to i64
  %add23 = add i64 %22, %conv22
  store i64 %add23, i64* %poffset, align 8
  %26 = load i64, i64* %poffset, align 8
  %27 = load i32, i32* %precsize, align 4
  %28 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %28, i32 0, i32 12
  %29 = load i32, i32* %nprimary, align 4
  %mul24 = mul i32 %27, %29
  %conv25 = zext i32 %mul24 to i64
  %add26 = add i64 %26, %conv25
  store i64 %add26, i64* %soffset, align 8
  %30 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %30, i32 0, i32 2
  %31 = load i32, i32* %external, align 4
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.19
  %32 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %32, i32 0, i32 14
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %33)
  %34 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %34, i32 0, i32 14
  store %struct._IO_FILE* null, %struct._IO_FILE** %ptmp30, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %cmd, i32 0, i32 0
  %35 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %35, i32 0, i32 13
  %36 = load i8*, i8** %ptmpfile, align 8
  %37 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmpfile31 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %37, i32 0, i32 13
  %38 = load i8*, i8** %ptmpfile31, align 8
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* %36, i8* %38) #5
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cmd, i32 0, i32 0
  %call34 = call i32 @system(i8* %arraydecay33)
  store i32 %call34, i32* %status, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.28
  store i32 16, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.28
  %39 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmpfile39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %39, i32 0, i32 13
  %40 = load i8*, i8** %ptmpfile39, align 8
  %call40 = call %struct._IO_FILE* @fopen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %41 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp41 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %41, i32 0, i32 14
  store %struct._IO_FILE* %call40, %struct._IO_FILE** %ptmp41, align 8
  %cmp42 = icmp eq %struct._IO_FILE* %call40, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.38
  store i32 16, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.38
  %42 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %42, i32 0, i32 19
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %stmp, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* %43)
  %44 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp47 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %44, i32 0, i32 19
  store %struct._IO_FILE* null, %struct._IO_FILE** %stmp47, align 8
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cmd, i32 0, i32 0
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmpfile = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 18
  %46 = load i8*, i8** %stmpfile, align 8
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmpfile49 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 18
  %48 = load i8*, i8** %stmpfile49, align 8
  %call50 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* %46, i8* %48) #5
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cmd, i32 0, i32 0
  %call52 = call i32 @system(i8* %arraydecay51)
  store i32 %call52, i32* %status, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.45
  store i32 16, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.45
  %49 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmpfile57 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %49, i32 0, i32 18
  %50 = load i8*, i8** %stmpfile57, align 8
  %call58 = call %struct._IO_FILE* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %51 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp59 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %51, i32 0, i32 19
  store %struct._IO_FILE* %call58, %struct._IO_FILE** %stmp59, align 8
  %cmp60 = icmp eq %struct._IO_FILE* %call58, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.56
  store i32 16, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.56
  br label %if.end.67

if.else:                                          ; preds = %if.end.19
  %52 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %52, i32 0, i32 10
  %53 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys, align 8
  %54 = bitcast %struct.ssipkey_s* %53 to i8*
  %55 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary64 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %55, i32 0, i32 12
  %56 = load i32, i32* %nprimary64, align 4
  %call65 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %54, i32 %56, i64 56, i32 (i8*, i8*)* @pkeysort)
  %57 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %57, i32 0, i32 15
  %58 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys, align 8
  %59 = bitcast %struct.ssiskey_s* %58 to i8*
  %60 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %60, i32 0, i32 17
  %61 = load i32, i32* %nsecondary, align 4
  %call66 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %59, i32 %61, i64 16, i32 (i8*, i8*)* @skeysort)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.end.63
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %63 = load i32, i32* @v20magic, align 4
  %call68 = call i32 @write_i32(%struct._IO_FILE* %62, i32 %63)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  store i32 15, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.67
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %65 = load i32, i32* %header_flags, align 4
  %call72 = call i32 @write_i32(%struct._IO_FILE* %64, i32 %65)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.71
  store i32 15, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.71
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %67 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles76 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %67, i32 0, i32 9
  %68 = load i16, i16* %nfiles76, align 2
  %call77 = call i32 @write_i16(%struct._IO_FILE* %66, i16 zeroext %68)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.75
  store i32 15, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.75
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %70 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary81 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %70, i32 0, i32 12
  %71 = load i32, i32* %nprimary81, align 4
  %call82 = call i32 @write_i32(%struct._IO_FILE* %69, i32 %71)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.80
  store i32 15, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.80
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %73 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary86 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %73, i32 0, i32 17
  %74 = load i32, i32* %nsecondary86, align 4
  %call87 = call i32 @write_i32(%struct._IO_FILE* %72, i32 %74)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.end.85
  store i32 15, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.85
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %76 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen91 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %76, i32 0, i32 8
  %77 = load i32, i32* %flen91, align 4
  %call92 = call i32 @write_i32(%struct._IO_FILE* %75, i32 %77)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.end.90
  store i32 15, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.end.90
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %79 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen96 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %79, i32 0, i32 11
  %80 = load i32, i32* %plen96, align 4
  %call97 = call i32 @write_i32(%struct._IO_FILE* %78, i32 %80)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.end.95
  store i32 15, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.95
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %82 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen101 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %82, i32 0, i32 16
  %83 = load i32, i32* %slen101, align 4
  %call102 = call i32 @write_i32(%struct._IO_FILE* %81, i32 %83)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.end.100
  store i32 15, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.100
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %85 = load i32, i32* %frecsize, align 4
  %call106 = call i32 @write_i32(%struct._IO_FILE* %84, i32 %85)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %if.end.105
  store i32 15, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.105
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %87 = load i32, i32* %precsize, align 4
  %call110 = call i32 @write_i32(%struct._IO_FILE* %86, i32 %87)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.end.109
  store i32 15, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.end.109
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %89 = load i32, i32* %srecsize, align 4
  %call114 = call i32 @write_i32(%struct._IO_FILE* %88, i32 %89)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.end.113
  store i32 15, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.end.113
  %90 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %imode118 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %90, i32 0, i32 1
  %91 = load i32, i32* %imode118, align 4
  %cmp119 = icmp eq i32 %91, 0
  br i1 %cmp119, label %if.then.121, label %if.else.137

if.then.121:                                      ; preds = %if.end.117
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %93 = load i64, i64* %foffset, align 8
  %conv122 = trunc i64 %93 to i32
  %call123 = call i32 @write_i32(%struct._IO_FILE* %92, i32 %conv122)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %if.then.121
  store i32 15, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.then.121
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %95 = load i64, i64* %poffset, align 8
  %conv127 = trunc i64 %95 to i32
  %call128 = call i32 @write_i32(%struct._IO_FILE* %94, i32 %conv127)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %if.end.126
  store i32 15, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.126
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %97 = load i64, i64* %soffset, align 8
  %conv132 = trunc i64 %97 to i32
  %call133 = call i32 @write_i32(%struct._IO_FILE* %96, i32 %conv132)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %if.end.131
  store i32 15, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.131
  br label %if.end.150

if.else.137:                                      ; preds = %if.end.117
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %99 = load i64, i64* %foffset, align 8
  %call138 = call i32 @write_i64(%struct._IO_FILE* %98, i64 %99)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %if.else.137
  store i32 15, i32* %retval
  br label %return

if.end.141:                                       ; preds = %if.else.137
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %101 = load i64, i64* %poffset, align 8
  %call142 = call i32 @write_i64(%struct._IO_FILE* %100, i64 %101)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %if.end.141
  store i32 15, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.end.141
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %103 = load i64, i64* %soffset, align 8
  %call146 = call i32 @write_i64(%struct._IO_FILE* %102, i64 %103)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %if.end.145
  store i32 15, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.end.145
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.136
  %104 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen151 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %104, i32 0, i32 8
  %105 = load i32, i32* %flen151, align 4
  %conv152 = zext i32 %105 to i64
  %mul153 = mul i64 1, %conv152
  %call154 = call noalias i8* @malloc(i64 %mul153) #5
  store i8* %call154, i8** %s, align 8
  %cmp155 = icmp eq i8* %call154, null
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.150
  store i32 3, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.end.150
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.158
  %106 = load i32, i32* %i, align 4
  %107 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nfiles159 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %107, i32 0, i32 9
  %108 = load i16, i16* %nfiles159, align 2
  %conv160 = zext i16 %108 to i32
  %cmp161 = icmp slt i32 %106, %conv160
  br i1 %cmp161, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %file_flags, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom = sext i32 %109 to i64
  %110 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %110, i32 0, i32 6
  %111 = load i32*, i32** %bpl, align 8
  %arrayidx = getelementptr inbounds i32, i32* %111, i64 %idxprom
  %112 = load i32, i32* %arrayidx, align 4
  %cmp163 = icmp ugt i32 %112, 0
  br i1 %cmp163, label %land.lhs.true, label %if.end.171

land.lhs.true:                                    ; preds = %for.body
  %113 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %113 to i64
  %114 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %114, i32 0, i32 7
  %115 = load i32*, i32** %rpl, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %115, i64 %idxprom165
  %116 = load i32, i32* %arrayidx166, align 4
  %cmp167 = icmp ugt i32 %116, 0
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %land.lhs.true
  %117 = load i32, i32* %file_flags, align 4
  %or170 = or i32 %117, 1
  store i32 %or170, i32* %file_flags, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %land.lhs.true, %for.body
  %118 = load i8*, i8** %s, align 8
  %119 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %119 to i64
  %120 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %filenames = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %120, i32 0, i32 4
  %121 = load i8**, i8*** %filenames, align 8
  %arrayidx173 = getelementptr inbounds i8*, i8** %121, i64 %idxprom172
  %122 = load i8*, i8** %arrayidx173, align 8
  %call174 = call i8* @strcpy(i8* %118, i8* %122) #5
  %123 = load i8*, i8** %s, align 8
  %124 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen175 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %124, i32 0, i32 8
  %125 = load i32, i32* %flen175, align 4
  %conv176 = zext i32 %125 to i64
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call177 = call i64 @fwrite(i8* %123, i64 1, i64 %conv176, %struct._IO_FILE* %126)
  %127 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %flen178 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %127, i32 0, i32 8
  %128 = load i32, i32* %flen178, align 4
  %conv179 = zext i32 %128 to i64
  %cmp180 = icmp ne i64 %call177, %conv179
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.171
  store i32 15, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.end.171
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %130 to i64
  %131 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %fileformat = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %131, i32 0, i32 5
  %132 = load i32*, i32** %fileformat, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %132, i64 %idxprom184
  %133 = load i32, i32* %arrayidx185, align 4
  %call186 = call i32 @write_i32(%struct._IO_FILE* %129, i32 %133)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.end.183
  store i32 15, i32* %retval
  br label %return

if.end.189:                                       ; preds = %if.end.183
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %135 = load i32, i32* %file_flags, align 4
  %call190 = call i32 @write_i32(%struct._IO_FILE* %134, i32 %135)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.end.193, label %if.then.192

if.then.192:                                      ; preds = %if.end.189
  store i32 15, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.end.189
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %137 to i64
  %138 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %bpl195 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %138, i32 0, i32 6
  %139 = load i32*, i32** %bpl195, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %139, i64 %idxprom194
  %140 = load i32, i32* %arrayidx196, align 4
  %call197 = call i32 @write_i32(%struct._IO_FILE* %136, i32 %140)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %if.end.193
  store i32 15, i32* %retval
  br label %return

if.end.200:                                       ; preds = %if.end.193
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %142 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %142 to i64
  %143 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %rpl202 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %143, i32 0, i32 7
  %144 = load i32*, i32** %rpl202, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %144, i64 %idxprom201
  %145 = load i32, i32* %arrayidx203, align 4
  %call204 = call i32 @write_i32(%struct._IO_FILE* %141, i32 %145)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.end.207, label %if.then.206

if.then.206:                                      ; preds = %if.end.200
  store i32 15, i32* %retval
  br label %return

if.end.207:                                       ; preds = %if.end.200
  br label %for.inc

for.inc:                                          ; preds = %if.end.207
  %146 = load i32, i32* %i, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %147 = load i8*, i8** %s, align 8
  call void @free(i8* %147) #5
  %148 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen208 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %148, i32 0, i32 11
  %149 = load i32, i32* %plen208, align 4
  %conv209 = zext i32 %149 to i64
  %mul210 = mul i64 1, %conv209
  %call211 = call noalias i8* @malloc(i64 %mul210) #5
  store i8* %call211, i8** %s, align 8
  %cmp212 = icmp eq i8* %call211, null
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %for.end
  store i32 3, i32* %retval
  br label %return

if.end.215:                                       ; preds = %for.end
  %150 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external216 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %150, i32 0, i32 2
  %151 = load i32, i32* %external216, align 4
  %tobool217 = icmp ne i32 %151, 0
  br i1 %tobool217, label %if.then.218, label %if.else.266

if.then.218:                                      ; preds = %if.end.215
  store i8* null, i8** %buf, align 8
  store i32 0, i32* %buflen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.263, %if.then.218
  %152 = load i32, i32* %i, align 4
  %153 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary220 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %153, i32 0, i32 12
  %154 = load i32, i32* %nprimary220, align 4
  %cmp221 = icmp ult i32 %152, %154
  br i1 %cmp221, label %for.body.223, label %for.end.265

for.body.223:                                     ; preds = %for.cond.219
  %155 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %ptmp224 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %155, i32 0, i32 14
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %ptmp224, align 8
  %call225 = call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %156)
  %cmp226 = icmp eq i8* %call225, null
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %for.body.223
  store i32 1, i32* %retval
  br label %return

if.end.229:                                       ; preds = %for.body.223
  %157 = load i8*, i8** %buf, align 8
  %158 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %smode230 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %158, i32 0, i32 0
  %159 = load i32, i32* %smode230, align 4
  %conv231 = trunc i32 %159 to i8
  %call232 = call i32 @parse_pkey_info(i8* %157, i8 signext %conv231, %struct.ssipkey_s* %pkey)
  %cmp233 = icmp ne i32 %call232, 0
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.end.229
  store i32 6, i32* %retval
  br label %return

if.end.236:                                       ; preds = %if.end.229
  %160 = load i8*, i8** %s, align 8
  %key = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %pkey, i32 0, i32 0
  %161 = load i8*, i8** %key, align 8
  %call237 = call i8* @strcpy(i8* %160, i8* %161) #5
  %162 = load i8*, i8** %s, align 8
  %163 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen238 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %163, i32 0, i32 11
  %164 = load i32, i32* %plen238, align 4
  %conv239 = zext i32 %164 to i64
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call240 = call i64 @fwrite(i8* %162, i64 1, i64 %conv239, %struct._IO_FILE* %165)
  %166 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen241 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %166, i32 0, i32 11
  %167 = load i32, i32* %plen241, align 4
  %conv242 = zext i32 %167 to i64
  %cmp243 = icmp ne i64 %call240, %conv242
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.end.236
  store i32 15, i32* %retval
  br label %return

if.end.246:                                       ; preds = %if.end.236
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %fnum = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %pkey, i32 0, i32 1
  %169 = load i16, i16* %fnum, align 2
  %call247 = call i32 @write_i16(%struct._IO_FILE* %168, i16 zeroext %169)
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.end.250, label %if.then.249

if.then.249:                                      ; preds = %if.end.246
  store i32 15, i32* %retval
  br label %return

if.end.250:                                       ; preds = %if.end.246
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %r_off = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %pkey, i32 0, i32 2
  %call251 = call i32 @write_offset(%struct._IO_FILE* %170, %struct.ssioffset_s* %r_off)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.end.254, label %if.then.253

if.then.253:                                      ; preds = %if.end.250
  store i32 15, i32* %retval
  br label %return

if.end.254:                                       ; preds = %if.end.250
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %d_off = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %pkey, i32 0, i32 3
  %call255 = call i32 @write_offset(%struct._IO_FILE* %171, %struct.ssioffset_s* %d_off)
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %if.end.258, label %if.then.257

if.then.257:                                      ; preds = %if.end.254
  store i32 15, i32* %retval
  br label %return

if.end.258:                                       ; preds = %if.end.254
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %len = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %pkey, i32 0, i32 4
  %173 = load i32, i32* %len, align 4
  %call259 = call i32 @write_i32(%struct._IO_FILE* %172, i32 %173)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.end.262, label %if.then.261

if.then.261:                                      ; preds = %if.end.258
  store i32 15, i32* %retval
  br label %return

if.end.262:                                       ; preds = %if.end.258
  br label %for.inc.263

for.inc.263:                                      ; preds = %if.end.262
  %174 = load i32, i32* %i, align 4
  %inc264 = add nsw i32 %174, 1
  store i32 %inc264, i32* %i, align 4
  br label %for.cond.219

for.end.265:                                      ; preds = %for.cond.219
  %175 = load i8*, i8** %buf, align 8
  call void @free(i8* %175) #5
  br label %if.end.321

if.else.266:                                      ; preds = %if.end.215
  store i32 0, i32* %i, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.318, %if.else.266
  %176 = load i32, i32* %i, align 4
  %177 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nprimary268 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %177, i32 0, i32 12
  %178 = load i32, i32* %nprimary268, align 4
  %cmp269 = icmp ult i32 %176, %178
  br i1 %cmp269, label %for.body.271, label %for.end.320

for.body.271:                                     ; preds = %for.cond.267
  %179 = load i8*, i8** %s, align 8
  %180 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %180 to i64
  %181 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys273 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %181, i32 0, i32 10
  %182 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys273, align 8
  %arrayidx274 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %182, i64 %idxprom272
  %key275 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx274, i32 0, i32 0
  %183 = load i8*, i8** %key275, align 8
  %call276 = call i8* @strcpy(i8* %179, i8* %183) #5
  %184 = load i8*, i8** %s, align 8
  %185 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen277 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %185, i32 0, i32 11
  %186 = load i32, i32* %plen277, align 4
  %conv278 = zext i32 %186 to i64
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call279 = call i64 @fwrite(i8* %184, i64 1, i64 %conv278, %struct._IO_FILE* %187)
  %188 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen280 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %188, i32 0, i32 11
  %189 = load i32, i32* %plen280, align 4
  %conv281 = zext i32 %189 to i64
  %cmp282 = icmp ne i64 %call279, %conv281
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %for.body.271
  store i32 15, i32* %retval
  br label %return

if.end.285:                                       ; preds = %for.body.271
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %191 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %191 to i64
  %192 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys287 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %192, i32 0, i32 10
  %193 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys287, align 8
  %arrayidx288 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %193, i64 %idxprom286
  %fnum289 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx288, i32 0, i32 1
  %194 = load i16, i16* %fnum289, align 2
  %call290 = call i32 @write_i16(%struct._IO_FILE* %190, i16 zeroext %194)
  %tobool291 = icmp ne i32 %call290, 0
  br i1 %tobool291, label %if.end.293, label %if.then.292

if.then.292:                                      ; preds = %if.end.285
  store i32 15, i32* %retval
  br label %return

if.end.293:                                       ; preds = %if.end.285
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %196 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %196 to i64
  %197 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys295 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %197, i32 0, i32 10
  %198 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys295, align 8
  %arrayidx296 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %198, i64 %idxprom294
  %r_off297 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx296, i32 0, i32 2
  %call298 = call i32 @write_offset(%struct._IO_FILE* %195, %struct.ssioffset_s* %r_off297)
  %tobool299 = icmp ne i32 %call298, 0
  br i1 %tobool299, label %if.end.301, label %if.then.300

if.then.300:                                      ; preds = %if.end.293
  store i32 15, i32* %retval
  br label %return

if.end.301:                                       ; preds = %if.end.293
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %200 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %200 to i64
  %201 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys303 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %201, i32 0, i32 10
  %202 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys303, align 8
  %arrayidx304 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %202, i64 %idxprom302
  %d_off305 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx304, i32 0, i32 3
  %call306 = call i32 @write_offset(%struct._IO_FILE* %199, %struct.ssioffset_s* %d_off305)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.end.309, label %if.then.308

if.then.308:                                      ; preds = %if.end.301
  store i32 15, i32* %retval
  br label %return

if.end.309:                                       ; preds = %if.end.301
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %204 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %204 to i64
  %205 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %pkeys311 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %205, i32 0, i32 10
  %206 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkeys311, align 8
  %arrayidx312 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %206, i64 %idxprom310
  %len313 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %arrayidx312, i32 0, i32 4
  %207 = load i32, i32* %len313, align 4
  %call314 = call i32 @write_i32(%struct._IO_FILE* %203, i32 %207)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.end.317, label %if.then.316

if.then.316:                                      ; preds = %if.end.309
  store i32 15, i32* %retval
  br label %return

if.end.317:                                       ; preds = %if.end.309
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.317
  %208 = load i32, i32* %i, align 4
  %inc319 = add nsw i32 %208, 1
  store i32 %inc319, i32* %i, align 4
  br label %for.cond.267

for.end.320:                                      ; preds = %for.cond.267
  br label %if.end.321

if.end.321:                                       ; preds = %for.end.320, %for.end.265
  %209 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary322 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %209, i32 0, i32 17
  %210 = load i32, i32* %nsecondary322, align 4
  %cmp323 = icmp ugt i32 %210, 0
  br i1 %cmp323, label %if.then.325, label %if.end.417

if.then.325:                                      ; preds = %if.end.321
  %211 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen326 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %211, i32 0, i32 16
  %212 = load i32, i32* %slen326, align 4
  %conv327 = zext i32 %212 to i64
  %mul328 = mul i64 1, %conv327
  %call329 = call noalias i8* @malloc(i64 %mul328) #5
  store i8* %call329, i8** %s2, align 8
  %cmp330 = icmp eq i8* %call329, null
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.then.325
  store i32 3, i32* %retval
  br label %return

if.end.333:                                       ; preds = %if.then.325
  %213 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %external334 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %213, i32 0, i32 2
  %214 = load i32, i32* %external334, align 4
  %tobool335 = icmp ne i32 %214, 0
  br i1 %tobool335, label %if.then.336, label %if.else.379

if.then.336:                                      ; preds = %if.end.333
  store i8* null, i8** %buf337, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.376, %if.then.336
  %215 = load i32, i32* %i, align 4
  %216 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary339 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %216, i32 0, i32 17
  %217 = load i32, i32* %nsecondary339, align 4
  %cmp340 = icmp ult i32 %215, %217
  br i1 %cmp340, label %for.body.342, label %for.end.378

for.body.342:                                     ; preds = %for.cond.338
  %218 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %stmp343 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %218, i32 0, i32 19
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %stmp343, align 8
  %call344 = call i8* @sre_fgets(i8** %buf337, i32* %n, %struct._IO_FILE* %219)
  %cmp345 = icmp eq i8* %call344, null
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %for.body.342
  store i32 1, i32* %retval
  br label %return

if.end.348:                                       ; preds = %for.body.342
  %220 = load i8*, i8** %buf337, align 8
  %call349 = call i32 @parse_skey_info(i8* %220, %struct.ssiskey_s* %skey)
  %cmp350 = icmp ne i32 %call349, 0
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.348
  store i32 6, i32* %retval
  br label %return

if.end.353:                                       ; preds = %if.end.348
  %221 = load i8*, i8** %s2, align 8
  %key354 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %skey, i32 0, i32 0
  %222 = load i8*, i8** %key354, align 8
  %call355 = call i8* @strcpy(i8* %221, i8* %222) #5
  %223 = load i8*, i8** %s, align 8
  %pkey356 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %skey, i32 0, i32 1
  %224 = load i8*, i8** %pkey356, align 8
  %call357 = call i8* @strcpy(i8* %223, i8* %224) #5
  %225 = load i8*, i8** %s2, align 8
  %226 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen358 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %226, i32 0, i32 16
  %227 = load i32, i32* %slen358, align 4
  %conv359 = zext i32 %227 to i64
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call360 = call i64 @fwrite(i8* %225, i64 1, i64 %conv359, %struct._IO_FILE* %228)
  %229 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen361 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %229, i32 0, i32 16
  %230 = load i32, i32* %slen361, align 4
  %conv362 = zext i32 %230 to i64
  %cmp363 = icmp ne i64 %call360, %conv362
  br i1 %cmp363, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %if.end.353
  store i32 15, i32* %retval
  br label %return

if.end.366:                                       ; preds = %if.end.353
  %231 = load i8*, i8** %s, align 8
  %232 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen367 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %232, i32 0, i32 11
  %233 = load i32, i32* %plen367, align 4
  %conv368 = zext i32 %233 to i64
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call369 = call i64 @fwrite(i8* %231, i64 1, i64 %conv368, %struct._IO_FILE* %234)
  %235 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen370 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %235, i32 0, i32 11
  %236 = load i32, i32* %plen370, align 4
  %conv371 = zext i32 %236 to i64
  %cmp372 = icmp ne i64 %call369, %conv371
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.end.366
  store i32 15, i32* %retval
  br label %return

if.end.375:                                       ; preds = %if.end.366
  br label %for.inc.376

for.inc.376:                                      ; preds = %if.end.375
  %237 = load i32, i32* %i, align 4
  %inc377 = add nsw i32 %237, 1
  store i32 %inc377, i32* %i, align 4
  br label %for.cond.338

for.end.378:                                      ; preds = %for.cond.338
  %238 = load i8*, i8** %buf337, align 8
  call void @free(i8* %238) #5
  br label %if.end.416

if.else.379:                                      ; preds = %if.end.333
  store i32 0, i32* %i, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.413, %if.else.379
  %239 = load i32, i32* %i, align 4
  %240 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %nsecondary381 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %240, i32 0, i32 17
  %241 = load i32, i32* %nsecondary381, align 4
  %cmp382 = icmp ult i32 %239, %241
  br i1 %cmp382, label %for.body.384, label %for.end.415

for.body.384:                                     ; preds = %for.cond.380
  %242 = load i8*, i8** %s2, align 8
  %243 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %243 to i64
  %244 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys386 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %244, i32 0, i32 15
  %245 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys386, align 8
  %arrayidx387 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %245, i64 %idxprom385
  %key388 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx387, i32 0, i32 0
  %246 = load i8*, i8** %key388, align 8
  %call389 = call i8* @strcpy(i8* %242, i8* %246) #5
  %247 = load i8*, i8** %s, align 8
  %248 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %248 to i64
  %249 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %skeys391 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %249, i32 0, i32 15
  %250 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skeys391, align 8
  %arrayidx392 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %250, i64 %idxprom390
  %pkey393 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %arrayidx392, i32 0, i32 1
  %251 = load i8*, i8** %pkey393, align 8
  %call394 = call i8* @strcpy(i8* %247, i8* %251) #5
  %252 = load i8*, i8** %s2, align 8
  %253 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen395 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %253, i32 0, i32 16
  %254 = load i32, i32* %slen395, align 4
  %conv396 = zext i32 %254 to i64
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call397 = call i64 @fwrite(i8* %252, i64 1, i64 %conv396, %struct._IO_FILE* %255)
  %256 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %slen398 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %256, i32 0, i32 16
  %257 = load i32, i32* %slen398, align 4
  %conv399 = zext i32 %257 to i64
  %cmp400 = icmp ne i64 %call397, %conv399
  br i1 %cmp400, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %for.body.384
  store i32 15, i32* %retval
  br label %return

if.end.403:                                       ; preds = %for.body.384
  %258 = load i8*, i8** %s, align 8
  %259 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen404 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %259, i32 0, i32 11
  %260 = load i32, i32* %plen404, align 4
  %conv405 = zext i32 %260 to i64
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call406 = call i64 @fwrite(i8* %258, i64 1, i64 %conv405, %struct._IO_FILE* %261)
  %262 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %plen407 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %262, i32 0, i32 11
  %263 = load i32, i32* %plen407, align 4
  %conv408 = zext i32 %263 to i64
  %cmp409 = icmp ne i64 %call406, %conv408
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.403
  store i32 15, i32* %retval
  br label %return

if.end.412:                                       ; preds = %if.end.403
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412
  %264 = load i32, i32* %i, align 4
  %inc414 = add nsw i32 %264, 1
  store i32 %inc414, i32* %i, align 4
  br label %for.cond.380

for.end.415:                                      ; preds = %for.cond.380
  br label %if.end.416

if.end.416:                                       ; preds = %for.end.415, %for.end.378
  %265 = load i8*, i8** %s2, align 8
  call void @free(i8* %265) #5
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %if.end.321
  %266 = load i8*, i8** %s, align 8
  call void @free(i8* %266) #5
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call418 = call i32 @fclose(%struct._IO_FILE* %267)
  %268 = load i32, i32* %status, align 4
  store i32 %268, i32* %retval
  br label %return

return:                                           ; preds = %if.end.417, %if.then.411, %if.then.402, %if.then.374, %if.then.365, %if.then.352, %if.then.347, %if.then.332, %if.then.316, %if.then.308, %if.then.300, %if.then.292, %if.then.284, %if.then.261, %if.then.257, %if.then.253, %if.then.249, %if.then.245, %if.then.235, %if.then.228, %if.then.214, %if.then.206, %if.then.199, %if.then.192, %if.then.188, %if.then.182, %if.then.157, %if.then.148, %if.then.144, %if.then.140, %if.then.135, %if.then.130, %if.then.125, %if.then.116, %if.then.112, %if.then.108, %if.then.104, %if.then.99, %if.then.94, %if.then.89, %if.then.84, %if.then.79, %if.then.74, %if.then.70, %if.then.62, %if.then.55, %if.then.44, %if.then.37, %if.then
  %269 = load i32, i32* %retval
  ret i32 %269
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @system(i8*) #2

declare i32 @specqsort(...) #2

; Function Attrs: nounwind uwtable
define internal i32 @pkeysort(i8* %k1, i8* %k2) #0 {
entry:
  %k1.addr = alloca i8*, align 8
  %k2.addr = alloca i8*, align 8
  %key1 = alloca %struct.ssipkey_s*, align 8
  %key2 = alloca %struct.ssipkey_s*, align 8
  store i8* %k1, i8** %k1.addr, align 8
  store i8* %k2, i8** %k2.addr, align 8
  %0 = load i8*, i8** %k1.addr, align 8
  %1 = bitcast i8* %0 to %struct.ssipkey_s*
  store %struct.ssipkey_s* %1, %struct.ssipkey_s** %key1, align 8
  %2 = load i8*, i8** %k2.addr, align 8
  %3 = bitcast i8* %2 to %struct.ssipkey_s*
  store %struct.ssipkey_s* %3, %struct.ssipkey_s** %key2, align 8
  %4 = load %struct.ssipkey_s*, %struct.ssipkey_s** %key1, align 8
  %key = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  %6 = load %struct.ssipkey_s*, %struct.ssipkey_s** %key2, align 8
  %key3 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  %call = call i32 @strcmp(i8* %5, i8* %7) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @skeysort(i8* %k1, i8* %k2) #0 {
entry:
  %k1.addr = alloca i8*, align 8
  %k2.addr = alloca i8*, align 8
  %key1 = alloca %struct.ssiskey_s*, align 8
  %key2 = alloca %struct.ssiskey_s*, align 8
  store i8* %k1, i8** %k1.addr, align 8
  store i8* %k2, i8** %k2.addr, align 8
  %0 = load i8*, i8** %k1.addr, align 8
  %1 = bitcast i8* %0 to %struct.ssiskey_s*
  store %struct.ssiskey_s* %1, %struct.ssiskey_s** %key1, align 8
  %2 = load i8*, i8** %k2.addr, align 8
  %3 = bitcast i8* %2 to %struct.ssiskey_s*
  store %struct.ssiskey_s* %3, %struct.ssiskey_s** %key2, align 8
  %4 = load %struct.ssiskey_s*, %struct.ssiskey_s** %key1, align 8
  %key = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  %6 = load %struct.ssiskey_s*, %struct.ssiskey_s** %key2, align 8
  %key3 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  %call = call i32 @strcmp(i8* %5, i8* %7) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @write_i32(%struct._IO_FILE* %fp, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 @sre_hton32(i32 %0)
  store i32 %call, i32* %n.addr, align 4
  %1 = bitcast i32* %n.addr to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @write_i16(%struct._IO_FILE* %fp, i16 zeroext %n) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca i16, align 2
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i16 %n, i16* %n.addr, align 2
  %0 = load i16, i16* %n.addr, align 2
  %call = call zeroext i16 @sre_hton16(i16 zeroext %0)
  store i16 %call, i16* %n.addr, align 2
  %1 = bitcast i16* %n.addr to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fwrite(i8* %1, i64 2, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @write_i64(%struct._IO_FILE* %fp, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64 @sre_hton64(i64 %0)
  store i64 %call, i64* %n.addr, align 8
  %1 = bitcast i64* %n.addr to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fwrite(i8* %1, i64 8, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_pkey_info(i8* %buf, i8 signext %mode, %struct.ssipkey_s* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %mode.addr = alloca i8, align 1
  %pkey.addr = alloca %struct.ssipkey_s*, align 8
  %s = alloca i8*, align 8
  %tok = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i8 %mode, i8* %mode.addr, align 1
  store %struct.ssipkey_s* %pkey, %struct.ssipkey_s** %pkey.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call, i8** %tok, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %tok, align 8
  %2 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %key = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %2, i32 0, i32 0
  store i8* %1, i8** %key, align 8
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call1, i8** %tok, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 6, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %tok, align 8
  %call5 = call i32 @atoi(i8* %3) #6
  %conv = trunc i32 %call5 to i16
  %4 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %fnum = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %4, i32 0, i32 1
  store i16 %conv, i16* %fnum, align 2
  %5 = load i8, i8* %mode.addr, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.4
  %call10 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call10, i8** %tok, align 8
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  store i32 6, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  %6 = load i8, i8* %mode.addr, align 1
  %7 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %r_off = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %7, i32 0, i32 2
  %mode15 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %r_off, i32 0, i32 0
  store i8 %6, i8* %mode15, align 1
  %8 = load i8*, i8** %tok, align 8
  %call16 = call i64 @strtoul(i8* %8, i8** null, i32 10) #5
  %conv17 = trunc i64 %call16 to i32
  %9 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %r_off18 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %9, i32 0, i32 2
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %r_off18, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  store i32 %conv17, i32* %i32, align 4
  %call19 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call19, i8** %tok, align 8
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.14
  store i32 6, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %10 = load i8, i8* %mode.addr, align 1
  %11 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %d_off = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %11, i32 0, i32 3
  %mode24 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %d_off, i32 0, i32 0
  store i8 %10, i8* %mode24, align 1
  %12 = load i8*, i8** %tok, align 8
  %call25 = call i64 @strtoul(i8* %12, i8** null, i32 10) #5
  %conv26 = trunc i64 %call25 to i32
  %13 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %d_off27 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %13, i32 0, i32 3
  %off28 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %d_off27, i32 0, i32 1
  %i3229 = bitcast %union.anon* %off28 to i32*
  store i32 %conv26, i32* %i3229, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.end.4
  store i32 7, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.23
  %call31 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call31, i8** %tok, align 8
  %cmp32 = icmp eq i8* %call31, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i32 6, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.30
  %14 = load i8*, i8** %tok, align 8
  %call36 = call i64 @strtoul(i8* %14, i8** null, i32 10) #5
  %conv37 = trunc i64 %call36 to i32
  %15 = load %struct.ssipkey_s*, %struct.ssipkey_s** %pkey.addr, align 8
  %len = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %15, i32 0, i32 4
  store i32 %conv37, i32* %len, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.else, %if.then.22, %if.then.13, %if.then.3, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @write_offset(%struct._IO_FILE* %fp, %struct.ssioffset_s* %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.ssioffset_s* %offset, %struct.ssioffset_s** %offset.addr, align 8
  %0 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %mode = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %0, i32 0, i32 0
  %1 = load i8, i8* %mode, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %off = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %3, i32 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %4 = load i32, i32* %i32, align 4
  %call = call i32 @write_i32(%struct._IO_FILE* %2, i32 %4)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %mode2 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %5, i32 0, i32 0
  %6 = load i8, i8* %mode2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %off7 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %8, i32 0, i32 1
  %i64 = bitcast %union.anon* %off7 to i64*
  %9 = load i64, i64* %i64, align 8
  %call8 = call i32 @write_i64(%struct._IO_FILE* %7, i64 %9)
  store i32 %call8, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  call void @abort() #7
  unreachable

return:                                           ; preds = %if.then.6, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_skey_info(i8* %buf, %struct.ssiskey_s* %skey) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %skey.addr = alloca %struct.ssiskey_s*, align 8
  %s = alloca i8*, align 8
  %tok = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.ssiskey_s* %skey, %struct.ssiskey_s** %skey.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call, i8** %tok, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %tok, align 8
  %2 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skey.addr, align 8
  %key = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %2, i32 0, i32 0
  store i8* %1, i8** %key, align 8
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %n)
  store i8* %call1, i8** %tok, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 6, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %tok, align 8
  %4 = load %struct.ssiskey_s*, %struct.ssiskey_s** %skey.addr, align 8
  %pkey = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %4, i32 0, i32 1
  store i8* %3, i8** %pkey, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @SSIErrorString(i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @SSIForceExternalSort(%struct.ssiindex_s* %g) #0 {
entry:
  %g.addr = alloca %struct.ssiindex_s*, align 8
  store %struct.ssiindex_s* %g, %struct.ssiindex_s** %g.addr, align 8
  %0 = load %struct.ssiindex_s*, %struct.ssiindex_s** %g.addr, align 8
  %call = call i32 @activate_external_sort(%struct.ssiindex_s* %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare zeroext i16 @sre_ntoh16(i16 zeroext) #2

declare zeroext i16 @sre_hton16(i16 zeroext) #2

declare i32 @sre_ntoh32(i32) #2

declare i32 @sre_hton32(i32) #2

declare i64 @sre_hton64(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @read_i64(%struct._IO_FILE* %fp, i64* %ret_result) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ret_result.addr = alloca i64*, align 8
  %result = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i64* %ret_result, i64** %ret_result.addr, align 8
  %0 = bitcast i64* %result to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 8, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %result, align 8
  %call1 = call i64 @sre_ntoh64(i64 %2)
  %3 = load i64*, i64** %ret_result.addr, align 8
  store i64 %call1, i64* %3, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i64 @sre_ntoh64(i64) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #1

declare i32 @FileExists(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
