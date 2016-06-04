; ModuleID = 'selex.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.block_struc = type { i32, i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [72 x i8] c"Can't read a SELEX format alignment from a pipe, stdin, or gzip'ed file\00", align 1
@squid_errno = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"#=CS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"#=RF\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@commentsyms = internal global [3 x i8] c"%#\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"selex.c\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"#=SS\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"#=SA\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Parse error in ReadSELEX()\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"#=AU\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"#=ID\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"#=AC\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"#=DE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"#=GA\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Parse error in #=GA line in ReadSELEX()\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"#=TC\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Parse error in #=TC line in ReadSELEX()\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"#=NC\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Parse error in #=NC line in ReadSELEX()\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"#=SQ\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Parse error in #=SQ line in ReadSELEX()\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"Parse error in #=SQ line in ReadSELEX(): weight is not a number\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Parse error in #=SQ line in ReadSELEX(): incomplete line\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c":\09 \00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Parse error in #=CS line in ReadSELEX()\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Parse error in #=RF line in ReadSELEX()\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Parse error in #=SS line in ReadSELEX()\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Parse error in #=SA line in ReadSELEX()\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"#=\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"Parse error in alignment line in ReadSELEX()\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"sequences may be in different orders in blocks of %s?\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"#=ID %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"#=AC %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"#=DE %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"#=AU %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"#=GA %.1f %.1f\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"#=GA %.1f\0A\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"#=NC %.1f %.1f\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"#=NC %.1f\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"#=TC %.1f %.1f\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"#=TC %.1f\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"#=SQ %-*.*s %6.4f %s %s %d..%d::%d %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"%-*.*s %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [73 x i8] c"TAB characters will corrupt a SELEX alignment! Please remove them first.\00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca %struct.msa_struct*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %aseqs = alloca i8**, align 8
  %num = alloca i32, align 4
  %buffer = alloca [4096 x i8], align 16
  %bufcpy = alloca [4096 x i8], align 16
  %blocks = alloca %struct.block_struc*, align 8
  %blocknum = alloca i32, align 4
  %nptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %currnum = alloca i32, align 4
  %currblock = alloca i32, align 4
  %i = alloca i32, align 4
  %seqidx = alloca i32, align 4
  %alen = alloca i32, align 4
  %warn_names = alloca i32, align 4
  %headnum = alloca i32, align 4
  %currlen = alloca i32, align 4
  %count = alloca i32, align 4
  %have_cs = alloca i32, align 4
  %have_rf = alloca i32, align 4
  %base_ainfo = alloca %struct.aliinfo_s, align 8
  %ainfo = alloca %struct.aliinfo_s*, align 8
  %apos = alloca i32, align 4
  %rpos = alloca i32, align 4
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  store i32 0, i32* %num, align 4
  store %struct.block_struc* null, %struct.block_struc** %blocks, align 8
  store i32 0, i32* %have_cs, align 4
  store i32 0, i32* %have_rf, align 4
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %do_gzip = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %2, i32 0, i32 6
  %3 = load i32, i32* %do_gzip, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %do_stdin = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 7
  %5 = load i32, i32* %do_stdin, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %lor.lhs.false
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f5 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f5, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8
  store %struct.aliinfo_s* %base_ainfo, %struct.aliinfo_s** %ainfo, align 8
  %8 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  call void @InitAinfo(%struct.aliinfo_s* %8)
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end.4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i8* @fgets(i8* %arraydecay, i32 4096, %struct._IO_FILE* %9)
  %cmp = icmp eq i8* %call6, null
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  store i32 2, i32* @squid_errno, align 4
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.8:                                         ; preds = %do.body
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call11 = call i8* @strcpy(i8* %arraydecay9, i8* %arraydecay10) #4
  %arraydecay12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %10 = load i8, i8* %arraydecay12, align 1
  %conv = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv, 35
  br i1 %cmp13, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %if.end.8
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call17 = call i32 @strncmp(i8* %arraydecay16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.15
  store i32 1, i32* %have_cs, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.then.15
  %arraydecay21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call22 = call i32 @strncmp(i8* %arraydecay21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else
  store i32 1, i32* %have_rf, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %call30 = call i8* @strtok(i8* %arraydecay29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call30, i8** %nptr, align 8
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %11 = load i8*, i8** %nptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv33 = sext i8 %12 to i32
  %call34 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv33) #5
  %cmp35 = icmp ne i8* %call34, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %13 = phi i1 [ true, %do.cond ], [ %cmp35, %lor.rhs ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  store i32 0, i32* %blocknum, align 4
  store i32 0, i32* %warn_names, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.226, %do.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call37 = call i32 @feof(%struct._IO_FILE* %14) #4
  %tobool38 = icmp ne i32 %call37, 0
  %lnot = xor i1 %tobool38, true
  br i1 %lnot, label %while.body, label %while.end.227

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %blocknum, align 4
  %cmp39 = icmp eq i32 %15, 0
  br i1 %cmp39, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %while.body
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 151, i64 8)
  %16 = bitcast i8* %call42 to %struct.block_struc*
  store %struct.block_struc* %16, %struct.block_struc** %blocks, align 8
  br label %if.end.46

if.else.43:                                       ; preds = %while.body
  %17 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %18 = bitcast %struct.block_struc* %17 to i8*
  %19 = load i32, i32* %blocknum, align 4
  %add = add nsw i32 %19, 1
  %conv44 = sext i32 %add to i64
  %mul = mul i64 %conv44, 8
  %call45 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 153, i8* %18, i64 %mul)
  %20 = bitcast i8* %call45 to %struct.block_struc*
  store %struct.block_struc* %20, %struct.block_struc** %blocks, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.41
  %21 = load i32, i32* %blocknum, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx = getelementptr inbounds %struct.block_struc, %struct.block_struc* %22, i64 %idxprom
  %lcol = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx, i32 0, i32 0
  store i32 4097, i32* %lcol, align 4
  %23 = load i32, i32* %blocknum, align 4
  %idxprom47 = sext i32 %23 to i64
  %24 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx48 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %24, i64 %idxprom47
  %rcol = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx48, i32 0, i32 1
  store i32 -1, i32* %rcol, align 4
  store i32 0, i32* %currnum, align 4
  br label %while.cond.49

while.cond.49:                                    ; preds = %do.end.194, %if.end.46
  %25 = load i8*, i8** %nptr, align 8
  %cmp50 = icmp ne i8* %25, null
  br i1 %cmp50, label %while.body.52, label %while.end

while.body.52:                                    ; preds = %while.cond.49
  %26 = load i32, i32* %blocknum, align 4
  %cmp53 = icmp eq i32 %26, 0
  br i1 %cmp53, label %if.then.55, label %if.else.75

if.then.55:                                       ; preds = %while.body.52
  %27 = load i32, i32* %currnum, align 4
  %cmp56 = icmp eq i32 %27, 0
  br i1 %cmp56, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.then.55
  %call59 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 164, i64 360)
  %28 = bitcast i8* %call59 to %struct.seqinfo_s*
  %29 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %29, i32 0, i32 6
  store %struct.seqinfo_s* %28, %struct.seqinfo_s** %sqinfo, align 8
  br label %if.end.67

if.else.60:                                       ; preds = %if.then.55
  %30 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo61 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %30, i32 0, i32 6
  %31 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo61, align 8
  %32 = bitcast %struct.seqinfo_s* %31 to i8*
  %33 = load i32, i32* %currnum, align 4
  %add62 = add nsw i32 %33, 1
  %conv63 = sext i32 %add62 to i64
  %mul64 = mul i64 %conv63, 360
  %call65 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 166, i8* %32, i64 %mul64)
  %34 = bitcast i8* %call65 to %struct.seqinfo_s*
  %35 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo66 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %35, i32 0, i32 6
  store %struct.seqinfo_s* %34, %struct.seqinfo_s** %sqinfo66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.60, %if.then.58
  %36 = load i32, i32* %currnum, align 4
  %idxprom68 = sext i32 %36 to i64
  %37 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo69 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %37, i32 0, i32 6
  %38 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo69, align 8
  %arrayidx70 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %38, i64 %idxprom68
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx70, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  %39 = load i32, i32* %currnum, align 4
  %idxprom71 = sext i32 %39 to i64
  %40 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo72 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %40, i32 0, i32 6
  %41 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo72, align 8
  %arrayidx73 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %41, i64 %idxprom71
  %42 = load i8*, i8** %nptr, align 8
  %call74 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx73, i8* %42, i32 1)
  br label %if.end.85

if.else.75:                                       ; preds = %while.body.52
  %43 = load i32, i32* %currnum, align 4
  %idxprom76 = sext i32 %43 to i64
  %44 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo77 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %44, i32 0, i32 6
  %45 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo77, align 8
  %arrayidx78 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %45, i64 %idxprom76
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx78, i32 0, i32 1
  %arraydecay79 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %46 = load i8*, i8** %nptr, align 8
  %call80 = call i32 @strcmp(i8* %arraydecay79, i8* %46) #5
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.75
  store i32 1, i32* %warn_names, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.75
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.67
  %47 = load i32, i32* %currnum, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %currnum, align 4
  %call86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call86, i8** %sptr, align 8
  %cmp87 = icmp ne i8* %call86, null
  br i1 %cmp87, label %if.then.89, label %if.end.135

if.then.89:                                       ; preds = %if.end.85
  %48 = load i8*, i8** %sptr, align 8
  %arraydecay90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %49 = load i32, i32* %blocknum, align 4
  %idxprom91 = sext i32 %49 to i64
  %50 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx92 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %50, i64 %idxprom91
  %lcol93 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx92, i32 0, i32 0
  %51 = load i32, i32* %lcol93, align 4
  %conv94 = sext i32 %51 to i64
  %cmp95 = icmp slt i64 %sub.ptr.sub, %conv94
  br i1 %cmp95, label %if.then.97, label %if.end.106

if.then.97:                                       ; preds = %if.then.89
  %52 = load i8*, i8** %sptr, align 8
  %arraydecay98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %sub.ptr.lhs.cast99 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast100 = ptrtoint i8* %arraydecay98 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %conv102 = trunc i64 %sub.ptr.sub101 to i32
  %53 = load i32, i32* %blocknum, align 4
  %idxprom103 = sext i32 %53 to i64
  %54 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx104 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %54, i64 %idxprom103
  %lcol105 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx104, i32 0, i32 0
  store i32 %conv102, i32* %lcol105, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.97, %if.then.89
  %arraydecay107 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %arraydecay108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call109 = call i64 @strlen(i8* %arraydecay108) #5
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay107, i64 %call109
  %add.ptr110 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr110, i8** %sptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.106
  %55 = load i8*, i8** %sptr, align 8
  %56 = load i8, i8* %55, align 1
  %conv111 = sext i8 %56 to i32
  %call112 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %conv111) #5
  %cmp113 = icmp ne i8* %call112, null
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %incdec.ptr, i8** %sptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i8*, i8** %sptr, align 8
  %arraydecay115 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %sub.ptr.lhs.cast116 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %arraydecay115 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %59 = load i32, i32* %blocknum, align 4
  %idxprom119 = sext i32 %59 to i64
  %60 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx120 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %60, i64 %idxprom119
  %rcol121 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx120, i32 0, i32 1
  %61 = load i32, i32* %rcol121, align 4
  %conv122 = sext i32 %61 to i64
  %cmp123 = icmp sgt i64 %sub.ptr.sub118, %conv122
  br i1 %cmp123, label %if.then.125, label %if.end.134

if.then.125:                                      ; preds = %for.end
  %62 = load i8*, i8** %sptr, align 8
  %arraydecay126 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %sub.ptr.lhs.cast127 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast128 = ptrtoint i8* %arraydecay126 to i64
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  %conv130 = trunc i64 %sub.ptr.sub129 to i32
  %63 = load i32, i32* %blocknum, align 4
  %idxprom131 = sext i32 %63 to i64
  %64 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx132 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %64, i64 %idxprom131
  %rcol133 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx132, i32 0, i32 1
  store i32 %conv130, i32* %rcol133, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.125, %for.end
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.85
  br label %do.body.136

do.body.136:                                      ; preds = %do.cond.189, %if.end.135
  %arraydecay137 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call138 = call i8* @fgets(i8* %arraydecay137, i32 4096, %struct._IO_FILE* %65)
  %cmp139 = icmp eq i8* %call138, null
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %do.body.136
  store i8* null, i8** %nptr, align 8
  br label %do.end.194

if.end.142:                                       ; preds = %do.body.136
  %arraydecay143 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %arraydecay144 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call145 = call i8* @strcpy(i8* %arraydecay143, i8* %arraydecay144) #4
  %arraydecay146 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call147 = call i32 @strncmp(i8* %arraydecay146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4) #5
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then.150, label %if.else.155

if.then.150:                                      ; preds = %if.end.142
  %66 = load i32, i32* %currnum, align 4
  %sub = sub nsw i32 %66, 1
  %idxprom151 = sext i32 %sub to i64
  %67 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo152 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %67, i32 0, i32 6
  %68 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo152, align 8
  %arrayidx153 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %68, i64 %idxprom151
  %flags154 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx153, i32 0, i32 0
  %69 = load i32, i32* %flags154, align 4
  %or = or i32 %69, 512
  store i32 %or, i32* %flags154, align 4
  br label %if.end.182

