; ModuleID = 'bio.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"s3\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"version %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"endhdr\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bio.c\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Premature EOF, line %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Header format error, line %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"endhdr\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Max arg-value limit(%d) exceeded; increase BIO_HDRARG_MAX\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"swap_check failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Unsupported elemsize: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"fread(arraysize) failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Bad arraysize: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"fread(arraydata) failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"fread(chksum) failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Checksum error; file-checksum %08x, computed %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"*end_comment*\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Missing %s marker\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Cannot read BYTEORDER MAGIC NO.\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Bad BYTEORDER MAGIC NO: %08x, expecting %08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Unsupported elemsize for byteswapping: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Unsupported elemsize for checksum: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @bio_hdrarg_free(i8** %argname, i8** %argval) #0 {
entry:
  %argname.addr = alloca i8**, align 8
  %argval.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8** %argname, i8*** %argname.addr, align 8
  store i8** %argval, i8*** %argval.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %argname.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8**, i8*** %argname.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  call void @ckd_free(i8* %5)
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argval.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  call void @ckd_free(i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8**, i8*** %argname.addr, align 8
  %11 = bitcast i8** %10 to i8*
  call void @ckd_free(i8* %11)
  %12 = load i8**, i8*** %argval.addr, align 8
  %13 = bitcast i8** %12 to i8*
  call void @ckd_free(i8* %13)
  ret void
}

