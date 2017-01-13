; ModuleID = './MultiSource.Applications.ClamAV/69.libclamav_cvd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gzFile_s = type { i32, i8*, i64 }
%struct.cl_cvd = type { i8*, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"in cli_untgz()\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"cli_untgz: Can't duplicate descriptor %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"cli_untgz: Can't gzdopen() descriptor %d, errno = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cli_untgz: Can't allocate memory for path\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"cli_untgz: Incomplete block read\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"cli_untgz: Slash separators are not allowed in CVD\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"cli_untgz: Unpacking %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"cli_untgz: Directories are not supported in CVD\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"cli_untgz: Unknown type flag '%c'\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"cli_untgz: Cannot close file %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"cli_untgz: Cannot create file %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"cli_untgz: Invalid size in header\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"cli_untgz: Wrote %d instead of %d (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ClamAV-VDB:\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"cli_cvdparse: Not a CVD file\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"cl_cvdparse: Can't allocate memory for cvd\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"cli_cvdparse: Can't parse the creation time\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"cli_cvdparse: Can't parse the version number\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"cli_cvdparse: Can't parse the number of signatures\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"cli_cvdparse: Can't parse the functionality level\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"cli_cvdparse: Can't parse the MD5 checksum\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"cli_cvdparse: Can't parse the digital signature\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"cli_cvdparse: Can't parse the builder name\0A\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"cli_cvdparse: No creation time in seconds (old file format)\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"cl_cvdhead: Can't open file %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"cl_cvdhead: Can't read CVD header in %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"cl_cvdverify: Can't open file %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"in cli_cvdload()\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"**************************************************\0A\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"***  The virus database is older than 7 days!  ***\0A\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"***   Please update it as soon as possible.    ***\0A\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"***********************************************************\0A\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"***  This version of the ClamAV engine is outdated.     ***\0A\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"*** DON'T PANIC! Read http://www.clamav.net/support/faq ***\0A\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"cli_cvdload(): Can't create temporary directory %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"cli_cvdload(): lseek(fs, 512, SEEK_SET) failed\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"cli_cvdload(): Can't unpack CVD file.\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"cli_cvdverify: Can't read CVD header\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"MD5(.tar.gz) = %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"cli_cvdverify: MD5 verification error\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_untgz(i32 %fd, i8* %destdir) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %destdir.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %osize = alloca [13 x i8], align 1
  %name = alloca [101 x i8], align 16
  %type = alloca i8, align 1
  %block = alloca [512 x i8], align 16
  %nbytes = alloca i32, align 4
  %nread = alloca i32, align 4
  %nwritten = alloca i32, align 4
  %in_block = alloca i32, align 4
  %fdd = alloca i32, align 4
  %size = alloca i32, align 4
  %pathlen = alloca i32, align 4
  %outfile = alloca %struct._IO_FILE*, align 8
  %infile = alloca %struct.gzFile_s**, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %destdir, i8** %destdir.addr, align 8
  store i32 0, i32* %in_block, align 4
  %0 = load i8*, i8** %destdir.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 100
  %add1 = add i64 %add, 5
  %conv = trunc i64 %add1 to i32
  store i32 %conv, i32* %pathlen, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %outfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %1 = load i32, i32* %fd.addr, align 4
  %call2 = call i32 @dup(i32 %1) #5
  store i32 %call2, i32* %fdd, align 4
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fdd, align 4
  %call4 = call %struct.gzFile_s* @gzdopen(i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %4 = bitcast %struct.gzFile_s* %call4 to %struct.gzFile_s**
  store %struct.gzFile_s** %4, %struct.gzFile_s*** %infile, align 8
  %cmp5 = icmp eq %struct.gzFile_s** %4, null
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %5 = load i32, i32* %fdd, align 4
  %call8 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call8, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i32 %5, i32 %6)
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %7 = load i32, i32* %pathlen, align 4
  %conv10 = zext i32 %7 to i64
  %call11 = call i8* @cli_calloc(i64 1, i64 %conv10)
  store i8* %call11, i8** %path, align 8
  %8 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  br label %while.body

while.body:                                       ; preds = %if.end.13, %if.end.90
  %9 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %10 = bitcast %struct.gzFile_s** %9 to %struct.gzFile_s*
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %call14 = call i32 @gzread(%struct.gzFile_s* %10, i8* %arraydecay, i32 512)
  store i32 %call14, i32* %nread, align 4
  %11 = load i32, i32* %in_block, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %12 = load i32, i32* %nread, align 4
  %tobool16 = icmp ne i32 %12, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  br label %while.end

if.end.18:                                        ; preds = %land.lhs.true, %while.body
  %13 = load i32, i32* %nread, align 4
  %cmp19 = icmp ne i32 %13, 512
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  %14 = load i8*, i8** %path, align 8
  call void @free(i8* %14) #5
  %15 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %16 = bitcast %struct.gzFile_s** %15 to %struct.gzFile_s*
  %call22 = call i32 @gzclose(%struct.gzFile_s* %16)
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %17 = load i32, i32* %in_block, align 4
  %tobool24 = icmp ne i32 %17, 0
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  br label %while.end

if.end.30:                                        ; preds = %if.then.25
  %arraydecay31 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %call33 = call i8* @strncpy(i8* %arraydecay31, i8* %arraydecay32, i64 100) #5
  %arrayidx34 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i64 100
  store i8 0, i8* %arrayidx34, align 1
  %arraydecay35 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  %call36 = call i8* @strchr(i8* %arraydecay35, i32 47) #6
  %tobool37 = icmp ne i8* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.30
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0))
  %19 = load i8*, i8** %path, align 8
  call void @free(i8* %19) #5
  %20 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %21 = bitcast %struct.gzFile_s** %20 to %struct.gzFile_s*
  %call39 = call i32 @gzclose(%struct.gzFile_s* %21)
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.30
  %22 = load i8*, i8** %path, align 8
  %23 = load i32, i32* %pathlen, align 4
  %conv41 = zext i32 %23 to i64
  %24 = load i8*, i8** %destdir.addr, align 8
  %arraydecay42 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  %call43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %22, i64 %conv41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %24, i8* %arraydecay42) #5
  %25 = load i8*, i8** %path, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* %25)
  %arrayidx44 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i64 156
  %26 = load i8, i8* %arrayidx44, align 1
  store i8 %26, i8* %type, align 1
  %27 = load i8, i8* %type, align 1
  %conv45 = sext i8 %27 to i32
  switch i32 %conv45, label %sw.default [
    i32 48, label %sw.bb
    i32 0, label %sw.bb
    i32 53, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end.40, %if.end.40
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.40
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0))
  %28 = load i8*, i8** %path, align 8
  call void @free(i8* %28) #5
  %29 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %30 = bitcast %struct.gzFile_s** %29 to %struct.gzFile_s*
  %call47 = call i32 @gzclose(%struct.gzFile_s* %30)
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.40
  %31 = load i8, i8* %type, align 1
  %conv48 = sext i8 %31 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 %conv48)
  %32 = load i8*, i8** %path, align 8
  call void @free(i8* %32) #5
  %33 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %34 = bitcast %struct.gzFile_s** %33 to %struct.gzFile_s*
  %call49 = call i32 @gzclose(%struct.gzFile_s* %34)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  store i32 1, i32* %in_block, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool50 = icmp ne %struct._IO_FILE* %35, null
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %sw.epilog
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* %36)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.51
  %37 = load i8*, i8** %path, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* %37)
  %38 = load i8*, i8** %path, align 8
  call void @free(i8* %38) #5
  %39 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %40 = bitcast %struct.gzFile_s** %39 to %struct.gzFile_s*
  %call55 = call i32 @gzclose(%struct.gzFile_s* %40)
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.51
  store %struct._IO_FILE* null, %struct._IO_FILE** %outfile, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %sw.epilog
  %41 = load i8*, i8** %path, align 8
  %call58 = call %struct._IO_FILE* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call58, %struct._IO_FILE** %outfile, align 8
  %tobool59 = icmp ne %struct._IO_FILE* %call58, null
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  %42 = load i8*, i8** %path, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* %42)
  %43 = load i8*, i8** %path, align 8
  call void @free(i8* %43) #5
  %44 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %45 = bitcast %struct.gzFile_s** %44 to %struct.gzFile_s*
  %call61 = call i32 @gzclose(%struct.gzFile_s* %45)
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.57
  %arraydecay63 = getelementptr inbounds [13 x i8], [13 x i8]* %osize, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay64, i64 124
  %call65 = call i8* @strncpy(i8* %arraydecay63, i8* %add.ptr, i64 12) #5
  %arrayidx66 = getelementptr inbounds [13 x i8], [13 x i8]* %osize, i32 0, i64 12
  store i8 0, i8* %arrayidx66, align 1
  %arraydecay67 = getelementptr inbounds [13 x i8], [13 x i8]* %osize, i32 0, i32 0
  %call68 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %size) #5
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.62
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  %46 = load i8*, i8** %path, align 8
  call void @free(i8* %46) #5
  %47 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %48 = bitcast %struct.gzFile_s** %47 to %struct.gzFile_s*
  %call72 = call i32 @gzclose(%struct.gzFile_s* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call73 = call i32 @fclose(%struct._IO_FILE* %49)
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.62
  br label %if.end.90

if.else:                                          ; preds = %if.end.23
  %50 = load i32, i32* %size, align 4
  %cmp75 = icmp ugt i32 %50, 512
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %51 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 512, %cond.true ], [ %51, %cond.false ]
  store i32 %cond, i32* %nbytes, align 4
  %arraydecay77 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %52 = load i32, i32* %nbytes, align 4
  %conv78 = sext i32 %52 to i64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call79 = call i64 @fwrite(i8* %arraydecay77, i64 1, i64 %conv78, %struct._IO_FILE* %53)
  %conv80 = trunc i64 %call79 to i32
  store i32 %conv80, i32* %nwritten, align 4
  %54 = load i32, i32* %nwritten, align 4
  %55 = load i32, i32* %nbytes, align 4
  %cmp81 = icmp ne i32 %54, %55
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %cond.end
  %56 = load i32, i32* %nwritten, align 4
  %57 = load i32, i32* %nbytes, align 4
  %58 = load i8*, i8** %path, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i32 %56, i32 %57, i8* %58)
  %59 = load i8*, i8** %path, align 8
  call void @free(i8* %59) #5
  %60 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %61 = bitcast %struct.gzFile_s** %60 to %struct.gzFile_s*
  %call84 = call i32 @gzclose(%struct.gzFile_s* %61)
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %cond.end
  %62 = load i32, i32* %nbytes, align 4
  %63 = load i32, i32* %size, align 4
  %sub = sub i32 %63, %62
  store i32 %sub, i32* %size, align 4
  %64 = load i32, i32* %size, align 4
  %cmp86 = icmp eq i32 %64, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.85
  store i32 0, i32* %in_block, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.74
  br label %while.body

