; ModuleID = 'feat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_s = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i32, void (%struct.feat_s*, float**, float**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"feat.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Reading feature file: '%s'[%d..%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: End frame (%d) <= Start frame (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"bio_readhdr(%s) failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%s: Version mismatch: %s, expecting %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"chksum0\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"%s: fread(#frames) failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"%s: Missing or bad #feature streams\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"%s: Missing or bad feature stream size\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"%s: Start frame (%d) beyond file size (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"%s: Feature buffer size(%d frames) < actual #frames(%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%s: fread(%dx%d) (feature data) failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Writing feature file: '%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"fopen(%s,wb) failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"%s: fwrite(%dx%d feature data) failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Reading mfc file: '%s'[%d..%d]\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"stat_retry/fopen(%s) failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"%s: fread(#floats) failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"%s: Header size field: %d(%08x); filesize: %d(%08x)\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"%s: Header size field (#floats) = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Header size field: %d; not multiple of %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"%s: MFC buffer size(%d frames) < actual #frames(%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"%s: fread(%dx%d) (MFC data) failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Sum(feature stream lengths) = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"Initializing feature stream to type: '%s', CMN='%s', VARNORM='%s', AGC='%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"s2_4x\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"s3_1x39\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"1s_c_d_dd\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"cep_dcep\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Bad feature type argument: '%s'\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"cep\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Bad feature type argument\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Unsupported CMN type '%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Unsupported VARNORM type '%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Unsupported AGC type '%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%8d:\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"\09%2d:\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c" %8.4f\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Bad cepsize: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c".mfc\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"%s/%s.mfc\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"%s.mfc\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"%s: MFC file/segment too short to compute features: %d frames\0A\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"%s: Feature buffer size(%d frames) < required(%d)\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"CMN\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"AGC\0A\00", align 1
@feat_s2mfc2feat_block.cepbuf = internal global float** null, align 8
@feat_s2mfc2feat_block.tmpcepbuf = internal global float** null, align 8
@feat_s2mfc2feat_block.bufpos = internal global i32 0, align 4
@feat_s2mfc2feat_block.curpos = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [52 x i8] c"Unable to allocate cepbuf ckd_calloc_2d(%ld,%d,%d)\0A\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"Feature buffers initialized to %d vectors\0A\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"Unable to allocate tmpcepbuf ckd_calloc_2d(%ld,%d,%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @feat_readfile(%struct.feat_s* %fcb, i8* %file, i32 %sf, i32 %ef, float*** %feat, i32 %maxfr) #0 {
entry:
  %retval = alloca i32, align 4
  %fcb.addr = alloca %struct.feat_s*, align 8
  %file.addr = alloca i8*, align 8
  %sf.addr = alloca i32, align 4
  %ef.addr = alloca i32, align 4
  %feat.addr = alloca float***, align 8
  %maxfr.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %nfr = alloca i32, align 4
  %byteswap = alloca i32, align 4
  %chksum_present = alloca i32, align 4
  %chksum = alloca i32, align 4
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %sf, i32* %sf.addr, align 4
  store i32 %ef, i32* %ef.addr, align 4
  store float*** %feat, float**** %feat.addr, align 8
  store i32 %maxfr, i32* %maxfr.addr, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %sf.addr, align 4
  %2 = load i32, i32* %ef.addr, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %0, i32 %1, i32 %2)
  %3 = load i32, i32* %ef.addr, align 4
  %4 = load i32, i32* %sf.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %5 = load i8*, i8** %file.addr, align 8
  %6 = load i32, i32* %ef.addr, align 4
  %7 = load i32, i32* %sf.addr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* %5, i32 %6, i32 %7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %9 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %9)
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @bio_readhdr(%struct._IO_FILE* %10, i8*** %argname, i8*** %argval, i32* %byteswap)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %11 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %12)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  store i32 0, i32* %chksum_present, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %argname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i8**, i8*** %argname, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %17, i64 %idxprom9
  %18 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i8**, i8*** %argval, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %20, i64 %idxprom14
  %21 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #5
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.13
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %22 = load i8*, i8** %file.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i8**, i8*** %argval, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %24, i64 %idxprom19
  %25 = load i8*, i8** %arrayidx20, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* %22, i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.then.13
  br label %if.end.28

if.else:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load i8**, i8*** %argname, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %27, i64 %idxprom22
  %28 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  store i32 1, i32* %chksum_present, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i8**, i8*** %argname, align 8
  %31 = load i8**, i8*** %argval, align 8
  call void @bio_hdrarg_free(i8** %30, i8** %31)
  store i8** null, i8*** %argval, align 8
  store i8** null, i8*** %argname, align 8
  store i32 0, i32* %chksum, align 4
  %32 = bitcast i32* %nfr to i8*
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %34 = load i32, i32* %byteswap, align 4
  %call29 = call i32 @bio_fread(i8* %32, i32 4, i32 1, %struct._IO_FILE* %33, i32 %34, i32* %chksum)
  %cmp30 = icmp ne i32 %call29, 1
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %35 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* %36)
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %for.end
  %37 = bitcast i32* %l to i8*
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %39 = load i32, i32* %byteswap, align 4
  %call34 = call i32 @bio_fread(i8* %37, i32 4, i32 1, %struct._IO_FILE* %38, i32 %39, i32* %chksum)
  %cmp35 = icmp ne i32 %call34, 1
  br i1 %cmp35, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %40 = load i32, i32* %l, align 4
  %41 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %41, i32 0, i32 3
  %42 = load i32, i32* %n_stream, align 4
  %cmp36 = icmp ne i32 %40, %42
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.33
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %43 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %44)
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.53, %if.end.39
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream41 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %46, i32 0, i32 3
  %47 = load i32, i32* %n_stream41, align 4
  %cmp42 = icmp slt i32 %45, %47
  br i1 %cmp42, label %for.body.43, label %for.end.55

for.body.43:                                      ; preds = %for.cond.40
  %48 = bitcast i32* %l to i8*
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %50 = load i32, i32* %byteswap, align 4
  %call44 = call i32 @bio_fread(i8* %48, i32 4, i32 1, %struct._IO_FILE* %49, i32 %50, i32* %chksum)
  %cmp45 = icmp ne i32 %call44, 1
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %for.body.43
  %51 = load i32, i32* %l, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %52 to i64
  %53 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %53, i32 0, i32 4
  %54 = load i32*, i32** %stream_len, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %54, i64 %idxprom47
  %55 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp ne i32 %51, %55
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %lor.lhs.false.46, %for.body.43
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %56 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i8* %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call51 = call i32 @fclose(%struct._IO_FILE* %57)
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false.46
  %58 = load i32, i32* %l, align 4
  %59 = load i32, i32* %k, align 4
  %add = add nsw i32 %59, %58
  store i32 %add, i32* %k, align 4
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %60 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %60, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.40