if.else.155:                                      ; preds = %if.end.142
  %arraydecay156 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call157 = call i32 @strncmp(i8* %arraydecay156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #5
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.167

if.then.160:                                      ; preds = %if.else.155
  %70 = load i32, i32* %currnum, align 4
  %sub161 = sub nsw i32 %70, 1
  %idxprom162 = sext i32 %sub161 to i64
  %71 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo163 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %71, i32 0, i32 6
  %72 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo163, align 8
  %arrayidx164 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %72, i64 %idxprom162
  %flags165 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx164, i32 0, i32 0
  %73 = load i32, i32* %flags165, align 4
  %or166 = or i32 %73, 1024
  store i32 %or166, i32* %flags165, align 4
  br label %if.end.181

if.else.167:                                      ; preds = %if.else.155
  %arraydecay168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call169 = call i32 @strncmp(i8* %arraydecay168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #5
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %if.else.167
  store i32 1, i32* %have_cs, align 4
  br label %if.end.180

if.else.173:                                      ; preds = %if.else.167
  %arraydecay174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call175 = call i32 @strncmp(i8* %arraydecay174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.else.173
  store i32 1, i32* %have_rf, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.else.173
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.172
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.160
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.150
  %arraydecay183 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %call184 = call i8* @strtok(i8* %arraydecay183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call184, i8** %nptr, align 8
  %cmp185 = icmp eq i8* %call184, null
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.182
  br label %do.end.194

if.end.188:                                       ; preds = %if.end.182
  br label %do.cond.189

do.cond.189:                                      ; preds = %if.end.188
  %74 = load i8*, i8** %nptr, align 8
  %75 = load i8, i8* %74, align 1
  %conv190 = sext i8 %75 to i32
  %call191 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv190) #5
  %cmp192 = icmp ne i8* %call191, null
  br i1 %cmp192, label %do.body.136, label %do.end.194

do.end.194:                                       ; preds = %do.cond.189, %if.then.187, %if.then.141
  br label %while.cond.49

while.end:                                        ; preds = %while.cond.49
  %76 = load i32, i32* %blocknum, align 4
  %cmp195 = icmp eq i32 %76, 0
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %while.end
  %77 = load i32, i32* %currnum, align 4
  store i32 %77, i32* %num, align 4
  br label %if.end.203

if.else.198:                                      ; preds = %while.end
  %78 = load i32, i32* %currnum, align 4
  %79 = load i32, i32* %num, align 4
  %cmp199 = icmp ne i32 %78, %79
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.else.198
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.else.198
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.197
  %80 = load i32, i32* %blocknum, align 4
  %inc204 = add nsw i32 %80, 1
  store i32 %inc204, i32* %blocknum, align 4
  br label %do.body.205

do.body.205:                                      ; preds = %lor.end.225, %if.end.203
  %arraydecay206 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call207 = call i8* @fgets(i8* %arraydecay206, i32 4096, %struct._IO_FILE* %81)
  %cmp208 = icmp eq i8* %call207, null
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %do.body.205
  store i8* null, i8** %nptr, align 8
  br label %do.end.226

if.end.211:                                       ; preds = %do.body.205
  %arraydecay212 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %arraydecay213 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call214 = call i8* @strcpy(i8* %arraydecay212, i8* %arraydecay213) #4
  br label %do.cond.215

do.cond.215:                                      ; preds = %if.end.211
  %arraydecay216 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %call217 = call i8* @strtok(i8* %arraydecay216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call217, i8** %nptr, align 8
  %cmp218 = icmp eq i8* %call217, null
  br i1 %cmp218, label %lor.end.225, label %lor.rhs.220

lor.rhs.220:                                      ; preds = %do.cond.215
  %82 = load i8*, i8** %nptr, align 8
  %83 = load i8, i8* %82, align 1
  %conv221 = sext i8 %83 to i32
  %call222 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv221) #5
  %cmp223 = icmp ne i8* %call222, null
  br label %lor.end.225

lor.end.225:                                      ; preds = %lor.rhs.220, %do.cond.215
  %84 = phi i1 [ true, %do.cond.215 ], [ %cmp223, %lor.rhs.220 ]
  br i1 %84, label %do.body.205, label %do.end.226

do.end.226:                                       ; preds = %lor.end.225, %if.then.210
  br label %while.cond

while.end.227:                                    ; preds = %while.cond
  store i32 0, i32* %alen, align 4
  store i32 0, i32* %currblock, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.241, %while.end.227
  %85 = load i32, i32* %currblock, align 4
  %86 = load i32, i32* %blocknum, align 4
  %cmp229 = icmp slt i32 %85, %86
  br i1 %cmp229, label %for.body.231, label %for.end.243

for.body.231:                                     ; preds = %for.cond.228
  %87 = load i32, i32* %currblock, align 4
  %idxprom232 = sext i32 %87 to i64
  %88 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx233 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %88, i64 %idxprom232
  %rcol234 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx233, i32 0, i32 1
  %89 = load i32, i32* %rcol234, align 4
  %90 = load i32, i32* %currblock, align 4
  %idxprom235 = sext i32 %90 to i64
  %91 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx236 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %91, i64 %idxprom235
  %lcol237 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx236, i32 0, i32 0
  %92 = load i32, i32* %lcol237, align 4
  %sub238 = sub nsw i32 %89, %92
  %add239 = add nsw i32 %sub238, 1
  %93 = load i32, i32* %alen, align 4
  %add240 = add nsw i32 %93, %add239
  store i32 %add240, i32* %alen, align 4
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.body.231
  %94 = load i32, i32* %currblock, align 4
  %inc242 = add nsw i32 %94, 1
  store i32 %inc242, i32* %currblock, align 4
  br label %for.cond.228

for.end.243:                                      ; preds = %for.cond.228
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %95)
  %96 = load i32, i32* %num, align 4
  %conv244 = sext i32 %96 to i64
  %mul245 = mul i64 %conv244, 8
  %call246 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 247, i64 %mul245)
  %97 = bitcast i8* %call246 to i8**
  store i8** %97, i8*** %aseqs, align 8
  %98 = load i32, i32* %have_cs, align 4
  %tobool247 = icmp ne i32 %98, 0
  br i1 %tobool247, label %if.then.248, label %if.end.253

if.then.248:                                      ; preds = %for.end.243
  %99 = load i32, i32* %alen, align 4
  %add249 = add nsw i32 %99, 1
  %conv250 = sext i32 %add249 to i64
  %mul251 = mul i64 %conv250, 1
  %call252 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 249, i64 %mul251)
  %100 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %cs = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %100, i32 0, i32 4
  store i8* %call252, i8** %cs, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.248, %for.end.243
  %101 = load i32, i32* %have_rf, align 4
  %tobool254 = icmp ne i32 %101, 0
  br i1 %tobool254, label %if.then.255, label %if.end.260

if.then.255:                                      ; preds = %if.end.253
  %102 = load i32, i32* %alen, align 4
  %add256 = add nsw i32 %102, 1
  %conv257 = sext i32 %add256 to i64
  %mul258 = mul i64 %conv257, 1
  %call259 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 251, i64 %mul258)
  %103 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %rf = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %103, i32 0, i32 5
  store i8* %call259, i8** %rf, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.255, %if.end.253
  store i32 0, i32* %i, align 4
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.300, %if.end.260
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %num, align 4
  %cmp262 = icmp slt i32 %104, %105
  br i1 %cmp262, label %for.body.264, label %for.end.302

for.body.264:                                     ; preds = %for.cond.261
  %106 = load i32, i32* %alen, align 4
  %add265 = add nsw i32 %106, 1
  %conv266 = sext i32 %add265 to i64
  %mul267 = mul i64 %conv266, 1
  %call268 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 257, i64 %mul267)
  %107 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %107 to i64
  %108 = load i8**, i8*** %aseqs, align 8
  %arrayidx270 = getelementptr inbounds i8*, i8** %108, i64 %idxprom269
  store i8* %call268, i8** %arrayidx270, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %109 to i64
  %110 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo272 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %110, i32 0, i32 6
  %111 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo272, align 8
  %arrayidx273 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %111, i64 %idxprom271
  %flags274 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx273, i32 0, i32 0
  %112 = load i32, i32* %flags274, align 4
  %and = and i32 %112, 512
  %tobool275 = icmp ne i32 %and, 0
  br i1 %tobool275, label %if.then.276, label %if.end.284

if.then.276:                                      ; preds = %for.body.264
  %113 = load i32, i32* %alen, align 4
  %add277 = add nsw i32 %113, 1
  %conv278 = sext i32 %add277 to i64
  %mul279 = mul i64 %conv278, 1
  %call280 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 259, i64 %mul279)
  %114 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %114 to i64
  %115 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo282 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %115, i32 0, i32 6
  %116 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo282, align 8
  %arrayidx283 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %116, i64 %idxprom281
  %ss = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx283, i32 0, i32 10
  store i8* %call280, i8** %ss, align 8
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.276, %for.body.264
  %117 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %117 to i64
  %118 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo286 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %118, i32 0, i32 6
  %119 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo286, align 8
  %arrayidx287 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %119, i64 %idxprom285
  %flags288 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx287, i32 0, i32 0
  %120 = load i32, i32* %flags288, align 4
  %and289 = and i32 %120, 1024
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.then.291, label %if.end.299

if.then.291:                                      ; preds = %if.end.284
  %121 = load i32, i32* %alen, align 4
  %add292 = add nsw i32 %121, 1
  %conv293 = sext i32 %add292 to i64
  %mul294 = mul i64 %conv293, 1
  %call295 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 261, i64 %mul294)
  %122 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %122 to i64
  %123 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo297 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %123, i32 0, i32 6
  %124 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo297, align 8
  %arrayidx298 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %124, i64 %idxprom296
  %sa = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx298, i32 0, i32 11
  store i8* %call295, i8** %sa, align 8
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.291, %if.end.284
  br label %for.inc.300

for.inc.300:                                      ; preds = %if.end.299
  %125 = load i32, i32* %i, align 4
  %inc301 = add nsw i32 %125, 1
  store i32 %inc301, i32* %i, align 4
  br label %for.cond.261