declare void @ckd_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @bio_writehdr_version(%struct._IO_FILE* %fp, i8* %version) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %version.addr = alloca i8*, align 8
  %b = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i8*, i8** %version.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %4)
  store i32 287454020, i32* %b, align 4
  %5 = bitcast i32* %b to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i64 @fwrite(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %7)
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @bio_readhdr(%struct._IO_FILE* %fp, i8*** %argname, i8*** %argval, i32* %swap) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %argname.addr = alloca i8***, align 8
  %argval.addr = alloca i8***, align 8
  %swap.addr = alloca i32*, align 8
  %line = alloca [16384 x i8], align 16
  %word = alloca [4096 x i8], align 16
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %lineno = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8*** %argname, i8**** %argname.addr, align 8
  store i8*** %argval, i8**** %argval.addr, align 8
  store i32* %swap, i32** %swap.addr, align 8
  %call = call i8* @__ckd_calloc__(i64 33, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 137)
  %0 = bitcast i8* %call to i8**
  %1 = load i8***, i8**** %argname.addr, align 8
  store i8** %0, i8*** %1, align 8
  %call1 = call i8* @__ckd_calloc__(i64 32, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 138)
  %2 = bitcast i8* %call1 to i8**
  %3 = load i8***, i8**** %argval.addr, align 8
  store i8** %2, i8*** %3, align 8
  store i32 0, i32* %lineno, align 4
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 16384, %struct._IO_FILE* %4)
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %5 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %lineno, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %lineno, align 4
  %arrayidx = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 115
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 51
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %arrayidx10 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 10
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.54, %if.then.39, %if.then.14
  %arraydecay15 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i8* @fgets(i8* %arraydecay15, i32 16384, %struct._IO_FILE* %10)
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.cond
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %11 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.cond
  %12 = load i32, i32* %lineno, align 4
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %lineno, align 4
  %arraydecay22 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay23, i32* %l) #4
  %cmp25 = icmp ne i32 %call24, 1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.20
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %13 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i32 %13)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.20
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call30 = call i32 @strcmp(i8* %arraydecay29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  br label %for.end

if.end.34:                                        ; preds = %if.end.28
  %arrayidx35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i64 0
  %14 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %14 to i32
  %cmp37 = icmp eq i32 %conv36, 35
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  br label %for.cond

if.end.40:                                        ; preds = %if.end.34
  %15 = load i32, i32* %i, align 4
  %cmp41 = icmp sge i32 %15, 32
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0), i32 32)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  %arraydecay45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call46 = call i8* @__ckd_salloc__(i8* %arraydecay45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 163)
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8***, i8**** %argname.addr, align 8
  %18 = load i8**, i8*** %17, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  store i8* %call46, i8** %arrayidx47, align 8
  %arraydecay48 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %19 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay48, i64 %idx.ext
  %arraydecay49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay49) #4
  %cmp51 = icmp ne i32 %call50, 1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.44
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %20 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i32 %20)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.44
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call56 = call i8* @__ckd_salloc__(i8* %arraydecay55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 166)
  %21 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %21 to i64
  %22 = load i8***, i8**** %argval.addr, align 8
  %23 = load i8**, i8*** %22, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %23, i64 %idxprom57
  store i8* %call56, i8** %arrayidx58, align 8
  %24 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %24, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.33
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true, %if.end
  %arraydecay60 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call62 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay61) #4
  %cmp63 = icmp ne i32 %call62, 1
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %25 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i32 %25)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.else
  %call67 = call i8* @__ckd_salloc__(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 174)
  %26 = load i8***, i8**** %argname.addr, align 8
  %27 = load i8**, i8*** %26, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %call67, i8** %arrayidx68, align 8
  %arraydecay69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %word, i32 0, i32 0
  %call70 = call i8* @__ckd_salloc__(i8* %arraydecay69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 175)
  %28 = load i8***, i8**** %argval.addr, align 8
  %29 = load i8**, i8*** %28, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %call70, i8** %arrayidx71, align 8
  store i32 1, i32* %i, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @bcomment_read(%struct._IO_FILE* %30)
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.66, %for.end
  %31 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %31 to i64
  %32 = load i8***, i8**** %argname.addr, align 8
  %33 = load i8**, i8*** %32, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %33, i64 %idxprom73
  store i8* null, i8** %arrayidx74, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call75 = call i32 @swap_check(%struct._IO_FILE* %34)
  %35 = load i32*, i32** %swap.addr, align 8
  store i32 %call75, i32* %35, align 4
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.72
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.72
  ret i32 0
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @bcomment_read(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %iline = alloca [16384 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %iline, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 16384, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [16384 x i8], [16384 x i8]* %iline, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @swap_check(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %magic = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = bitcast i32* %magic to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %magic, align 4
  %cmp1 = icmp ne i32 %2, 287454020
  br i1 %cmp1, label %if.then.2, label %if.end.24

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %magic, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 255, %shr
  %4 = load i32, i32* %magic, align 4
  %shr3 = lshr i32 %4, 8
  %and4 = and i32 65280, %shr3
  %or = or i32 %and, %and4
  %5 = load i32, i32* %magic, align 4
  %shl = shl i32 %5, 8
  %and5 = and i32 16711680, %shl
  %or6 = or i32 %or, %and5
  %6 = load i32, i32* %magic, align 4
  %shl7 = shl i32 %6, 24
  %and8 = and i32 -16777216, %shl7
  %or9 = or i32 %or6, %and8
  store i32 %or9, i32* %magic, align 4
  %7 = load i32, i32* %magic, align 4
  %cmp10 = icmp eq i32 %7, 287454020
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.2
  %8 = load i32, i32* %magic, align 4
  %shr13 = lshr i32 %8, 24
  %and14 = and i32 255, %shr13
  %9 = load i32, i32* %magic, align 4
  %shr15 = lshr i32 %9, 8
  %and16 = and i32 65280, %shr15
  %or17 = or i32 %and14, %and16
  %10 = load i32, i32* %magic, align 4
  %shl18 = shl i32 %10, 8
  %and19 = and i32 16711680, %shl18
  %or20 = or i32 %or17, %and19
  %11 = load i32, i32* %magic, align 4
  %shl21 = shl i32 %11, 24
  %and22 = and i32 -16777216, %shl21
  %or23 = or i32 %or20, %and22
  store i32 %or23, i32* %magic, align 4
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %12 = load i32, i32* %magic, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0), i32 %12, i32 287454020)
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.end.12, %if.then.11, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @bio_fread(i8* %buf, i32 %el_sz, i32 %n_el, %struct._IO_FILE* %fp, i32 %swap, i32* %chksum) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %el_sz.addr = alloca i32, align 4
  %n_el.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %swap.addr = alloca i32, align 4
  %chksum.addr = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %el_sz, i32* %el_sz.addr, align 4
  store i32 %n_el, i32* %n_el.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %swap, i32* %swap.addr, align 4
  store i32* %chksum, i32** %chksum.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i32, i32* %el_sz.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* %n_el.addr, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 %conv, i64 %conv1, %struct._IO_FILE* %3)
  %4 = load i32, i32* %n_el.addr, align 4
  %conv2 = sext i32 %4 to i64
  %cmp = icmp ne i64 %call, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %swap.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i32, i32* %el_sz.addr, align 4
  %8 = load i32, i32* %n_el.addr, align 4
  call void @swap_buf(i8* %6, i32 %7, i32 %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load i32*, i32** %chksum.addr, align 8
  %tobool6 = icmp ne i32* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i32, i32* %el_sz.addr, align 4
  %12 = load i32, i32* %n_el.addr, align 4
  %13 = load i32*, i32** %chksum.addr, align 8
  %14 = load i32, i32* %13, align 4
  %call8 = call i32 @chksum_accum(i8* %10, i32 %11, i32 %12, i32 %14)
  %15 = load i32*, i32** %chksum.addr, align 8
  store i32 %call8, i32* %15, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %16 = load i32, i32* %n_el.addr, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @swap_buf(i8* %buf, i32 %el_sz, i32 %n_el) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %el_sz.addr = alloca i32, align 4
  %n_el.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buf16 = alloca i16*, align 8
  %buf32 = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %el_sz, i32* %el_sz.addr, align 4
  store i32 %n_el, i32* %n_el.addr, align 4
  %0 = load i32, i32* %el_sz.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = bitcast i8* %1 to i16*
  store i16* %2, i16** %buf16, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_el.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %buf16, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i16, i16* %5, i64 %idx.ext
  %7 = load i16, i16* %add.ptr, align 2
  %conv = zext i16 %7 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 255, %shr
  %8 = load i16*, i16** %buf16, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i16, i16* %8, i64 %idx.ext2
  %10 = load i16, i16* %add.ptr3, align 2
  %conv4 = zext i16 %10 to i32
  %shl = shl i32 %conv4, 8
  %and5 = and i32 65280, %shl
  %or = or i32 %and, %and5
  %conv6 = trunc i32 %or to i16
  %11 = load i16*, i16** %buf16, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext7 = sext i32 %12 to i64
  %add.ptr8 = getelementptr inbounds i16, i16* %11, i64 %idx.ext7
  store i16 %conv6, i16* %add.ptr8, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %buf32, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.35, %sw.bb.9
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n_el.addr, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %for.body.13, label %for.end.37

for.body.13:                                      ; preds = %for.cond.10
  %18 = load i32*, i32** %buf32, align 8
  %19 = load i32, i32* %i, align 4
  %idx.ext14 = sext i32 %19 to i64
  %add.ptr15 = getelementptr inbounds i32, i32* %18, i64 %idx.ext14
  %20 = load i32, i32* %add.ptr15, align 4
  %shr16 = lshr i32 %20, 24
  %and17 = and i32 255, %shr16
  %21 = load i32*, i32** %buf32, align 8
  %22 = load i32, i32* %i, align 4
  %idx.ext18 = sext i32 %22 to i64
  %add.ptr19 = getelementptr inbounds i32, i32* %21, i64 %idx.ext18
  %23 = load i32, i32* %add.ptr19, align 4
  %shr20 = lshr i32 %23, 8
  %and21 = and i32 65280, %shr20
  %or22 = or i32 %and17, %and21
  %24 = load i32*, i32** %buf32, align 8
  %25 = load i32, i32* %i, align 4
  %idx.ext23 = sext i32 %25 to i64
  %add.ptr24 = getelementptr inbounds i32, i32* %24, i64 %idx.ext23
  %26 = load i32, i32* %add.ptr24, align 4
  %shl25 = shl i32 %26, 8
  %and26 = and i32 16711680, %shl25
  %or27 = or i32 %or22, %and26
  %27 = load i32*, i32** %buf32, align 8
  %28 = load i32, i32* %i, align 4
  %idx.ext28 = sext i32 %28 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %27, i64 %idx.ext28
  %29 = load i32, i32* %add.ptr29, align 4
  %shl30 = shl i32 %29, 24
  %and31 = and i32 -16777216, %shl30
  %or32 = or i32 %or27, %and31
  %30 = load i32*, i32** %buf32, align 8
  %31 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %31 to i64
  %add.ptr34 = getelementptr inbounds i32, i32* %30, i64 %idx.ext33
  store i32 %or32, i32* %add.ptr34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.13
  %32 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.10

for.end.37:                                       ; preds = %for.cond.10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %33 = load i32, i32* %el_sz.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0), i32 %33)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.37, %for.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @chksum_accum(i8* %buf, i32 %el_sz, i32 %n_el, i32 %sum) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %el_sz.addr = alloca i32, align 4
  %n_el.addr = alloca i32, align 4
  %sum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i8 = alloca i8*, align 8
  %i16 = alloca i16*, align 8
  %i32 = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %el_sz, i32* %el_sz.addr, align 4
  store i32 %n_el, i32* %n_el.addr, align 4
  store i32 %sum, i32* %sum.addr, align 4
  %0 = load i32, i32* %el_sz.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  store i8* %1, i8** %i8, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_el.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %sum.addr, align 4
  %shl = shl i32 %4, 5
  %5 = load i32, i32* %sum.addr, align 4
  %shr = lshr i32 %5, 27
  %or = or i32 %shl, %shr
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %i8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %add = add i32 %or, %conv
  store i32 %add, i32* %sum.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = bitcast i8* %10 to i16*
  store i16* %11, i16** %i16, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.13, %sw.bb.1
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n_el.addr, align 4
  %cmp3 = icmp slt i32 %12, %13
  br i1 %cmp3, label %for.body.5, label %for.end.15