for.end.55:                                       ; preds = %for.cond.40
  %61 = load i32, i32* %sf.addr, align 4
  %cmp56 = icmp sgt i32 %61, 0
  br i1 %cmp56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %for.end.55
  %62 = load i32, i32* %sf.addr, align 4
  %63 = load i32, i32* %nfr, align 4
  %cmp58 = icmp sge i32 %62, %63
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.57
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %64 = load i8*, i8** %file.addr, align 8
  %65 = load i32, i32* %sf.addr, align 4
  %66 = load i32, i32* %nfr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), i8* %64, i32 %65, i32 %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %67)
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.57
  %68 = load i32, i32* %sf.addr, align 4
  %69 = load i32, i32* %nfr, align 4
  %sub = sub nsw i32 %69, %68
  store i32 %sub, i32* %nfr, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.end.55
  %70 = load i32, i32* %ef.addr, align 4
  %71 = load i32, i32* %sf.addr, align 4
  %sub63 = sub nsw i32 %70, %71
  %add64 = add nsw i32 %sub63, 1
  %72 = load i32, i32* %nfr, align 4
  %cmp65 = icmp slt i32 %add64, %72
  br i1 %cmp65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.62
  %73 = load i32, i32* %ef.addr, align 4
  %74 = load i32, i32* %sf.addr, align 4
  %sub67 = sub nsw i32 %73, %74
  %add68 = add nsw i32 %sub67, 1
  store i32 %add68, i32* %nfr, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.end.62
  %75 = load i32, i32* %nfr, align 4
  %76 = load i32, i32* %maxfr.addr, align 4
  %cmp70 = icmp sgt i32 %75, %76
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.69
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %77 = load i8*, i8** %file.addr, align 8
  %78 = load i32, i32* %maxfr.addr, align 4
  %79 = load i32, i32* %nfr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0), i8* %77, i32 %78, i32 %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call72 = call i32 @fclose(%struct._IO_FILE* %80)
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.69
  %81 = load i32, i32* %sf.addr, align 4
  %cmp74 = icmp sgt i32 %81, 0
  br i1 %cmp74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.73
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %83 = load i32, i32* %sf.addr, align 4
  %84 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %83, %84
  %conv = sext i32 %mul to i64
  %mul76 = mul i64 %conv, 4
  %call77 = call i32 @fseek(%struct._IO_FILE* %82, i64 %mul76, i32 1)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.73
  %85 = load float***, float**** %feat.addr, align 8
  %arrayidx79 = getelementptr inbounds float**, float*** %85, i64 0
  %86 = load float**, float*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds float*, float** %86, i64 0
  %87 = load float*, float** %arrayidx80, align 8
  %88 = bitcast float* %87 to i8*
  %89 = load i32, i32* %nfr, align 4
  %90 = load i32, i32* %k, align 4
  %mul81 = mul nsw i32 %89, %90
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %92 = load i32, i32* %byteswap, align 4
  %call82 = call i32 @bio_fread(i8* %88, i32 4, i32 %mul81, %struct._IO_FILE* %91, i32 %92, i32* %chksum)
  %93 = load i32, i32* %nfr, align 4
  %94 = load i32, i32* %k, align 4
  %mul83 = mul nsw i32 %93, %94
  %cmp84 = icmp ne i32 %call82, %mul83
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.78
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %95 = load i8*, i8** %file.addr, align 8
  %96 = load i32, i32* %nfr, align 4
  %97 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i8* %95, i32 %96, i32 %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call87 = call i32 @fclose(%struct._IO_FILE* %98)
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.78
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call89 = call i32 @fclose(%struct._IO_FILE* %99)
  %100 = load i32, i32* %nfr, align 4
  store i32 %100, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.86, %if.then.71, %if.then.59, %if.then.50, %if.then.37, %if.then.31, %if.then.6, %if.then.2, %if.then
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @bio_readhdr(%struct._IO_FILE*, i8***, i8***, i32*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @bio_hdrarg_free(i8**, i8**) #1

declare i32 @bio_fread(i8*, i32, i32, %struct._IO_FILE*, i32, i32*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define i32 @feat_writefile(%struct.feat_s* %fcb, i8* %file, float*** %feat, i32 %nfr) #0 {
entry:
  %retval = alloca i32, align 4
  %fcb.addr = alloca %struct.feat_s*, align 8
  %file.addr = alloca i8*, align 8
  %feat.addr = alloca float***, align 8
  %nfr.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store float*** %feat, float**** %feat.addr, align 8
  store i32 %nfr, i32* %nfr.addr, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* %2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @bio_writehdr_version(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %4 = bitcast i32* %nfr.addr to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %5)
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 3
  %7 = bitcast i32* %n_stream to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i64 @fwrite(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream4 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %10, i32 0, i32 3
  %11 = load i32, i32* %n_stream4, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %13, i32 0, i32 4
  %14 = load i32*, i32** %stream_len, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = bitcast i32* %arrayidx to i8*
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i64 @fwrite(i8* %15, i64 4, i64 1, %struct._IO_FILE* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len8 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %18, i32 0, i32 4
  %19 = load i32*, i32** %stream_len8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom7
  %20 = load i32, i32* %arrayidx9, align 4
  %21 = load i32, i32* %k, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load float***, float**** %feat.addr, align 8
  %arrayidx10 = getelementptr inbounds float**, float*** %23, i64 0
  %24 = load float**, float*** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %24, i64 0
  %25 = load float*, float** %arrayidx11, align 8
  %26 = bitcast float* %25 to i8*
  %27 = load i32, i32* %nfr.addr, align 4
  %28 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %27, %28
  %conv = sext i32 %mul to i64
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i64 @fwrite(i8* %26, i64 4, i64 %conv, %struct._IO_FILE* %29)
  %conv13 = trunc i64 %call12 to i32
  %30 = load i32, i32* %nfr.addr, align 4
  %31 = load i32, i32* %k, align 4
  %mul14 = mul nsw i32 %30, %31
  %cmp15 = icmp ne i32 %conv13, %mul14
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %32 = load i8*, i8** %file.addr, align 8
  %33 = load i32, i32* %nfr.addr, align 4
  %34 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i8* %32, i32 %33, i32 %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* %35)
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %36)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @bio_writehdr_version(%struct._IO_FILE*, i8*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @feat_s2mfc_read(i8* %file, i32 %sf, i32 %ef, float** %mfc, i32 %maxfr) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %sf.addr = alloca i32, align 4
  %ef.addr = alloca i32, align 4
  %mfc.addr = alloca float**, align 8
  %maxfr.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %n_float32 = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %byterev = alloca i32, align 4
  %cepsize = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %sf, i32* %sf.addr, align 4
  store i32 %ef, i32* %ef.addr, align 4
  store float** %mfc, float*** %mfc.addr, align 8
  store i32 %maxfr, i32* %maxfr.addr, align 4
  %0 = load i32, i32* %ef.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2147418112, i32* %ef.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %1 = load i8*, i8** %file.addr, align 8
  %2 = load i32, i32* %sf.addr, align 4
  %3 = load i32, i32* %ef.addr, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i8* %1, i32 %2, i32 %3)
  %4 = load i32, i32* %ef.addr, align 4
  %5 = load i32, i32* %sf.addr, align 4
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load i32, i32* %ef.addr, align 4
  %8 = load i32, i32* %sf.addr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* %6, i32 %7, i32 %8)
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 13, i32* %cepsize, align 4
  %9 = load i8*, i8** %file.addr, align 8
  %call = call i32 @stat_retry(i8* %9, %struct.stat* %statbuf)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %10 = load i8*, i8** %file.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fp, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.3
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %11 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* %11)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %12 = bitcast i32* %n_float32 to i8*
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 @fread_retry(i8* %12, i32 4, i32 1, %struct._IO_FILE* %13)
  %cmp10 = icmp ne i32 %call9, 1
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %14 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %15)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  store i32 0, i32* %byterev, align 4
  %16 = load i32, i32* %n_float32, align 4
  %conv = sext i32 %16 to i64
  %mul = mul i64 %conv, 4
  %add = add i64 %mul, 4
  %conv14 = trunc i64 %add to i32
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %17 = load i64, i64* %st_size, align 8
  %conv15 = trunc i64 %17 to i32
  %cmp16 = icmp ne i32 %conv14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %if.end.13
  %18 = load i32, i32* %n_float32, align 4
  store i32 %18, i32* %n, align 4
  %19 = load i32, i32* %n, align 4
  %shr = ashr i32 %19, 24
  %and = and i32 255, %shr
  %20 = load i32, i32* %n, align 4
  %shr19 = ashr i32 %20, 8
  %and20 = and i32 65280, %shr19
  %or = or i32 %and, %and20
  %21 = load i32, i32* %n, align 4
  %shl = shl i32 %21, 8
  %and21 = and i32 16711680, %shl
  %or22 = or i32 %or, %and21
  %22 = load i32, i32* %n, align 4
  %shl23 = shl i32 %22, 24
  %and24 = and i32 -16777216, %shl23
  %or25 = or i32 %or22, %and24
  store i32 %or25, i32* %n, align 4
  %23 = load i32, i32* %n, align 4
  %conv26 = sext i32 %23 to i64
  %mul27 = mul i64 %conv26, 4
  %add28 = add i64 %mul27, 4
  %conv29 = trunc i64 %add28 to i32
  %st_size30 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %24 = load i64, i64* %st_size30, align 8
  %conv31 = trunc i64 %24 to i32
  %cmp32 = icmp ne i32 %conv29, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.then.18
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %25 = load i8*, i8** %file.addr, align 8
  %26 = load i32, i32* %n_float32, align 4
  %27 = load i32, i32* %n_float32, align 4
  %st_size35 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %28 = load i64, i64* %st_size35, align 8
  %st_size36 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %29 = load i64, i64* %st_size36, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0), i8* %25, i32 %26, i32 %27, i64 %28, i64 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call37 = call i32 @fclose(%struct._IO_FILE* %30)
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.18
  %31 = load i32, i32* %n, align 4
  store i32 %31, i32* %n_float32, align 4
  store i32 1, i32* %byterev, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.13
  %32 = load i32, i32* %n_float32, align 4
  %cmp40 = icmp sle i32 %32, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %33 = load i8*, i8** %file.addr, align 8
  %34 = load i32, i32* %n_float32, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0), i8* %33, i32 %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call43 = call i32 @fclose(%struct._IO_FILE* %35)
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  %36 = load i32, i32* %n_float32, align 4
  %37 = load i32, i32* %cepsize, align 4
  %div = sdiv i32 %36, %37
  store i32 %div, i32* %n, align 4
  %38 = load i32, i32* %n, align 4
  %39 = load i32, i32* %cepsize, align 4
  %mul45 = mul nsw i32 %38, %39
  %40 = load i32, i32* %n_float32, align 4
  %cmp46 = icmp ne i32 %mul45, %40
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.44
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %41 = load i32, i32* %n_float32, align 4
  %42 = load i32, i32* %cepsize, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0), i32 %41, i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %43)
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  %44 = load i32, i32* %sf.addr, align 4
  %cmp51 = icmp sgt i32 %44, 0
  br i1 %cmp51, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %if.end.50
  %45 = load i32, i32* %sf.addr, align 4
  %46 = load i32, i32* %n, align 4
  %cmp54 = icmp sge i32 %45, %46
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.53
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %47 = load i8*, i8** %file.addr, align 8
  %48 = load i32, i32* %sf.addr, align 4
  %49 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), i8* %47, i32 %48, i32 %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call57 = call i32 @fclose(%struct._IO_FILE* %50)
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.53
  %51 = load i32, i32* %sf.addr, align 4
  %52 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %52, %51
  store i32 %sub, i32* %n, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.50
  %53 = load i32, i32* %ef.addr, align 4
  %54 = load i32, i32* %sf.addr, align 4
  %sub60 = sub nsw i32 %53, %54
  %add61 = add nsw i32 %sub60, 1
  %55 = load i32, i32* %n, align 4
  %cmp62 = icmp slt i32 %add61, %55
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.59
  %56 = load i32, i32* %ef.addr, align 4
  %57 = load i32, i32* %sf.addr, align 4
  %sub65 = sub nsw i32 %56, %57
  %add66 = add nsw i32 %sub65, 1
  store i32 %add66, i32* %n, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.59
  %58 = load i32, i32* %n, align 4
  %59 = load i32, i32* %maxfr.addr, align 4
  %cmp68 = icmp sgt i32 %58, %59
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %60 = load i8*, i8** %file.addr, align 8
  %61 = load i32, i32* %maxfr.addr, align 4
  %62 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i32 0, i32 0), i8* %60, i32 %61, i32 %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %63)
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.67
  %64 = load i32, i32* %sf.addr, align 4
  %cmp73 = icmp sgt i32 %64, 0
  br i1 %cmp73, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end.72
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %66 = load i32, i32* %sf.addr, align 4
  %67 = load i32, i32* %cepsize, align 4
  %mul76 = mul nsw i32 %66, %67
  %conv77 = sext i32 %mul76 to i64
  %mul78 = mul i64 %conv77, 4
  %call79 = call i32 @fseek(%struct._IO_FILE* %65, i64 %mul78, i32 1)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.end.72
  %68 = load i32, i32* %n, align 4
  %69 = load i32, i32* %cepsize, align 4
  %mul81 = mul nsw i32 %68, %69
  store i32 %mul81, i32* %n_float32, align 4
  %70 = load float**, float*** %mfc.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %70, i64 0
  %71 = load float*, float** %arrayidx, align 8
  %72 = bitcast float* %71 to i8*
  %73 = load i32, i32* %n_float32, align 4
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call82 = call i32 @fread_retry(i8* %72, i32 4, i32 %73, %struct._IO_FILE* %74)
  %75 = load i32, i32* %n_float32, align 4
  %cmp83 = icmp ne i32 %call82, %75
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.80
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %76 = load i8*, i8** %file.addr, align 8
  %77 = load i32, i32* %n, align 4
  %78 = load i32, i32* %cepsize, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), i8* %76, i32 %77, i32 %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call86 = call i32 @fclose(%struct._IO_FILE* %79)
  store i32 -1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.end.80
  %80 = load i32, i32* %byterev, align 4
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %if.then.88, label %if.end.116

if.then.88:                                       ; preds = %if.end.87
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.88
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %n_float32, align 4
  %cmp89 = icmp slt i32 %81, %82
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %i, align 4
  %idxprom = sext i32 %83 to i64
  %84 = load float**, float*** %mfc.addr, align 8
  %arrayidx91 = getelementptr inbounds float*, float** %84, i64 0
  %85 = load float*, float** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds float, float* %85, i64 %idxprom
  %86 = bitcast float* %arrayidx92 to i32*
  %87 = load i32, i32* %86, align 4
  %shr93 = ashr i32 %87, 24
  %and94 = and i32 255, %shr93
  %88 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %88 to i64
  %89 = load float**, float*** %mfc.addr, align 8
  %arrayidx96 = getelementptr inbounds float*, float** %89, i64 0
  %90 = load float*, float** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds float, float* %90, i64 %idxprom95
  %91 = bitcast float* %arrayidx97 to i32*
  %92 = load i32, i32* %91, align 4
  %shr98 = ashr i32 %92, 8
  %and99 = and i32 65280, %shr98
  %or100 = or i32 %and94, %and99
  %93 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %93 to i64
  %94 = load float**, float*** %mfc.addr, align 8
  %arrayidx102 = getelementptr inbounds float*, float** %94, i64 0
  %95 = load float*, float** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds float, float* %95, i64 %idxprom101
  %96 = bitcast float* %arrayidx103 to i32*
  %97 = load i32, i32* %96, align 4
  %shl104 = shl i32 %97, 8
  %and105 = and i32 16711680, %shl104
  %or106 = or i32 %or100, %and105
  %98 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %98 to i64
  %99 = load float**, float*** %mfc.addr, align 8
  %arrayidx108 = getelementptr inbounds float*, float** %99, i64 0
  %100 = load float*, float** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds float, float* %100, i64 %idxprom107
  %101 = bitcast float* %arrayidx109 to i32*
  %102 = load i32, i32* %101, align 4
  %shl110 = shl i32 %102, 24
  %and111 = and i32 -16777216, %shl110
  %or112 = or i32 %or106, %and111
  %103 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %103 to i64
  %104 = load float**, float*** %mfc.addr, align 8
  %arrayidx114 = getelementptr inbounds float*, float** %104, i64 0
  %105 = load float*, float** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds float, float* %105, i64 %idxprom113
  %106 = bitcast float* %arrayidx115 to i32*
  store i32 %or112, i32* %106, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.116

if.end.116:                                       ; preds = %for.end, %if.end.87
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call117 = call i32 @fclose(%struct._IO_FILE* %108)
  %109 = load i32, i32* %n, align 4
  store i32 %109, i32* %retval
  br label %return

return:                                           ; preds = %if.end.116, %if.then.85, %if.then.70, %if.then.56, %if.then.48, %if.then.42, %if.then.34, %if.then.11, %if.then.7, %if.then.2
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare i32 @stat_retry(i8*, %struct.stat*) #1

declare i32 @fread_retry(i8*, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define float** @feat_vector_alloc(%struct.feat_s* %fcb) #0 {
entry:
  %retval = alloca float**, align 8
  %fcb.addr = alloca %struct.feat_s*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca float*, align 8
  %feat = alloca float**, align 8
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  %0 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %call = call i32 @feat_stream_len_sum(%struct.feat_s* %0)
  store i32 %call, i32* %k, align 4
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %1 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 %1)
  store float** null, float*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %2, i32 0, i32 3
  %3 = load i32, i32* %n_stream, align 4
  %conv = sext i32 %3 to i64
  %call1 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 391)
  %4 = bitcast i8* %call1 to float**
  store float** %4, float*** %feat, align 8
  %5 = load i32, i32* %k, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call i8* @__ckd_calloc__(i64 %conv2, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 392)
  %6 = bitcast i8* %call3 to float*
  store float* %6, float** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream4 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %8, i32 0, i32 3
  %9 = load i32, i32* %n_stream4, align 4
  %cmp5 = icmp slt i32 %7, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load float*, float** %data, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load float**, float*** %feat, align 8
  %arrayidx = getelementptr inbounds float*, float** %12, i64 %idxprom
  store float* %10, float** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %14, i32 0, i32 4
  %15 = load i32*, i32** %stream_len, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load float*, float** %data, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds float, float* %17, i64 %idx.ext
  store float* %add.ptr, float** %data, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load float**, float*** %feat, align 8
  store float** %19, float*** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load float**, float*** %retval
  ret float** %20
}

; Function Attrs: nounwind uwtable
define internal i32 @feat_stream_len_sum(%struct.feat_s* %fcb) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %1, i32 0, i32 3
  %2 = load i32, i32* %n_stream, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %4, i32 0, i32 4
  %5 = load i32*, i32** %stream_len, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  ret i32 %9
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind uwtable
define float*** @feat_array_alloc(%struct.feat_s* %fcb, i32 %nfr) #0 {
entry:
  %retval = alloca float***, align 8
  %fcb.addr = alloca %struct.feat_s*, align 8
  %nfr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca float*, align 8
  %feat = alloca float***, align 8
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store i32 %nfr, i32* %nfr.addr, align 4
  %0 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %call = call i32 @feat_stream_len_sum(%struct.feat_s* %0)
  store i32 %call, i32* %k, align 4
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 412, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %1 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 %1)
  store float*** null, float**** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %nfr.addr, align 4
  %3 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %3, i32 0, i32 3
  %4 = load i32, i32* %n_stream, align 4
  %call1 = call i8** @__ckd_calloc_2d__(i32 %2, i32 %4, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 417)
  %5 = bitcast i8** %call1 to float***
  store float*** %5, float**** %feat, align 8
  %6 = load i32, i32* %nfr.addr, align 4
  %7 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %6, %7
  %conv = sext i32 %mul to i64
  %call2 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 418)
  %8 = bitcast i8* %call2 to float*
  store float* %8, float** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nfr.addr, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream6 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %12, i32 0, i32 3
  %13 = load i32, i32* %n_stream6, align 4
  %cmp7 = icmp slt i32 %11, %13
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %14 = load float*, float** %data, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load float***, float**** %feat, align 8
  %arrayidx = getelementptr inbounds float**, float*** %17, i64 %idxprom10
  %18 = load float**, float*** %arrayidx, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %18, i64 %idxprom
  store float* %14, float** %arrayidx11, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %20, i32 0, i32 4
  %21 = load i32*, i32** %stream_len, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  %23 = load float*, float** %data, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds float, float* %23, i64 %idx.ext
  store float* %add.ptr, float** %data, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %25, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %26 = load float***, float**** %feat, align 8
  store float*** %26, float**** %retval
  br label %return