for.end.302:                                      ; preds = %for.cond.261
  %126 = load i32, i32* %alen, align 4
  %127 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %alen303 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %127, i32 0, i32 1
  store i32 %126, i32* %alen303, align 4
  %128 = load i32, i32* %num, align 4
  %129 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %nseq = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %129, i32 0, i32 2
  store i32 %128, i32* %nseq, align 4
  %130 = load i32, i32* %num, align 4
  %conv304 = sext i32 %130 to i64
  %mul305 = mul i64 4, %conv304
  %call306 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 266, i64 %mul305)
  %131 = bitcast i8* %call306 to float*
  %132 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %wgt = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %132, i32 0, i32 3
  store float* %131, float** %wgt, align 8
  %133 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %wgt307 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %133, i32 0, i32 3
  %134 = load float*, float** %wgt307, align 8
  %135 = load i32, i32* %num, align 4
  call void @FSet(float* %134, i32 %135, float 1.000000e+00)
  store i32 0, i32* %headnum, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %if.end.541, %if.then.322, %for.end.302
  %arraydecay309 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call310 = call i8* @fgets(i8* %arraydecay309, i32 4096, %struct._IO_FILE* %136)
  %cmp311 = icmp eq i8* %call310, null
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %for.cond.308
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.313, %for.cond.308
  %arraydecay315 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %arraydecay316 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call317 = call i8* @strcpy(i8* %arraydecay315, i8* %arraydecay316) #4
  %arraydecay318 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %call319 = call i8* @strtok(i8* %arraydecay318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call319, i8** %nptr, align 8
  %cmp320 = icmp eq i8* %call319, null
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.end.314
  br label %for.cond.308

if.end.323:                                       ; preds = %if.end.314
  %137 = load i8*, i8** %nptr, align 8
  %call324 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %land.lhs.true, label %if.else.332

land.lhs.true:                                    ; preds = %if.end.323
  %call327 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call327, i8** %sptr, align 8
  %cmp328 = icmp ne i8* %call327, null
  br i1 %cmp328, label %if.then.330, label %if.else.332

if.then.330:                                      ; preds = %land.lhs.true
  %138 = load i8*, i8** %sptr, align 8
  %call331 = call i8* @Strdup(i8* %138)
  %139 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %au = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %139, i32 0, i32 10
  store i8* %call331, i8** %au, align 8
  br label %if.end.541

if.else.332:                                      ; preds = %land.lhs.true, %if.end.323
  %140 = load i8*, i8** %nptr, align 8
  %call333 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #5
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %land.lhs.true.336, label %if.else.343

land.lhs.true.336:                                ; preds = %if.else.332
  %call337 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call337, i8** %sptr, align 8
  %cmp338 = icmp ne i8* %call337, null
  br i1 %cmp338, label %if.then.340, label %if.else.343

if.then.340:                                      ; preds = %land.lhs.true.336
  %141 = load i8*, i8** %sptr, align 8
  %call341 = call i8* @Strdup(i8* %141)
  %142 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %name342 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %142, i32 0, i32 7
  store i8* %call341, i8** %name342, align 8
  br label %if.end.540

if.else.343:                                      ; preds = %land.lhs.true.336, %if.else.332
  %143 = load i8*, i8** %nptr, align 8
  %call344 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp345 = icmp eq i32 %call344, 0
  br i1 %cmp345, label %land.lhs.true.347, label %if.else.353

land.lhs.true.347:                                ; preds = %if.else.343
  %call348 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call348, i8** %sptr, align 8
  %cmp349 = icmp ne i8* %call348, null
  br i1 %cmp349, label %if.then.351, label %if.else.353

if.then.351:                                      ; preds = %land.lhs.true.347
  %144 = load i8*, i8** %sptr, align 8
  %call352 = call i8* @Strdup(i8* %144)
  %145 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %acc = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %145, i32 0, i32 9
  store i8* %call352, i8** %acc, align 8
  br label %if.end.539

if.else.353:                                      ; preds = %land.lhs.true.347, %if.else.343
  %146 = load i8*, i8** %nptr, align 8
  %call354 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp355 = icmp eq i32 %call354, 0
  br i1 %cmp355, label %land.lhs.true.357, label %if.else.363

land.lhs.true.357:                                ; preds = %if.else.353
  %call358 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call358, i8** %sptr, align 8
  %cmp359 = icmp ne i8* %call358, null
  br i1 %cmp359, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %land.lhs.true.357
  %147 = load i8*, i8** %sptr, align 8
  %call362 = call i8* @Strdup(i8* %147)
  %148 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %desc = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %148, i32 0, i32 8
  store i8* %call362, i8** %desc, align 8
  br label %if.end.538

if.else.363:                                      ; preds = %land.lhs.true.357, %if.else.353
  %149 = load i8*, i8** %nptr, align 8
  %call364 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp365 = icmp eq i32 %call364, 0
  br i1 %cmp365, label %if.then.367, label %if.else.384

if.then.367:                                      ; preds = %if.else.363
  %call368 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call368, i8** %sptr, align 8
  %cmp369 = icmp eq i8* %call368, null
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.then.367
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.then.367
  %150 = load i8*, i8** %sptr, align 8
  %call373 = call double @atof(i8* %150) #5
  %conv374 = fptrunc double %call373 to float
  %151 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %ga1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %151, i32 0, i32 15
  store float %conv374, float* %ga1, align 4
  %call375 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call375, i8** %sptr, align 8
  %cmp376 = icmp eq i8* %call375, null
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.372
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %if.end.372
  %152 = load i8*, i8** %sptr, align 8
  %call380 = call double @atof(i8* %152) #5
  %conv381 = fptrunc double %call380 to float
  %153 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %ga2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %153, i32 0, i32 16
  store float %conv381, float* %ga2, align 4
  %154 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %flags382 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %154, i32 0, i32 0
  %155 = load i32, i32* %flags382, align 4
  %or383 = or i32 %155, 4
  store i32 %or383, i32* %flags382, align 4
  br label %if.end.537

if.else.384:                                      ; preds = %if.else.363
  %156 = load i8*, i8** %nptr, align 8
  %call385 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp386 = icmp eq i32 %call385, 0
  br i1 %cmp386, label %if.then.388, label %if.else.405

if.then.388:                                      ; preds = %if.else.384
  %call389 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call389, i8** %sptr, align 8
  %cmp390 = icmp eq i8* %call389, null
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.then.388
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.392, %if.then.388
  %157 = load i8*, i8** %sptr, align 8
  %call394 = call double @atof(i8* %157) #5
  %conv395 = fptrunc double %call394 to float
  %158 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %tc1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %158, i32 0, i32 11
  store float %conv395, float* %tc1, align 4
  %call396 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call396, i8** %sptr, align 8
  %cmp397 = icmp eq i8* %call396, null
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %if.end.393
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.399, %if.end.393
  %159 = load i8*, i8** %sptr, align 8
  %call401 = call double @atof(i8* %159) #5
  %conv402 = fptrunc double %call401 to float
  %160 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %tc2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %160, i32 0, i32 12
  store float %conv402, float* %tc2, align 4
  %161 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %flags403 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %161, i32 0, i32 0
  %162 = load i32, i32* %flags403, align 4
  %or404 = or i32 %162, 1
  store i32 %or404, i32* %flags403, align 4
  br label %if.end.536

if.else.405:                                      ; preds = %if.else.384
  %163 = load i8*, i8** %nptr, align 8
  %call406 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp407 = icmp eq i32 %call406, 0
  br i1 %cmp407, label %if.then.409, label %if.else.426

if.then.409:                                      ; preds = %if.else.405
  %call410 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call410, i8** %sptr, align 8
  %cmp411 = icmp eq i8* %call410, null
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %if.then.409
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %if.then.409
  %164 = load i8*, i8** %sptr, align 8
  %call415 = call double @atof(i8* %164) #5
  %conv416 = fptrunc double %call415 to float
  %165 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %nc1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %165, i32 0, i32 13
  store float %conv416, float* %nc1, align 4
  %call417 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call417, i8** %sptr, align 8
  %cmp418 = icmp eq i8* %call417, null
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %if.end.414
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.420, %if.end.414
  %166 = load i8*, i8** %sptr, align 8
  %call422 = call double @atof(i8* %166) #5
  %conv423 = fptrunc double %call422 to float
  %167 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %nc2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %167, i32 0, i32 14
  store float %conv423, float* %nc2, align 4
  %168 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %flags424 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %168, i32 0, i32 0
  %169 = load i32, i32* %flags424, align 4
  %or425 = or i32 %169, 2
  store i32 %or425, i32* %flags424, align 4
  br label %if.end.535

if.else.426:                                      ; preds = %if.else.405
  %170 = load i8*, i8** %nptr, align 8
  %call427 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp428 = icmp eq i32 %call427, 0
  br i1 %cmp428, label %if.then.430, label %if.else.515

if.then.430:                                      ; preds = %if.else.426
  %call431 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call431, i8** %sptr, align 8
  %cmp432 = icmp eq i8* %call431, null
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %if.then.430
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.434, %if.then.430
  %171 = load i8*, i8** %sptr, align 8
  %172 = load i32, i32* %headnum, align 4
  %idxprom436 = sext i32 %172 to i64
  %173 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo437 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %173, i32 0, i32 6
  %174 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo437, align 8
  %arrayidx438 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %174, i64 %idxprom436
  %name439 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx438, i32 0, i32 1
  %arraydecay440 = getelementptr inbounds [64 x i8], [64 x i8]* %name439, i32 0, i32 0
  %call441 = call i32 @strcmp(i8* %171, i8* %arraydecay440) #5
  %cmp442 = icmp ne i32 %call441, 0
  br i1 %cmp442, label %if.then.444, label %if.end.445

if.then.444:                                      ; preds = %if.end.435
  store i32 1, i32* %warn_names, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %if.end.435
  %call446 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call446, i8** %sptr, align 8
  %cmp447 = icmp eq i8* %call446, null
  br i1 %cmp447, label %if.then.449, label %if.end.450

if.then.449:                                      ; preds = %if.end.445
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.449, %if.end.445
  %175 = load i8*, i8** %sptr, align 8
  %call451 = call i32 @IsReal(i8* %175)
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.end.454, label %if.then.453

if.then.453:                                      ; preds = %if.end.450
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.453, %if.end.450
  %176 = load i8*, i8** %sptr, align 8
  %call455 = call double @atof(i8* %176) #5
  %conv456 = fptrunc double %call455 to float
  %177 = load i32, i32* %headnum, align 4
  %idxprom457 = sext i32 %177 to i64
  %178 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %wgt458 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %178, i32 0, i32 3
  %179 = load float*, float** %wgt458, align 8
  %arrayidx459 = getelementptr inbounds float, float* %179, i64 %idxprom457
  store float %conv456, float* %arrayidx459, align 4
  %call460 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call460, i8** %sptr, align 8
  %cmp461 = icmp eq i8* %call460, null
  br i1 %cmp461, label %if.then.463, label %if.end.464

if.then.463:                                      ; preds = %if.end.454
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.463, %if.end.454
  %180 = load i32, i32* %headnum, align 4
  %idxprom465 = sext i32 %180 to i64
  %181 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo466 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %181, i32 0, i32 6
  %182 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo466, align 8
  %arrayidx467 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %182, i64 %idxprom465
  %183 = load i8*, i8** %sptr, align 8
  %call468 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx467, i8* %183, i32 2)
  %call469 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call469, i8** %sptr, align 8
  %cmp470 = icmp eq i8* %call469, null
  br i1 %cmp470, label %if.then.472, label %if.end.473

if.then.472:                                      ; preds = %if.end.464
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.472, %if.end.464
  %184 = load i32, i32* %headnum, align 4
  %idxprom474 = sext i32 %184 to i64
  %185 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo475 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %185, i32 0, i32 6
  %186 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo475, align 8
  %arrayidx476 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %186, i64 %idxprom474
  %187 = load i8*, i8** %sptr, align 8
  %call477 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx476, i8* %187, i32 4)
  %call478 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #4
  store i8* %call478, i8** %sptr, align 8
  %cmp479 = icmp eq i8* %call478, null
  br i1 %cmp479, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %if.end.473
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.481, %if.end.473
  %188 = load i32, i32* %headnum, align 4
  %idxprom483 = sext i32 %188 to i64
  %189 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo484 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %189, i32 0, i32 6
  %190 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo484, align 8
  %arrayidx485 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %190, i64 %idxprom483
  %191 = load i8*, i8** %sptr, align 8
  %call486 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx485, i8* %191, i32 16)
  %call487 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #4
  store i8* %call487, i8** %sptr, align 8
  %cmp488 = icmp eq i8* %call487, null
  br i1 %cmp488, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %if.end.482
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.490, %if.end.482
  %192 = load i32, i32* %headnum, align 4
  %idxprom492 = sext i32 %192 to i64
  %193 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo493 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %193, i32 0, i32 6
  %194 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo493, align 8
  %arrayidx494 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %194, i64 %idxprom492
  %195 = load i8*, i8** %sptr, align 8
  %call495 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx494, i8* %195, i32 32)
  %call496 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #4
  store i8* %call496, i8** %sptr, align 8
  %cmp497 = icmp eq i8* %call496, null
  br i1 %cmp497, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %if.end.491
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.499, %if.end.491
  %196 = load i32, i32* %headnum, align 4
  %idxprom501 = sext i32 %196 to i64
  %197 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo502 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %197, i32 0, i32 6
  %198 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo502, align 8
  %arrayidx503 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %198, i64 %idxprom501
  %199 = load i8*, i8** %sptr, align 8
  %call504 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx503, i8* %199, i32 256)
  %call505 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call505, i8** %sptr, align 8
  %cmp506 = icmp ne i8* %call505, null
  br i1 %cmp506, label %if.then.508, label %if.end.513

if.then.508:                                      ; preds = %if.end.500
  %200 = load i32, i32* %headnum, align 4
  %idxprom509 = sext i32 %200 to i64
  %201 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo510 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %201, i32 0, i32 6
  %202 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo510, align 8
  %arrayidx511 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %202, i64 %idxprom509
  %203 = load i8*, i8** %sptr, align 8
  %call512 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx511, i8* %203, i32 8)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.508, %if.end.500
  %204 = load i32, i32* %headnum, align 4
  %inc514 = add nsw i32 %204, 1
  store i32 %inc514, i32* %headnum, align 4
  br label %if.end.534

if.else.515:                                      ; preds = %if.else.426
  %205 = load i8*, i8** %nptr, align 8
  %call516 = call i32 @strcmp(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp517 = icmp eq i32 %call516, 0
  br i1 %cmp517, label %if.then.519, label %if.else.520

if.then.519:                                      ; preds = %if.else.515
  br label %for.end.542

if.else.520:                                      ; preds = %if.else.515
  %206 = load i8*, i8** %nptr, align 8
  %call521 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp522 = icmp eq i32 %call521, 0
  br i1 %cmp522, label %if.then.524, label %if.else.525

if.then.524:                                      ; preds = %if.else.520
  br label %for.end.542

if.else.525:                                      ; preds = %if.else.520
  %207 = load i8*, i8** %nptr, align 8
  %208 = load i8, i8* %207, align 1
  %conv526 = sext i8 %208 to i32
  %call527 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv526) #5
  %cmp528 = icmp eq i8* %call527, null
  br i1 %cmp528, label %if.then.530, label %if.end.531

if.then.530:                                      ; preds = %if.else.525
  br label %for.end.542

if.end.531:                                       ; preds = %if.else.525
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %if.end.513
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.end.421
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.end.400
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.end.379
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.then.361
  br label %if.end.539

if.end.539:                                       ; preds = %if.end.538, %if.then.351
  br label %if.end.540

if.end.540:                                       ; preds = %if.end.539, %if.then.340
  br label %if.end.541

if.end.541:                                       ; preds = %if.end.540, %if.then.330
  br label %for.cond.308

for.end.542:                                      ; preds = %if.then.530, %if.then.524, %if.then.519
  store i32 0, i32* %currlen, align 4
  store i32 0, i32* %currblock, align 4
  br label %for.cond.543

for.cond.543:                                     ; preds = %for.inc.733, %for.end.542
  %209 = load i32, i32* %currblock, align 4
  %210 = load i32, i32* %blocknum, align 4
  %cmp544 = icmp slt i32 %209, %210
  br i1 %cmp544, label %for.body.546, label %for.end.735

for.body.546:                                     ; preds = %for.cond.543
  store i32 0, i32* %seqidx, align 4
  br label %while.cond.547

while.cond.547:                                   ; preds = %for.end.693, %for.body.546
  %211 = load i8*, i8** %nptr, align 8
  %cmp548 = icmp ne i8* %211, null
  br i1 %cmp548, label %while.body.550, label %while.end.694

while.body.550:                                   ; preds = %while.cond.547
  %212 = load i8*, i8** %nptr, align 8
  %call551 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp552 = icmp eq i32 %call551, 0
  br i1 %cmp552, label %if.then.554, label %if.else.570

if.then.554:                                      ; preds = %while.body.550
  %213 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %cs555 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %213, i32 0, i32 4
  %214 = load i8*, i8** %cs555, align 8
  %215 = load i32, i32* %currlen, align 4
  %216 = load i8*, i8** %nptr, align 8
  %call556 = call i64 @strlen(i8* %216) #5
  %sub557 = sub i64 %call556, 1
  %conv558 = trunc i64 %sub557 to i32
  %arraydecay559 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %217 = load i32, i32* %currblock, align 4
  %idxprom560 = sext i32 %217 to i64
  %218 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx561 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %218, i64 %idxprom560
  %lcol562 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx561, i32 0, i32 0
  %219 = load i32, i32* %lcol562, align 4
  %220 = load i32, i32* %currblock, align 4
  %idxprom563 = sext i32 %220 to i64
  %221 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx564 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %221, i64 %idxprom563
  %rcol565 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx564, i32 0, i32 1
  %222 = load i32, i32* %rcol565, align 4
  %call566 = call i32 @copy_alignment_line(i8* %214, i32 %215, i32 %conv558, i8* %arraydecay559, i32 %219, i32 %222, i8 signext 46)
  %tobool567 = icmp ne i32 %call566, 0
  br i1 %tobool567, label %if.end.569, label %if.then.568