for.body.5:                                       ; preds = %for.cond.2
  %14 = load i32, i32* %sum.addr, align 4
  %shl6 = shl i32 %14, 10
  %15 = load i32, i32* %sum.addr, align 4
  %shr7 = lshr i32 %15, 22
  %or8 = or i32 %shl6, %shr7
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i16*, i16** %i16, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %17, i64 %idxprom9
  %18 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %18 to i32
  %add12 = add i32 %or8, %conv11
  store i32 %add12, i32* %sum.addr, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.5
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.2

for.end.15:                                       ; preds = %for.cond.2
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %i32, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.27, %sw.bb.16
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n_el.addr, align 4
  %cmp18 = icmp slt i32 %22, %23
  br i1 %cmp18, label %for.body.20, label %for.end.29

for.body.20:                                      ; preds = %for.cond.17
  %24 = load i32, i32* %sum.addr, align 4
  %shl21 = shl i32 %24, 20
  %25 = load i32, i32* %sum.addr, align 4
  %shr22 = lshr i32 %25, 12
  %or23 = or i32 %shl21, %shr22
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i32*, i32** %i32, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 %idxprom24
  %28 = load i32, i32* %arrayidx25, align 4
  %add26 = add i32 %or23, %28
  store i32 %add26, i32* %sum.addr, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.20
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.17