return:                                           ; preds = %for.end.16, %if.then
  %27 = load float***, float**** %retval
  ret float*** %27
}

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @feat_1s_c_d_dd_cep2feat(%struct.feat_s* %fcb, float** %mfc, float** %feat) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %mfc.addr = alloca float**, align 8
  %feat.addr = alloca float**, align 8
  %f = alloca float*, align 8
  %w = alloca float*, align 8
  %_w = alloca float*, align 8
  %w1 = alloca float*, align 8
  %w_1 = alloca float*, align 8
  %_w1 = alloca float*, align 8
  %_w_1 = alloca float*, align 8
  %d1 = alloca float, align 4
  %d2 = alloca float, align 4
  %i = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float** %mfc, float*** %mfc.addr, align 8
  store float** %feat, float*** %feat.addr, align 8
  %0 = load float**, float*** %feat.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = bitcast float* %1 to i8*
  %3 = load float**, float*** %mfc.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 0
  %4 = load float*, float** %arrayidx1, align 8
  %5 = bitcast float* %4 to i8*
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 1
  %7 = load i32, i32* %cepsize, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 %mul, i32 4, i1 false)
  %8 = load float**, float*** %feat.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %8, i64 0
  %9 = load float*, float** %arrayidx2, align 8
  %10 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize3 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %10, i32 0, i32 1
  %11 = load i32, i32* %cepsize3, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds float, float* %9, i64 %idx.ext
  store float* %add.ptr, float** %f, align 8
  %12 = load float**, float*** %mfc.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %12, i64 2
  %13 = load float*, float** %arrayidx4, align 8
  store float* %13, float** %w, align 8
  %14 = load float**, float*** %mfc.addr, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %14, i64 -2
  %15 = load float*, float** %arrayidx5, align 8
  store float* %15, float** %_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize6 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %17, i32 0, i32 1
  %18 = load i32, i32* %cepsize6, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load float*, float** %w, align 8
  %arrayidx8 = getelementptr inbounds float, float* %20, i64 %idxprom
  %21 = load float, float* %arrayidx8, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load float*, float** %_w, align 8
  %arrayidx10 = getelementptr inbounds float, float* %23, i64 %idxprom9
  %24 = load float, float* %arrayidx10, align 4
  %sub = fsub float %21, %24
  %25 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load float*, float** %f, align 8
  %arrayidx12 = getelementptr inbounds float, float* %26, i64 %idxprom11
  store float %sub, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize13 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %28, i32 0, i32 1
  %29 = load i32, i32* %cepsize13, align 4
  %30 = load float*, float** %f, align 8
  %idx.ext14 = sext i32 %29 to i64
  %add.ptr15 = getelementptr inbounds float, float* %30, i64 %idx.ext14
  store float* %add.ptr15, float** %f, align 8
  %31 = load float**, float*** %mfc.addr, align 8
  %arrayidx16 = getelementptr inbounds float*, float** %31, i64 3
  %32 = load float*, float** %arrayidx16, align 8
  store float* %32, float** %w1, align 8
  %33 = load float**, float*** %mfc.addr, align 8
  %arrayidx17 = getelementptr inbounds float*, float** %33, i64 -1
  %34 = load float*, float** %arrayidx17, align 8
  store float* %34, float** %_w1, align 8
  %35 = load float**, float*** %mfc.addr, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %35, i64 1
  %36 = load float*, float** %arrayidx18, align 8
  store float* %36, float** %w_1, align 8
  %37 = load float**, float*** %mfc.addr, align 8
  %arrayidx19 = getelementptr inbounds float*, float** %37, i64 -3
  %38 = load float*, float** %arrayidx19, align 8
  store float* %38, float** %_w_1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.38, %for.end
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize21 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %40, i32 0, i32 1
  %41 = load i32, i32* %cepsize21, align 4
  %cmp22 = icmp slt i32 %39, %41
  br i1 %cmp22, label %for.body.24, label %for.end.40

for.body.24:                                      ; preds = %for.cond.20
  %42 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %42 to i64
  %43 = load float*, float** %w1, align 8
  %arrayidx26 = getelementptr inbounds float, float* %43, i64 %idxprom25
  %44 = load float, float* %arrayidx26, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %45 to i64
  %46 = load float*, float** %_w1, align 8
  %arrayidx28 = getelementptr inbounds float, float* %46, i64 %idxprom27
  %47 = load float, float* %arrayidx28, align 4
  %sub29 = fsub float %44, %47
  store float %sub29, float* %d1, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %48 to i64
  %49 = load float*, float** %w_1, align 8
  %arrayidx31 = getelementptr inbounds float, float* %49, i64 %idxprom30
  %50 = load float, float* %arrayidx31, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %51 to i64
  %52 = load float*, float** %_w_1, align 8
  %arrayidx33 = getelementptr inbounds float, float* %52, i64 %idxprom32
  %53 = load float, float* %arrayidx33, align 4
  %sub34 = fsub float %50, %53
  store float %sub34, float* %d2, align 4
  %54 = load float, float* %d1, align 4
  %55 = load float, float* %d2, align 4
  %sub35 = fsub float %54, %55
  %56 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %56 to i64
  %57 = load float*, float** %f, align 8
  %arrayidx37 = getelementptr inbounds float, float* %57, i64 %idxprom36
  store float %sub35, float* %arrayidx37, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.24
  %58 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %58, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.20

for.end.40:                                       ; preds = %for.cond.20
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.feat_s* @feat_init(i8* %type, i8* %cmn, i8* %varnorm, i8* %agc) #0 {
entry:
  %type.addr = alloca i8*, align 8
  %cmn.addr = alloca i8*, align 8
  %varnorm.addr = alloca i8*, align 8
  %agc.addr = alloca i8*, align 8
  %fcb = alloca %struct.feat_s*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %wd = alloca [16384 x i8], align 16
  %strp = alloca i8*, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %cmn, i8** %cmn.addr, align 8
  store i8* %varnorm, i8** %varnorm.addr, align 8
  store i8* %agc, i8** %agc.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 642, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i8*, i8** %type.addr, align 8
  %1 = load i8*, i8** %cmn.addr, align 8
  %2 = load i8*, i8** %varnorm.addr, align 8
  %3 = load i8*, i8** %agc.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.32, i32 0, i32 0), i8* %0, i8* %1, i8* %2, i8* %3)
  %call = call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 645)
  %4 = bitcast i8* %call to %struct.feat_s*
  store %struct.feat_s* %4, %struct.feat_s** %fcb, align 8
  %5 = load i8*, i8** %type.addr, align 8
  %call1 = call i8* @__ckd_salloc__(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 647)
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %name = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 0
  store i8* %call1, i8** %name, align 8
  %7 = load i8*, i8** %type.addr, align 8
  %call2 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize = getelementptr inbounds %struct.feat_s, %struct.feat_s* %8, i32 0, i32 1
  store i32 13, i32* %cepsize, align 4
  %9 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used = getelementptr inbounds %struct.feat_s, %struct.feat_s* %9, i32 0, i32 2
  store i32 13, i32* %cepsize_used, align 4
  %10 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %10, i32 0, i32 3
  store i32 4, i32* %n_stream, align 4
  %call3 = call i8* @__ckd_calloc__(i64 4, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 653)
  %11 = bitcast i8* %call3 to i32*
  %12 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %12, i32 0, i32 4
  store i32* %11, i32** %stream_len, align 8
  %13 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len4 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %13, i32 0, i32 4
  %14 = load i32*, i32** %stream_len4, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 0
  store i32 12, i32* %arrayidx, align 4
  %15 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len5 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %15, i32 0, i32 4
  %16 = load i32*, i32** %stream_len5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 24, i32* %arrayidx6, align 4
  %17 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len7 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %17, i32 0, i32 4
  %18 = load i32*, i32** %stream_len7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 3, i32* %arrayidx8, align 4
  %19 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len9 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %19, i32 0, i32 4
  %20 = load i32*, i32** %stream_len9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 12, i32* %arrayidx10, align 4
  %21 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %window_size = getelementptr inbounds %struct.feat_s, %struct.feat_s* %21, i32 0, i32 5
  store i32 4, i32* %window_size, align 4
  %22 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %compute_feat = getelementptr inbounds %struct.feat_s, %struct.feat_s* %22, i32 0, i32 9
  store void (%struct.feat_s*, float**, float**)* @feat_s2_4x_cep2feat, void (%struct.feat_s*, float**, float**)** %compute_feat, align 8
  br label %if.end.176

if.else:                                          ; preds = %entry
  %23 = load i8*, i8** %type.addr, align 8
  %call11 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.23

if.then.13:                                       ; preds = %if.else
  %24 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize14 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %24, i32 0, i32 1
  store i32 13, i32* %cepsize14, align 4
  %25 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used15 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %25, i32 0, i32 2
  store i32 13, i32* %cepsize_used15, align 4
  %26 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream16 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %26, i32 0, i32 3
  store i32 1, i32* %n_stream16, align 4
  %call17 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 665)
  %27 = bitcast i8* %call17 to i32*
  %28 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len18 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %28, i32 0, i32 4
  store i32* %27, i32** %stream_len18, align 8
  %29 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len19 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %29, i32 0, i32 4
  %30 = load i32*, i32** %stream_len19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 39, i32* %arrayidx20, align 4
  %31 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %window_size21 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %31, i32 0, i32 5
  store i32 3, i32* %window_size21, align 4
  %32 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %compute_feat22 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %32, i32 0, i32 9
  store void (%struct.feat_s*, float**, float**)* @feat_s3_1x39_cep2feat, void (%struct.feat_s*, float**, float**)** %compute_feat22, align 8
  br label %if.end.175

if.else.23:                                       ; preds = %if.else
  %33 = load i8*, i8** %type.addr, align 8
  %call24 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.36

if.then.26:                                       ; preds = %if.else.23
  %34 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize27 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %34, i32 0, i32 1
  store i32 13, i32* %cepsize27, align 4
  %35 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used28 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %35, i32 0, i32 2
  store i32 13, i32* %cepsize_used28, align 4
  %36 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream29 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %36, i32 0, i32 3
  store i32 1, i32* %n_stream29, align 4
  %call30 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 673)
  %37 = bitcast i8* %call30 to i32*
  %38 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len31 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %38, i32 0, i32 4
  store i32* %37, i32** %stream_len31, align 8
  %39 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len32 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %39, i32 0, i32 4
  %40 = load i32*, i32** %stream_len32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 39, i32* %arrayidx33, align 4
  %41 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %window_size34 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %41, i32 0, i32 5
  store i32 3, i32* %window_size34, align 4
  %42 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %compute_feat35 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %42, i32 0, i32 9
  store void (%struct.feat_s*, float**, float**)* @feat_1s_c_d_dd_cep2feat, void (%struct.feat_s*, float**, float**)** %compute_feat35, align 8
  br label %if.end.174

if.else.36:                                       ; preds = %if.else.23
  %43 = load i8*, i8** %type.addr, align 8
  %call37 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i64 8) #5
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.74

if.then.39:                                       ; preds = %if.else.36
  %44 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize40 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %44, i32 0, i32 1
  store i32 13, i32* %cepsize40, align 4
  %45 = load i8*, i8** %type.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %45, i64 8
  %46 = load i8, i8* %arrayidx41, align 1
  %conv = sext i8 %46 to i32
  %cmp42 = icmp eq i32 %conv, 44
  br i1 %cmp42, label %if.then.44, label %if.else.63

if.then.44:                                       ; preds = %if.then.39
  %47 = load i8*, i8** %type.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 9
  %48 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used45 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %48, i32 0, i32 2
  %call46 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32* %cepsize_used45, i32* %l) #3
  %cmp47 = icmp ne i32 %call46, 1
  br i1 %cmp47, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.44
  %49 = load i32, i32* %l, align 4
  %add = add nsw i32 %49, 9
  %idxprom = sext i32 %add to i64
  %50 = load i8*, i8** %type.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %51 to i32
  %cmp51 = icmp ne i32 %conv50, 0
  br i1 %cmp51, label %if.then.62, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false
  %52 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used54 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %52, i32 0, i32 2
  %53 = load i32, i32* %cepsize_used54, align 4
  %cmp55 = icmp sle i32 %53, 0
  br i1 %cmp55, label %if.then.62, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.53
  %54 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used58 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %54, i32 0, i32 2
  %55 = load i32, i32* %cepsize_used58, align 4
  %56 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize59 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %56, i32 0, i32 1
  %57 = load i32, i32* %cepsize59, align 4
  %cmp60 = icmp sgt i32 %55, %57
  br i1 %cmp60, label %if.then.62, label %if.end