while.end:                                        ; preds = %if.then.29, %if.then.17
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool91 = icmp ne %struct._IO_FILE* %65, null
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %while.end
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call93 = call i32 @fclose(%struct._IO_FILE* %66)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %while.end
  %67 = load %struct.gzFile_s**, %struct.gzFile_s*** %infile, align 8
  %68 = bitcast %struct.gzFile_s** %67 to %struct.gzFile_s*
  %call95 = call i32 @gzclose(%struct.gzFile_s* %68)
  %69 = load i8*, i8** %path, align 8
  call void @free(i8* %69) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then.83, %if.then.71, %if.then.60, %if.then.54, %sw.default, %sw.bb.46, %if.then.38, %if.then.21, %if.then.12, %if.then.7, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @dup(i32) #3

declare void @cli_errmsg(i8*, ...) #2

declare %struct.gzFile_s* @gzdopen(i32, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @cli_calloc(i64, i64) #2

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @gzclose(%struct.gzFile_s*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @fclose(%struct._IO_FILE*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct.cl_cvd* @cl_cvdparse(i8* %head) #0 {
entry:
  %retval = alloca %struct.cl_cvd*, align 8
  %head.addr = alloca i8*, align 8
  %cvd = alloca %struct.cl_cvd*, align 8
  %pt = alloca i8*, align 8
  store i8* %head, i8** %head.addr, align 8
  %0 = load i8*, i8** %head.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i64 11) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @cli_malloc(i64 56)
  %1 = bitcast i8* %call1 to %struct.cl_cvd*
  store %struct.cl_cvd* %1, %struct.cl_cvd** %cvd, align 8
  %tobool2 = icmp ne %struct.cl_cvd* %1, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0))
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i8*, i8** %head.addr, align 8
  %call5 = call i8* @cli_strtok(i8* %2, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %3 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %3, i32 0, i32 0
  store i8* %call5, i8** %time, align 8
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0))
  %4 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %5 = bitcast %struct.cl_cvd* %4 to i8*
  call void @free(i8* %5) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8*, i8** %head.addr, align 8
  %call9 = call i8* @cli_strtok(i8* %6, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %call9, i8** %pt, align 8
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0))
  %7 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time12 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %7, i32 0, i32 0
  %8 = load i8*, i8** %time12, align 8
  call void @free(i8* %8) #5
  %9 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %10 = bitcast %struct.cl_cvd* %9 to i8*
  call void @free(i8* %10) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %11 = load i8*, i8** %pt, align 8
  %call14 = call i32 @atoi(i8* %11) #6
  %12 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %version = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %12, i32 0, i32 1
  store i32 %call14, i32* %version, align 4
  %13 = load i8*, i8** %pt, align 8
  call void @free(i8* %13) #5
  %14 = load i8*, i8** %head.addr, align 8
  %call15 = call i8* @cli_strtok(i8* %14, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %call15, i8** %pt, align 8
  %tobool16 = icmp ne i8* %call15, null
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0))
  %15 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time18 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %15, i32 0, i32 0
  %16 = load i8*, i8** %time18, align 8
  call void @free(i8* %16) #5
  %17 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %18 = bitcast %struct.cl_cvd* %17 to i8*
  call void @free(i8* %18) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  %19 = load i8*, i8** %pt, align 8
  %call20 = call i32 @atoi(i8* %19) #6
  %20 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %sigs = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %20, i32 0, i32 2
  store i32 %call20, i32* %sigs, align 4
  %21 = load i8*, i8** %pt, align 8
  call void @free(i8* %21) #5
  %22 = load i8*, i8** %head.addr, align 8
  %call21 = call i8* @cli_strtok(i8* %22, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %call21, i8** %pt, align 8
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i32 0, i32 0))
  %23 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time24 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %23, i32 0, i32 0
  %24 = load i8*, i8** %time24, align 8
  call void @free(i8* %24) #5
  %25 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %26 = bitcast %struct.cl_cvd* %25 to i8*
  call void @free(i8* %26) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %27 = load i8*, i8** %pt, align 8
  %call26 = call i32 @atoi(i8* %27) #6
  %28 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %fl = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %28, i32 0, i32 3
  store i32 %call26, i32* %fl, align 4
  %29 = load i8*, i8** %pt, align 8
  call void @free(i8* %29) #5
  %30 = load i8*, i8** %head.addr, align 8
  %call27 = call i8* @cli_strtok(i8* %30, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %31 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %md5 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %31, i32 0, i32 4
  store i8* %call27, i8** %md5, align 8
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0))
  %32 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time30 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %32, i32 0, i32 0
  %33 = load i8*, i8** %time30, align 8
  call void @free(i8* %33) #5
  %34 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %35 = bitcast %struct.cl_cvd* %34 to i8*
  call void @free(i8* %35) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.25
  %36 = load i8*, i8** %head.addr, align 8
  %call32 = call i8* @cli_strtok(i8* %36, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %37 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %dsig = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %37, i32 0, i32 5
  store i8* %call32, i8** %dsig, align 8
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i32 0, i32 0))
  %38 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time35 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %38, i32 0, i32 0
  %39 = load i8*, i8** %time35, align 8
  call void @free(i8* %39) #5
  %40 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %md536 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %40, i32 0, i32 4
  %41 = load i8*, i8** %md536, align 8
  call void @free(i8* %41) #5
  %42 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %43 = bitcast %struct.cl_cvd* %42 to i8*
  call void @free(i8* %43) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.31
  %44 = load i8*, i8** %head.addr, align 8
  %call38 = call i8* @cli_strtok(i8* %44, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %45 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %builder = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %45, i32 0, i32 6
  store i8* %call38, i8** %builder, align 8
  %tobool39 = icmp ne i8* %call38, null
  br i1 %tobool39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0))
  %46 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %time41 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %46, i32 0, i32 0
  %47 = load i8*, i8** %time41, align 8
  call void @free(i8* %47) #5
  %48 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %md542 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %48, i32 0, i32 4
  %49 = load i8*, i8** %md542, align 8
  call void @free(i8* %49) #5
  %50 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %dsig43 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %50, i32 0, i32 5
  %51 = load i8*, i8** %dsig43, align 8
  call void @free(i8* %51) #5
  %52 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %53 = bitcast %struct.cl_cvd* %52 to i8*
  call void @free(i8* %53) #5
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.37
  %54 = load i8*, i8** %head.addr, align 8
  %call45 = call i8* @cli_strtok(i8* %54, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %call45, i8** %pt, align 8
  %tobool46 = icmp ne i8* %call45, null
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.44
  %55 = load i8*, i8** %pt, align 8
  %call48 = call i32 @atoi(i8* %55) #6
  %56 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %stime = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %56, i32 0, i32 7
  store i32 %call48, i32* %stime, align 4
  %57 = load i8*, i8** %pt, align 8
  call void @free(i8* %57) #5
  br label %if.end.50

if.else:                                          ; preds = %if.end.44
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i32 0, i32 0))
  %58 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %stime49 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %58, i32 0, i32 7
  store i32 0, i32* %stime49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.47
  %59 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  store %struct.cl_cvd* %59, %struct.cl_cvd** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.40, %if.then.34, %if.then.29, %if.then.23, %if.then.17, %if.then.11, %if.then.7, %if.then.3, %if.then
  %60 = load %struct.cl_cvd*, %struct.cl_cvd** %retval
  ret %struct.cl_cvd* %60
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare i8* @cli_malloc(i64) #2