for.end.29:                                       ; preds = %for.cond.17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %30 = load i32, i32* %el_sz.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i32 %30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.29, %for.end.15, %for.end
  %31 = load i32, i32* %sum.addr, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @bio_fread_1d(i8** %buf, i32 %el_sz, i32* %n_el, %struct._IO_FILE* %fp, i32 %sw, i32* %ck) #0 {
entry:
  %buf.addr = alloca i8**, align 8
  %el_sz.addr = alloca i32, align 4
  %n_el.addr = alloca i32*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %sw.addr = alloca i32, align 4
  %ck.addr = alloca i32*, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i32 %el_sz, i32* %el_sz.addr, align 4
  store i32* %n_el, i32** %n_el.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %sw, i32* %sw.addr, align 4
  store i32* %ck, i32** %ck.addr, align 8
  %0 = load i32, i32* %el_sz.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %el_sz.addr, align 4
  %cmp1 = icmp ne i32 %1, 2
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %el_sz.addr, align 4
  %cmp3 = icmp ne i32 %2, 4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %3 = load i32, i32* %el_sz.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  %4 = load i32*, i32** %n_el.addr, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* %sw.addr, align 4
  %8 = load i32*, i32** %ck.addr, align 8
  %call = call i32 @bio_fread(i8* %5, i32 4, i32 1, %struct._IO_FILE* %6, i32 %7, i32* %8)
  %cmp4 = icmp ne i32 %call, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load i32*, i32** %n_el.addr, align 8
  %10 = load i32, i32* %9, align 4
  %cmp7 = icmp sle i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %11 = load i32*, i32** %n_el.addr, align 8
  %12 = load i32, i32* %11, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %13 = load i32*, i32** %n_el.addr, align 8
  %14 = load i32, i32* %13, align 4
  %conv = sext i32 %14 to i64
  %15 = load i32, i32* %el_sz.addr, align 4
  %conv10 = sext i32 %15 to i64
  %call11 = call i8* @__ckd_calloc__(i64 %conv, i64 %conv10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 274)
  %16 = load i8**, i8*** %buf.addr, align 8
  store i8* %call11, i8** %16, align 8
  %17 = load i8**, i8*** %buf.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %el_sz.addr, align 4
  %20 = load i32*, i32** %n_el.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %23 = load i32, i32* %sw.addr, align 4
  %24 = load i32*, i32** %ck.addr, align 8
  %call12 = call i32 @bio_fread(i8* %18, i32 %19, i32 %21, %struct._IO_FILE* %22, i32 %23, i32* %24)
  %25 = load i32*, i32** %n_el.addr, align 8
  %26 = load i32, i32* %25, align 4
  %cmp13 = icmp ne i32 %call12, %26
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.9
  %27 = load i32*, i32** %n_el.addr, align 8
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define void @bio_verify_chksum(%struct._IO_FILE* %fp, i32 %byteswap, i32 %chksum) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %byteswap.addr = alloca i32, align 4
  %chksum.addr = alloca i32, align 4
  %file_chksum = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %byteswap, i32* %byteswap.addr, align 4
  store i32 %chksum, i32* %chksum.addr, align 4
  %0 = bitcast i32* %file_chksum to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %byteswap.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %3 = load i32, i32* %file_chksum, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 255, %shr
  %4 = load i32, i32* %file_chksum, align 4
  %shr2 = lshr i32 %4, 8
  %and3 = and i32 65280, %shr2
  %or = or i32 %and, %and3
  %5 = load i32, i32* %file_chksum, align 4
  %shl = shl i32 %5, 8
  %and4 = and i32 16711680, %shl
  %or5 = or i32 %or, %and4
  %6 = load i32, i32* %file_chksum, align 4
  %shl6 = shl i32 %6, 24
  %and7 = and i32 -16777216, %shl6
  %or8 = or i32 %or5, %and7
  store i32 %or8, i32* %file_chksum, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.1, %if.end
  %7 = load i32, i32* %file_chksum, align 4
  %8 = load i32, i32* %chksum.addr, align 4
  %cmp10 = icmp ne i32 %7, %8
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %9 = load i32, i32* %file_chksum, align 4
  %10 = load i32, i32* %chksum.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i32 0, i32 0), i32 %9, i32 %10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  ret void
}

declare void @_E__pr_warn(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