if.then.62:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.53, %lor.lhs.false, %if.then.44
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 686, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %58 = load i8*, i8** %type.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* %58)
  br label %if.end

if.end:                                           ; preds = %if.then.62, %lor.lhs.false.57
  br label %if.end.65

if.else.63:                                       ; preds = %if.then.39
  %59 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used64 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %59, i32 0, i32 2
  store i32 13, i32* %cepsize_used64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.end
  %60 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream66 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %60, i32 0, i32 3
  store i32 1, i32* %n_stream66, align 4
  %call67 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 690)
  %61 = bitcast i8* %call67 to i32*
  %62 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len68 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %62, i32 0, i32 4
  store i32* %61, i32** %stream_len68, align 8
  %63 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used69 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %63, i32 0, i32 2
  %64 = load i32, i32* %cepsize_used69, align 4
  %mul = mul nsw i32 %64, 2
  %65 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len70 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %65, i32 0, i32 4
  %66 = load i32*, i32** %stream_len70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %mul, i32* %arrayidx71, align 4
  %67 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %window_size72 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %67, i32 0, i32 5
  store i32 2, i32* %window_size72, align 4
  %68 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %compute_feat73 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %68, i32 0, i32 9
  store void (%struct.feat_s*, float**, float**)* @feat_s3_cep_dcep, void (%struct.feat_s*, float**, float**)** %compute_feat73, align 8
  br label %if.end.173

if.else.74:                                       ; preds = %if.else.36
  %69 = load i8*, i8** %type.addr, align 8
  %call75 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i64 3) #5
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.119

if.then.78:                                       ; preds = %if.else.74
  %70 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize79 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %70, i32 0, i32 1
  store i32 13, i32* %cepsize79, align 4
  %71 = load i8*, i8** %type.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %71, i64 3
  %72 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %72 to i32
  %cmp82 = icmp eq i32 %conv81, 44
  br i1 %cmp82, label %if.then.84, label %if.else.108

if.then.84:                                       ; preds = %if.then.78
  %73 = load i8*, i8** %type.addr, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %73, i64 4
  %74 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used86 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %74, i32 0, i32 2
  %call87 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32* %cepsize_used86, i32* %l) #3
  %cmp88 = icmp ne i32 %call87, 1
  br i1 %cmp88, label %if.then.106, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.then.84
  %75 = load i32, i32* %l, align 4
  %add91 = add nsw i32 %75, 4
  %idxprom92 = sext i32 %add91 to i64
  %76 = load i8*, i8** %type.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %76, i64 %idxprom92
  %77 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %77 to i32
  %cmp95 = icmp ne i32 %conv94, 0
  br i1 %cmp95, label %if.then.106, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.90
  %78 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used98 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %78, i32 0, i32 2
  %79 = load i32, i32* %cepsize_used98, align 4
  %cmp99 = icmp sle i32 %79, 0
  br i1 %cmp99, label %if.then.106, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.97
  %80 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used102 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %80, i32 0, i32 2
  %81 = load i32, i32* %cepsize_used102, align 4
  %82 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize103 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %82, i32 0, i32 1
  %83 = load i32, i32* %cepsize103, align 4
  %cmp104 = icmp sgt i32 %81, %83
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.97, %lor.lhs.false.90, %if.then.84
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 703, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %84 = load i8*, i8** %type.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* %84)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %lor.lhs.false.101
  br label %if.end.110

if.else.108:                                      ; preds = %if.then.78
  %85 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used109 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %85, i32 0, i32 2
  store i32 13, i32* %cepsize_used109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.end.107
  %86 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream111 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %86, i32 0, i32 3
  store i32 1, i32* %n_stream111, align 4
  %call112 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 707)
  %87 = bitcast i8* %call112 to i32*
  %88 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len113 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %88, i32 0, i32 4
  store i32* %87, i32** %stream_len113, align 8
  %89 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used114 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %89, i32 0, i32 2
  %90 = load i32, i32* %cepsize_used114, align 4
  %91 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len115 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %91, i32 0, i32 4
  %92 = load i32*, i32** %stream_len115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %90, i32* %arrayidx116, align 4
  %93 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %window_size117 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %93, i32 0, i32 5
  store i32 0, i32* %window_size117, align 4
  %94 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %compute_feat118 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %94, i32 0, i32 9
  store void (%struct.feat_s*, float**, float**)* @feat_s3_cep, void (%struct.feat_s*, float**, float**)** %compute_feat118, align 8
  br label %if.end.172

if.else.119:                                      ; preds = %if.else.74
  %95 = load i8*, i8** %type.addr, align 8
  %call120 = call i64 @strlen(i8* %95) #5
  %conv121 = trunc i64 %call120 to i32
  store i32 %conv121, i32* %l, align 4
  store i32 0, i32* %k, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.119
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %97, 1
  %cmp122 = icmp slt i32 %96, %sub
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %98 to i64
  %99 = load i8*, i8** %type.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %99, i64 %idxprom124
  %100 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %100 to i32
  %cmp127 = icmp eq i32 %conv126, 44
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %for.body
  %101 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %101 to i64
  %102 = load i8*, i8** %type.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %102, i64 %idxprom130
  store i8 32, i8* %arrayidx131, align 1
  %103 = load i32, i32* %k, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.132
  %104 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %104, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load i32, i32* %k, align 4
  %inc134 = add nsw i32 %105, 1
  store i32 %inc134, i32* %k, align 4
  %106 = load i32, i32* %k, align 4
  %107 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream135 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %107, i32 0, i32 3
  store i32 %106, i32* %n_stream135, align 4
  %108 = load i32, i32* %k, align 4
  %conv136 = sext i32 %108 to i64
  %call137 = call i8* @__ckd_calloc__(i64 %conv136, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 725)
  %109 = bitcast i8* %call137 to i32*
  %110 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len138 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %110, i32 0, i32 4
  store i32* %109, i32** %stream_len138, align 8
  %111 = load i8*, i8** %type.addr, align 8
  store i8* %111, i8** %strp, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.161, %for.end
  %112 = load i8*, i8** %strp, align 8
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %wd, i32 0, i32 0
  %call139 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay, i32* %l) #3
  %cmp140 = icmp eq i32 %call139, 1
  br i1 %cmp140, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %113 = load i32, i32* %l, align 4
  %114 = load i8*, i8** %strp, align 8
  %idx.ext = sext i32 %113 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %114, i64 %idx.ext
  store i8* %add.ptr142, i8** %strp, align 8
  %115 = load i32, i32* %i, align 4
  %116 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream143 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %116, i32 0, i32 3
  %117 = load i32, i32* %n_stream143, align 4
  %cmp144 = icmp sge i32 %115, %117
  br i1 %cmp144, label %if.then.160, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %while.body
  %arraydecay147 = getelementptr inbounds [16384 x i8], [16384 x i8]* %wd, i32 0, i32 0
  %118 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %118 to i64
  %119 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len149 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %119, i32 0, i32 4
  %120 = load i32*, i32** %stream_len149, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %120, i64 %idxprom148
  %call151 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32* %arrayidx150) #3
  %cmp152 = icmp ne i32 %call151, 1
  br i1 %cmp152, label %if.then.160, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.146
  %121 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %121 to i64
  %122 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len156 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %122, i32 0, i32 4
  %123 = load i32*, i32** %stream_len156, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %123, i64 %idxprom155
  %124 = load i32, i32* %arrayidx157, align 4
  %cmp158 = icmp sle i32 %124, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.146, %while.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 734, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %lor.lhs.false.154
  %125 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %125, 1
  store i32 %inc162, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %126 = load i32, i32* %i, align 4
  %127 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %n_stream163 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %127, i32 0, i32 3
  %128 = load i32, i32* %n_stream163, align 4
  %cmp164 = icmp ne i32 %126, %128
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %while.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 738, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %while.end
  %129 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize168 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %129, i32 0, i32 1
  store i32 -1, i32* %cepsize168, align 4
  %130 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize_used169 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %130, i32 0, i32 2
  store i32 -1, i32* %cepsize_used169, align 4
  %131 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %window_size170 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %131, i32 0, i32 5
  store i32 0, i32* %window_size170, align 4
  %132 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %compute_feat171 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %132, i32 0, i32 9
  store void (%struct.feat_s*, float**, float**)* null, void (%struct.feat_s*, float**, float**)** %compute_feat171, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.167, %if.end.110
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.65
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.26
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.13
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then
  %133 = load i8*, i8** %cmn.addr, align 8
  %call177 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #5
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.then.180, label %if.else.182

if.then.180:                                      ; preds = %if.end.176
  %134 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cmn181 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %134, i32 0, i32 6
  store i32 1, i32* %cmn181, align 4
  br label %if.end.190

if.else.182:                                      ; preds = %if.end.176
  %135 = load i8*, i8** %cmn.addr, align 8
  %call183 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #5
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.188

if.then.186:                                      ; preds = %if.else.182
  %136 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cmn187 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %136, i32 0, i32 6
  store i32 0, i32* %cmn187, align 4
  br label %if.end.189

if.else.188:                                      ; preds = %if.else.182
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %137 = load i8*, i8** %cmn.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), i8* %137)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188, %if.then.186
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.180
  %138 = load i8*, i8** %varnorm.addr, align 8
  %call191 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0)) #5
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.end.190
  %139 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %varnorm195 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %139, i32 0, i32 7
  store i32 1, i32* %varnorm195, align 4
  br label %if.end.204

if.else.196:                                      ; preds = %if.end.190
  %140 = load i8*, i8** %varnorm.addr, align 8
  %call197 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.else.196
  %141 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %varnorm201 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %141, i32 0, i32 7
  store i32 0, i32* %varnorm201, align 4
  br label %if.end.203

if.else.202:                                      ; preds = %if.else.196
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 759, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %142 = load i8*, i8** %varnorm.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i32 0, i32 0), i8* %142)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.then.200
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.194
  %143 = load i8*, i8** %agc.addr, align 8
  %call205 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #5
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %if.end.204
  %144 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %agc209 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %144, i32 0, i32 8
  store i32 1, i32* %agc209, align 4
  br label %if.end.218

if.else.210:                                      ; preds = %if.end.204
  %145 = load i8*, i8** %agc.addr, align 8
  %call211 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #5
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.then.214, label %if.else.216

if.then.214:                                      ; preds = %if.else.210
  %146 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %agc215 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %146, i32 0, i32 8
  store i32 0, i32* %agc215, align 4
  br label %if.end.217

if.else.216:                                      ; preds = %if.else.210
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 766, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %147 = load i8*, i8** %agc.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i8* %147)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.216, %if.then.214
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.208
  %148 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  ret %struct.feat_s* %148
}

declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @feat_s2_4x_cep2feat(%struct.feat_s* %fcb, float** %mfc, float** %feat) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %mfc.addr = alloca float**, align 8
  %feat.addr = alloca float**, align 8
  %f = alloca float*, align 8
  %w = alloca float*, align 8
  %_w = alloca float*, align 8
  %w1 = alloca float*, align 8
  %w_1 = alloca float*, align 8
  %_w1 = alloca float*, align 8
  %_w_1 = alloca float*, align 8
  %d1 = alloca float, align 4
  %d2 = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float** %mfc, float*** %mfc.addr, align 8
  store float** %feat, float*** %feat.addr, align 8
  %0 = load float**, float*** %feat.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = bitcast float* %1 to i8*
  %3 = load float**, float*** %mfc.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 0
  %4 = load float*, float** %arrayidx1, align 8
  %add.ptr = getelementptr inbounds float, float* %4, i64 1
  %5 = bitcast float* %add.ptr to i8*
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 1
  %7 = load i32, i32* %cepsize, align 4
  %sub = sub nsw i32 %7, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 %mul, i32 4, i1 false)
  %8 = load float**, float*** %mfc.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %8, i64 2
  %9 = load float*, float** %arrayidx2, align 8
  %add.ptr3 = getelementptr inbounds float, float* %9, i64 1
  store float* %add.ptr3, float** %w, align 8
  %10 = load float**, float*** %mfc.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %10, i64 -2
  %11 = load float*, float** %arrayidx4, align 8
  %add.ptr5 = getelementptr inbounds float, float* %11, i64 1
  store float* %add.ptr5, float** %_w, align 8
  %12 = load float**, float*** %feat.addr, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %12, i64 1
  %13 = load float*, float** %arrayidx6, align 8
  store float* %13, float** %f, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize7 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %15, i32 0, i32 1
  %16 = load i32, i32* %cepsize7, align 4
  %sub8 = sub nsw i32 %16, 1
  %cmp = icmp slt i32 %14, %sub8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load float*, float** %w, align 8
  %arrayidx10 = getelementptr inbounds float, float* %18, i64 %idxprom
  %19 = load float, float* %arrayidx10, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load float*, float** %_w, align 8
  %arrayidx12 = getelementptr inbounds float, float* %21, i64 %idxprom11
  %22 = load float, float* %arrayidx12, align 4
  %sub13 = fsub float %19, %22
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load float*, float** %f, align 8
  %arrayidx15 = getelementptr inbounds float, float* %24, i64 %idxprom14
  store float %sub13, float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load float**, float*** %mfc.addr, align 8
  %arrayidx16 = getelementptr inbounds float*, float** %26, i64 4
  %27 = load float*, float** %arrayidx16, align 8
  %add.ptr17 = getelementptr inbounds float, float* %27, i64 1
  store float* %add.ptr17, float** %w, align 8
  %28 = load float**, float*** %mfc.addr, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %28, i64 -4
  %29 = load float*, float** %arrayidx18, align 8
  %add.ptr19 = getelementptr inbounds float, float* %29, i64 1
  store float* %add.ptr19, float** %_w, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.33, %for.end
  %30 = load i32, i32* %j, align 4
  %31 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize21 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %31, i32 0, i32 1
  %32 = load i32, i32* %cepsize21, align 4
  %sub22 = sub nsw i32 %32, 1
  %cmp23 = icmp slt i32 %30, %sub22
  br i1 %cmp23, label %for.body.25, label %for.end.36