if.then.568:                                      ; preds = %if.then.554
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.569

if.end.569:                                       ; preds = %if.then.568, %if.then.554
  br label %if.end.664

if.else.570:                                      ; preds = %while.body.550
  %223 = load i8*, i8** %nptr, align 8
  %call571 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp572 = icmp eq i32 %call571, 0
  br i1 %cmp572, label %if.then.574, label %if.else.590

if.then.574:                                      ; preds = %if.else.570
  %224 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %rf575 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %224, i32 0, i32 5
  %225 = load i8*, i8** %rf575, align 8
  %226 = load i32, i32* %currlen, align 4
  %227 = load i8*, i8** %nptr, align 8
  %call576 = call i64 @strlen(i8* %227) #5
  %sub577 = sub i64 %call576, 1
  %conv578 = trunc i64 %sub577 to i32
  %arraydecay579 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %228 = load i32, i32* %currblock, align 4
  %idxprom580 = sext i32 %228 to i64
  %229 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx581 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %229, i64 %idxprom580
  %lcol582 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx581, i32 0, i32 0
  %230 = load i32, i32* %lcol582, align 4
  %231 = load i32, i32* %currblock, align 4
  %idxprom583 = sext i32 %231 to i64
  %232 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx584 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %232, i64 %idxprom583
  %rcol585 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx584, i32 0, i32 1
  %233 = load i32, i32* %rcol585, align 4
  %call586 = call i32 @copy_alignment_line(i8* %225, i32 %226, i32 %conv578, i8* %arraydecay579, i32 %230, i32 %233, i8 signext 46)
  %tobool587 = icmp ne i32 %call586, 0
  br i1 %tobool587, label %if.end.589, label %if.then.588

if.then.588:                                      ; preds = %if.then.574
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.589

if.end.589:                                       ; preds = %if.then.588, %if.then.574
  br label %if.end.663

if.else.590:                                      ; preds = %if.else.570
  %234 = load i8*, i8** %nptr, align 8
  %call591 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp592 = icmp eq i32 %call591, 0
  br i1 %cmp592, label %if.then.594, label %if.else.614

if.then.594:                                      ; preds = %if.else.590
  %235 = load i32, i32* %seqidx, align 4
  %sub595 = sub nsw i32 %235, 1
  %idxprom596 = sext i32 %sub595 to i64
  %236 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo597 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %236, i32 0, i32 6
  %237 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo597, align 8
  %arrayidx598 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %237, i64 %idxprom596
  %ss599 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx598, i32 0, i32 10
  %238 = load i8*, i8** %ss599, align 8
  %239 = load i32, i32* %currlen, align 4
  %240 = load i8*, i8** %nptr, align 8
  %call600 = call i64 @strlen(i8* %240) #5
  %sub601 = sub i64 %call600, 1
  %conv602 = trunc i64 %sub601 to i32
  %arraydecay603 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %241 = load i32, i32* %currblock, align 4
  %idxprom604 = sext i32 %241 to i64
  %242 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx605 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %242, i64 %idxprom604
  %lcol606 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx605, i32 0, i32 0
  %243 = load i32, i32* %lcol606, align 4
  %244 = load i32, i32* %currblock, align 4
  %idxprom607 = sext i32 %244 to i64
  %245 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx608 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %245, i64 %idxprom607
  %rcol609 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx608, i32 0, i32 1
  %246 = load i32, i32* %rcol609, align 4
  %call610 = call i32 @copy_alignment_line(i8* %238, i32 %239, i32 %conv602, i8* %arraydecay603, i32 %243, i32 %246, i8 signext 46)
  %tobool611 = icmp ne i32 %call610, 0
  br i1 %tobool611, label %if.end.613, label %if.then.612

if.then.612:                                      ; preds = %if.then.594
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.612, %if.then.594
  br label %if.end.662

if.else.614:                                      ; preds = %if.else.590
  %247 = load i8*, i8** %nptr, align 8
  %call615 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp616 = icmp eq i32 %call615, 0
  br i1 %cmp616, label %if.then.618, label %if.else.638

if.then.618:                                      ; preds = %if.else.614
  %248 = load i32, i32* %seqidx, align 4
  %sub619 = sub nsw i32 %248, 1
  %idxprom620 = sext i32 %sub619 to i64
  %249 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo621 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %249, i32 0, i32 6
  %250 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo621, align 8
  %arrayidx622 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %250, i64 %idxprom620
  %sa623 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx622, i32 0, i32 11
  %251 = load i8*, i8** %sa623, align 8
  %252 = load i32, i32* %currlen, align 4
  %253 = load i8*, i8** %nptr, align 8
  %call624 = call i64 @strlen(i8* %253) #5
  %sub625 = sub i64 %call624, 1
  %conv626 = trunc i64 %sub625 to i32
  %arraydecay627 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %254 = load i32, i32* %currblock, align 4
  %idxprom628 = sext i32 %254 to i64
  %255 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx629 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %255, i64 %idxprom628
  %lcol630 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx629, i32 0, i32 0
  %256 = load i32, i32* %lcol630, align 4
  %257 = load i32, i32* %currblock, align 4
  %idxprom631 = sext i32 %257 to i64
  %258 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx632 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %258, i64 %idxprom631
  %rcol633 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx632, i32 0, i32 1
  %259 = load i32, i32* %rcol633, align 4
  %call634 = call i32 @copy_alignment_line(i8* %251, i32 %252, i32 %conv626, i8* %arraydecay627, i32 %256, i32 %259, i8 signext 46)
  %tobool635 = icmp ne i32 %call634, 0
  br i1 %tobool635, label %if.end.637, label %if.then.636

if.then.636:                                      ; preds = %if.then.618
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.637

if.end.637:                                       ; preds = %if.then.636, %if.then.618
  br label %if.end.661

if.else.638:                                      ; preds = %if.else.614
  %260 = load i8*, i8** %nptr, align 8
  %call639 = call i32 @strncmp(i8* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i64 2) #5
  %cmp640 = icmp ne i32 %call639, 0
  br i1 %cmp640, label %if.then.642, label %if.end.660

if.then.642:                                      ; preds = %if.else.638
  %261 = load i32, i32* %seqidx, align 4
  %idxprom643 = sext i32 %261 to i64
  %262 = load i8**, i8*** %aseqs, align 8
  %arrayidx644 = getelementptr inbounds i8*, i8** %262, i64 %idxprom643
  %263 = load i8*, i8** %arrayidx644, align 8
  %264 = load i32, i32* %currlen, align 4
  %265 = load i8*, i8** %nptr, align 8
  %call645 = call i64 @strlen(i8* %265) #5
  %sub646 = sub i64 %call645, 1
  %conv647 = trunc i64 %sub646 to i32
  %arraydecay648 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %266 = load i32, i32* %currblock, align 4
  %idxprom649 = sext i32 %266 to i64
  %267 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx650 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %267, i64 %idxprom649
  %lcol651 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx650, i32 0, i32 0
  %268 = load i32, i32* %lcol651, align 4
  %269 = load i32, i32* %currblock, align 4
  %idxprom652 = sext i32 %269 to i64
  %270 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx653 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %270, i64 %idxprom652
  %rcol654 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx653, i32 0, i32 1
  %271 = load i32, i32* %rcol654, align 4
  %call655 = call i32 @copy_alignment_line(i8* %263, i32 %264, i32 %conv647, i8* %arraydecay648, i32 %268, i32 %271, i8 signext 46)
  %tobool656 = icmp ne i32 %call655, 0
  br i1 %tobool656, label %if.end.658, label %if.then.657

if.then.657:                                      ; preds = %if.then.642
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.658

if.end.658:                                       ; preds = %if.then.657, %if.then.642
  %272 = load i32, i32* %seqidx, align 4
  %inc659 = add nsw i32 %272, 1
  store i32 %inc659, i32* %seqidx, align 4
  br label %if.end.660

if.end.660:                                       ; preds = %if.end.658, %if.else.638
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.660, %if.end.637
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.661, %if.end.613
  br label %if.end.663

if.end.663:                                       ; preds = %if.end.662, %if.end.589
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %if.end.569
  br label %for.cond.665

for.cond.665:                                     ; preds = %if.end.692, %if.end.664
  store i8* null, i8** %nptr, align 8
  %arraydecay666 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call667 = call i8* @fgets(i8* %arraydecay666, i32 4096, %struct._IO_FILE* %273)
  %cmp668 = icmp eq i8* %call667, null
  br i1 %cmp668, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %for.cond.665
  br label %for.end.693

if.end.671:                                       ; preds = %for.cond.665
  %arraydecay672 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %arraydecay673 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call674 = call i8* @strcpy(i8* %arraydecay672, i8* %arraydecay673) #4
  %arraydecay675 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %call676 = call i8* @strtok(i8* %arraydecay675, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call676, i8** %nptr, align 8
  %cmp677 = icmp eq i8* %call676, null
  br i1 %cmp677, label %if.then.679, label %if.end.680

if.then.679:                                      ; preds = %if.end.671
  br label %for.end.693

if.end.680:                                       ; preds = %if.end.671
  %arraydecay681 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call682 = call i32 @strncmp(i8* %arraydecay681, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i64 2) #5
  %cmp683 = icmp eq i32 %call682, 0
  br i1 %cmp683, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %if.end.680
  br label %for.end.693

if.end.686:                                       ; preds = %if.end.680
  %274 = load i8*, i8** %nptr, align 8
  %275 = load i8, i8* %274, align 1
  %conv687 = sext i8 %275 to i32
  %call688 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv687) #5
  %cmp689 = icmp eq i8* %call688, null
  br i1 %cmp689, label %if.then.691, label %if.end.692

if.then.691:                                      ; preds = %if.end.686
  br label %for.end.693

if.end.692:                                       ; preds = %if.end.686
  br label %for.cond.665

for.end.693:                                      ; preds = %if.then.691, %if.then.685, %if.then.679, %if.then.670
  br label %while.cond.547

while.end.694:                                    ; preds = %while.cond.547
  %276 = load i32, i32* %currblock, align 4
  %idxprom695 = sext i32 %276 to i64
  %277 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx696 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %277, i64 %idxprom695
  %rcol697 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx696, i32 0, i32 1
  %278 = load i32, i32* %rcol697, align 4
  %279 = load i32, i32* %currblock, align 4
  %idxprom698 = sext i32 %279 to i64
  %280 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %arrayidx699 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %280, i64 %idxprom698
  %lcol700 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %arrayidx699, i32 0, i32 0
  %281 = load i32, i32* %lcol700, align 4
  %sub701 = sub nsw i32 %278, %281
  %add702 = add nsw i32 %sub701, 1
  %282 = load i32, i32* %currlen, align 4
  %add703 = add nsw i32 %282, %add702
  store i32 %add703, i32* %currlen, align 4
  br label %for.cond.704

for.cond.704:                                     ; preds = %if.end.731, %if.then.718, %while.end.694
  %arraydecay705 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call706 = call i8* @fgets(i8* %arraydecay705, i32 4096, %struct._IO_FILE* %283)
  %cmp707 = icmp eq i8* %call706, null
  br i1 %cmp707, label %if.then.709, label %if.end.710

if.then.709:                                      ; preds = %for.cond.704
  br label %for.end.732

if.end.710:                                       ; preds = %for.cond.704
  %arraydecay711 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %arraydecay712 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call713 = call i8* @strcpy(i8* %arraydecay711, i8* %arraydecay712) #4
  %arraydecay714 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bufcpy, i32 0, i32 0
  %call715 = call i8* @strtok(i8* %arraydecay714, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call715, i8** %nptr, align 8
  %cmp716 = icmp eq i8* %call715, null
  br i1 %cmp716, label %if.then.718, label %if.end.719

if.then.718:                                      ; preds = %if.end.710
  br label %for.cond.704

if.end.719:                                       ; preds = %if.end.710
  %arraydecay720 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call721 = call i32 @strncmp(i8* %arraydecay720, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i64 2) #5
  %cmp722 = icmp eq i32 %call721, 0
  br i1 %cmp722, label %if.then.724, label %if.end.725

if.then.724:                                      ; preds = %if.end.719
  br label %for.end.732

if.end.725:                                       ; preds = %if.end.719
  %284 = load i8*, i8** %nptr, align 8
  %285 = load i8, i8* %284, align 1
  %conv726 = sext i8 %285 to i32
  %call727 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv726) #5
  %cmp728 = icmp eq i8* %call727, null
  br i1 %cmp728, label %if.then.730, label %if.end.731

if.then.730:                                      ; preds = %if.end.725
  br label %for.end.732

if.end.731:                                       ; preds = %if.end.725
  br label %for.cond.704

for.end.732:                                      ; preds = %if.then.730, %if.then.724, %if.then.709
  br label %for.inc.733

for.inc.733:                                      ; preds = %for.end.732
  %286 = load i32, i32* %currblock, align 4
  %inc734 = add nsw i32 %286, 1
  store i32 %inc734, i32* %currblock, align 4
  br label %for.cond.543

for.end.735:                                      ; preds = %for.cond.543
  store i32 0, i32* %seqidx, align 4
  br label %for.cond.736

for.cond.736:                                     ; preds = %for.inc.890, %for.end.735
  %287 = load i32, i32* %seqidx, align 4
  %288 = load i32, i32* %num, align 4
  %cmp737 = icmp slt i32 %287, %288
  br i1 %cmp737, label %for.body.739, label %for.end.892