declare i8* @cli_strtok(i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.cl_cvd* @cl_cvdhead(i8* %file) #0 {
entry:
  %retval = alloca %struct.cl_cvd*, align 8
  %file.addr = alloca i8*, align 8
  %fs = alloca %struct._IO_FILE*, align 8
  %head = alloca [513 x i8], align 16
  %pt = alloca i8*, align 8
  %i = alloca i32, align 4
  %bread = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fs, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i8* %1)
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 512, %struct._IO_FILE* %2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %bread, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %4)
  store %struct.cl_cvd* null, %struct.cl_cvd** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %5)
  %6 = load i32, i32* %bread, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay6 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i32 0
  %call7 = call i8* @strpbrk(i8* %arraydecay6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call7, i8** %pt, align 8
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %7 = load i8*, i8** %pt, align 8
  store i8 0, i8* %7, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.4
  %8 = load i32, i32* %bread, align 4
  %sub = sub i32 %8, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %9 = load i32, i32* %i, align 4
  %cmp11 = icmp sgt i32 %9, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom13
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 32
  br i1 %cmp16, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %12 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom18
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp eq i32 %conv20, 10
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom23
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp eq i32 %conv25, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp26, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %16, %lor.end ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %arraydecay30 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i32 0
  %call31 = call %struct.cl_cvd* @cl_cvdparse(i8* %arraydecay30)
  store %struct.cl_cvd* %call31, %struct.cl_cvd** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %20 = load %struct.cl_cvd*, %struct.cl_cvd** %retval
  ret %struct.cl_cvd* %20
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @cl_cvdfree(%struct.cl_cvd* %cvd) #0 {
entry:
  %cvd.addr = alloca %struct.cl_cvd*, align 8
  store %struct.cl_cvd* %cvd, %struct.cl_cvd** %cvd.addr, align 8
  %0 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd.addr, align 8
  %time = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %0, i32 0, i32 0
  %1 = load i8*, i8** %time, align 8
  call void @free(i8* %1) #5
  %2 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd.addr, align 8
  %md5 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %2, i32 0, i32 4
  %3 = load i8*, i8** %md5, align 8
  call void @free(i8* %3) #5
  %4 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd.addr, align 8
  %dsig = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %4, i32 0, i32 5
  %5 = load i8*, i8** %dsig, align 8
  call void @free(i8* %5) #5
  %6 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd.addr, align 8
  %builder = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %6, i32 0, i32 6
  %7 = load i8*, i8** %builder, align 8
  call void @free(i8* %7) #5
  %8 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd.addr, align 8
  %9 = bitcast %struct.cl_cvd* %8 to i8*
  call void @free(i8* %9) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cl_cvdverify(i8* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %fs = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fs, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0), i8* %1)
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call1 = call i32 @cli_cvdverify(%struct._IO_FILE* %2, %struct.cl_cvd* null)
  store i32 %call1, i32* %ret, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_cvdverify(%struct._IO_FILE* %fs, %struct.cl_cvd* %cvdpt) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct._IO_FILE*, align 8
  %cvdpt.addr = alloca %struct.cl_cvd*, align 8
  %cvd = alloca %struct.cl_cvd*, align 8
  %md5 = alloca i8*, align 8
  %head = alloca [513 x i8], align 16
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fs, %struct._IO_FILE** %fs.addr, align 8
  store %struct.cl_cvd* %cvdpt, %struct.cl_cvd** %cvdpt.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fs.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 0)
  %arraydecay = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fs.addr, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 512, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call1, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0))
  store i32 -119, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 512
  store i8 0, i8* %arrayidx, align 1
  store i32 511, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %cmp9, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %7, %lor.end ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i64 %idxprom11
  store i8 0, i8* %arrayidx12, align 1
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %arraydecay13 = getelementptr inbounds [513 x i8], [513 x i8]* %head, i32 0, i32 0
  %call14 = call %struct.cl_cvd* @cl_cvdparse(i8* %arraydecay13)
  store %struct.cl_cvd* %call14, %struct.cl_cvd** %cvd, align 8
  %cmp15 = icmp eq %struct.cl_cvd* %call14, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 -119, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.end
  %11 = load %struct.cl_cvd*, %struct.cl_cvd** %cvdpt.addr, align 8
  %tobool = icmp ne %struct.cl_cvd* %11, null
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.18
  %12 = load %struct.cl_cvd*, %struct.cl_cvd** %cvdpt.addr, align 8
  %13 = bitcast %struct.cl_cvd* %12 to i8*
  %14 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %15 = bitcast %struct.cl_cvd* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 56, i32 8, i1 false)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.18
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fs.addr, align 8
  %call21 = call i8* @cli_md5stream(%struct._IO_FILE* %16, i8* null)
  store i8* %call21, i8** %md5, align 8
  %17 = load i8*, i8** %md5, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i8* %17)
  %18 = load i8*, i8** %md5, align 8
  %19 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  %md522 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %19, i32 0, i32 4
  %20 = load i8*, i8** %md522, align 8
  %call23 = call i32 @strncmp(i8* %18, i8* %20, i64 32) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0))
  %21 = load i8*, i8** %md5, align 8
  call void @free(i8* %21) #5
  %22 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  call void @cl_cvdfree(%struct.cl_cvd* %22)
  store i32 -121, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %23 = load i8*, i8** %md5, align 8
  call void @free(i8* %23) #5
  %24 = load %struct.cl_cvd*, %struct.cl_cvd** %cvd, align 8
  call void @cl_cvdfree(%struct.cl_cvd* %24)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.17, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @cli_cvdload(%struct._IO_FILE* %fs, %struct.cl_engine** %engine, i32* %signo, i16 signext %warn, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %warn.addr = alloca i16, align 2
  %options.addr = alloca i32, align 4
  %dir = alloca i8*, align 8
  %cvd = alloca %struct.cl_cvd, align 8
  %ret = alloca i32, align 4
  %s_time = alloca i64, align 8
  %cfd = alloca i32, align 4
  store %struct._IO_FILE* %fs, %struct._IO_FILE** %fs.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i16 %warn, i16* %warn.addr, align 2
  store i32 %options, i32* %options.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fs.addr, align 8
  %call = call i32 @cli_cvdverify(%struct._IO_FILE* %0, %struct.cl_cvd* %cvd)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %stime = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %cvd, i32 0, i32 7
  %2 = load i32, i32* %stime, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %3 = load i16, i16* %warn.addr, align 2
  %conv = sext i16 %3 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %land.lhs.true
  %call4 = call i64 @time(i64* %s_time) #5
  %4 = load i64, i64* %s_time, align 8
  %conv5 = trunc i64 %4 to i32
  %stime6 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %cvd, i32 0, i32 7
  %5 = load i32, i32* %stime6, align 4
  %sub = sub i32 %conv5, %5
  %cmp = icmp ugt i32 %sub, 604800
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i32 0, i32 0))
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0))
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.36, i32 0, i32 0))
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %if.end
  %fl = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %cvd, i32 0, i32 3
  %6 = load i32, i32* %fl, align 4
  %call11 = call i32 @cl_retflevel()
  %cmp12 = icmp ugt i32 %6, %call11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i32 0, i32 0))
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i32 0, i32 0))
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i32 0, i32 0))
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  %call16 = call i8* @cli_gentemp(i8* null)
  store i8* %call16, i8** %dir, align 8
  %7 = load i8*, i8** %dir, align 8
  %call17 = call i32 @mkdir(i8* %7, i32 448) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %8 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0), i8* %8)
  %9 = load i8*, i8** %dir, align 8
  call void @free(i8* %9) #5
  store i32 -118, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fs.addr, align 8
  %call21 = call i32 @fileno(%struct._IO_FILE* %10) #5
  store i32 %call21, i32* %cfd, align 4
  %11 = load i32, i32* %cfd, align 4
  %call22 = call i64 @lseek(i32 %11, i64 512, i32 0) #5
  %cmp23 = icmp eq i64 %call22, -1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %12 = load i32, i32* %cfd, align 4
  %13 = load i8*, i8** %dir, align 8
  %call27 = call i32 @cli_untgz(i32 %12, i8* %13)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0))
  %14 = load i8*, i8** %dir, align 8
  call void @free(i8* %14) #5
  store i32 -120, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %15 = load i8*, i8** %dir, align 8
  %16 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %17 = load i32*, i32** %signo.addr, align 8
  %18 = load i32, i32* %options.addr, align 4
  %call31 = call i32 @cl_load(i8* %15, %struct.cl_engine** %16, i32* %17, i32 %18)
  store i32 %call31, i32* %ret, align 4
  %19 = load i8*, i8** %dir, align 8
  %call32 = call i32 @cli_rmdirs(i8* %19)
  %20 = load i8*, i8** %dir, align 8
  call void @free(i8* %20) #5
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.25, %if.then.19, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @cli_warnmsg(i8*, ...) #2

declare i32 @cl_retflevel() #2

declare i8* @cli_gentemp(i8*) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @cl_load(i8*, %struct.cl_engine**, i32*, i32) #2

declare i32 @cli_rmdirs(i8*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @cli_md5stream(%struct._IO_FILE*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