for.body.25:                                      ; preds = %for.cond.20
  %33 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load float*, float** %w, align 8
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26
  %35 = load float, float* %arrayidx27, align 4
  %36 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load float*, float** %_w, align 8
  %arrayidx29 = getelementptr inbounds float, float* %37, i64 %idxprom28
  %38 = load float, float* %arrayidx29, align 4
  %sub30 = fsub float %35, %38
  %39 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load float*, float** %f, align 8
  %arrayidx32 = getelementptr inbounds float, float* %40, i64 %idxprom31
  store float %sub30, float* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.25
  %41 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %41, 1
  store i32 %inc34, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %42, 1
  store i32 %inc35, i32* %j, align 4
  br label %for.cond.20

for.end.36:                                       ; preds = %for.cond.20
  %43 = load float**, float*** %mfc.addr, align 8
  %arrayidx37 = getelementptr inbounds float*, float** %43, i64 3
  %44 = load float*, float** %arrayidx37, align 8
  %add.ptr38 = getelementptr inbounds float, float* %44, i64 1
  store float* %add.ptr38, float** %w1, align 8
  %45 = load float**, float*** %mfc.addr, align 8
  %arrayidx39 = getelementptr inbounds float*, float** %45, i64 -1
  %46 = load float*, float** %arrayidx39, align 8
  %add.ptr40 = getelementptr inbounds float, float* %46, i64 1
  store float* %add.ptr40, float** %_w1, align 8
  %47 = load float**, float*** %mfc.addr, align 8
  %arrayidx41 = getelementptr inbounds float*, float** %47, i64 1
  %48 = load float*, float** %arrayidx41, align 8
  %add.ptr42 = getelementptr inbounds float, float* %48, i64 1
  store float* %add.ptr42, float** %w_1, align 8
  %49 = load float**, float*** %mfc.addr, align 8
  %arrayidx43 = getelementptr inbounds float*, float** %49, i64 -3
  %50 = load float*, float** %arrayidx43, align 8
  %add.ptr44 = getelementptr inbounds float, float* %50, i64 1
  store float* %add.ptr44, float** %_w_1, align 8
  %51 = load float**, float*** %feat.addr, align 8
  %arrayidx45 = getelementptr inbounds float*, float** %51, i64 3
  %52 = load float*, float** %arrayidx45, align 8
  store float* %52, float** %f, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.65, %for.end.36
  %53 = load i32, i32* %i, align 4
  %54 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize47 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %54, i32 0, i32 1
  %55 = load i32, i32* %cepsize47, align 4
  %sub48 = sub nsw i32 %55, 1
  %cmp49 = icmp slt i32 %53, %sub48
  br i1 %cmp49, label %for.body.51, label %for.end.67

for.body.51:                                      ; preds = %for.cond.46
  %56 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %56 to i64
  %57 = load float*, float** %w1, align 8
  %arrayidx53 = getelementptr inbounds float, float* %57, i64 %idxprom52
  %58 = load float, float* %arrayidx53, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %59 to i64
  %60 = load float*, float** %_w1, align 8
  %arrayidx55 = getelementptr inbounds float, float* %60, i64 %idxprom54
  %61 = load float, float* %arrayidx55, align 4
  %sub56 = fsub float %58, %61
  store float %sub56, float* %d1, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load float*, float** %w_1, align 8
  %arrayidx58 = getelementptr inbounds float, float* %63, i64 %idxprom57
  %64 = load float, float* %arrayidx58, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load float*, float** %_w_1, align 8
  %arrayidx60 = getelementptr inbounds float, float* %66, i64 %idxprom59
  %67 = load float, float* %arrayidx60, align 4
  %sub61 = fsub float %64, %67
  store float %sub61, float* %d2, align 4
  %68 = load float, float* %d1, align 4
  %69 = load float, float* %d2, align 4
  %sub62 = fsub float %68, %69
  %70 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %70 to i64
  %71 = load float*, float** %f, align 8
  %arrayidx64 = getelementptr inbounds float, float* %71, i64 %idxprom63
  store float %sub62, float* %arrayidx64, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.51
  %72 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %72, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.46

for.end.67:                                       ; preds = %for.cond.46
  %73 = load float**, float*** %feat.addr, align 8
  %arrayidx68 = getelementptr inbounds float*, float** %73, i64 2
  %74 = load float*, float** %arrayidx68, align 8
  store float* %74, float** %f, align 8
  %75 = load float**, float*** %mfc.addr, align 8
  %arrayidx69 = getelementptr inbounds float*, float** %75, i64 0
  %76 = load float*, float** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds float, float* %76, i64 0
  %77 = load float, float* %arrayidx70, align 4
  %78 = load float*, float** %f, align 8
  %arrayidx71 = getelementptr inbounds float, float* %78, i64 0
  store float %77, float* %arrayidx71, align 4
  %79 = load float**, float*** %mfc.addr, align 8
  %arrayidx72 = getelementptr inbounds float*, float** %79, i64 2
  %80 = load float*, float** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds float, float* %80, i64 0
  %81 = load float, float* %arrayidx73, align 4
  %82 = load float**, float*** %mfc.addr, align 8
  %arrayidx74 = getelementptr inbounds float*, float** %82, i64 -2
  %83 = load float*, float** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds float, float* %83, i64 0
  %84 = load float, float* %arrayidx75, align 4
  %sub76 = fsub float %81, %84
  %85 = load float*, float** %f, align 8
  %arrayidx77 = getelementptr inbounds float, float* %85, i64 1
  store float %sub76, float* %arrayidx77, align 4
  %86 = load float**, float*** %mfc.addr, align 8
  %arrayidx78 = getelementptr inbounds float*, float** %86, i64 3
  %87 = load float*, float** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds float, float* %87, i64 0
  %88 = load float, float* %arrayidx79, align 4
  %89 = load float**, float*** %mfc.addr, align 8
  %arrayidx80 = getelementptr inbounds float*, float** %89, i64 -1
  %90 = load float*, float** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds float, float* %90, i64 0
  %91 = load float, float* %arrayidx81, align 4
  %sub82 = fsub float %88, %91
  store float %sub82, float* %d1, align 4
  %92 = load float**, float*** %mfc.addr, align 8
  %arrayidx83 = getelementptr inbounds float*, float** %92, i64 1
  %93 = load float*, float** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds float, float* %93, i64 0
  %94 = load float, float* %arrayidx84, align 4
  %95 = load float**, float*** %mfc.addr, align 8
  %arrayidx85 = getelementptr inbounds float*, float** %95, i64 -3
  %96 = load float*, float** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds float, float* %96, i64 0
  %97 = load float, float* %arrayidx86, align 4
  %sub87 = fsub float %94, %97
  store float %sub87, float* %d2, align 4
  %98 = load float, float* %d1, align 4
  %99 = load float, float* %d2, align 4
  %sub88 = fsub float %98, %99
  %100 = load float*, float** %f, align 8
  %arrayidx89 = getelementptr inbounds float, float* %100, i64 2
  store float %sub88, float* %arrayidx89, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @feat_s3_1x39_cep2feat(%struct.feat_s* %fcb, float** %mfc, float** %feat) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %mfc.addr = alloca float**, align 8
  %feat.addr = alloca float**, align 8
  %f = alloca float*, align 8
  %w = alloca float*, align 8
  %_w = alloca float*, align 8
  %w1 = alloca float*, align 8
  %w_1 = alloca float*, align 8
  %_w1 = alloca float*, align 8
  %_w_1 = alloca float*, align 8
  %d1 = alloca float, align 4
  %d2 = alloca float, align 4
  %i = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float** %mfc, float*** %mfc.addr, align 8
  store float** %feat, float*** %feat.addr, align 8
  %0 = load float**, float*** %feat.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = bitcast float* %1 to i8*
  %3 = load float**, float*** %mfc.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 0
  %4 = load float*, float** %arrayidx1, align 8
  %add.ptr = getelementptr inbounds float, float* %4, i64 1
  %5 = bitcast float* %add.ptr to i8*
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 1
  %7 = load i32, i32* %cepsize, align 4
  %sub = sub nsw i32 %7, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 %mul, i32 4, i1 false)
  %8 = load float**, float*** %feat.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %8, i64 0
  %9 = load float*, float** %arrayidx2, align 8
  %10 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize3 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %10, i32 0, i32 1
  %11 = load i32, i32* %cepsize3, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds float, float* %9, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds float, float* %add.ptr4, i64 -1
  store float* %add.ptr5, float** %f, align 8
  %12 = load float**, float*** %mfc.addr, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %12, i64 2
  %13 = load float*, float** %arrayidx6, align 8
  %add.ptr7 = getelementptr inbounds float, float* %13, i64 1
  store float* %add.ptr7, float** %w, align 8
  %14 = load float**, float*** %mfc.addr, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %14, i64 -2
  %15 = load float*, float** %arrayidx8, align 8
  %add.ptr9 = getelementptr inbounds float, float* %15, i64 1
  store float* %add.ptr9, float** %_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize10 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %17, i32 0, i32 1
  %18 = load i32, i32* %cepsize10, align 4
  %sub11 = sub nsw i32 %18, 1
  %cmp = icmp slt i32 %16, %sub11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load float*, float** %w, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 %idxprom
  %21 = load float, float* %arrayidx13, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load float*, float** %_w, align 8
  %arrayidx15 = getelementptr inbounds float, float* %23, i64 %idxprom14
  %24 = load float, float* %arrayidx15, align 4
  %sub16 = fsub float %21, %24
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load float*, float** %f, align 8
  %arrayidx18 = getelementptr inbounds float, float* %26, i64 %idxprom17
  store float %sub16, float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize19 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %28, i32 0, i32 1
  %29 = load i32, i32* %cepsize19, align 4
  %sub20 = sub nsw i32 %29, 1
  %30 = load float*, float** %f, align 8
  %idx.ext21 = sext i32 %sub20 to i64
  %add.ptr22 = getelementptr inbounds float, float* %30, i64 %idx.ext21
  store float* %add.ptr22, float** %f, align 8
  %31 = load float**, float*** %mfc.addr, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %31, i64 0
  %32 = load float*, float** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %32, i64 0
  %33 = load float, float* %arrayidx24, align 4
  %34 = load float*, float** %f, align 8
  %arrayidx25 = getelementptr inbounds float, float* %34, i64 0
  store float %33, float* %arrayidx25, align 4
  %35 = load float**, float*** %mfc.addr, align 8
  %arrayidx26 = getelementptr inbounds float*, float** %35, i64 2
  %36 = load float*, float** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds float, float* %36, i64 0
  %37 = load float, float* %arrayidx27, align 4
  %38 = load float**, float*** %mfc.addr, align 8
  %arrayidx28 = getelementptr inbounds float*, float** %38, i64 -2
  %39 = load float*, float** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds float, float* %39, i64 0
  %40 = load float, float* %arrayidx29, align 4
  %sub30 = fsub float %37, %40
  %41 = load float*, float** %f, align 8
  %arrayidx31 = getelementptr inbounds float, float* %41, i64 1
  store float %sub30, float* %arrayidx31, align 4
  %42 = load float**, float*** %mfc.addr, align 8
  %arrayidx32 = getelementptr inbounds float*, float** %42, i64 3
  %43 = load float*, float** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds float, float* %43, i64 0
  %44 = load float, float* %arrayidx33, align 4
  %45 = load float**, float*** %mfc.addr, align 8
  %arrayidx34 = getelementptr inbounds float*, float** %45, i64 -1
  %46 = load float*, float** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds float, float* %46, i64 0
  %47 = load float, float* %arrayidx35, align 4
  %sub36 = fsub float %44, %47
  store float %sub36, float* %d1, align 4
  %48 = load float**, float*** %mfc.addr, align 8
  %arrayidx37 = getelementptr inbounds float*, float** %48, i64 1
  %49 = load float*, float** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds float, float* %49, i64 0
  %50 = load float, float* %arrayidx38, align 4
  %51 = load float**, float*** %mfc.addr, align 8
  %arrayidx39 = getelementptr inbounds float*, float** %51, i64 -3
  %52 = load float*, float** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds float, float* %52, i64 0
  %53 = load float, float* %arrayidx40, align 4
  %sub41 = fsub float %50, %53
  store float %sub41, float* %d2, align 4
  %54 = load float, float* %d1, align 4
  %55 = load float, float* %d2, align 4
  %sub42 = fsub float %54, %55
  %56 = load float*, float** %f, align 8
  %arrayidx43 = getelementptr inbounds float, float* %56, i64 2
  store float %sub42, float* %arrayidx43, align 4
  %57 = load float*, float** %f, align 8
  %add.ptr44 = getelementptr inbounds float, float* %57, i64 3
  store float* %add.ptr44, float** %f, align 8
  %58 = load float**, float*** %mfc.addr, align 8
  %arrayidx45 = getelementptr inbounds float*, float** %58, i64 3
  %59 = load float*, float** %arrayidx45, align 8
  %add.ptr46 = getelementptr inbounds float, float* %59, i64 1
  store float* %add.ptr46, float** %w1, align 8
  %60 = load float**, float*** %mfc.addr, align 8
  %arrayidx47 = getelementptr inbounds float*, float** %60, i64 -1
  %61 = load float*, float** %arrayidx47, align 8
  %add.ptr48 = getelementptr inbounds float, float* %61, i64 1
  store float* %add.ptr48, float** %_w1, align 8
  %62 = load float**, float*** %mfc.addr, align 8
  %arrayidx49 = getelementptr inbounds float*, float** %62, i64 1
  %63 = load float*, float** %arrayidx49, align 8
  %add.ptr50 = getelementptr inbounds float, float* %63, i64 1
  store float* %add.ptr50, float** %w_1, align 8
  %64 = load float**, float*** %mfc.addr, align 8
  %arrayidx51 = getelementptr inbounds float*, float** %64, i64 -3
  %65 = load float*, float** %arrayidx51, align 8
  %add.ptr52 = getelementptr inbounds float, float* %65, i64 1
  store float* %add.ptr52, float** %_w_1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.72, %for.end
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize54 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %67, i32 0, i32 1
  %68 = load i32, i32* %cepsize54, align 4
  %sub55 = sub nsw i32 %68, 1
  %cmp56 = icmp slt i32 %66, %sub55
  br i1 %cmp56, label %for.body.58, label %for.end.74