for.body.739:                                     ; preds = %for.cond.736
  %289 = load i32, i32* %seqidx, align 4
  %idxprom740 = sext i32 %289 to i64
  %290 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo741 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %290, i32 0, i32 6
  %291 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo741, align 8
  %arrayidx742 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %291, i64 %idxprom740
  %flags743 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx742, i32 0, i32 0
  %292 = load i32, i32* %flags743, align 4
  %and744 = and i32 %292, 512
  %tobool745 = icmp ne i32 %and744, 0
  br i1 %tobool745, label %if.then.746, label %if.end.814

if.then.746:                                      ; preds = %for.body.739
  store i32 0, i32* %rpos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.747

for.cond.747:                                     ; preds = %for.inc.805, %if.then.746
  %293 = load i32, i32* %apos, align 4
  %294 = load i32, i32* %alen, align 4
  %cmp748 = icmp slt i32 %293, %294
  br i1 %cmp748, label %for.body.750, label %for.end.807

for.body.750:                                     ; preds = %for.cond.747
  %295 = load i32, i32* %apos, align 4
  %idxprom751 = sext i32 %295 to i64
  %296 = load i32, i32* %seqidx, align 4
  %idxprom752 = sext i32 %296 to i64
  %297 = load i8**, i8*** %aseqs, align 8
  %arrayidx753 = getelementptr inbounds i8*, i8** %297, i64 %idxprom752
  %298 = load i8*, i8** %arrayidx753, align 8
  %arrayidx754 = getelementptr inbounds i8, i8* %298, i64 %idxprom751
  %299 = load i8, i8* %arrayidx754, align 1
  %conv755 = sext i8 %299 to i32
  %cmp756 = icmp eq i32 %conv755, 32
  br i1 %cmp756, label %if.end.804, label %lor.lhs.false.758

lor.lhs.false.758:                                ; preds = %for.body.750
  %300 = load i32, i32* %apos, align 4
  %idxprom759 = sext i32 %300 to i64
  %301 = load i32, i32* %seqidx, align 4
  %idxprom760 = sext i32 %301 to i64
  %302 = load i8**, i8*** %aseqs, align 8
  %arrayidx761 = getelementptr inbounds i8*, i8** %302, i64 %idxprom760
  %303 = load i8*, i8** %arrayidx761, align 8
  %arrayidx762 = getelementptr inbounds i8, i8* %303, i64 %idxprom759
  %304 = load i8, i8* %arrayidx762, align 1
  %conv763 = sext i8 %304 to i32
  %cmp764 = icmp eq i32 %conv763, 46
  br i1 %cmp764, label %if.end.804, label %lor.lhs.false.766

lor.lhs.false.766:                                ; preds = %lor.lhs.false.758
  %305 = load i32, i32* %apos, align 4
  %idxprom767 = sext i32 %305 to i64
  %306 = load i32, i32* %seqidx, align 4
  %idxprom768 = sext i32 %306 to i64
  %307 = load i8**, i8*** %aseqs, align 8
  %arrayidx769 = getelementptr inbounds i8*, i8** %307, i64 %idxprom768
  %308 = load i8*, i8** %arrayidx769, align 8
  %arrayidx770 = getelementptr inbounds i8, i8* %308, i64 %idxprom767
  %309 = load i8, i8* %arrayidx770, align 1
  %conv771 = sext i8 %309 to i32
  %cmp772 = icmp eq i32 %conv771, 95
  br i1 %cmp772, label %if.end.804, label %lor.lhs.false.774

lor.lhs.false.774:                                ; preds = %lor.lhs.false.766
  %310 = load i32, i32* %apos, align 4
  %idxprom775 = sext i32 %310 to i64
  %311 = load i32, i32* %seqidx, align 4
  %idxprom776 = sext i32 %311 to i64
  %312 = load i8**, i8*** %aseqs, align 8
  %arrayidx777 = getelementptr inbounds i8*, i8** %312, i64 %idxprom776
  %313 = load i8*, i8** %arrayidx777, align 8
  %arrayidx778 = getelementptr inbounds i8, i8* %313, i64 %idxprom775
  %314 = load i8, i8* %arrayidx778, align 1
  %conv779 = sext i8 %314 to i32
  %cmp780 = icmp eq i32 %conv779, 45
  br i1 %cmp780, label %if.end.804, label %lor.lhs.false.782

lor.lhs.false.782:                                ; preds = %lor.lhs.false.774
  %315 = load i32, i32* %apos, align 4
  %idxprom783 = sext i32 %315 to i64
  %316 = load i32, i32* %seqidx, align 4
  %idxprom784 = sext i32 %316 to i64
  %317 = load i8**, i8*** %aseqs, align 8
  %arrayidx785 = getelementptr inbounds i8*, i8** %317, i64 %idxprom784
  %318 = load i8*, i8** %arrayidx785, align 8
  %arrayidx786 = getelementptr inbounds i8, i8* %318, i64 %idxprom783
  %319 = load i8, i8* %arrayidx786, align 1
  %conv787 = sext i8 %319 to i32
  %cmp788 = icmp eq i32 %conv787, 126
  br i1 %cmp788, label %if.end.804, label %if.then.790

if.then.790:                                      ; preds = %lor.lhs.false.782
  %320 = load i32, i32* %apos, align 4
  %idxprom791 = sext i32 %320 to i64
  %321 = load i32, i32* %seqidx, align 4
  %idxprom792 = sext i32 %321 to i64
  %322 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo793 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %322, i32 0, i32 6
  %323 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo793, align 8
  %arrayidx794 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %323, i64 %idxprom792
  %ss795 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx794, i32 0, i32 10
  %324 = load i8*, i8** %ss795, align 8
  %arrayidx796 = getelementptr inbounds i8, i8* %324, i64 %idxprom791
  %325 = load i8, i8* %arrayidx796, align 1
  %326 = load i32, i32* %rpos, align 4
  %idxprom797 = sext i32 %326 to i64
  %327 = load i32, i32* %seqidx, align 4
  %idxprom798 = sext i32 %327 to i64
  %328 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo799 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %328, i32 0, i32 6
  %329 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo799, align 8
  %arrayidx800 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %329, i64 %idxprom798
  %ss801 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx800, i32 0, i32 10
  %330 = load i8*, i8** %ss801, align 8
  %arrayidx802 = getelementptr inbounds i8, i8* %330, i64 %idxprom797
  store i8 %325, i8* %arrayidx802, align 1
  %331 = load i32, i32* %rpos, align 4
  %inc803 = add nsw i32 %331, 1
  store i32 %inc803, i32* %rpos, align 4
  br label %if.end.804

if.end.804:                                       ; preds = %if.then.790, %lor.lhs.false.782, %lor.lhs.false.774, %lor.lhs.false.766, %lor.lhs.false.758, %for.body.750
  br label %for.inc.805

for.inc.805:                                      ; preds = %if.end.804
  %332 = load i32, i32* %apos, align 4
  %inc806 = add nsw i32 %332, 1
  store i32 %inc806, i32* %apos, align 4
  br label %for.cond.747

for.end.807:                                      ; preds = %for.cond.747
  %333 = load i32, i32* %rpos, align 4
  %idxprom808 = sext i32 %333 to i64
  %334 = load i32, i32* %seqidx, align 4
  %idxprom809 = sext i32 %334 to i64
  %335 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo810 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %335, i32 0, i32 6
  %336 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo810, align 8
  %arrayidx811 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %336, i64 %idxprom809
  %ss812 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx811, i32 0, i32 10
  %337 = load i8*, i8** %ss812, align 8
  %arrayidx813 = getelementptr inbounds i8, i8* %337, i64 %idxprom808
  store i8 0, i8* %arrayidx813, align 1
  br label %if.end.814

if.end.814:                                       ; preds = %for.end.807, %for.body.739
  %338 = load i32, i32* %seqidx, align 4
  %idxprom815 = sext i32 %338 to i64
  %339 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo816 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %339, i32 0, i32 6
  %340 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo816, align 8
  %arrayidx817 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %340, i64 %idxprom815
  %flags818 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx817, i32 0, i32 0
  %341 = load i32, i32* %flags818, align 4
  %and819 = and i32 %341, 1024
  %tobool820 = icmp ne i32 %and819, 0
  br i1 %tobool820, label %if.then.821, label %if.end.889

if.then.821:                                      ; preds = %if.end.814
  store i32 0, i32* %rpos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.822

for.cond.822:                                     ; preds = %for.inc.880, %if.then.821
  %342 = load i32, i32* %apos, align 4
  %343 = load i32, i32* %alen, align 4
  %cmp823 = icmp slt i32 %342, %343
  br i1 %cmp823, label %for.body.825, label %for.end.882

for.body.825:                                     ; preds = %for.cond.822
  %344 = load i32, i32* %apos, align 4
  %idxprom826 = sext i32 %344 to i64
  %345 = load i32, i32* %seqidx, align 4
  %idxprom827 = sext i32 %345 to i64
  %346 = load i8**, i8*** %aseqs, align 8
  %arrayidx828 = getelementptr inbounds i8*, i8** %346, i64 %idxprom827
  %347 = load i8*, i8** %arrayidx828, align 8
  %arrayidx829 = getelementptr inbounds i8, i8* %347, i64 %idxprom826
  %348 = load i8, i8* %arrayidx829, align 1
  %conv830 = sext i8 %348 to i32
  %cmp831 = icmp eq i32 %conv830, 32
  br i1 %cmp831, label %if.end.879, label %lor.lhs.false.833

lor.lhs.false.833:                                ; preds = %for.body.825
  %349 = load i32, i32* %apos, align 4
  %idxprom834 = sext i32 %349 to i64
  %350 = load i32, i32* %seqidx, align 4
  %idxprom835 = sext i32 %350 to i64
  %351 = load i8**, i8*** %aseqs, align 8
  %arrayidx836 = getelementptr inbounds i8*, i8** %351, i64 %idxprom835
  %352 = load i8*, i8** %arrayidx836, align 8
  %arrayidx837 = getelementptr inbounds i8, i8* %352, i64 %idxprom834
  %353 = load i8, i8* %arrayidx837, align 1
  %conv838 = sext i8 %353 to i32
  %cmp839 = icmp eq i32 %conv838, 46
  br i1 %cmp839, label %if.end.879, label %lor.lhs.false.841

lor.lhs.false.841:                                ; preds = %lor.lhs.false.833
  %354 = load i32, i32* %apos, align 4
  %idxprom842 = sext i32 %354 to i64
  %355 = load i32, i32* %seqidx, align 4
  %idxprom843 = sext i32 %355 to i64
  %356 = load i8**, i8*** %aseqs, align 8
  %arrayidx844 = getelementptr inbounds i8*, i8** %356, i64 %idxprom843
  %357 = load i8*, i8** %arrayidx844, align 8
  %arrayidx845 = getelementptr inbounds i8, i8* %357, i64 %idxprom842
  %358 = load i8, i8* %arrayidx845, align 1
  %conv846 = sext i8 %358 to i32
  %cmp847 = icmp eq i32 %conv846, 95
  br i1 %cmp847, label %if.end.879, label %lor.lhs.false.849

lor.lhs.false.849:                                ; preds = %lor.lhs.false.841
  %359 = load i32, i32* %apos, align 4
  %idxprom850 = sext i32 %359 to i64
  %360 = load i32, i32* %seqidx, align 4
  %idxprom851 = sext i32 %360 to i64
  %361 = load i8**, i8*** %aseqs, align 8
  %arrayidx852 = getelementptr inbounds i8*, i8** %361, i64 %idxprom851
  %362 = load i8*, i8** %arrayidx852, align 8
  %arrayidx853 = getelementptr inbounds i8, i8* %362, i64 %idxprom850
  %363 = load i8, i8* %arrayidx853, align 1
  %conv854 = sext i8 %363 to i32
  %cmp855 = icmp eq i32 %conv854, 45
  br i1 %cmp855, label %if.end.879, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %lor.lhs.false.849
  %364 = load i32, i32* %apos, align 4
  %idxprom858 = sext i32 %364 to i64
  %365 = load i32, i32* %seqidx, align 4
  %idxprom859 = sext i32 %365 to i64
  %366 = load i8**, i8*** %aseqs, align 8
  %arrayidx860 = getelementptr inbounds i8*, i8** %366, i64 %idxprom859
  %367 = load i8*, i8** %arrayidx860, align 8
  %arrayidx861 = getelementptr inbounds i8, i8* %367, i64 %idxprom858
  %368 = load i8, i8* %arrayidx861, align 1
  %conv862 = sext i8 %368 to i32
  %cmp863 = icmp eq i32 %conv862, 126
  br i1 %cmp863, label %if.end.879, label %if.then.865

if.then.865:                                      ; preds = %lor.lhs.false.857
  %369 = load i32, i32* %apos, align 4
  %idxprom866 = sext i32 %369 to i64
  %370 = load i32, i32* %seqidx, align 4
  %idxprom867 = sext i32 %370 to i64
  %371 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo868 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %371, i32 0, i32 6
  %372 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo868, align 8
  %arrayidx869 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %372, i64 %idxprom867
  %sa870 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx869, i32 0, i32 11
  %373 = load i8*, i8** %sa870, align 8
  %arrayidx871 = getelementptr inbounds i8, i8* %373, i64 %idxprom866
  %374 = load i8, i8* %arrayidx871, align 1
  %375 = load i32, i32* %rpos, align 4
  %idxprom872 = sext i32 %375 to i64
  %376 = load i32, i32* %seqidx, align 4
  %idxprom873 = sext i32 %376 to i64
  %377 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo874 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %377, i32 0, i32 6
  %378 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo874, align 8
  %arrayidx875 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %378, i64 %idxprom873
  %sa876 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx875, i32 0, i32 11
  %379 = load i8*, i8** %sa876, align 8
  %arrayidx877 = getelementptr inbounds i8, i8* %379, i64 %idxprom872
  store i8 %374, i8* %arrayidx877, align 1
  %380 = load i32, i32* %rpos, align 4
  %inc878 = add nsw i32 %380, 1
  store i32 %inc878, i32* %rpos, align 4
  br label %if.end.879