for.body.58:                                      ; preds = %for.cond.53
  %69 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %69 to i64
  %70 = load float*, float** %w1, align 8
  %arrayidx60 = getelementptr inbounds float, float* %70, i64 %idxprom59
  %71 = load float, float* %arrayidx60, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %72 to i64
  %73 = load float*, float** %_w1, align 8
  %arrayidx62 = getelementptr inbounds float, float* %73, i64 %idxprom61
  %74 = load float, float* %arrayidx62, align 4
  %sub63 = fsub float %71, %74
  store float %sub63, float* %d1, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %75 to i64
  %76 = load float*, float** %w_1, align 8
  %arrayidx65 = getelementptr inbounds float, float* %76, i64 %idxprom64
  %77 = load float, float* %arrayidx65, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %78 to i64
  %79 = load float*, float** %_w_1, align 8
  %arrayidx67 = getelementptr inbounds float, float* %79, i64 %idxprom66
  %80 = load float, float* %arrayidx67, align 4
  %sub68 = fsub float %77, %80
  store float %sub68, float* %d2, align 4
  %81 = load float, float* %d1, align 4
  %82 = load float, float* %d2, align 4
  %sub69 = fsub float %81, %82
  %83 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %83 to i64
  %84 = load float*, float** %f, align 8
  %arrayidx71 = getelementptr inbounds float, float* %84, i64 %idxprom70
  store float %sub69, float* %arrayidx71, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.58
  %85 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %85, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.53

for.end.74:                                       ; preds = %for.cond.53
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @feat_s3_cep_dcep(%struct.feat_s* %fcb, float** %mfc, float** %feat) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %mfc.addr = alloca float**, align 8
  %feat.addr = alloca float**, align 8
  %f = alloca float*, align 8
  %w = alloca float*, align 8
  %_w = alloca float*, align 8
  %i = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float** %mfc, float*** %mfc.addr, align 8
  store float** %feat, float*** %feat.addr, align 8
  %0 = load float**, float*** %feat.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = bitcast float* %1 to i8*
  %3 = load float**, float*** %mfc.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 0
  %4 = load float*, float** %arrayidx1, align 8
  %5 = bitcast float* %4 to i8*
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize_used = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 2
  %7 = load i32, i32* %cepsize_used, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 %mul, i32 4, i1 false)
  %8 = load float**, float*** %feat.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %8, i64 0
  %9 = load float*, float** %arrayidx2, align 8
  %10 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize_used3 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %10, i32 0, i32 2
  %11 = load i32, i32* %cepsize_used3, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds float, float* %9, i64 %idx.ext
  store float* %add.ptr, float** %f, align 8
  %12 = load float**, float*** %mfc.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %12, i64 2
  %13 = load float*, float** %arrayidx4, align 8
  store float* %13, float** %w, align 8
  %14 = load float**, float*** %mfc.addr, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %14, i64 -2
  %15 = load float*, float** %arrayidx5, align 8
  store float* %15, float** %_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize_used6 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %17, i32 0, i32 2
  %18 = load i32, i32* %cepsize_used6, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load float*, float** %w, align 8
  %arrayidx8 = getelementptr inbounds float, float* %20, i64 %idxprom
  %21 = load float, float* %arrayidx8, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load float*, float** %_w, align 8
  %arrayidx10 = getelementptr inbounds float, float* %23, i64 %idxprom9
  %24 = load float, float* %arrayidx10, align 4
  %sub = fsub float %21, %24
  %25 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load float*, float** %f, align 8
  %arrayidx12 = getelementptr inbounds float, float* %26, i64 %idxprom11
  store float %sub, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @feat_s3_cep(%struct.feat_s* %fcb, float** %mfc, float** %feat) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %mfc.addr = alloca float**, align 8
  %feat.addr = alloca float**, align 8
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float** %mfc, float*** %mfc.addr, align 8
  store float** %feat, float*** %feat.addr, align 8
  %0 = load float**, float*** %feat.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = bitcast float* %1 to i8*
  %3 = load float**, float*** %mfc.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 0
  %4 = load float*, float** %arrayidx1, align 8
  %5 = bitcast float* %4 to i8*
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize_used = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 2
  %7 = load i32, i32* %cepsize_used, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @feat_print(%struct.feat_s* %fcb, float*** %feat, i32 %nfr, %struct._IO_FILE* %fp) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %feat.addr = alloca float***, align 8
  %nfr.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float*** %feat, float**** %feat.addr, align 8
  store i32 %nfr, i32* %nfr.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nfr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 %3)
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.16, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %5, i32 0, i32 3
  %6 = load i32, i32* %n_stream, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body.3, label %for.end.18

for.body.3:                                       ; preds = %for.cond.1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 %8)
  store i32 0, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.3
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %11, i32 0, i32 4
  %12 = load i32*, i32** %stream_len, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %cmp6 = icmp slt i32 %9, %13
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load float***, float**** %feat.addr, align 8
  %arrayidx11 = getelementptr inbounds float**, float*** %18, i64 %idxprom10
  %19 = load float**, float*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds float*, float** %19, i64 %idxprom9
  %20 = load float*, float** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 %idxprom8
  %21 = load float, float* %arrayidx13, align 4
  %conv = fpext float %21 to double
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), double %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %24 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond.1

for.end.18:                                       ; preds = %for.cond.1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %25 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* %26)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @feat_s2mfc2feat(%struct.feat_s* %fcb, i8* %file, i8* %dir, i32 %sf, i32 %ef, float*** %feat, i32 %maxfr) #0 {
entry:
  %retval = alloca i32, align 4
  %fcb.addr = alloca %struct.feat_s*, align 8
  %file.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %sf.addr = alloca i32, align 4
  %ef.addr = alloca i32, align 4
  %feat.addr = alloca float***, align 8
  %maxfr.addr = alloca i32, align 4
  %path = alloca [16384 x i8], align 16
  %win = alloca i32, align 4
  %nfr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %mfc = alloca float**, align 8
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %sf, i32* %sf.addr, align 4
  store i32 %ef, i32* %ef.addr, align 4
  store float*** %feat, float**** %feat.addr, align 8
  store i32 %maxfr, i32* %maxfr.addr, align 4
  %0 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize = getelementptr inbounds %struct.feat_s, %struct.feat_s* %0, i32 0, i32 1
  %1 = load i32, i32* %cepsize, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 802, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %2 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize1 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %2, i32 0, i32 1
  %3 = load i32, i32* %cepsize1, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %file.addr, align 8
  %call = call i64 @strlen(i8* %4) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %k, align 4
  %5 = load i32, i32* %k, align 4
  %cmp2 = icmp sgt i32 %5, 4
  br i1 %cmp2, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -4
  %call5 = call i32 @strcmp(i8* %add.ptr4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0)) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.else.18

if.then.8:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %dir.addr, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %if.then.8
  %9 = load i8*, i8** %file.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 47
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.9
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %path, i32 0, i32 0
  %11 = load i8*, i8** %dir.addr, align 8
  %12 = load i8*, i8** %file.addr, align 8
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* %11, i8* %12) #3
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true.9, %if.then.8
  %arraydecay15 = getelementptr inbounds [16384 x i8], [16384 x i8]* %path, i32 0, i32 0
  %13 = load i8*, i8** %file.addr, align 8
  %call16 = call i8* @strcpy(i8* %arraydecay15, i8* %13) #3
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  br label %if.end.32

if.else.18:                                       ; preds = %land.lhs.true, %if.end
  %14 = load i8*, i8** %dir.addr, align 8
  %tobool19 = icmp ne i8* %14, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.28

land.lhs.true.20:                                 ; preds = %if.else.18
  %15 = load i8*, i8** %file.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp ne i32 %conv22, 47
  br i1 %cmp23, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %land.lhs.true.20
  %arraydecay26 = getelementptr inbounds [16384 x i8], [16384 x i8]* %path, i32 0, i32 0
  %17 = load i8*, i8** %dir.addr, align 8
  %18 = load i8*, i8** %file.addr, align 8
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* %17, i8* %18) #3
  br label %if.end.31

if.else.28:                                       ; preds = %land.lhs.true.20, %if.else.18
  %arraydecay29 = getelementptr inbounds [16384 x i8], [16384 x i8]* %path, i32 0, i32 0
  %19 = load i8*, i8** %file.addr, align 8
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* %19) #3
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.17
  %20 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %window_size = getelementptr inbounds %struct.feat_s, %struct.feat_s* %20, i32 0, i32 5
  %21 = load i32, i32* %window_size, align 4
  store i32 %21, i32* %win, align 4
  %22 = load i32, i32* %ef.addr, align 4
  %cmp33 = icmp slt i32 %22, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %23 = load i32, i32* %win, align 4
  %sub = sub nsw i32 2147418112, %23
  store i32 %sub, i32* %ef.addr, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %24 = load i32, i32* %win, align 4
  %25 = load i32, i32* %sf.addr, align 4
  %sub37 = sub nsw i32 %25, %24
  store i32 %sub37, i32* %sf.addr, align 4
  %26 = load i32, i32* %win, align 4
  %27 = load i32, i32* %ef.addr, align 4
  %add = add nsw i32 %27, %26
  store i32 %add, i32* %ef.addr, align 4
  %28 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize38 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %28, i32 0, i32 1
  %29 = load i32, i32* %cepsize38, align 4
  %call39 = call i8** @__ckd_calloc_2d__(i32 15000, i32 %29, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 829)
  %30 = bitcast i8** %call39 to float**
  store float** %30, float*** %mfc, align 8
  %31 = load i32, i32* %sf.addr, align 4
  %cmp40 = icmp slt i32 %31, 0
  br i1 %cmp40, label %if.then.42, label %if.else.49

if.then.42:                                       ; preds = %if.end.36
  %arraydecay43 = getelementptr inbounds [16384 x i8], [16384 x i8]* %path, i32 0, i32 0
  %32 = load i32, i32* %ef.addr, align 4
  %33 = load float**, float*** %mfc, align 8
  %34 = load i32, i32* %sf.addr, align 4
  %idx.ext44 = sext i32 %34 to i64
  %idx.neg = sub i64 0, %idx.ext44
  %add.ptr45 = getelementptr inbounds float*, float** %33, i64 %idx.neg
  %35 = load i32, i32* %sf.addr, align 4
  %add46 = add nsw i32 15000, %35
  %36 = load i32, i32* %win, align 4
  %sub47 = sub nsw i32 %add46, %36
  %call48 = call i32 @feat_s2mfc_read(i8* %arraydecay43, i32 0, i32 %32, float** %add.ptr45, i32 %sub47)
  store i32 %call48, i32* %nfr, align 4
  br label %if.end.53

if.else.49:                                       ; preds = %if.end.36
  %arraydecay50 = getelementptr inbounds [16384 x i8], [16384 x i8]* %path, i32 0, i32 0
  %37 = load i32, i32* %sf.addr, align 4
  %38 = load i32, i32* %ef.addr, align 4
  %39 = load float**, float*** %mfc, align 8
  %40 = load i32, i32* %win, align 4
  %sub51 = sub nsw i32 15000, %40
  %call52 = call i32 @feat_s2mfc_read(i8* %arraydecay50, i32 %37, i32 %38, float** %39, i32 %sub51)
  store i32 %call52, i32* %nfr, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.42
  %41 = load i32, i32* %nfr, align 4
  %cmp54 = icmp slt i32 %41, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  %42 = load float**, float*** %mfc, align 8
  %43 = bitcast float** %42 to i8**
  call void @ckd_free_2d(i8** %43)
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.53
  %44 = load i32, i32* %nfr, align 4
  %45 = load i32, i32* %win, align 4
  %mul = mul nsw i32 2, %45
  %add58 = add nsw i32 %mul, 1
  %cmp59 = icmp slt i32 %44, %add58
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.57
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 853, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %46 = load i8*, i8** %file.addr, align 8
  %47 = load i32, i32* %nfr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.61, i32 0, i32 0), i8* %46, i32 %47)
  %48 = load float**, float*** %mfc, align 8
  %49 = bitcast float** %48 to i8**
  call void @ckd_free_2d(i8** %49)
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.57
  %50 = load i32, i32* %sf.addr, align 4
  %cmp63 = icmp slt i32 %50, 0
  br i1 %cmp63, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %if.end.62
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.65
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %sf.addr, align 4
  %sub66 = sub nsw i32 0, %52
  %cmp67 = icmp slt i32 %51, %sub66
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %i, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load float**, float*** %mfc, align 8
  %arrayidx69 = getelementptr inbounds float*, float** %54, i64 %idxprom
  %55 = load float*, float** %arrayidx69, align 8
  %56 = bitcast float* %55 to i8*
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %sf.addr, align 4
  %sub70 = sub nsw i32 %57, %58
  %add71 = add nsw i32 %sub70, 1
  %idxprom72 = sext i32 %add71 to i64
  %59 = load float**, float*** %mfc, align 8
  %arrayidx73 = getelementptr inbounds float*, float** %59, i64 %idxprom72
  %60 = load float*, float** %arrayidx73, align 8
  %61 = bitcast float* %60 to i8*
  %62 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize74 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %62, i32 0, i32 1
  %63 = load i32, i32* %cepsize74, align 4
  %conv75 = sext i32 %63 to i64
  %mul76 = mul i64 %conv75, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %61, i64 %mul76, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load i32, i32* %sf.addr, align 4
  %66 = load i32, i32* %nfr, align 4
  %sub77 = sub nsw i32 %66, %65
  store i32 %sub77, i32* %nfr, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %for.end, %if.end.62
  %67 = load i32, i32* %ef.addr, align 4
  %68 = load i32, i32* %sf.addr, align 4
  %sub79 = sub nsw i32 %67, %68
  %add80 = add nsw i32 %sub79, 1
  store i32 %add80, i32* %k, align 4
  %69 = load i32, i32* %nfr, align 4
  %70 = load i32, i32* %k, align 4
  %cmp81 = icmp slt i32 %69, %70
  br i1 %cmp81, label %if.then.83, label %if.end.108

if.then.83:                                       ; preds = %if.end.78
  %71 = load i32, i32* %nfr, align 4
  %72 = load i32, i32* %k, align 4
  %sub84 = sub nsw i32 %72, %71
  store i32 %sub84, i32* %k, align 4
  %73 = load i32, i32* %k, align 4
  %74 = load i32, i32* %win, align 4
  %cmp85 = icmp sgt i32 %73, %74
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.83
  %75 = load i32, i32* %win, align 4
  store i32 %75, i32* %k, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.83
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.104, %if.end.88
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %k, align 4
  %cmp90 = icmp slt i32 %76, %77
  br i1 %cmp90, label %for.body.92, label %for.end.106

for.body.92:                                      ; preds = %for.cond.89
  %78 = load i32, i32* %nfr, align 4
  %79 = load i32, i32* %i, align 4
  %add93 = add nsw i32 %78, %79
  %idxprom94 = sext i32 %add93 to i64
  %80 = load float**, float*** %mfc, align 8
  %arrayidx95 = getelementptr inbounds float*, float** %80, i64 %idxprom94
  %81 = load float*, float** %arrayidx95, align 8
  %82 = bitcast float* %81 to i8*
  %83 = load i32, i32* %nfr, align 4
  %84 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %83, %84
  %sub97 = sub nsw i32 %add96, 1
  %85 = load i32, i32* %k, align 4
  %sub98 = sub nsw i32 %sub97, %85
  %idxprom99 = sext i32 %sub98 to i64
  %86 = load float**, float*** %mfc, align 8
  %arrayidx100 = getelementptr inbounds float*, float** %86, i64 %idxprom99
  %87 = load float*, float** %arrayidx100, align 8
  %88 = bitcast float* %87 to i8*
  %89 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize101 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %89, i32 0, i32 1
  %90 = load i32, i32* %cepsize101, align 4
  %conv102 = sext i32 %90 to i64
  %mul103 = mul i64 %conv102, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %88, i64 %mul103, i32 4, i1 false)
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.92
  %91 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %91, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.89

for.end.106:                                      ; preds = %for.cond.89
  %92 = load i32, i32* %k, align 4
  %93 = load i32, i32* %nfr, align 4
  %add107 = add nsw i32 %93, %92
  store i32 %add107, i32* %nfr, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.106, %if.end.78
  %94 = load i32, i32* %nfr, align 4
  %95 = load i32, i32* %win, align 4
  %mul109 = mul nsw i32 %95, 2
  %sub110 = sub nsw i32 %94, %mul109
  %96 = load i32, i32* %maxfr.addr, align 4
  %cmp111 = icmp sgt i32 %sub110, %96
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.108
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 879, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %97 = load i32, i32* %maxfr.addr, align 4
  %98 = load i32, i32* %nfr, align 4
  %99 = load i32, i32* %win, align 4
  %mul114 = mul nsw i32 %99, 2
  %sub115 = sub nsw i32 %98, %mul114
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i32 0, i32 0), i32 %97, i32 %sub115)
  %100 = load float**, float*** %mfc, align 8
  %101 = bitcast float** %100 to i8**
  call void @ckd_free_2d(i8** %101)
  store i32 -1, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.108
  %102 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cmn = getelementptr inbounds %struct.feat_s, %struct.feat_s* %102, i32 0, i32 6
  %103 = load i32, i32* %cmn, align 4
  %tobool117 = icmp ne i32 %103, 0
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.116
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 885, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0))
  %104 = load float**, float*** %mfc, align 8
  %105 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %varnorm = getelementptr inbounds %struct.feat_s, %struct.feat_s* %105, i32 0, i32 7
  %106 = load i32, i32* %varnorm, align 4
  %107 = load i32, i32* %nfr, align 4
  %108 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize119 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %108, i32 0, i32 1
  %109 = load i32, i32* %cepsize119, align 4
  call void @cmn(float** %104, i32 %106, i32 %107, i32 %109)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.116
  %110 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %agc = getelementptr inbounds %struct.feat_s, %struct.feat_s* %110, i32 0, i32 8
  %111 = load i32, i32* %agc, align 4
  %tobool121 = icmp ne i32 %111, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.120
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 889, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  %112 = load float**, float*** %mfc, align 8
  %113 = load i32, i32* %nfr, align 4
  call void @agc_max(float** %112, i32 %113)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.120
  %114 = load i32, i32* %win, align 4
  store i32 %114, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.134, %if.end.123
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %nfr, align 4
  %117 = load i32, i32* %win, align 4
  %sub125 = sub nsw i32 %116, %117
  %cmp126 = icmp slt i32 %115, %sub125
  br i1 %cmp126, label %for.body.128, label %for.end.136

for.body.128:                                     ; preds = %for.cond.124
  %118 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %compute_feat = getelementptr inbounds %struct.feat_s, %struct.feat_s* %118, i32 0, i32 9
  %119 = load void (%struct.feat_s*, float**, float**)*, void (%struct.feat_s*, float**, float**)** %compute_feat, align 8
  %120 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %121 = load float**, float*** %mfc, align 8
  %122 = load i32, i32* %i, align 4
  %idx.ext129 = sext i32 %122 to i64
  %add.ptr130 = getelementptr inbounds float*, float** %121, i64 %idx.ext129
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %win, align 4
  %sub131 = sub nsw i32 %123, %124
  %idxprom132 = sext i32 %sub131 to i64
  %125 = load float***, float**** %feat.addr, align 8
  %arrayidx133 = getelementptr inbounds float**, float*** %125, i64 %idxprom132
  %126 = load float**, float*** %arrayidx133, align 8
  call void %119(%struct.feat_s* %120, float** %add.ptr130, float** %126)
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.128
  %127 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %127, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.124

for.end.136:                                      ; preds = %for.cond.124
  %128 = load float**, float*** %mfc, align 8
  %129 = bitcast float** %128 to i8**
  call void @ckd_free_2d(i8** %129)
  %130 = load i32, i32* %nfr, align 4
  %131 = load i32, i32* %win, align 4
  %mul137 = mul nsw i32 %131, 2
  %sub138 = sub nsw i32 %130, %mul137
  store i32 %sub138, i32* %retval
  br label %return

return:                                           ; preds = %for.end.136, %if.then.113, %if.then.61, %if.then.56, %if.then
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @ckd_free_2d(i8**) #1

declare void @cmn(float**, i32, i32, i32) #1

declare void @agc_max(float**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @feat_s2mfc2feat_block(%struct.feat_s* %fcb, float** %uttcep, i32 %nfr, i32 %beginutt, i32 %endutt, float*** %ofeat) #0 {
entry:
  %fcb.addr = alloca %struct.feat_s*, align 8
  %uttcep.addr = alloca float**, align 8
  %nfr.addr = alloca i32, align 4
  %beginutt.addr = alloca i32, align 4
  %endutt.addr = alloca i32, align 4
  %ofeat.addr = alloca float***, align 8
  %win = alloca i32, align 4
  %cepsize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nfeatvec = alloca i32, align 4
  %residualvecs = alloca i32, align 4
  %tmppos = alloca i32, align 4
  %tpos = alloca i16, align 2
  store %struct.feat_s* %fcb, %struct.feat_s** %fcb.addr, align 8
  store float** %uttcep, float*** %uttcep.addr, align 8
  store i32 %nfr, i32* %nfr.addr, align 4
  store i32 %beginutt, i32* %beginutt.addr, align 4
  store i32 %endutt, i32* %endutt.addr, align 4
  store float*** %ofeat, float**** %ofeat.addr, align 8
  %0 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %window_size = getelementptr inbounds %struct.feat_s, %struct.feat_s* %0, i32 0, i32 5
  %1 = load i32, i32* %window_size, align 4
  store i32 %1, i32* %win, align 4
  %2 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize1 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %2, i32 0, i32 1
  %3 = load i32, i32* %cepsize1, align 4
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 964, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %4 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize2 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %4, i32 0, i32 1
  %5 = load i32, i32* %cepsize2, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize3 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %6, i32 0, i32 1
  %7 = load i32, i32* %cepsize3, align 4
  store i32 %7, i32* %cepsize, align 4
  %8 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %cmp4 = icmp eq float** %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %cepsize, align 4
  %call = call i8** @__ckd_calloc_2d__(i32 256, i32 %9, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 968)
  %10 = bitcast i8** %call to float**
  store float** %10, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %11 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %tobool = icmp ne float** %11, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.5
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 969, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %12 = load i32, i32* %cepsize, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.65, i32 0, i32 0), i32 256, i32 %12, i64 4)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.5
  store i32 1, i32* %beginutt.addr, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 971, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i32 0, i32 0), i32 256)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %13 = load float**, float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8
  %cmp9 = icmp eq float** %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %14 = load i32, i32* %win, align 4
  %mul = mul nsw i32 2, %14
  %add = add nsw i32 %mul, 1
  %15 = load i32, i32* %cepsize, align 4
  %call11 = call i8** @__ckd_calloc_2d__(i32 %add, i32 %15, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 975)
  %16 = bitcast i8** %call11 to float**
  store float** %16, float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8
  %17 = load float**, float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8
  %tobool12 = icmp ne float** %17, null
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %18 = load i32, i32* %win, align 4
  %mul14 = mul nsw i32 2, %18
  %add15 = add nsw i32 %mul14, 1
  %19 = load i32, i32* %cepsize, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.67, i32 0, i32 0), i32 %add15, i32 %19, i64 4)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.8
  %20 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cmn = getelementptr inbounds %struct.feat_s, %struct.feat_s* %20, i32 0, i32 6
  %21 = load i32, i32* %cmn, align 4
  %tobool18 = icmp ne i32 %21, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %22 = load float**, float*** %uttcep.addr, align 8
  %23 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %varnorm = getelementptr inbounds %struct.feat_s, %struct.feat_s* %23, i32 0, i32 7
  %24 = load i32, i32* %varnorm, align 4
  %25 = load i32, i32* %nfr.addr, align 4
  %26 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %cepsize20 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %26, i32 0, i32 1
  %27 = load i32, i32* %cepsize20, align 4
  %28 = load i32, i32* %endutt.addr, align 4
  call void @cmn_prior(float** %22, i32 %24, i32 %25, i32 %27, i32 %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  store i32 0, i32* %residualvecs, align 4
  %29 = load i32, i32* %beginutt.addr, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.end.39

if.then.23:                                       ; preds = %if.end.21
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %win, align 4
  %cmp24 = icmp slt i32 %30, %31
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %nfr.addr, align 4
  %33 = load i32, i32* %win, align 4
  %add25 = add nsw i32 %33, 1
  %cmp26 = icmp sge i32 %32, %add25
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx = getelementptr inbounds float*, float** %35, i64 %idxprom
  %36 = load float*, float** %arrayidx, align 8
  %37 = bitcast float* %36 to i8*
  %38 = load i32, i32* %i, align 4
  %add28 = add nsw i32 0, %38
  %add29 = add nsw i32 %add28, 1
  %idxprom30 = sext i32 %add29 to i64
  %39 = load float**, float*** %uttcep.addr, align 8
  %arrayidx31 = getelementptr inbounds float*, float** %39, i64 %idxprom30
  %40 = load float*, float** %arrayidx31, align 8
  %41 = bitcast float* %40 to i8*
  %42 = load i32, i32* %cepsize, align 4
  %conv = sext i32 %42 to i64
  %mul32 = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %41, i64 %mul32, i32 4, i1 false)
  br label %if.end.38