if.end.879:                                       ; preds = %if.then.865, %lor.lhs.false.857, %lor.lhs.false.849, %lor.lhs.false.841, %lor.lhs.false.833, %for.body.825
  br label %for.inc.880

for.inc.880:                                      ; preds = %if.end.879
  %381 = load i32, i32* %apos, align 4
  %inc881 = add nsw i32 %381, 1
  store i32 %inc881, i32* %apos, align 4
  br label %for.cond.822

for.end.882:                                      ; preds = %for.cond.822
  %382 = load i32, i32* %rpos, align 4
  %idxprom883 = sext i32 %382 to i64
  %383 = load i32, i32* %seqidx, align 4
  %idxprom884 = sext i32 %383 to i64
  %384 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo885 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %384, i32 0, i32 6
  %385 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo885, align 8
  %arrayidx886 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %385, i64 %idxprom884
  %sa887 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx886, i32 0, i32 11
  %386 = load i8*, i8** %sa887, align 8
  %arrayidx888 = getelementptr inbounds i8, i8* %386, i64 %idxprom883
  store i8 0, i8* %arrayidx888, align 1
  br label %if.end.889

if.end.889:                                       ; preds = %for.end.882, %if.end.814
  br label %for.inc.890

for.inc.890:                                      ; preds = %if.end.889
  %387 = load i32, i32* %seqidx, align 4
  %inc891 = add nsw i32 %387, 1
  store i32 %inc891, i32* %seqidx, align 4
  br label %for.cond.736

for.end.892:                                      ; preds = %for.cond.736
  %388 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %rf893 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %388, i32 0, i32 5
  %389 = load i8*, i8** %rf893, align 8
  %cmp894 = icmp ne i8* %389, null
  br i1 %cmp894, label %if.then.896, label %if.end.900

if.then.896:                                      ; preds = %for.end.892
  %390 = load i32, i32* %alen, align 4
  %idxprom897 = sext i32 %390 to i64
  %391 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %rf898 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %391, i32 0, i32 5
  %392 = load i8*, i8** %rf898, align 8
  %arrayidx899 = getelementptr inbounds i8, i8* %392, i64 %idxprom897
  store i8 0, i8* %arrayidx899, align 1
  br label %if.end.900

if.end.900:                                       ; preds = %if.then.896, %for.end.892
  %393 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %cs901 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %393, i32 0, i32 4
  %394 = load i8*, i8** %cs901, align 8
  %cmp902 = icmp ne i8* %394, null
  br i1 %cmp902, label %if.then.904, label %if.end.908

if.then.904:                                      ; preds = %if.end.900
  %395 = load i32, i32* %alen, align 4
  %idxprom905 = sext i32 %395 to i64
  %396 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %cs906 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %396, i32 0, i32 4
  %397 = load i8*, i8** %cs906, align 8
  %arrayidx907 = getelementptr inbounds i8, i8* %397, i64 %idxprom905
  store i8 0, i8* %arrayidx907, align 1
  br label %if.end.908

if.end.908:                                       ; preds = %if.then.904, %if.end.900
  store i32 0, i32* %seqidx, align 4
  br label %for.cond.909

for.cond.909:                                     ; preds = %for.inc.917, %if.end.908
  %398 = load i32, i32* %seqidx, align 4
  %399 = load i32, i32* %num, align 4
  %cmp910 = icmp slt i32 %398, %399
  br i1 %cmp910, label %for.body.912, label %for.end.919

for.body.912:                                     ; preds = %for.cond.909
  %400 = load i32, i32* %alen, align 4
  %idxprom913 = sext i32 %400 to i64
  %401 = load i32, i32* %seqidx, align 4
  %idxprom914 = sext i32 %401 to i64
  %402 = load i8**, i8*** %aseqs, align 8
  %arrayidx915 = getelementptr inbounds i8*, i8** %402, i64 %idxprom914
  %403 = load i8*, i8** %arrayidx915, align 8
  %arrayidx916 = getelementptr inbounds i8, i8* %403, i64 %idxprom913
  store i8 0, i8* %arrayidx916, align 1
  br label %for.inc.917

for.inc.917:                                      ; preds = %for.body.912
  %404 = load i32, i32* %seqidx, align 4
  %inc918 = add nsw i32 %404, 1
  store i32 %inc918, i32* %seqidx, align 4
  br label %for.cond.909

for.end.919:                                      ; preds = %for.cond.909
  store i32 0, i32* %seqidx, align 4
  br label %for.cond.920

for.cond.920:                                     ; preds = %for.inc.964, %for.end.919
  %405 = load i32, i32* %seqidx, align 4
  %406 = load i32, i32* %num, align 4
  %cmp921 = icmp slt i32 %405, %406
  br i1 %cmp921, label %for.body.923, label %for.end.966

for.body.923:                                     ; preds = %for.cond.920
  store i32 0, i32* %count, align 4
  %407 = load i32, i32* %seqidx, align 4
  %idxprom924 = sext i32 %407 to i64
  %408 = load i8**, i8*** %aseqs, align 8
  %arrayidx925 = getelementptr inbounds i8*, i8** %408, i64 %idxprom924
  %409 = load i8*, i8** %arrayidx925, align 8
  store i8* %409, i8** %sptr, align 8
  br label %for.cond.926

for.cond.926:                                     ; preds = %for.inc.953, %for.body.923
  %410 = load i8*, i8** %sptr, align 8
  %411 = load i8, i8* %410, align 1
  %conv927 = sext i8 %411 to i32
  %cmp928 = icmp ne i32 %conv927, 0
  br i1 %cmp928, label %for.body.930, label %for.end.955

for.body.930:                                     ; preds = %for.cond.926
  %412 = load i8*, i8** %sptr, align 8
  %413 = load i8, i8* %412, align 1
  %conv931 = sext i8 %413 to i32
  %cmp932 = icmp eq i32 %conv931, 32
  br i1 %cmp932, label %if.end.952, label %lor.lhs.false.934

lor.lhs.false.934:                                ; preds = %for.body.930
  %414 = load i8*, i8** %sptr, align 8
  %415 = load i8, i8* %414, align 1
  %conv935 = sext i8 %415 to i32
  %cmp936 = icmp eq i32 %conv935, 46
  br i1 %cmp936, label %if.end.952, label %lor.lhs.false.938

lor.lhs.false.938:                                ; preds = %lor.lhs.false.934
  %416 = load i8*, i8** %sptr, align 8
  %417 = load i8, i8* %416, align 1
  %conv939 = sext i8 %417 to i32
  %cmp940 = icmp eq i32 %conv939, 95
  br i1 %cmp940, label %if.end.952, label %lor.lhs.false.942

lor.lhs.false.942:                                ; preds = %lor.lhs.false.938
  %418 = load i8*, i8** %sptr, align 8
  %419 = load i8, i8* %418, align 1
  %conv943 = sext i8 %419 to i32
  %cmp944 = icmp eq i32 %conv943, 45
  br i1 %cmp944, label %if.end.952, label %lor.lhs.false.946

lor.lhs.false.946:                                ; preds = %lor.lhs.false.942
  %420 = load i8*, i8** %sptr, align 8
  %421 = load i8, i8* %420, align 1
  %conv947 = sext i8 %421 to i32
  %cmp948 = icmp eq i32 %conv947, 126
  br i1 %cmp948, label %if.end.952, label %if.then.950

if.then.950:                                      ; preds = %lor.lhs.false.946
  %422 = load i32, i32* %count, align 4
  %inc951 = add nsw i32 %422, 1
  store i32 %inc951, i32* %count, align 4
  br label %if.end.952

if.end.952:                                       ; preds = %if.then.950, %lor.lhs.false.946, %lor.lhs.false.942, %lor.lhs.false.938, %lor.lhs.false.934, %for.body.930
  br label %for.inc.953

for.inc.953:                                      ; preds = %if.end.952
  %423 = load i8*, i8** %sptr, align 8
  %incdec.ptr954 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %incdec.ptr954, i8** %sptr, align 8
  br label %for.cond.926

for.end.955:                                      ; preds = %for.cond.926
  %424 = load i32, i32* %count, align 4
  %425 = load i32, i32* %seqidx, align 4
  %idxprom956 = sext i32 %425 to i64
  %426 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo957 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %426, i32 0, i32 6
  %427 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo957, align 8
  %arrayidx958 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %427, i64 %idxprom956
  %len = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx958, i32 0, i32 5
  store i32 %424, i32* %len, align 4
  %428 = load i32, i32* %seqidx, align 4
  %idxprom959 = sext i32 %428 to i64
  %429 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %sqinfo960 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %429, i32 0, i32 6
  %430 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo960, align 8
  %arrayidx961 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %430, i64 %idxprom959
  %flags962 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx961, i32 0, i32 0
  %431 = load i32, i32* %flags962, align 4
  %or963 = or i32 %431, 64
  store i32 %or963, i32* %flags962, align 4
  br label %for.inc.964

for.inc.964:                                      ; preds = %for.end.955
  %432 = load i32, i32* %seqidx, align 4
  %inc965 = add nsw i32 %432, 1
  store i32 %inc965, i32* %seqidx, align 4
  br label %for.cond.920

for.end.966:                                      ; preds = %for.cond.920
  %433 = load %struct.block_struc*, %struct.block_struc** %blocks, align 8
  %434 = bitcast %struct.block_struc* %433 to i8*
  call void @free(i8* %434) #4
  %435 = load i32, i32* %warn_names, align 4
  %tobool967 = icmp ne i32 %435, 0
  br i1 %tobool967, label %if.then.968, label %if.end.969

if.then.968:                                      ; preds = %for.end.966
  %436 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %436, i32 0, i32 1
  %437 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0), i8* %437)
  br label %if.end.969

if.end.969:                                       ; preds = %if.then.968, %for.end.966
  %438 = load i8**, i8*** %aseqs, align 8
  %439 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  %call970 = call %struct.msa_struct* @MSAFromAINFO(i8** %438, %struct.aliinfo_s* %439)
  store %struct.msa_struct* %call970, %struct.msa_struct** %msa, align 8
  %440 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %440)
  %441 = load i8**, i8*** %aseqs, align 8
  %442 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo, align 8
  call void @FreeAlignment(i8** %441, %struct.aliinfo_s* %442)
  %443 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  store %struct.msa_struct* %443, %struct.msa_struct** %retval
  br label %return

return:                                           ; preds = %if.end.969, %if.then.7, %if.then
  %444 = load %struct.msa_struct*, %struct.msa_struct** %retval
  ret %struct.msa_struct* %444
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare void @Die(i8*, ...) #2