if.else:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx34 = getelementptr inbounds float*, float** %44, i64 %idxprom33
  %45 = load float*, float** %arrayidx34, align 8
  %46 = bitcast float* %45 to i8*
  %47 = load float**, float*** %uttcep.addr, align 8
  %arrayidx35 = getelementptr inbounds float*, float** %47, i64 0
  %48 = load float*, float** %arrayidx35, align 8
  %49 = bitcast float* %48 to i8*
  %50 = load i32, i32* %cepsize, align 4
  %conv36 = sext i32 %50 to i64
  %mul37 = mul i64 %conv36, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %49, i64 %mul37, i32 4, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %win, align 4
  store i32 %52, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %53 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %rem = srem i32 %53, 256
  store i32 %rem, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %54 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  store i32 %54, i32* @feat_s2mfc2feat_block.curpos, align 4
  %55 = load i32, i32* %win, align 4
  %56 = load i32, i32* %residualvecs, align 4
  %sub = sub nsw i32 %56, %55
  store i32 %sub, i32* %residualvecs, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.end.21
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.52, %if.end.39
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %nfr.addr, align 4
  %cmp41 = icmp slt i32 %57, %58
  br i1 %cmp41, label %for.body.43, label %for.end.54

for.body.43:                                      ; preds = %for.cond.40
  %59 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %inc44 = add nsw i32 %59, 1
  store i32 %inc44, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %idxprom45 = sext i32 %59 to i64
  %60 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx46 = getelementptr inbounds float*, float** %60, i64 %idxprom45
  %61 = load float*, float** %arrayidx46, align 8
  %62 = bitcast float* %61 to i8*
  %63 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %63 to i64
  %64 = load float**, float*** %uttcep.addr, align 8
  %arrayidx48 = getelementptr inbounds float*, float** %64, i64 %idxprom47
  %65 = load float*, float** %arrayidx48, align 8
  %66 = bitcast float* %65 to i8*
  %67 = load i32, i32* %cepsize, align 4
  %conv49 = sext i32 %67 to i64
  %mul50 = mul i64 %conv49, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %66, i64 %mul50, i32 4, i1 false)
  %68 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %rem51 = srem i32 %68, 256
  store i32 %rem51, i32* @feat_s2mfc2feat_block.bufpos, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.43
  %69 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %69, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.40

for.end.54:                                       ; preds = %for.cond.40
  %70 = load i32, i32* %endutt.addr, align 4
  %tobool55 = icmp ne i32 %70, 0
  br i1 %tobool55, label %if.then.56, label %if.end.99

if.then.56:                                       ; preds = %for.end.54
  %71 = load i32, i32* %nfr.addr, align 4
  %cmp57 = icmp sgt i32 %71, 0
  br i1 %cmp57, label %if.then.59, label %if.else.76

if.then.59:                                       ; preds = %if.then.56
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.73, %if.then.59
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %win, align 4
  %cmp61 = icmp slt i32 %72, %73
  br i1 %cmp61, label %for.body.63, label %for.end.75

for.body.63:                                      ; preds = %for.cond.60
  %74 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %inc64 = add nsw i32 %74, 1
  store i32 %inc64, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %idxprom65 = sext i32 %74 to i64
  %75 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx66 = getelementptr inbounds float*, float** %75, i64 %idxprom65
  %76 = load float*, float** %arrayidx66, align 8
  %77 = bitcast float* %76 to i8*
  %78 = load i32, i32* %nfr.addr, align 4
  %sub67 = sub nsw i32 %78, 1
  %idxprom68 = sext i32 %sub67 to i64
  %79 = load float**, float*** %uttcep.addr, align 8
  %arrayidx69 = getelementptr inbounds float*, float** %79, i64 %idxprom68
  %80 = load float*, float** %arrayidx69, align 8
  %81 = bitcast float* %80 to i8*
  %82 = load i32, i32* %cepsize, align 4
  %conv70 = sext i32 %82 to i64
  %mul71 = mul i64 %conv70, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %81, i64 %mul71, i32 4, i1 false)
  %83 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %rem72 = srem i32 %83, 256
  store i32 %rem72, i32* @feat_s2mfc2feat_block.bufpos, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.63
  %84 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %84, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.60

for.end.75:                                       ; preds = %for.cond.60
  br label %if.end.97

if.else.76:                                       ; preds = %if.then.56
  %85 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %sub77 = sub nsw i32 %85, 1
  %conv78 = trunc i32 %sub77 to i16
  store i16 %conv78, i16* %tpos, align 2
  %86 = load i16, i16* %tpos, align 2
  %conv79 = sext i16 %86 to i32
  %rem80 = srem i32 %conv79, 256
  %conv81 = trunc i32 %rem80 to i16
  store i16 %conv81, i16* %tpos, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.94, %if.else.76
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %win, align 4
  %cmp83 = icmp slt i32 %87, %88
  br i1 %cmp83, label %for.body.85, label %for.end.96

for.body.85:                                      ; preds = %for.cond.82
  %89 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %inc86 = add nsw i32 %89, 1
  store i32 %inc86, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %idxprom87 = sext i32 %89 to i64
  %90 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx88 = getelementptr inbounds float*, float** %90, i64 %idxprom87
  %91 = load float*, float** %arrayidx88, align 8
  %92 = bitcast float* %91 to i8*
  %93 = load i16, i16* %tpos, align 2
  %idxprom89 = sext i16 %93 to i64
  %94 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx90 = getelementptr inbounds float*, float** %94, i64 %idxprom89
  %95 = load float*, float** %arrayidx90, align 8
  %96 = bitcast float* %95 to i8*
  %97 = load i32, i32* %cepsize, align 4
  %conv91 = sext i32 %97 to i64
  %mul92 = mul i64 %conv91, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %96, i64 %mul92, i32 4, i1 false)
  %98 = load i32, i32* @feat_s2mfc2feat_block.bufpos, align 4
  %rem93 = srem i32 %98, 256
  store i32 %rem93, i32* @feat_s2mfc2feat_block.bufpos, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.85
  %99 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %99, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.82

for.end.96:                                       ; preds = %for.cond.82
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.96, %for.end.75
  %100 = load i32, i32* %win, align 4
  %101 = load i32, i32* %residualvecs, align 4
  %add98 = add nsw i32 %101, %100
  store i32 %add98, i32* %residualvecs, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.97, %for.end.54
  store i32 0, i32* %nfeatvec, align 4
  %102 = load i32, i32* %residualvecs, align 4
  %103 = load i32, i32* %nfr.addr, align 4
  %add100 = add nsw i32 %103, %102
  store i32 %add100, i32* %nfr.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.141, %if.end.99
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %nfr.addr, align 4
  %cmp102 = icmp slt i32 %104, %105
  br i1 %cmp102, label %for.body.104, label %for.end.144

for.body.104:                                     ; preds = %for.cond.101
  %106 = load i32, i32* @feat_s2mfc2feat_block.curpos, align 4
  %107 = load i32, i32* %win, align 4
  %cmp105 = icmp slt i32 %106, %107
  br i1 %cmp105, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.104
  %108 = load i32, i32* @feat_s2mfc2feat_block.curpos, align 4
  %109 = load i32, i32* %win, align 4
  %sub107 = sub nsw i32 256, %109
  %sub108 = sub nsw i32 %sub107, 1
  %cmp109 = icmp sgt i32 %108, %sub108
  br i1 %cmp109, label %if.then.111, label %if.else.132

if.then.111:                                      ; preds = %lor.lhs.false, %for.body.104
  %110 = load i32, i32* %win, align 4
  %sub112 = sub nsw i32 0, %110
  store i32 %sub112, i32* %j, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.127, %if.then.111
  %111 = load i32, i32* %j, align 4
  %112 = load i32, i32* %win, align 4
  %cmp114 = icmp sle i32 %111, %112
  br i1 %cmp114, label %for.body.116, label %for.end.129

for.body.116:                                     ; preds = %for.cond.113
  %113 = load i32, i32* %j, align 4
  %114 = load i32, i32* @feat_s2mfc2feat_block.curpos, align 4
  %add117 = add nsw i32 %113, %114
  %add118 = add nsw i32 %add117, 256
  %rem119 = srem i32 %add118, 256
  store i32 %rem119, i32* %tmppos, align 4
  %115 = load i32, i32* %win, align 4
  %116 = load i32, i32* %j, align 4
  %add120 = add nsw i32 %115, %116
  %idxprom121 = sext i32 %add120 to i64
  %117 = load float**, float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8
  %arrayidx122 = getelementptr inbounds float*, float** %117, i64 %idxprom121
  %118 = load float*, float** %arrayidx122, align 8
  %119 = bitcast float* %118 to i8*
  %120 = load i32, i32* %tmppos, align 4
  %idxprom123 = sext i32 %120 to i64
  %121 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %arrayidx124 = getelementptr inbounds float*, float** %121, i64 %idxprom123
  %122 = load float*, float** %arrayidx124, align 8
  %123 = bitcast float* %122 to i8*
  %124 = load i32, i32* %cepsize, align 4
  %conv125 = sext i32 %124 to i64
  %mul126 = mul i64 %conv125, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %123, i64 %mul126, i32 4, i1 false)
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.116
  %125 = load i32, i32* %j, align 4
  %inc128 = add nsw i32 %125, 1
  store i32 %inc128, i32* %j, align 4
  br label %for.cond.113

for.end.129:                                      ; preds = %for.cond.113
  %126 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %compute_feat = getelementptr inbounds %struct.feat_s, %struct.feat_s* %126, i32 0, i32 9
  %127 = load void (%struct.feat_s*, float**, float**)*, void (%struct.feat_s*, float**, float**)** %compute_feat, align 8
  %128 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %129 = load float**, float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8
  %130 = load i32, i32* %win, align 4
  %idx.ext = sext i32 %130 to i64
  %add.ptr = getelementptr inbounds float*, float** %129, i64 %idx.ext
  %131 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %131 to i64
  %132 = load float***, float**** %ofeat.addr, align 8
  %arrayidx131 = getelementptr inbounds float**, float*** %132, i64 %idxprom130
  %133 = load float**, float*** %arrayidx131, align 8
  call void %127(%struct.feat_s* %128, float** %add.ptr, float** %133)
  br label %if.end.138

if.else.132:                                      ; preds = %lor.lhs.false
  %134 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %compute_feat133 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %134, i32 0, i32 9
  %135 = load void (%struct.feat_s*, float**, float**)*, void (%struct.feat_s*, float**, float**)** %compute_feat133, align 8
  %136 = load %struct.feat_s*, %struct.feat_s** %fcb.addr, align 8
  %137 = load float**, float*** @feat_s2mfc2feat_block.cepbuf, align 8
  %138 = load i32, i32* @feat_s2mfc2feat_block.curpos, align 4
  %idx.ext134 = sext i32 %138 to i64
  %add.ptr135 = getelementptr inbounds float*, float** %137, i64 %idx.ext134
  %139 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %139 to i64
  %140 = load float***, float**** %ofeat.addr, align 8
  %arrayidx137 = getelementptr inbounds float**, float*** %140, i64 %idxprom136
  %141 = load float**, float*** %arrayidx137, align 8
  call void %135(%struct.feat_s* %136, float** %add.ptr135, float** %141)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.132, %for.end.129
  %142 = load i32, i32* @feat_s2mfc2feat_block.curpos, align 4
  %inc139 = add nsw i32 %142, 1
  store i32 %inc139, i32* @feat_s2mfc2feat_block.curpos, align 4
  %143 = load i32, i32* @feat_s2mfc2feat_block.curpos, align 4
  %rem140 = srem i32 %143, 256
  store i32 %rem140, i32* @feat_s2mfc2feat_block.curpos, align 4
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.138
  %144 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %144, 1
  store i32 %inc142, i32* %i, align 4
  %145 = load i32, i32* %nfeatvec, align 4
  %inc143 = add nsw i32 %145, 1
  store i32 %inc143, i32* %nfeatvec, align 4
  br label %for.cond.101

for.end.144:                                      ; preds = %for.cond.101
  %146 = load i32, i32* %nfeatvec, align 4
  ret i32 %146
}

declare void @cmn_prior(float**, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @feat_free(%struct.feat_s* %f) #0 {
entry:
  %f.addr = alloca %struct.feat_s*, align 8
  store %struct.feat_s* %f, %struct.feat_s** %f.addr, align 8
  %0 = load %struct.feat_s*, %struct.feat_s** %f.addr, align 8
  %tobool = icmp ne %struct.feat_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