declare void @InitAinfo(%struct.aliinfo_s*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @sre_malloc(i8*, i32, i64) #2

declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

declare i32 @SetSeqinfoString(%struct.seqinfo_s*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @rewind(%struct._IO_FILE*) #2

declare void @FSet(float*, i32, float) #2

declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare i32 @IsReal(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_alignment_line(i8* %aseq, i32 %apos, i32 %name_rcol, i8* %buffer, i32 %lcol, i32 %rcol, i8 signext %gapsym) #0 {
entry:
  %retval = alloca i32, align 4
  %aseq.addr = alloca i8*, align 8
  %apos.addr = alloca i32, align 4
  %name_rcol.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %lcol.addr = alloca i32, align 4
  %rcol.addr = alloca i32, align 4
  %gapsym.addr = alloca i8, align 1
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %aseq, i8** %aseq.addr, align 8
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %name_rcol, i32* %name_rcol.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %lcol, i32* %lcol.addr, align 4
  store i32 %rcol, i32* %rcol.addr, align 4
  store i8 %gapsym, i8* %gapsym.addr, align 1
  %0 = load i8*, i8** %aseq.addr, align 8
  %1 = load i32, i32* %apos.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %s1, align 8
  %2 = load i8*, i8** %buffer.addr, align 8
  store i8* %2, i8** %s2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %lcol.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %s2, align 8
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %s2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %lcol.addr, align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.32, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %rcol.addr, align 4
  %cmp2 = icmp sle i32 %10, %11
  br i1 %cmp2, label %for.body.3, label %for.end.34

for.body.3:                                       ; preds = %for.cond.1
  %12 = load i8*, i8** %s2, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp4 = icmp eq i32 %conv, 9
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body.3
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.47, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body.3
  %14 = load i32, i32* %name_rcol.addr, align 4
  %15 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %14, %15
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %16 = load i8, i8* %gapsym.addr, align 1
  %17 = load i8*, i8** %s1, align 8
  store i8 %16, i8* %17, align 1
  br label %if.end.26

if.else:                                          ; preds = %if.end.7
  %18 = load i8*, i8** %s2, align 8
  %19 = load i8, i8* %18, align 1
  %conv11 = sext i8 %19 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %20 = load i8*, i8** %s2, align 8
  %21 = load i8, i8* %20, align 1
  %conv14 = sext i8 %21 to i32
  %cmp15 = icmp eq i32 %conv14, 10
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.else
  %22 = load i8, i8* %gapsym.addr, align 1
  %23 = load i8*, i8** %s1, align 8
  store i8 %22, i8* %23, align 1
  br label %if.end.25

if.else.18:                                       ; preds = %lor.lhs.false
  %24 = load i8*, i8** %s2, align 8
  %25 = load i8, i8* %24, align 1
  %conv19 = sext i8 %25 to i32
  %cmp20 = icmp eq i32 %conv19, 32
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.18
  %26 = load i8, i8* %gapsym.addr, align 1
  %27 = load i8*, i8** %s1, align 8
  store i8 %26, i8* %27, align 1
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.18
  %28 = load i8*, i8** %s2, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %s1, align 8
  store i8 %29, i8* %30, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.10
  %31 = load i8*, i8** %s1, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %s1, align 8
  %32 = load i8*, i8** %s2, align 8
  %33 = load i8, i8* %32, align 1
  %tobool28 = icmp ne i8 %33, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %34 = load i8*, i8** %s2, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr30, i8** %s2, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.26
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %35 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %35, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.1

for.end.34:                                       ; preds = %for.cond.1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.34, %if.then.6
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @Warn(i8*, ...) #2

declare %struct.msa_struct* @MSAFromAINFO(i8**, %struct.aliinfo_s*) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

declare void @FreeAlignment(i8**, %struct.aliinfo_s*) #2

; Function Attrs: nounwind uwtable
define void @WriteSELEX(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @actually_write_selex(%struct._IO_FILE* %0, %struct.msa_struct* %1, i32 50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @actually_write_selex(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %cpl.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %namewidth = alloca i32, align 4
  %buf = alloca i8*, align 8
  %currpos = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %cpl, i32* %cpl.addr, align 4
  store i32 0, i32* %len, align 4
  %0 = load i32, i32* %cpl.addr, align 4
  %add = add nsw i32 %0, 101
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call = call noalias i8* @malloc(i64 %mul) #4
  store i8* %call, i8** %buf, align 8
  store i32 0, i32* %namewidth, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 1
  %6 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %7) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %len, align 4
  %8 = load i32, i32* %namewidth, align 4
  %cmp4 = icmp sgt i32 %conv3, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  store i32 %9, i32* %namewidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %namewidth, align 4
  %cmp6 = icmp slt i32 %11, 6
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  store i32 6, i32* %namewidth, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.17, %if.end.9
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 21
  %14 = load i32, i32* %ncomment, align 4
  %cmp11 = icmp slt i32 %12, %14
  br i1 %cmp11, label %for.body.13, label %for.end.19

for.body.13:                                      ; preds = %for.cond.10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 20
  %18 = load i8**, i8*** %comment, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %18, i64 %idxprom14
  %19 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* %19)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.13
  %20 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.10

for.end.19:                                       ; preds = %for.cond.10
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 21
  %22 = load i32, i32* %ncomment20, align 4
  %cmp21 = icmp sgt i32 %22, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end.19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end.19
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 7
  %25 = load i8*, i8** %name, align 8
  %cmp26 = icmp ne i8* %25, null
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.25
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 7
  %28 = load i8*, i8** %name29, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* %28)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 9
  %30 = load i8*, i8** %acc, align 8
  %cmp32 = icmp ne i8* %30, null
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc35 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 9
  %33 = load i8*, i8** %acc35, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 8
  %35 = load i8*, i8** %desc, align 8
  %cmp38 = icmp ne i8* %35, null
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 8
  %38 = load i8*, i8** %desc41, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* %38)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  %39 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 10
  %40 = load i8*, i8** %au, align 8
  %cmp44 = icmp ne i8* %40, null
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 10
  %43 = load i8*, i8** %au47, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %43)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 19
  %arrayidx50 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set, i32 0, i64 2
  %45 = load i32, i32* %arrayidx50, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.49
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set51 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 19
  %arrayidx52 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set51, i32 0, i64 3
  %47 = load i32, i32* %arrayidx52, align 4
  %tobool53 = icmp ne i32 %47, 0
  br i1 %tobool53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %land.lhs.true
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 18
  %arrayidx55 = getelementptr inbounds [6 x float], [6 x float]* %cutoff, i32 0, i64 2
  %50 = load float, float* %arrayidx55, align 4
  %conv56 = fpext float %50 to double
  %51 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff57 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 18
  %arrayidx58 = getelementptr inbounds [6 x float], [6 x float]* %cutoff57, i32 0, i64 3
  %52 = load float, float* %arrayidx58, align 4
  %conv59 = fpext float %52 to double
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), double %conv56, double %conv59)
  br label %if.end.70

if.else:                                          ; preds = %land.lhs.true, %if.end.49
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 19
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set61, i32 0, i64 2
  %54 = load i32, i32* %arrayidx62, align 4
  %tobool63 = icmp ne i32 %54, 0
  br i1 %tobool63, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.else
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 18
  %arrayidx66 = getelementptr inbounds [6 x float], [6 x float]* %cutoff65, i32 0, i64 2
  %57 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %57 to double
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), double %conv67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.54
  %58 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set71 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %58, i32 0, i32 19
  %arrayidx72 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set71, i32 0, i64 4
  %59 = load i32, i32* %arrayidx72, align 4
  %tobool73 = icmp ne i32 %59, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.else.86

land.lhs.true.74:                                 ; preds = %if.end.70
  %60 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set75 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 19
  %arrayidx76 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set75, i32 0, i64 5
  %61 = load i32, i32* %arrayidx76, align 4
  %tobool77 = icmp ne i32 %61, 0
  br i1 %tobool77, label %if.then.78, label %if.else.86

if.then.78:                                       ; preds = %land.lhs.true.74
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %63 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 18
  %arrayidx80 = getelementptr inbounds [6 x float], [6 x float]* %cutoff79, i32 0, i64 4
  %64 = load float, float* %arrayidx80, align 4
  %conv81 = fpext float %64 to double
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 18
  %arrayidx83 = getelementptr inbounds [6 x float], [6 x float]* %cutoff82, i32 0, i64 5
  %66 = load float, float* %arrayidx83, align 4
  %conv84 = fpext float %66 to double
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), double %conv81, double %conv84)
  br label %if.end.96

if.else.86:                                       ; preds = %land.lhs.true.74, %if.end.70
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 19
  %arrayidx88 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set87, i32 0, i64 4
  %68 = load i32, i32* %arrayidx88, align 4
  %tobool89 = icmp ne i32 %68, 0
  br i1 %tobool89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %if.else.86
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %70 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff91 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 18
  %arrayidx92 = getelementptr inbounds [6 x float], [6 x float]* %cutoff91, i32 0, i64 4
  %71 = load float, float* %arrayidx92, align 4
  %conv93 = fpext float %71 to double
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), double %conv93)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %if.else.86
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.78
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set97 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 19
  %arrayidx98 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set97, i32 0, i64 0
  %73 = load i32, i32* %arrayidx98, align 4
  %tobool99 = icmp ne i32 %73, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.else.112

land.lhs.true.100:                                ; preds = %if.end.96
  %74 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 19
  %arrayidx102 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set101, i32 0, i64 1
  %75 = load i32, i32* %arrayidx102, align 4
  %tobool103 = icmp ne i32 %75, 0
  br i1 %tobool103, label %if.then.104, label %if.else.112

if.then.104:                                      ; preds = %land.lhs.true.100
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %77 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff105 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 18
  %arrayidx106 = getelementptr inbounds [6 x float], [6 x float]* %cutoff105, i32 0, i64 0
  %78 = load float, float* %arrayidx106, align 4
  %conv107 = fpext float %78 to double
  %79 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 18
  %arrayidx109 = getelementptr inbounds [6 x float], [6 x float]* %cutoff108, i32 0, i64 1
  %80 = load float, float* %arrayidx109, align 4
  %conv110 = fpext float %80 to double
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), double %conv107, double %conv110)
  br label %if.end.122

if.else.112:                                      ; preds = %land.lhs.true.100, %if.end.96
  %81 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set113 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 19
  %arrayidx114 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set113, i32 0, i64 0
  %82 = load i32, i32* %arrayidx114, align 4
  %tobool115 = icmp ne i32 %82, 0
  br i1 %tobool115, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %if.else.112
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %84 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff117 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 18
  %arrayidx118 = getelementptr inbounds [6 x float], [6 x float]* %cutoff117, i32 0, i64 0
  %85 = load float, float* %arrayidx118, align 4
  %conv119 = fpext float %85 to double
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), double %conv119)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %if.else.112
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.104
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.161, %if.end.122
  %86 = load i32, i32* %i, align 4
  %87 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq124 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 4
  %88 = load i32, i32* %nseq124, align 4
  %cmp125 = icmp slt i32 %86, %88
  br i1 %cmp125, label %for.body.127, label %for.end.163

for.body.127:                                     ; preds = %for.cond.123
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %90 = load i32, i32* %namewidth, align 4
  %91 = load i32, i32* %namewidth, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %92 to i64
  %93 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname129 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %93, i32 0, i32 1
  %94 = load i8**, i8*** %sqname129, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %94, i64 %idxprom128
  %95 = load i8*, i8** %arrayidx130, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %96 to i64
  %97 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %97, i32 0, i32 2
  %98 = load float*, float** %wgt, align 8
  %arrayidx132 = getelementptr inbounds float, float* %98, i64 %idxprom131
  %99 = load float, float* %arrayidx132, align 4
  %conv133 = fpext float %99 to double
  %100 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 14
  %101 = load i8**, i8*** %sqacc, align 8
  %cmp134 = icmp ne i8** %101, null
  br i1 %cmp134, label %land.lhs.true.136, label %cond.false

land.lhs.true.136:                                ; preds = %for.body.127
  %102 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %102 to i64
  %103 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc138 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 14
  %104 = load i8**, i8*** %sqacc138, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %104, i64 %idxprom137
  %105 = load i8*, i8** %arrayidx139, align 8
  %cmp140 = icmp ne i8* %105, null
  br i1 %cmp140, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.136
  %106 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %106 to i64
  %107 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc143 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 14
  %108 = load i8**, i8*** %sqacc143, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %108, i64 %idxprom142
  %109 = load i8*, i8** %arrayidx144, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.136, %for.body.127
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %109, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), %cond.false ]
  %110 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %110, i32 0, i32 15
  %111 = load i8**, i8*** %sqdesc, align 8
  %cmp145 = icmp ne i8** %111, null
  br i1 %cmp145, label %land.lhs.true.147, label %cond.false.157

land.lhs.true.147:                                ; preds = %cond.end
  %112 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %112 to i64
  %113 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc149 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 15
  %114 = load i8**, i8*** %sqdesc149, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %114, i64 %idxprom148
  %115 = load i8*, i8** %arrayidx150, align 8
  %cmp151 = icmp ne i8* %115, null
  br i1 %cmp151, label %cond.true.153, label %cond.false.157

cond.true.153:                                    ; preds = %land.lhs.true.147
  %116 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %116 to i64
  %117 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc155 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 15
  %118 = load i8**, i8*** %sqdesc155, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %118, i64 %idxprom154
  %119 = load i8*, i8** %arrayidx156, align 8
  br label %cond.end.158

cond.false.157:                                   ; preds = %land.lhs.true.147, %cond.end
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.157, %cond.true.153
  %cond159 = phi i8* [ %119, %cond.true.153 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), %cond.false.157 ]
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i32 %90, i32 %91, i8* %95, double %conv133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8* %cond, i32 0, i32 0, i32 0, i8* %cond159)
  br label %for.inc.161

for.inc.161:                                      ; preds = %cond.end.158
  %120 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %120, 1
  store i32 %inc162, i32* %i, align 4
  br label %for.cond.123

for.end.163:                                      ; preds = %for.cond.123
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %currpos, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.256, %for.end.163
  %122 = load i32, i32* %currpos, align 4
  %123 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 3
  %124 = load i32, i32* %alen, align 4
  %cmp166 = icmp slt i32 %122, %124
  br i1 %cmp166, label %for.body.168, label %for.end.258

for.body.168:                                     ; preds = %for.cond.165
  %125 = load i32, i32* %currpos, align 4
  %cmp169 = icmp sgt i32 %125, 0
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %for.body.168
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %for.body.168
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 11
  %128 = load i8*, i8** %ss_cons, align 8
  %cmp174 = icmp ne i8* %128, null
  br i1 %cmp174, label %if.then.176, label %if.end.183

if.then.176:                                      ; preds = %if.end.173
  %129 = load i8*, i8** %buf, align 8
  %130 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons177 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 11
  %131 = load i8*, i8** %ss_cons177, align 8
  %132 = load i32, i32* %currpos, align 4
  %idx.ext = sext i32 %132 to i64
  %add.ptr = getelementptr inbounds i8, i8* %131, i64 %idx.ext
  %133 = load i32, i32* %cpl.addr, align 4
  %conv178 = sext i32 %133 to i64
  %call179 = call i8* @strncpy(i8* %129, i8* %add.ptr, i64 %conv178) #4
  %134 = load i32, i32* %cpl.addr, align 4
  %idxprom180 = sext i32 %134 to i64
  %135 = load i8*, i8** %buf, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %135, i64 %idxprom180
  store i8 0, i8* %arrayidx181, align 1
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %137 = load i32, i32* %namewidth, align 4
  %138 = load i32, i32* %namewidth, align 4
  %139 = load i8*, i8** %buf, align 8
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %137, i32 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %139)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.176, %if.end.173
  %140 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %140, i32 0, i32 13
  %141 = load i8*, i8** %rf, align 8
  %cmp184 = icmp ne i8* %141, null
  br i1 %cmp184, label %if.then.186, label %if.end.195

if.then.186:                                      ; preds = %if.end.183
  %142 = load i8*, i8** %buf, align 8
  %143 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf187 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 13
  %144 = load i8*, i8** %rf187, align 8
  %145 = load i32, i32* %currpos, align 4
  %idx.ext188 = sext i32 %145 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %144, i64 %idx.ext188
  %146 = load i32, i32* %cpl.addr, align 4
  %conv190 = sext i32 %146 to i64
  %call191 = call i8* @strncpy(i8* %142, i8* %add.ptr189, i64 %conv190) #4
  %147 = load i32, i32* %cpl.addr, align 4
  %idxprom192 = sext i32 %147 to i64
  %148 = load i8*, i8** %buf, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %148, i64 %idxprom192
  store i8 0, i8* %arrayidx193, align 1
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %150 = load i32, i32* %namewidth, align 4
  %151 = load i32, i32* %namewidth, align 4
  %152 = load i8*, i8** %buf, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %150, i32 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %152)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.186, %if.end.183
  store i32 0, i32* %i, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.253, %if.end.195
  %153 = load i32, i32* %i, align 4
  %154 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq197 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %154, i32 0, i32 4
  %155 = load i32, i32* %nseq197, align 4
  %cmp198 = icmp slt i32 %153, %155
  br i1 %cmp198, label %for.body.200, label %for.end.255

for.body.200:                                     ; preds = %for.cond.196
  %156 = load i8*, i8** %buf, align 8
  %157 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %157 to i64
  %158 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 0
  %159 = load i8**, i8*** %aseq, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %159, i64 %idxprom201
  %160 = load i8*, i8** %arrayidx202, align 8
  %161 = load i32, i32* %currpos, align 4
  %idx.ext203 = sext i32 %161 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %160, i64 %idx.ext203
  %162 = load i32, i32* %cpl.addr, align 4
  %conv205 = sext i32 %162 to i64
  %call206 = call i8* @strncpy(i8* %156, i8* %add.ptr204, i64 %conv205) #4
  %163 = load i32, i32* %cpl.addr, align 4
  %idxprom207 = sext i32 %163 to i64
  %164 = load i8*, i8** %buf, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %164, i64 %idxprom207
  store i8 0, i8* %arrayidx208, align 1
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %166 = load i32, i32* %namewidth, align 4
  %167 = load i32, i32* %namewidth, align 4
  %168 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %168 to i64
  %169 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname210 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %169, i32 0, i32 1
  %170 = load i8**, i8*** %sqname210, align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %170, i64 %idxprom209
  %171 = load i8*, i8** %arrayidx211, align 8
  %172 = load i8*, i8** %buf, align 8
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %166, i32 %167, i8* %171, i8* %172)
  %173 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %173, i32 0, i32 16
  %174 = load i8**, i8*** %ss, align 8
  %cmp213 = icmp ne i8** %174, null
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.232

land.lhs.true.215:                                ; preds = %for.body.200
  %175 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %175 to i64
  %176 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss217 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %176, i32 0, i32 16
  %177 = load i8**, i8*** %ss217, align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %177, i64 %idxprom216
  %178 = load i8*, i8** %arrayidx218, align 8
  %cmp219 = icmp ne i8* %178, null
  br i1 %cmp219, label %if.then.221, label %if.end.232

if.then.221:                                      ; preds = %land.lhs.true.215
  %179 = load i8*, i8** %buf, align 8
  %180 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %180 to i64
  %181 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss223 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %181, i32 0, i32 16
  %182 = load i8**, i8*** %ss223, align 8
  %arrayidx224 = getelementptr inbounds i8*, i8** %182, i64 %idxprom222
  %183 = load i8*, i8** %arrayidx224, align 8
  %184 = load i32, i32* %currpos, align 4
  %idx.ext225 = sext i32 %184 to i64
  %add.ptr226 = getelementptr inbounds i8, i8* %183, i64 %idx.ext225
  %185 = load i32, i32* %cpl.addr, align 4
  %conv227 = sext i32 %185 to i64
  %call228 = call i8* @strncpy(i8* %179, i8* %add.ptr226, i64 %conv227) #4
  %186 = load i32, i32* %cpl.addr, align 4
  %idxprom229 = sext i32 %186 to i64
  %187 = load i8*, i8** %buf, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %187, i64 %idxprom229
  store i8 0, i8* %arrayidx230, align 1
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %189 = load i32, i32* %namewidth, align 4
  %190 = load i32, i32* %namewidth, align 4
  %191 = load i8*, i8** %buf, align 8
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %189, i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %191)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.221, %land.lhs.true.215, %for.body.200
  %192 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %192, i32 0, i32 17
  %193 = load i8**, i8*** %sa, align 8
  %cmp233 = icmp ne i8** %193, null
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.252

land.lhs.true.235:                                ; preds = %if.end.232
  %194 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %194 to i64
  %195 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa237 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %195, i32 0, i32 17
  %196 = load i8**, i8*** %sa237, align 8
  %arrayidx238 = getelementptr inbounds i8*, i8** %196, i64 %idxprom236
  %197 = load i8*, i8** %arrayidx238, align 8
  %cmp239 = icmp ne i8* %197, null
  br i1 %cmp239, label %if.then.241, label %if.end.252

if.then.241:                                      ; preds = %land.lhs.true.235
  %198 = load i8*, i8** %buf, align 8
  %199 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %199 to i64
  %200 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa243 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %200, i32 0, i32 17
  %201 = load i8**, i8*** %sa243, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %201, i64 %idxprom242
  %202 = load i8*, i8** %arrayidx244, align 8
  %203 = load i32, i32* %currpos, align 4
  %idx.ext245 = sext i32 %203 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %202, i64 %idx.ext245
  %204 = load i32, i32* %cpl.addr, align 4
  %conv247 = sext i32 %204 to i64
  %call248 = call i8* @strncpy(i8* %198, i8* %add.ptr246, i64 %conv247) #4
  %205 = load i32, i32* %cpl.addr, align 4
  %idxprom249 = sext i32 %205 to i64
  %206 = load i8*, i8** %buf, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %206, i64 %idxprom249
  store i8 0, i8* %arrayidx250, align 1
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %208 = load i32, i32* %namewidth, align 4
  %209 = load i32, i32* %namewidth, align 4
  %210 = load i8*, i8** %buf, align 8
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %208, i32 %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %210)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.241, %land.lhs.true.235, %if.end.232
  br label %for.inc.253

for.inc.253:                                      ; preds = %if.end.252
  %211 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %211, 1
  store i32 %inc254, i32* %i, align 4
  br label %for.cond.196

for.end.255:                                      ; preds = %for.cond.196
  br label %for.inc.256

for.inc.256:                                      ; preds = %for.end.255
  %212 = load i32, i32* %cpl.addr, align 4
  %213 = load i32, i32* %currpos, align 4
  %add257 = add nsw i32 %213, %212
  store i32 %add257, i32* %currpos, align 4
  br label %for.cond.165

for.end.258:                                      ; preds = %for.cond.165
  %214 = load i8*, i8** %buf, align 8
  call void @free(i8* %214) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteSELEXOneBlock(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %alen, align 4
  call void @actually_write_selex(%struct._IO_FILE* %0, %struct.msa_struct* %1, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @DealignAseqs(i8** %aseqs, i32 %num, i8*** %ret_rseqs) #0 {
entry:
  %aseqs.addr = alloca i8**, align 8
  %num.addr = alloca i32, align 4
  %ret_rseqs.addr = alloca i8***, align 8
  %rseqs = alloca i8**, align 8
  %idx = alloca i32, align 4
  %depos = alloca i32, align 4
  %apos = alloca i32, align 4
  %seqlen = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i8*** %ret_rseqs, i8**** %ret_rseqs.addr, align 8
  %0 = load i32, i32* %num.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 738, i64 %mul)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %rseqs, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %6) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %seqlen, align 4
  %7 = load i32, i32* %seqlen, align 4
  %add = add nsw i32 %7, 1
  %conv4 = sext i32 %add to i64
  %mul5 = mul i64 %conv4, 1
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 744, i64 %mul5)
  %8 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i8**, i8*** %rseqs, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %9, i64 %idxprom7
  store i8* %call6, i8** %arrayidx8, align 8
  store i32 0, i32* %depos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %apos, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i32, i32* %idx, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %12, i64 %idxprom11
  %13 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.9
  %15 = load i32, i32* %apos, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load i32, i32* %idx, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %17, i64 %idxprom19
  %18 = load i8*, i8** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom18
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 32
  br i1 %cmp23, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.17
  %20 = load i32, i32* %apos, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i32, i32* %idx, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %22, i64 %idxprom26
  %23 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %23, i64 %idxprom25
  %24 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv29, 46
  br i1 %cmp30, label %if.end, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %apos, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i32, i32* %idx, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %27, i64 %idxprom34
  %28 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  %29 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %29 to i32
  %cmp38 = icmp eq i32 %conv37, 95
  br i1 %cmp38, label %if.end, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.32
  %30 = load i32, i32* %apos, align 4
  %idxprom41 = sext i32 %30 to i64
  %31 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %32, i64 %idxprom42
  %33 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %33, i64 %idxprom41
  %34 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %34 to i32
  %cmp46 = icmp eq i32 %conv45, 45
  br i1 %cmp46, label %if.end, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.40
  %35 = load i32, i32* %apos, align 4
  %idxprom49 = sext i32 %35 to i64
  %36 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %36 to i64
  %37 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %37, i64 %idxprom50
  %38 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %38, i64 %idxprom49
  %39 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %39 to i32
  %cmp54 = icmp eq i32 %conv53, 126
  br i1 %cmp54, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.48
  %40 = load i32, i32* %apos, align 4
  %idxprom56 = sext i32 %40 to i64
  %41 = load i32, i32* %idx, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %42, i64 %idxprom57
  %43 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %43, i64 %idxprom56
  %44 = load i8, i8* %arrayidx59, align 1
  %45 = load i32, i32* %depos, align 4
  %idxprom60 = sext i32 %45 to i64
  %46 = load i32, i32* %idx, align 4
  %idxprom61 = sext i32 %46 to i64
  %47 = load i8**, i8*** %rseqs, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %47, i64 %idxprom61
  %48 = load i8*, i8** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %48, i64 %idxprom60
  store i8 %44, i8* %arrayidx63, align 1
  %49 = load i32, i32* %depos, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %depos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.48, %lor.lhs.false.40, %lor.lhs.false.32, %lor.lhs.false, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %50 = load i32, i32* %apos, align 4
  %inc64 = add nsw i32 %50, 1
  store i32 %inc64, i32* %apos, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %51 = load i32, i32* %depos, align 4
  %idxprom65 = sext i32 %51 to i64
  %52 = load i32, i32* %idx, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load i8**, i8*** %rseqs, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %53, i64 %idxprom66
  %54 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %54, i64 %idxprom65
  store i8 0, i8* %arrayidx68, align 1
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end
  %55 = load i32, i32* %idx, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* %idx, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  %56 = load i8**, i8*** %rseqs, align 8
  %57 = load i8***, i8**** %ret_rseqs.addr, align 8
  store i8** %56, i8*** %57, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @IsSELEXFormat(i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [4096 x i8], align 16
  %sptr = alloca i8*, align 8
  %linenum = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %linenum, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.90, %if.then.83, %if.then.78, %if.then.72, %if.end
  %1 = load i32, i32* %linenum, align 4
  %cmp1 = icmp slt i32 %1, 500
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 4096, %struct._IO_FILE* %2)
  %cmp3 = icmp ne i8* %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %linenum, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %linenum, align 4
  %arraydecay4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call5 = call i32 @strncmp(i8* %arraydecay4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.body
  br label %DONE

if.else:                                          ; preds = %while.body
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call9 = call i32 @strncmp(i8* %arraydecay8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 4) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  br label %DONE

if.else.12:                                       ; preds = %if.else
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call14 = call i32 @strncmp(i8* %arraydecay13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.12
  br label %DONE

if.else.17:                                       ; preds = %if.else.12
  %arraydecay18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call19 = call i32 @strncmp(i8* %arraydecay18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4) #5
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.17
  br label %DONE

if.else.22:                                       ; preds = %if.else.17
  %arraydecay23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call24 = call i32 @strncmp(i8* %arraydecay23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.22
  br label %DONE

if.else.27:                                       ; preds = %if.else.22
  %arraydecay28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call29 = call i32 @strncmp(i8* %arraydecay28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 4) #5
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.27
  br label %DONE

if.else.32:                                       ; preds = %if.else.27
  %arraydecay33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call34 = call i32 @strncmp(i8* %arraydecay33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 4) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else.32
  br label %DONE

if.else.37:                                       ; preds = %if.else.32
  %arraydecay38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call39 = call i32 @strncmp(i8* %arraydecay38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64 4) #5
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else.37
  br label %DONE

if.else.42:                                       ; preds = %if.else.37
  %arraydecay43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call44 = call i32 @strncmp(i8* %arraydecay43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4) #5
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.42
  br label %DONE

if.else.47:                                       ; preds = %if.else.42
  %arraydecay48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call49 = call i32 @strncmp(i8* %arraydecay48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.47
  br label %DONE

if.else.52:                                       ; preds = %if.else.47
  %arraydecay53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call54 = call i32 @strncmp(i8* %arraydecay53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.52
  br label %DONE

if.end.57:                                        ; preds = %if.else.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66
  %arraydecay68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %5 = load i8, i8* %arraydecay68, align 1
  %conv = sext i8 %5 to i32
  %call69 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %conv) #5
  %cmp70 = icmp ne i8* %call69, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  br label %while.cond

if.end.73:                                        ; preds = %if.end.67
  %arraydecay74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call75 = call i8* @strtok(i8* %arraydecay74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call75, i8** %sptr, align 8
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.73
  br label %while.cond

if.end.79:                                        ; preds = %if.end.73
  %call80 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call80, i8** %sptr, align 8
  %cmp81 = icmp eq i8* %call80, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.79
  br label %while.cond

if.end.84:                                        ; preds = %if.end.79
  %6 = load i8*, i8** %sptr, align 8
  %call85 = call i32 @Seqtype(i8* %6)
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end.84
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call89 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.84
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %DONE

DONE:                                             ; preds = %while.end, %if.then.56, %if.then.51, %if.then.46, %if.then.41, %if.then.36, %if.then.31, %if.then.26, %if.then.21, %if.then.16, %if.then.11, %if.then.7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call91 = call i32 @fclose(%struct._IO_FILE* %8)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %DONE, %if.then.88, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @Seqtype(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

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
