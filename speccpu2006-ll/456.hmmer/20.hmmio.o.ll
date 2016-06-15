; ModuleID = 'hmmio.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [8 x i8] c"hmmio.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.ssi\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SSIRecommendMode() failed\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SSIGetFilePosition() failed\00", align 1
@v20magic = internal global i32 -387060299, align 4
@v20swap = internal global i32 -1242698264, align 4
@v19magic = internal global i32 -387060300, align 4
@v19swap = internal global i32 -1259475480, align 4
@v17magic = internal global i32 -387060301, align 4
@v17swap = internal global i32 -1276252696, align 4
@v11magic = internal global i32 -387060302, align 4
@v11swap = internal global i32 -1293029912, align 4
@v10magic = internal global i32 -387060303, align 4
@v10swap = internal global i32 -1309807128, align 4
@.str.5 = private unnamed_addr constant [160 x i8] c"%s appears to be a binary but format is not recognized\0AIt may be from a HMMER version more recent than yours,\0Aor may be a different kind of binary altogether.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HMMER2.0\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"HMMER v1.9\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"# HMM v1.7\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"# HMM v1.1\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"# HMM v1.0\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"HMMER2.0  [%s]\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"NAME  %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ACC   %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"DESC  %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"LENG  %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ALPH  %s\0A\00", align 1
@Alphabet_type = external global i32, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"Amino\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Nucleic\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"RF    %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"CS    %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"MAP   %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"COM   \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"NSEQ  %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"DATE  %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"CKSUM %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"GA    %.1f %.1f\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"TC    %.1f %.1f\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"NC    %.1f %.1f\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"XT     \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"%6s \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"NULT  \00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%6s\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"NULE  \00", align 1
@Alphabet_size = external global i32, align 4
@.str.38 = private unnamed_addr constant [17 x i8] c"EVD   %10f %10f\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"HMM      \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"  %c    \00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.41 = private unnamed_addr constant [44 x i8] c"       %6s %6s %6s %6s %6s %6s %6s %6s %6s\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"m->m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"m->i\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"m->d\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"i->m\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"i->i\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"d->m\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"d->d\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"b->m\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"m->e\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"       %6s %6s \00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c" %5d \00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c" %5c \00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"NAME \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ACC  \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"DESC \00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"LENG \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"NSEQ \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"ALPH \00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"AMINO\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"NUCLEIC\00", align 1
@.str.65 = private unnamed_addr constant [89 x i8] c"Alphabet mismatch error.\0AI thought we were working with %s, but tried to read a %s HMM.\0A\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"RF   \00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"CS   \00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"MAP  \00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"COM  \00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"DATE \00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"GA   \00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"TC   \00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"NC   \00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"XT   \00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"NULT \00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"NULE \00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"ALPH must precede NULE in HMM save files\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"EVD  \00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"CKSUM\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"HMM  \00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"[converted from an old Plan9 HMM]\00", align 1
@.str.85 = private unnamed_addr constant [71 x i8] c"A nonbiological alphabet size of %d; so I can't convert plan9 to plan7\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"malloc failed for reading hmm in\0A\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"###MATCH_STATE\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"###INSERT_STATE\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"###DELETE_STATE\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"1.1 ASCII HMMs unsupported\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"1.0 ASCII HMMs unsupported\00", align 1
@prob2ascii.buffer = internal global [8 x i8] zeroinitializer, align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hmmfile_s* @HMMFileOpen(i8* %hmmfile, i8* %env) #0 {
entry:
  %retval = alloca %struct.hmmfile_s*, align 8
  %hmmfile.addr = alloca i8*, align 8
  %env.addr = alloca i8*, align 8
  %hmmfp = alloca %struct.hmmfile_s*, align 8
  %magic = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %ssifile = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %status = alloca i32, align 4
  %full = alloca i8*, align 8
  store i8* %hmmfile, i8** %hmmfile.addr, align 8
  store i8* %env, i8** %env.addr, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 164, i64 56)
  %0 = bitcast i8* %call to %struct.hmmfile_s*
  store %struct.hmmfile_s* %0, %struct.hmmfile_s** %hmmfp, align 8
  %1 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %1, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* null, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser, align 8
  %3 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %3, i32 0, i32 3
  store i32 0, i32* %is_binary, align 4
  %4 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %byteswap = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %4, i32 0, i32 4
  store i32 0, i32* %byteswap, align 4
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_seekable = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 5
  store i32 1, i32* %is_seekable, align 4
  %6 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %6, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %f1, align 8
  %7 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %ssi = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %7, i32 0, i32 1
  store %struct.ssifile_s* null, %struct.ssifile_s** %ssi, align 8
  %8 = load i8*, i8** %hmmfile.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %9 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f3 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %9, i32 0, i32 0
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f3, align 8
  %cmp = icmp ne %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %hmmfile.addr, align 8
  %call4 = call i64 @strlen(i8* %10) #5
  %add = add i64 %call4, 5
  %mul = mul i64 1, %add
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 181, i64 %mul)
  store i8* %call5, i8** %ssifile, align 8
  %11 = load i8*, i8** %ssifile, align 8
  %12 = load i8*, i8** %hmmfile.addr, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %12) #6
  %13 = load i8*, i8** %hmmfile.addr, align 8
  %call7 = call i32 @SSIRecommendMode(i8* %13)
  %14 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %mode = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %14, i32 0, i32 6
  store i32 %call7, i32* %mode, align 4
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.29

if.else:                                          ; preds = %entry
  %15 = load i8*, i8** %hmmfile.addr, align 8
  %16 = load i8*, i8** %env.addr, align 8
  %call10 = call %struct._IO_FILE* @EnvFileOpen(i8* %15, i8* %16, i8** %dir)
  %17 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f11 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %17, i32 0, i32 0
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %f11, align 8
  %cmp12 = icmp ne %struct._IO_FILE* %call10, null
  br i1 %cmp12, label %if.then.13, label %if.else.27

if.then.13:                                       ; preds = %if.else
  %18 = load i8*, i8** %dir, align 8
  %19 = load i8*, i8** %hmmfile.addr, align 8
  %call14 = call i8* @FileConcat(i8* %18, i8* %19)
  store i8* %call14, i8** %full, align 8
  %20 = load i8*, i8** %full, align 8
  %call15 = call i64 @strlen(i8* %20) #5
  %21 = load i8*, i8** %hmmfile.addr, align 8
  %call16 = call i64 @strlen(i8* %21) #5
  %add17 = add i64 %call15, %call16
  %add18 = add i64 %add17, 5
  %mul19 = mul i64 1, %add18
  %call20 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 192, i64 %mul19)
  store i8* %call20, i8** %ssifile, align 8
  %22 = load i8*, i8** %ssifile, align 8
  %23 = load i8*, i8** %full, align 8
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %23) #6
  %24 = load i8*, i8** %full, align 8
  %call22 = call i32 @SSIRecommendMode(i8* %24)
  %25 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %mode23 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %25, i32 0, i32 6
  store i32 %call22, i32* %mode23, align 4
  %cmp24 = icmp eq i32 %call22, -1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.13
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.13
  %26 = load i8*, i8** %full, align 8
  call void @free(i8* %26) #6
  %27 = load i8*, i8** %dir, align 8
  call void @free(i8* %27) #6
  br label %if.end.28

if.else.27:                                       ; preds = %if.else
  store %struct.hmmfile_s* null, %struct.hmmfile_s** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  %28 = load i8*, i8** %ssifile, align 8
  %29 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %ssi30 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %29, i32 0, i32 1
  %call31 = call i32 @SSIOpen(i8* %28, %struct.ssifile_s** %ssi30)
  %30 = load i8*, i8** %ssifile, align 8
  call void @free(i8* %30) #6
  %31 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f32 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f32, align 8
  %33 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %mode33 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %33, i32 0, i32 6
  %34 = load i32, i32* %mode33, align 4
  %35 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %offset = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %35, i32 0, i32 7
  %call34 = call i32 @SSIGetFilePosition(%struct._IO_FILE* %32, i32 %34, %struct.ssioffset_s* %offset)
  store i32 %call34, i32* %status, align 4
  %36 = load i32, i32* %status, align 4
  %cmp35 = icmp ne i32 %36, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.29
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.29
  %37 = bitcast i32* %magic to i8*
  %38 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f38 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %38, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8
  %call39 = call i64 @fread(i8* %37, i64 4, i64 1, %struct._IO_FILE* %39)
  %tobool = icmp ne i64 %call39, 0
  br i1 %tobool, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %40 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %40)
  store %struct.hmmfile_s* null, %struct.hmmfile_s** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %41 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f42 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %41, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f42, align 8
  call void @rewind(%struct._IO_FILE* %42)
  %43 = load i32, i32* %magic, align 4
  %44 = load i32, i32* @v20magic, align 4
  %cmp43 = icmp eq i32 %43, %44
  br i1 %cmp43, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %if.end.41
  %45 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser45 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %45, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser45, align 8
  %46 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary46 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %46, i32 0, i32 3
  store i32 1, i32* %is_binary46, align 4
  %47 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %47, %struct.hmmfile_s** %retval
  br label %return

if.else.47:                                       ; preds = %if.end.41
  %48 = load i32, i32* %magic, align 4
  %49 = load i32, i32* @v20swap, align 4
  %cmp48 = icmp eq i32 %48, %49
  br i1 %cmp48, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %if.else.47
  %50 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser50 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %50, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser50, align 8
  %51 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary51 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %51, i32 0, i32 3
  store i32 1, i32* %is_binary51, align 4
  %52 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %byteswap52 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %52, i32 0, i32 4
  store i32 1, i32* %byteswap52, align 4
  %53 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %53, %struct.hmmfile_s** %retval
  br label %return

if.else.53:                                       ; preds = %if.else.47
  %54 = load i32, i32* %magic, align 4
  %55 = load i32, i32* @v19magic, align 4
  %cmp54 = icmp eq i32 %54, %55
  br i1 %cmp54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.else.53
  %56 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser56 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %56, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser56, align 8
  %57 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary57 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %57, i32 0, i32 3
  store i32 1, i32* %is_binary57, align 4
  %58 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %58, %struct.hmmfile_s** %retval
  br label %return

if.else.58:                                       ; preds = %if.else.53
  %59 = load i32, i32* %magic, align 4
  %60 = load i32, i32* @v19swap, align 4
  %cmp59 = icmp eq i32 %59, %60
  br i1 %cmp59, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %if.else.58
  %61 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser61 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %61, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser61, align 8
  %62 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary62 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %62, i32 0, i32 3
  store i32 1, i32* %is_binary62, align 4
  %63 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %byteswap63 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %63, i32 0, i32 4
  store i32 1, i32* %byteswap63, align 4
  %64 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %64, %struct.hmmfile_s** %retval
  br label %return

if.else.64:                                       ; preds = %if.else.58
  %65 = load i32, i32* %magic, align 4
  %66 = load i32, i32* @v17magic, align 4
  %cmp65 = icmp eq i32 %65, %66
  br i1 %cmp65, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %if.else.64
  %67 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser67 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %67, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser67, align 8
  %68 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary68 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %68, i32 0, i32 3
  store i32 1, i32* %is_binary68, align 4
  %69 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %69, %struct.hmmfile_s** %retval
  br label %return

if.else.69:                                       ; preds = %if.else.64
  %70 = load i32, i32* %magic, align 4
  %71 = load i32, i32* @v17swap, align 4
  %cmp70 = icmp eq i32 %70, %71
  br i1 %cmp70, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %if.else.69
  %72 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser72 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %72, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser72, align 8
  %73 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary73 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %73, i32 0, i32 3
  store i32 1, i32* %is_binary73, align 4
  %74 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %byteswap74 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %74, i32 0, i32 4
  store i32 1, i32* %byteswap74, align 4
  %75 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %75, %struct.hmmfile_s** %retval
  br label %return

if.else.75:                                       ; preds = %if.else.69
  %76 = load i32, i32* %magic, align 4
  %77 = load i32, i32* @v11magic, align 4
  %cmp76 = icmp eq i32 %76, %77
  br i1 %cmp76, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %if.else.75
  %78 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser78 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %78, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser78, align 8
  %79 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary79 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %79, i32 0, i32 3
  store i32 1, i32* %is_binary79, align 4
  %80 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %80, %struct.hmmfile_s** %retval
  br label %return

if.else.80:                                       ; preds = %if.else.75
  %81 = load i32, i32* %magic, align 4
  %82 = load i32, i32* @v11swap, align 4
  %cmp81 = icmp eq i32 %81, %82
  br i1 %cmp81, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %if.else.80
  %83 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser83 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %83, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser83, align 8
  %84 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary84 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %84, i32 0, i32 3
  store i32 1, i32* %is_binary84, align 4
  %85 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %byteswap85 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %85, i32 0, i32 4
  store i32 1, i32* %byteswap85, align 4
  %86 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %86, %struct.hmmfile_s** %retval
  br label %return

if.else.86:                                       ; preds = %if.else.80
  %87 = load i32, i32* %magic, align 4
  %88 = load i32, i32* @v10magic, align 4
  %cmp87 = icmp eq i32 %87, %88
  br i1 %cmp87, label %if.then.88, label %if.else.91

if.then.88:                                       ; preds = %if.else.86
  %89 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser89 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %89, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser89, align 8
  %90 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary90 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %90, i32 0, i32 3
  store i32 1, i32* %is_binary90, align 4
  %91 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %91, %struct.hmmfile_s** %retval
  br label %return

if.else.91:                                       ; preds = %if.else.86
  %92 = load i32, i32* %magic, align 4
  %93 = load i32, i32* @v10swap, align 4
  %cmp92 = icmp eq i32 %92, %93
  br i1 %cmp92, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %if.else.91
  %94 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser94 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %94, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser94, align 8
  %95 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary95 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %95, i32 0, i32 3
  store i32 1, i32* %is_binary95, align 4
  %96 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %byteswap96 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %96, i32 0, i32 4
  store i32 1, i32* %byteswap96, align 4
  %97 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %97, %struct.hmmfile_s** %retval
  br label %return

if.end.97:                                        ; preds = %if.else.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105
  %98 = load i32, i32* %magic, align 4
  %and = and i32 %98, -2147483648
  %tobool107 = icmp ne i32 %and, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.106
  %99 = load i8*, i8** %hmmfile.addr, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.5, i32 0, i32 0), i8* %99)
  %100 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %100)
  store %struct.hmmfile_s* null, %struct.hmmfile_s** %retval
  br label %return

if.end.109:                                       ; preds = %if.end.106
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %101 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f110 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %101, i32 0, i32 0
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %f110, align 8
  %call111 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %102)
  %cmp112 = icmp eq i8* %call111, null
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.109
  %103 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %103)
  store %struct.hmmfile_s* null, %struct.hmmfile_s** %retval
  br label %return

if.end.114:                                       ; preds = %if.end.109
  %104 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %f115 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %104, i32 0, i32 0
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %f115, align 8
  call void @rewind(%struct._IO_FILE* %105)
  %arraydecay116 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call117 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay116, i64 8) #5
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %if.end.114
  %106 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser120 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %106, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser120, align 8
  %107 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %107, %struct.hmmfile_s** %retval
  br label %return

if.else.121:                                      ; preds = %if.end.114
  %arraydecay122 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call123 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay122, i64 10) #5
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %if.else.121
  %108 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser126 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %108, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser126, align 8
  %109 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %109, %struct.hmmfile_s** %retval
  br label %return

if.else.127:                                      ; preds = %if.else.121
  %arraydecay128 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call129 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay128, i64 10) #5
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %if.else.127
  %110 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser132 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %110, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser132, align 8
  %111 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %111, %struct.hmmfile_s** %retval
  br label %return

if.else.133:                                      ; preds = %if.else.127
  %arraydecay134 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call135 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay134, i64 10) #5
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.else.133
  %112 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser138 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %112, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser138, align 8
  %113 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %113, %struct.hmmfile_s** %retval
  br label %return

if.else.139:                                      ; preds = %if.else.133
  %arraydecay140 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call141 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay140, i64 10) #5
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.else.139
  %114 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %parser144 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %114, i32 0, i32 2
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser144, align 8
  %115 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  store %struct.hmmfile_s* %115, %struct.hmmfile_s** %retval
  br label %return

if.end.145:                                       ; preds = %if.else.139
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148
  %116 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %116)
  store %struct.hmmfile_s* null, %struct.hmmfile_s** %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.then.143, %if.then.137, %if.then.131, %if.then.125, %if.then.119, %if.then.113, %if.then.108, %if.then.93, %if.then.88, %if.then.82, %if.then.77, %if.then.71, %if.then.66, %if.then.60, %if.then.55, %if.then.49, %if.then.44, %if.then.40, %if.else.27
  %117 = load %struct.hmmfile_s*, %struct.hmmfile_s** %retval
  ret %struct.hmmfile_s* %117
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @SSIRecommendMode(i8*) #1

declare void @Die(i8*, ...) #1

declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

declare i8* @FileConcat(i8*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #1

declare i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @HMMFileClose(%struct.hmmfile_s* %hmmfp) #0 {
entry:
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %ssi = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %4, i32 0, i32 1
  %5 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi, align 8
  %cmp2 = icmp ne %struct.ssifile_s* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %ssi4 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %6, i32 0, i32 1
  %7 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi4, align 8
  call void @SSIClose(%struct.ssifile_s* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %9 = bitcast %struct.hmmfile_s* %8 to i8*
  call void @free(i8* %9) #6
  ret void
}

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_bin20hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %type = alloca i32, align 4
  %magic = alloca i32, align 4
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %hmm, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %magic to i8*
  %3 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %4)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 4
  %6 = load i32, i32* %byteswap, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %7 = bitcast i32* %magic to i8*
  call void @byteswap(i8* %7, i32 4)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %8 = load i32, i32* %magic, align 4
  %9 = load i32, i32* @v20magic, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.8
  br label %FAILURE

if.end.10:                                        ; preds = %if.end.8
  %call11 = call %struct.plan7_s* @AllocPlan7Shell()
  store %struct.plan7_s* %call11, %struct.plan7_s** %hmm, align 8
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 47
  %11 = bitcast i32* %flags to i8*
  %12 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f12 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f12, align 8
  %call13 = call i64 @fread(i8* %11, i64 4, i64 1, %struct._IO_FILE* %13)
  %tobool14 = icmp ne i64 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.10
  br label %FAILURE

if.end.16:                                        ; preds = %if.end.10
  %14 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap17 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %14, i32 0, i32 4
  %15 = load i32, i32* %byteswap17, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 47
  %17 = bitcast i32* %flags20 to i8*
  call void @byteswap(i8* %17, i32 4)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %18 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f22 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %18, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f22, align 8
  %20 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap23 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %20, i32 0, i32 4
  %21 = load i32, i32* %byteswap23, align 4
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 0
  %call24 = call i32 @read_bin_string(%struct._IO_FILE* %19, i32 %21, i8** %name)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.21
  br label %FAILURE

if.end.27:                                        ; preds = %if.end.21
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 47
  %24 = load i32, i32* %flags28, align 4
  %and = and i32 %24, 512
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.27
  %25 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f30 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %25, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f30, align 8
  %27 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap31 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %27, i32 0, i32 4
  %28 = load i32, i32* %byteswap31, align 4
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 1
  %call32 = call i32 @read_bin_string(%struct._IO_FILE* %26, i32 %28, i8** %acc)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true
  br label %FAILURE

if.end.35:                                        ; preds = %land.lhs.true, %if.end.27
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 47
  %31 = load i32, i32* %flags36, align 4
  %and37 = and i32 %31, 2
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.45

land.lhs.true.39:                                 ; preds = %if.end.35
  %32 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f40 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %32, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f40, align 8
  %34 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap41 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %34, i32 0, i32 4
  %35 = load i32, i32* %byteswap41, align 4
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 2
  %call42 = call i32 @read_bin_string(%struct._IO_FILE* %33, i32 %35, i8** %desc)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.39
  br label %FAILURE

if.end.45:                                        ; preds = %land.lhs.true.39, %if.end.35
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 20
  %38 = bitcast i32* %M to i8*
  %39 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f46 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %39, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f46, align 8
  %call47 = call i64 @fread(i8* %38, i64 4, i64 1, %struct._IO_FILE* %40)
  %tobool48 = icmp ne i64 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.45
  br label %FAILURE

if.end.50:                                        ; preds = %if.end.45
  %41 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap51 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %41, i32 0, i32 4
  %42 = load i32, i32* %byteswap51, align 4
  %tobool52 = icmp ne i32 %42, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.50
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M54 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 20
  %44 = bitcast i32* %M54 to i8*
  call void @byteswap(i8* %44, i32 4)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.50
  %45 = bitcast i32* %type to i8*
  %46 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f56 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %46, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %f56, align 8
  %call57 = call i64 @fread(i8* %45, i64 4, i64 1, %struct._IO_FILE* %47)
  %tobool58 = icmp ne i64 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.55
  br label %FAILURE

if.end.60:                                        ; preds = %if.end.55
  %48 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap61 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %48, i32 0, i32 4
  %49 = load i32, i32* %byteswap61, align 4
  %tobool62 = icmp ne i32 %49, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %50 = bitcast i32* %type to i8*
  call void @byteswap(i8* %50, i32 4)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.60
  %51 = load i32, i32* @Alphabet_type, align 4
  %cmp65 = icmp eq i32 %51, 0
  br i1 %cmp65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.64
  %52 = load i32, i32* %type, align 4
  call void @SetAlphabet(i32 %52)
  br label %if.end.72

if.else:                                          ; preds = %if.end.64
  %53 = load i32, i32* %type, align 4
  %54 = load i32, i32* @Alphabet_type, align 4
  %cmp67 = icmp ne i32 %53, %54
  br i1 %cmp67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.else
  %55 = load i32, i32* @Alphabet_type, align 4
  %call69 = call i8* @AlphabetType2String(i32 %55)
  %56 = load i32, i32* %type, align 4
  %call70 = call i8* @AlphabetType2String(i32 %56)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.65, i32 0, i32 0), i8* %call69, i8* %call70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.else
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.66
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %58 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 20
  %59 = load i32, i32* %M73, align 4
  call void @AllocPlan7Body(%struct.plan7_s* %57, i32 %59)
  %60 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags74 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 47
  %61 = load i32, i32* %flags74, align 4
  %and75 = and i32 %61, 4
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.83

land.lhs.true.77:                                 ; preds = %if.end.72
  %62 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 3
  %63 = load i8*, i8** %rf, align 8
  %64 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M78 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 20
  %65 = load i32, i32* %M78, align 4
  %add = add nsw i32 %65, 1
  %conv = sext i32 %add to i64
  %66 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f79 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %66, i32 0, i32 0
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %f79, align 8
  %call80 = call i64 @fread(i8* %63, i64 1, i64 %conv, %struct._IO_FILE* %67)
  %tobool81 = icmp ne i64 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.77
  br label %FAILURE

if.end.83:                                        ; preds = %land.lhs.true.77, %if.end.72
  %68 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M84 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 20
  %69 = load i32, i32* %M84, align 4
  %add85 = add nsw i32 %69, 1
  %idxprom = sext i32 %add85 to i64
  %70 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %rf86 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 3
  %71 = load i8*, i8** %rf86, align 8
  %arrayidx = getelementptr inbounds i8, i8* %71, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags87 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 47
  %73 = load i32, i32* %flags87, align 4
  %and88 = and i32 %73, 8
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.98

land.lhs.true.90:                                 ; preds = %if.end.83
  %74 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 4
  %75 = load i8*, i8** %cs, align 8
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M91 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 20
  %77 = load i32, i32* %M91, align 4
  %add92 = add nsw i32 %77, 1
  %conv93 = sext i32 %add92 to i64
  %78 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f94 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %78, i32 0, i32 0
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %f94, align 8
  %call95 = call i64 @fread(i8* %75, i64 1, i64 %conv93, %struct._IO_FILE* %79)
  %tobool96 = icmp ne i64 %call95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true.90
  br label %FAILURE

if.end.98:                                        ; preds = %land.lhs.true.90, %if.end.83
  %80 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 20
  %81 = load i32, i32* %M99, align 4
  %add100 = add nsw i32 %81, 1
  %idxprom101 = sext i32 %add100 to i64
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cs102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 4
  %83 = load i8*, i8** %cs102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %83, i64 %idxprom101
  store i8 0, i8* %arrayidx103, align 1
  %84 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags104 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 47
  %85 = load i32, i32* %flags104, align 4
  %and105 = and i32 %85, 256
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.115

land.lhs.true.107:                                ; preds = %if.end.98
  %86 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %86, i32 0, i32 9
  %87 = load i32*, i32** %map, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M108 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 20
  %90 = load i32, i32* %M108, align 4
  %add109 = add nsw i32 %90, 1
  %conv110 = sext i32 %add109 to i64
  %91 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f111 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %91, i32 0, i32 0
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f111, align 8
  %call112 = call i64 @fread(i8* %88, i64 4, i64 %conv110, %struct._IO_FILE* %92)
  %tobool113 = icmp ne i64 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.107
  br label %FAILURE

if.end.115:                                       ; preds = %land.lhs.true.107, %if.end.98
  %93 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap116 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %93, i32 0, i32 4
  %94 = load i32, i32* %byteswap116, align 4
  %tobool117 = icmp ne i32 %94, 0
  br i1 %tobool117, label %if.then.118, label %if.end.125

if.then.118:                                      ; preds = %if.end.115
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.118
  %95 = load i32, i32* %k, align 4
  %96 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M119 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 20
  %97 = load i32, i32* %M119, align 4
  %cmp120 = icmp sle i32 %95, %97
  br i1 %cmp120, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %98 to i64
  %99 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %map123 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %99, i32 0, i32 9
  %100 = load i32*, i32** %map123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %100, i64 %idxprom122
  %101 = bitcast i32* %arrayidx124 to i8*
  call void @byteswap(i8* %101, i32 4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load i32, i32* %k, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.125

if.end.125:                                       ; preds = %for.end, %if.end.115
  %103 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f126 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %103, i32 0, i32 0
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %f126, align 8
  %105 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap127 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %105, i32 0, i32 4
  %106 = load i32, i32* %byteswap127, align 4
  %107 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 6
  %call128 = call i32 @read_bin_string(%struct._IO_FILE* %104, i32 %106, i8** %comlog)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %if.end.125
  br label %FAILURE

if.end.131:                                       ; preds = %if.end.125
  %108 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %108, i32 0, i32 7
  %109 = bitcast i32* %nseq to i8*
  %110 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f132 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %110, i32 0, i32 0
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %f132, align 8
  %call133 = call i64 @fread(i8* %109, i64 4, i64 1, %struct._IO_FILE* %111)
  %tobool134 = icmp ne i64 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %if.end.131
  br label %FAILURE

if.end.136:                                       ; preds = %if.end.131
  %112 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap137 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %112, i32 0, i32 4
  %113 = load i32, i32* %byteswap137, align 4
  %tobool138 = icmp ne i32 %113, 0
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %if.end.136
  %114 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nseq140 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %114, i32 0, i32 7
  %115 = bitcast i32* %nseq140 to i8*
  call void @byteswap(i8* %115, i32 4)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.end.136
  %116 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f142 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %116, i32 0, i32 0
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %f142, align 8
  %118 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap143 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %118, i32 0, i32 4
  %119 = load i32, i32* %byteswap143, align 4
  %120 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %120, i32 0, i32 8
  %call144 = call i32 @read_bin_string(%struct._IO_FILE* %117, i32 %119, i8** %ctime)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %if.end.141
  br label %FAILURE

if.end.147:                                       ; preds = %if.end.141
  %121 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %checksum = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %121, i32 0, i32 10
  %122 = bitcast i32* %checksum to i8*
  %123 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f148 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %123, i32 0, i32 0
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %f148, align 8
  %call149 = call i64 @fread(i8* %122, i64 4, i64 1, %struct._IO_FILE* %124)
  %tobool150 = icmp ne i64 %call149, 0
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %if.end.147
  br label %FAILURE

if.end.152:                                       ; preds = %if.end.147
  %125 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap153 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %125, i32 0, i32 4
  %126 = load i32, i32* %byteswap153, align 4
  %tobool154 = icmp ne i32 %126, 0
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.152
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %checksum156 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 10
  %128 = bitcast i32* %checksum156 to i8*
  call void @byteswap(i8* %128, i32 4)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.152
  %129 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags158 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 47
  %130 = load i32, i32* %flags158, align 4
  %and159 = and i32 %130, 1024
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.178

if.then.161:                                      ; preds = %if.end.157
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 14
  %132 = bitcast float* %ga1 to i8*
  %133 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f162 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %133, i32 0, i32 0
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %f162, align 8
  %call163 = call i64 @fread(i8* %132, i64 4, i64 1, %struct._IO_FILE* %134)
  %tobool164 = icmp ne i64 %call163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %if.then.161
  br label %FAILURE

if.end.166:                                       ; preds = %if.then.161
  %135 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 15
  %136 = bitcast float* %ga2 to i8*
  %137 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f167 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %137, i32 0, i32 0
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %f167, align 8
  %call168 = call i64 @fread(i8* %136, i64 4, i64 1, %struct._IO_FILE* %138)
  %tobool169 = icmp ne i64 %call168, 0
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %if.end.166
  br label %FAILURE

if.end.171:                                       ; preds = %if.end.166
  %139 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap172 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %139, i32 0, i32 4
  %140 = load i32, i32* %byteswap172, align 4
  %tobool173 = icmp ne i32 %140, 0
  br i1 %tobool173, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %if.end.171
  %141 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga1175 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 14
  %142 = bitcast float* %ga1175 to i8*
  call void @byteswap(i8* %142, i32 4)
  %143 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga2176 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %143, i32 0, i32 15
  %144 = bitcast float* %ga2176 to i8*
  call void @byteswap(i8* %144, i32 4)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %if.end.171
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.157
  %145 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags179 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %145, i32 0, i32 47
  %146 = load i32, i32* %flags179, align 4
  %and180 = and i32 %146, 2048
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %if.then.182, label %if.end.199

if.then.182:                                      ; preds = %if.end.178
  %147 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 16
  %148 = bitcast float* %tc1 to i8*
  %149 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f183 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %149, i32 0, i32 0
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %f183, align 8
  %call184 = call i64 @fread(i8* %148, i64 4, i64 1, %struct._IO_FILE* %150)
  %tobool185 = icmp ne i64 %call184, 0
  br i1 %tobool185, label %if.end.187, label %if.then.186

if.then.186:                                      ; preds = %if.then.182
  br label %FAILURE

if.end.187:                                       ; preds = %if.then.182
  %151 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %151, i32 0, i32 17
  %152 = bitcast float* %tc2 to i8*
  %153 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f188 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %153, i32 0, i32 0
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %f188, align 8
  %call189 = call i64 @fread(i8* %152, i64 4, i64 1, %struct._IO_FILE* %154)
  %tobool190 = icmp ne i64 %call189, 0
  br i1 %tobool190, label %if.end.192, label %if.then.191

if.then.191:                                      ; preds = %if.end.187
  br label %FAILURE

if.end.192:                                       ; preds = %if.end.187
  %155 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap193 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %155, i32 0, i32 4
  %156 = load i32, i32* %byteswap193, align 4
  %tobool194 = icmp ne i32 %156, 0
  br i1 %tobool194, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %if.end.192
  %157 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc1196 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %157, i32 0, i32 16
  %158 = bitcast float* %tc1196 to i8*
  call void @byteswap(i8* %158, i32 4)
  %159 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc2197 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %159, i32 0, i32 17
  %160 = bitcast float* %tc2197 to i8*
  call void @byteswap(i8* %160, i32 4)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %if.end.192
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.178
  %161 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags200 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %161, i32 0, i32 47
  %162 = load i32, i32* %flags200, align 4
  %and201 = and i32 %162, 4096
  %tobool202 = icmp ne i32 %and201, 0
  br i1 %tobool202, label %if.then.203, label %if.end.220

if.then.203:                                      ; preds = %if.end.199
  %163 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %163, i32 0, i32 18
  %164 = bitcast float* %nc1 to i8*
  %165 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f204 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %165, i32 0, i32 0
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %f204, align 8
  %call205 = call i64 @fread(i8* %164, i64 4, i64 1, %struct._IO_FILE* %166)
  %tobool206 = icmp ne i64 %call205, 0
  br i1 %tobool206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %if.then.203
  br label %FAILURE

if.end.208:                                       ; preds = %if.then.203
  %167 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %167, i32 0, i32 19
  %168 = bitcast float* %nc2 to i8*
  %169 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f209 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %169, i32 0, i32 0
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %f209, align 8
  %call210 = call i64 @fread(i8* %168, i64 4, i64 1, %struct._IO_FILE* %170)
  %tobool211 = icmp ne i64 %call210, 0
  br i1 %tobool211, label %if.end.213, label %if.then.212

if.then.212:                                      ; preds = %if.end.208
  br label %FAILURE

if.end.213:                                       ; preds = %if.end.208
  %171 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap214 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %171, i32 0, i32 4
  %172 = load i32, i32* %byteswap214, align 4
  %tobool215 = icmp ne i32 %172, 0
  br i1 %tobool215, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %if.end.213
  %173 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc1217 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %173, i32 0, i32 18
  %174 = bitcast float* %nc1217 to i8*
  call void @byteswap(i8* %174, i32 4)
  %175 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc2218 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %175, i32 0, i32 19
  %176 = bitcast float* %nc2218 to i8*
  call void @byteswap(i8* %176, i32 4)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %if.end.213
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.end.199
  store i32 0, i32* %k, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.248, %if.end.220
  %177 = load i32, i32* %k, align 4
  %cmp222 = icmp slt i32 %177, 4
  br i1 %cmp222, label %for.body.224, label %for.end.250

for.body.224:                                     ; preds = %for.cond.221
  %178 = load i32, i32* %k, align 4
  %idxprom225 = sext i32 %178 to i64
  %179 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %179, i32 0, i32 25
  %arrayidx226 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom225
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %arrayidx226, i32 0, i32 0
  %180 = bitcast float* %arraydecay to i8*
  %181 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f227 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %181, i32 0, i32 0
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %f227, align 8
  %call228 = call i64 @fread(i8* %180, i64 4, i64 2, %struct._IO_FILE* %182)
  %tobool229 = icmp ne i64 %call228, 0
  br i1 %tobool229, label %if.end.231, label %if.then.230

if.then.230:                                      ; preds = %for.body.224
  br label %FAILURE

if.end.231:                                       ; preds = %for.body.224
  %183 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap232 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %183, i32 0, i32 4
  %184 = load i32, i32* %byteswap232, align 4
  %tobool233 = icmp ne i32 %184, 0
  br i1 %tobool233, label %if.then.234, label %if.end.247

if.then.234:                                      ; preds = %if.end.231
  store i32 0, i32* %x, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.244, %if.then.234
  %185 = load i32, i32* %x, align 4
  %cmp236 = icmp slt i32 %185, 2
  br i1 %cmp236, label %for.body.238, label %for.end.246

for.body.238:                                     ; preds = %for.cond.235
  %186 = load i32, i32* %x, align 4
  %idxprom239 = sext i32 %186 to i64
  %187 = load i32, i32* %k, align 4
  %idxprom240 = sext i32 %187 to i64
  %188 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %xt241 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %188, i32 0, i32 25
  %arrayidx242 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt241, i32 0, i64 %idxprom240
  %arrayidx243 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx242, i32 0, i64 %idxprom239
  %189 = bitcast float* %arrayidx243 to i8*
  call void @byteswap(i8* %189, i32 4)
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.238
  %190 = load i32, i32* %x, align 4
  %inc245 = add nsw i32 %190, 1
  store i32 %inc245, i32* %x, align 4
  br label %for.cond.235

for.end.246:                                      ; preds = %for.cond.235
  br label %if.end.247

if.end.247:                                       ; preds = %for.end.246, %if.end.231
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %191 = load i32, i32* %k, align 4
  %inc249 = add nsw i32 %191, 1
  store i32 %inc249, i32* %k, align 4
  br label %for.cond.221

for.end.250:                                      ; preds = %for.cond.221
  %192 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %192, i32 0, i32 29
  %193 = bitcast float* %p1 to i8*
  %194 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f251 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %194, i32 0, i32 0
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %f251, align 8
  %call252 = call i64 @fread(i8* %193, i64 4, i64 1, %struct._IO_FILE* %195)
  %tobool253 = icmp ne i64 %call252, 0
  br i1 %tobool253, label %if.end.255, label %if.then.254

if.then.254:                                      ; preds = %for.end.250
  br label %FAILURE

if.end.255:                                       ; preds = %for.end.250
  %196 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %196, i32 0, i32 28
  %arraydecay256 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %197 = bitcast float* %arraydecay256 to i8*
  %198 = load i32, i32* @Alphabet_size, align 4
  %conv257 = sext i32 %198 to i64
  %199 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f258 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %199, i32 0, i32 0
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %f258, align 8
  %call259 = call i64 @fread(i8* %197, i64 4, i64 %conv257, %struct._IO_FILE* %200)
  %tobool260 = icmp ne i64 %call259, 0
  br i1 %tobool260, label %if.end.262, label %if.then.261

if.then.261:                                      ; preds = %if.end.255
  br label %FAILURE

if.end.262:                                       ; preds = %if.end.255
  %201 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags263 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %201, i32 0, i32 47
  %202 = load i32, i32* %flags263, align 4
  %and264 = and i32 %202, 128
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %if.then.266, label %if.end.283

if.then.266:                                      ; preds = %if.end.262
  %203 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %203, i32 0, i32 45
  %204 = bitcast float* %mu to i8*
  %205 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f267 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %205, i32 0, i32 0
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %f267, align 8
  %call268 = call i64 @fread(i8* %204, i64 4, i64 1, %struct._IO_FILE* %206)
  %tobool269 = icmp ne i64 %call268, 0
  br i1 %tobool269, label %if.end.271, label %if.then.270

if.then.270:                                      ; preds = %if.then.266
  br label %FAILURE

if.end.271:                                       ; preds = %if.then.266
  %207 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %207, i32 0, i32 46
  %208 = bitcast float* %lambda to i8*
  %209 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f272 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %209, i32 0, i32 0
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %f272, align 8
  %call273 = call i64 @fread(i8* %208, i64 4, i64 1, %struct._IO_FILE* %210)
  %tobool274 = icmp ne i64 %call273, 0
  br i1 %tobool274, label %if.end.276, label %if.then.275

if.then.275:                                      ; preds = %if.end.271
  br label %FAILURE

if.end.276:                                       ; preds = %if.end.271
  %211 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap277 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %211, i32 0, i32 4
  %212 = load i32, i32* %byteswap277, align 4
  %tobool278 = icmp ne i32 %212, 0
  br i1 %tobool278, label %if.then.279, label %if.end.282

if.then.279:                                      ; preds = %if.end.276
  %213 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu280 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %213, i32 0, i32 45
  %214 = bitcast float* %mu280 to i8*
  call void @byteswap(i8* %214, i32 4)
  %215 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda281 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %215, i32 0, i32 46
  %216 = bitcast float* %lambda281 to i8*
  call void @byteswap(i8* %216, i32 4)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.279, %if.end.276
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.end.262
  %217 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %217, i32 0, i32 24
  %218 = bitcast float* %tbd1 to i8*
  %219 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f284 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %219, i32 0, i32 0
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %f284, align 8
  %call285 = call i64 @fread(i8* %218, i64 4, i64 1, %struct._IO_FILE* %220)
  %tobool286 = icmp ne i64 %call285, 0
  br i1 %tobool286, label %if.end.288, label %if.then.287

if.then.287:                                      ; preds = %if.end.283
  br label %FAILURE

if.end.288:                                       ; preds = %if.end.283
  %221 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %221, i32 0, i32 26
  %222 = load float*, float** %begin, align 8
  %223 = bitcast float* %222 to i8*
  %224 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %224, i32 0, i32 20
  %225 = load i32, i32* %M289, align 4
  %add290 = add nsw i32 %225, 1
  %conv291 = sext i32 %add290 to i64
  %226 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f292 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %226, i32 0, i32 0
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %f292, align 8
  %call293 = call i64 @fread(i8* %223, i64 4, i64 %conv291, %struct._IO_FILE* %227)
  %tobool294 = icmp ne i64 %call293, 0
  br i1 %tobool294, label %if.end.296, label %if.then.295

if.then.295:                                      ; preds = %if.end.288
  br label %FAILURE

if.end.296:                                       ; preds = %if.end.288
  %228 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %228, i32 0, i32 27
  %229 = load float*, float** %end, align 8
  %230 = bitcast float* %229 to i8*
  %231 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M297 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %231, i32 0, i32 20
  %232 = load i32, i32* %M297, align 4
  %add298 = add nsw i32 %232, 1
  %conv299 = sext i32 %add298 to i64
  %233 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f300 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %233, i32 0, i32 0
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %f300, align 8
  %call301 = call i64 @fread(i8* %230, i64 4, i64 %conv299, %struct._IO_FILE* %234)
  %tobool302 = icmp ne i64 %call301, 0
  br i1 %tobool302, label %if.end.304, label %if.then.303

if.then.303:                                      ; preds = %if.end.296
  br label %FAILURE

if.end.304:                                       ; preds = %if.end.296
  store i32 1, i32* %k, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.318, %if.end.304
  %235 = load i32, i32* %k, align 4
  %236 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M306 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %236, i32 0, i32 20
  %237 = load i32, i32* %M306, align 4
  %cmp307 = icmp sle i32 %235, %237
  br i1 %cmp307, label %for.body.309, label %for.end.320

for.body.309:                                     ; preds = %for.cond.305
  %238 = load i32, i32* %k, align 4
  %idxprom310 = sext i32 %238 to i64
  %239 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %239, i32 0, i32 22
  %240 = load float**, float*** %mat, align 8
  %arrayidx311 = getelementptr inbounds float*, float** %240, i64 %idxprom310
  %241 = load float*, float** %arrayidx311, align 8
  %242 = bitcast float* %241 to i8*
  %243 = load i32, i32* @Alphabet_size, align 4
  %conv312 = sext i32 %243 to i64
  %244 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f313 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %244, i32 0, i32 0
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %f313, align 8
  %call314 = call i64 @fread(i8* %242, i64 4, i64 %conv312, %struct._IO_FILE* %245)
  %tobool315 = icmp ne i64 %call314, 0
  br i1 %tobool315, label %if.end.317, label %if.then.316

if.then.316:                                      ; preds = %for.body.309
  br label %FAILURE

if.end.317:                                       ; preds = %for.body.309
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.317
  %246 = load i32, i32* %k, align 4
  %inc319 = add nsw i32 %246, 1
  store i32 %inc319, i32* %k, align 4
  br label %for.cond.305

for.end.320:                                      ; preds = %for.cond.305
  store i32 1, i32* %k, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.334, %for.end.320
  %247 = load i32, i32* %k, align 4
  %248 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M322 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %248, i32 0, i32 20
  %249 = load i32, i32* %M322, align 4
  %cmp323 = icmp slt i32 %247, %249
  br i1 %cmp323, label %for.body.325, label %for.end.336

for.body.325:                                     ; preds = %for.cond.321
  %250 = load i32, i32* %k, align 4
  %idxprom326 = sext i32 %250 to i64
  %251 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %251, i32 0, i32 23
  %252 = load float**, float*** %ins, align 8
  %arrayidx327 = getelementptr inbounds float*, float** %252, i64 %idxprom326
  %253 = load float*, float** %arrayidx327, align 8
  %254 = bitcast float* %253 to i8*
  %255 = load i32, i32* @Alphabet_size, align 4
  %conv328 = sext i32 %255 to i64
  %256 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f329 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %256, i32 0, i32 0
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %f329, align 8
  %call330 = call i64 @fread(i8* %254, i64 4, i64 %conv328, %struct._IO_FILE* %257)
  %tobool331 = icmp ne i64 %call330, 0
  br i1 %tobool331, label %if.end.333, label %if.then.332

if.then.332:                                      ; preds = %for.body.325
  br label %FAILURE

if.end.333:                                       ; preds = %for.body.325
  br label %for.inc.334

for.inc.334:                                      ; preds = %if.end.333
  %258 = load i32, i32* %k, align 4
  %inc335 = add nsw i32 %258, 1
  store i32 %inc335, i32* %k, align 4
  br label %for.cond.321

for.end.336:                                      ; preds = %for.cond.321
  store i32 1, i32* %k, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.349, %for.end.336
  %259 = load i32, i32* %k, align 4
  %260 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M338 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %260, i32 0, i32 20
  %261 = load i32, i32* %M338, align 4
  %cmp339 = icmp slt i32 %259, %261
  br i1 %cmp339, label %for.body.341, label %for.end.351

for.body.341:                                     ; preds = %for.cond.337
  %262 = load i32, i32* %k, align 4
  %idxprom342 = sext i32 %262 to i64
  %263 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %263, i32 0, i32 21
  %264 = load float**, float*** %t, align 8
  %arrayidx343 = getelementptr inbounds float*, float** %264, i64 %idxprom342
  %265 = load float*, float** %arrayidx343, align 8
  %266 = bitcast float* %265 to i8*
  %267 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f344 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %267, i32 0, i32 0
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %f344, align 8
  %call345 = call i64 @fread(i8* %266, i64 4, i64 7, %struct._IO_FILE* %268)
  %tobool346 = icmp ne i64 %call345, 0
  br i1 %tobool346, label %if.end.348, label %if.then.347

if.then.347:                                      ; preds = %for.body.341
  br label %FAILURE

if.end.348:                                       ; preds = %for.body.341
  br label %for.inc.349

for.inc.349:                                      ; preds = %if.end.348
  %269 = load i32, i32* %k, align 4
  %inc350 = add nsw i32 %269, 1
  store i32 %inc350, i32* %k, align 4
  br label %for.cond.337

for.end.351:                                      ; preds = %for.cond.337
  %270 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap352 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %270, i32 0, i32 4
  %271 = load i32, i32* %byteswap352, align 4
  %tobool353 = icmp ne i32 %271, 0
  br i1 %tobool353, label %if.then.354, label %if.end.427

if.then.354:                                      ; preds = %for.end.351
  store i32 0, i32* %x, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.362, %if.then.354
  %272 = load i32, i32* %x, align 4
  %273 = load i32, i32* @Alphabet_size, align 4
  %cmp356 = icmp slt i32 %272, %273
  br i1 %cmp356, label %for.body.358, label %for.end.364

for.body.358:                                     ; preds = %for.cond.355
  %274 = load i32, i32* %x, align 4
  %idxprom359 = sext i32 %274 to i64
  %275 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null360 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %275, i32 0, i32 28
  %arrayidx361 = getelementptr inbounds [20 x float], [20 x float]* %null360, i32 0, i64 %idxprom359
  %276 = bitcast float* %arrayidx361 to i8*
  call void @byteswap(i8* %276, i32 4)
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.358
  %277 = load i32, i32* %x, align 4
  %inc363 = add nsw i32 %277, 1
  store i32 %inc363, i32* %x, align 4
  br label %for.cond.355

for.end.364:                                      ; preds = %for.cond.355
  %278 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1365 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %278, i32 0, i32 29
  %279 = bitcast float* %p1365 to i8*
  call void @byteswap(i8* %279, i32 4)
  %280 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1366 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %280, i32 0, i32 24
  %281 = bitcast float* %tbd1366 to i8*
  call void @byteswap(i8* %281, i32 4)
  store i32 1, i32* %k, align 4
  br label %for.cond.367

for.cond.367:                                     ; preds = %for.inc.424, %for.end.364
  %282 = load i32, i32* %k, align 4
  %283 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M368 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %283, i32 0, i32 20
  %284 = load i32, i32* %M368, align 4
  %cmp369 = icmp sle i32 %282, %284
  br i1 %cmp369, label %for.body.371, label %for.end.426

for.body.371:                                     ; preds = %for.cond.367
  store i32 0, i32* %x, align 4
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.381, %for.body.371
  %285 = load i32, i32* %x, align 4
  %286 = load i32, i32* @Alphabet_size, align 4
  %cmp373 = icmp slt i32 %285, %286
  br i1 %cmp373, label %for.body.375, label %for.end.383

for.body.375:                                     ; preds = %for.cond.372
  %287 = load i32, i32* %x, align 4
  %idxprom376 = sext i32 %287 to i64
  %288 = load i32, i32* %k, align 4
  %idxprom377 = sext i32 %288 to i64
  %289 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mat378 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %289, i32 0, i32 22
  %290 = load float**, float*** %mat378, align 8
  %arrayidx379 = getelementptr inbounds float*, float** %290, i64 %idxprom377
  %291 = load float*, float** %arrayidx379, align 8
  %arrayidx380 = getelementptr inbounds float, float* %291, i64 %idxprom376
  %292 = bitcast float* %arrayidx380 to i8*
  call void @byteswap(i8* %292, i32 4)
  br label %for.inc.381

for.inc.381:                                      ; preds = %for.body.375
  %293 = load i32, i32* %x, align 4
  %inc382 = add nsw i32 %293, 1
  store i32 %inc382, i32* %x, align 4
  br label %for.cond.372

for.end.383:                                      ; preds = %for.cond.372
  %294 = load i32, i32* %k, align 4
  %295 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M384 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %295, i32 0, i32 20
  %296 = load i32, i32* %M384, align 4
  %cmp385 = icmp slt i32 %294, %296
  br i1 %cmp385, label %if.then.387, label %if.end.400

if.then.387:                                      ; preds = %for.end.383
  store i32 0, i32* %x, align 4
  br label %for.cond.388

for.cond.388:                                     ; preds = %for.inc.397, %if.then.387
  %297 = load i32, i32* %x, align 4
  %298 = load i32, i32* @Alphabet_size, align 4
  %cmp389 = icmp slt i32 %297, %298
  br i1 %cmp389, label %for.body.391, label %for.end.399

for.body.391:                                     ; preds = %for.cond.388
  %299 = load i32, i32* %x, align 4
  %idxprom392 = sext i32 %299 to i64
  %300 = load i32, i32* %k, align 4
  %idxprom393 = sext i32 %300 to i64
  %301 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ins394 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %301, i32 0, i32 23
  %302 = load float**, float*** %ins394, align 8
  %arrayidx395 = getelementptr inbounds float*, float** %302, i64 %idxprom393
  %303 = load float*, float** %arrayidx395, align 8
  %arrayidx396 = getelementptr inbounds float, float* %303, i64 %idxprom392
  %304 = bitcast float* %arrayidx396 to i8*
  call void @byteswap(i8* %304, i32 4)
  br label %for.inc.397

for.inc.397:                                      ; preds = %for.body.391
  %305 = load i32, i32* %x, align 4
  %inc398 = add nsw i32 %305, 1
  store i32 %inc398, i32* %x, align 4
  br label %for.cond.388

for.end.399:                                      ; preds = %for.cond.388
  br label %if.end.400

if.end.400:                                       ; preds = %for.end.399, %for.end.383
  %306 = load i32, i32* %k, align 4
  %idxprom401 = sext i32 %306 to i64
  %307 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin402 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %307, i32 0, i32 26
  %308 = load float*, float** %begin402, align 8
  %arrayidx403 = getelementptr inbounds float, float* %308, i64 %idxprom401
  %309 = bitcast float* %arrayidx403 to i8*
  call void @byteswap(i8* %309, i32 4)
  %310 = load i32, i32* %k, align 4
  %idxprom404 = sext i32 %310 to i64
  %311 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %end405 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %311, i32 0, i32 27
  %312 = load float*, float** %end405, align 8
  %arrayidx406 = getelementptr inbounds float, float* %312, i64 %idxprom404
  %313 = bitcast float* %arrayidx406 to i8*
  call void @byteswap(i8* %313, i32 4)
  %314 = load i32, i32* %k, align 4
  %315 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M407 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %315, i32 0, i32 20
  %316 = load i32, i32* %M407, align 4
  %cmp408 = icmp slt i32 %314, %316
  br i1 %cmp408, label %if.then.410, label %if.end.423

if.then.410:                                      ; preds = %if.end.400
  store i32 0, i32* %x, align 4
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.420, %if.then.410
  %317 = load i32, i32* %x, align 4
  %cmp412 = icmp slt i32 %317, 7
  br i1 %cmp412, label %for.body.414, label %for.end.422

for.body.414:                                     ; preds = %for.cond.411
  %318 = load i32, i32* %x, align 4
  %idxprom415 = sext i32 %318 to i64
  %319 = load i32, i32* %k, align 4
  %idxprom416 = sext i32 %319 to i64
  %320 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t417 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %320, i32 0, i32 21
  %321 = load float**, float*** %t417, align 8
  %arrayidx418 = getelementptr inbounds float*, float** %321, i64 %idxprom416
  %322 = load float*, float** %arrayidx418, align 8
  %arrayidx419 = getelementptr inbounds float, float* %322, i64 %idxprom415
  %323 = bitcast float* %arrayidx419 to i8*
  call void @byteswap(i8* %323, i32 4)
  br label %for.inc.420

for.inc.420:                                      ; preds = %for.body.414
  %324 = load i32, i32* %x, align 4
  %inc421 = add nsw i32 %324, 1
  store i32 %inc421, i32* %x, align 4
  br label %for.cond.411

for.end.422:                                      ; preds = %for.cond.411
  br label %if.end.423

if.end.423:                                       ; preds = %for.end.422, %if.end.400
  br label %for.inc.424

for.inc.424:                                      ; preds = %if.end.423
  %325 = load i32, i32* %k, align 4
  %inc425 = add nsw i32 %325, 1
  store i32 %inc425, i32* %k, align 4
  br label %for.cond.367

for.end.426:                                      ; preds = %for.cond.367
  br label %if.end.427

if.end.427:                                       ; preds = %for.end.426, %for.end.351
  %326 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags428 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %326, i32 0, i32 47
  %327 = load i32, i32* %flags428, align 4
  %or = or i32 %327, 32
  store i32 %or, i32* %flags428, align 4
  %328 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags429 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %328, i32 0, i32 47
  %329 = load i32, i32* %flags429, align 4
  %and430 = and i32 %329, -2
  store i32 %and430, i32* %flags429, align 4
  %330 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %331 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %330, %struct.plan7_s** %331, align 8
  store i32 1, i32* %retval
  br label %return

FAILURE:                                          ; preds = %if.then.347, %if.then.332, %if.then.316, %if.then.303, %if.then.295, %if.then.287, %if.then.275, %if.then.270, %if.then.261, %if.then.254, %if.then.230, %if.then.212, %if.then.207, %if.then.191, %if.then.186, %if.then.170, %if.then.165, %if.then.151, %if.then.146, %if.then.135, %if.then.130, %if.then.114, %if.then.97, %if.then.82, %if.then.59, %if.then.49, %if.then.44, %if.then.34, %if.then.26, %if.then.15, %if.then.9
  %332 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cmp431 = icmp ne %struct.plan7_s* %332, null
  br i1 %cmp431, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %FAILURE
  %333 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %333)
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.433, %FAILURE
  %334 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %334, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.434, %if.end.427, %if.then.4, %if.then
  %335 = load i32, i32* %retval
  ret i32 %335
}

; Function Attrs: nounwind uwtable
define internal i32 @read_bin19hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %p9hmm = alloca %struct.plan9_s*, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %magic to i8*
  %3 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %4)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f6 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f6, align 8
  %7 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %7, i32 0, i32 4
  %8 = load i32, i32* %byteswap, align 4
  %call7 = call %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %6, i32 7, i32 %8)
  store %struct.plan9_s* %call7, %struct.plan9_s** %p9hmm, align 8
  %9 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %cmp = icmp eq %struct.plan9_s* %9, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %10, align 8
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %11 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  call void @Plan9toPlan7(%struct.plan9_s* %11, %struct.plan7_s** %hmm)
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 6
  store i8* %call10, i8** %comlog, align 8
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7SetCtime(%struct.plan7_s* %13)
  %14 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %14)
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %16 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %15, %struct.plan7_s** %16, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @read_bin17hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %p9hmm = alloca %struct.plan9_s*, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %magic to i8*
  %3 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %4)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f6 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f6, align 8
  %7 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %7, i32 0, i32 4
  %8 = load i32, i32* %byteswap, align 4
  %call7 = call %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %6, i32 5, i32 %8)
  store %struct.plan9_s* %call7, %struct.plan9_s** %p9hmm, align 8
  %9 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %cmp = icmp eq %struct.plan9_s* %9, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %10, align 8
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %11 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  call void @Plan9toPlan7(%struct.plan9_s* %11, %struct.plan7_s** %hmm)
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 6
  store i8* %call10, i8** %comlog, align 8
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7SetCtime(%struct.plan7_s* %13)
  %14 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %14)
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %16 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %15, %struct.plan7_s** %16, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @read_bin11hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %p9hmm = alloca %struct.plan9_s*, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %magic to i8*
  %3 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %4)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f6 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f6, align 8
  %7 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %7, i32 0, i32 4
  %8 = load i32, i32* %byteswap, align 4
  %call7 = call %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %6, i32 3, i32 %8)
  store %struct.plan9_s* %call7, %struct.plan9_s** %p9hmm, align 8
  %9 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %cmp = icmp eq %struct.plan9_s* %9, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %10, align 8
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %11 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  call void @Plan9toPlan7(%struct.plan9_s* %11, %struct.plan7_s** %hmm)
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 6
  store i8* %call10, i8** %comlog, align 8
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7SetCtime(%struct.plan7_s* %13)
  %14 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %14)
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %16 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %15, %struct.plan7_s** %16, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @read_bin10hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %p9hmm = alloca %struct.plan9_s*, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %magic to i8*
  %3 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %4)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f6 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f6, align 8
  %7 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %byteswap = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %7, i32 0, i32 4
  %8 = load i32, i32* %byteswap, align 4
  %call7 = call %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %6, i32 1, i32 %8)
  store %struct.plan9_s* %call7, %struct.plan9_s** %p9hmm, align 8
  %9 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %cmp = icmp eq %struct.plan9_s* %9, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %10, align 8
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %11 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  call void @Plan9toPlan7(%struct.plan9_s* %11, %struct.plan7_s** %hmm)
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 6
  store i8* %call10, i8** %comlog, align 8
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7SetCtime(%struct.plan7_s* %13)
  %14 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %14)
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %16 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %15, %struct.plan7_s** %16, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @Warn(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @read_asc20hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %buffer = alloca [512 x i8], align 16
  %s = alloca i8*, align 8
  %M = alloca i32, align 4
  %p = alloca float, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %atype = alloca i32, align 4
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %hmm, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %3)
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay3 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call4 = call i32 @strncmp(i8* %arraydecay3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 8) #5
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %FAILURE

if.end.7:                                         ; preds = %if.end
  %call8 = call %struct.plan7_s* @AllocPlan7Shell()
  store %struct.plan7_s* %call8, %struct.plan7_s** %hmm, align 8
  store i32 -1, i32* %M, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.380, %if.end.7
  %arraydecay9 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %4 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f10 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f10, align 8
  %call11 = call i8* @fgets(i8* %arraydecay9, i32 512, %struct._IO_FILE* %5)
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay13 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call14 = call i32 @strncmp(i8* %arraydecay13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i64 5) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i64 6
  call void @Plan7SetName(%struct.plan7_s* %6, i8* %add.ptr)
  br label %if.end.380

if.else:                                          ; preds = %while.body
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call19 = call i32 @strncmp(i8* %arraydecay18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i64 5) #5
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr23 = getelementptr inbounds i8, i8* %arraydecay22, i64 6
  call void @Plan7SetAccession(%struct.plan7_s* %7, i8* %add.ptr23)
  br label %if.end.379

if.else.24:                                       ; preds = %if.else
  %arraydecay25 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call26 = call i32 @strncmp(i8* %arraydecay25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i64 5) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.else.24
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %arraydecay29 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr30 = getelementptr inbounds i8, i8* %arraydecay29, i64 6
  call void @Plan7SetDescription(%struct.plan7_s* %8, i8* %add.ptr30)
  br label %if.end.378

if.else.31:                                       ; preds = %if.else.24
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call33 = call i32 @strncmp(i8* %arraydecay32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i64 5) #5
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.else.31
  %arraydecay36 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr37 = getelementptr inbounds i8, i8* %arraydecay36, i64 6
  %call38 = call i32 @atoi(i8* %add.ptr37) #5
  store i32 %call38, i32* %M, align 4
  br label %if.end.377

if.else.39:                                       ; preds = %if.else.31
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call41 = call i32 @strncmp(i8* %arraydecay40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i64 5) #5
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.else.39
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr45 = getelementptr inbounds i8, i8* %arraydecay44, i64 6
  %call46 = call i32 @atoi(i8* %add.ptr45) #5
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 7
  store i32 %call46, i32* %nseq, align 4
  br label %if.end.376

if.else.47:                                       ; preds = %if.else.39
  %arraydecay48 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call49 = call i32 @strncmp(i8* %arraydecay48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i64 5) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.77

if.then.51:                                       ; preds = %if.else.47
  %arraydecay52 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr53 = getelementptr inbounds i8, i8* %arraydecay52, i64 6
  call void @s2upper(i8* %add.ptr53)
  %arraydecay54 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr55 = getelementptr inbounds i8, i8* %arraydecay54, i64 6
  %call56 = call i32 @strncmp(i8* %add.ptr55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i64 5) #5
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.51
  store i32 3, i32* %atype, align 4
  br label %if.end.67

if.else.59:                                       ; preds = %if.then.51
  %arraydecay60 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr61 = getelementptr inbounds i8, i8* %arraydecay60, i64 6
  %call62 = call i32 @strncmp(i8* %add.ptr61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i64 7) #5
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.59
  store i32 2, i32* %atype, align 4
  br label %if.end.66

if.else.65:                                       ; preds = %if.else.59
  br label %FAILURE

if.end.66:                                        ; preds = %if.then.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.58
  %10 = load i32, i32* @Alphabet_type, align 4
  %cmp68 = icmp eq i32 %10, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.end.67
  %11 = load i32, i32* %atype, align 4
  call void @SetAlphabet(i32 %11)
  br label %if.end.76

if.else.70:                                       ; preds = %if.end.67
  %12 = load i32, i32* %atype, align 4
  %13 = load i32, i32* @Alphabet_type, align 4
  %cmp71 = icmp ne i32 %12, %13
  br i1 %cmp71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.else.70
  %14 = load i32, i32* @Alphabet_type, align 4
  %call73 = call i8* @AlphabetType2String(i32 %14)
  %15 = load i32, i32* %atype, align 4
  %call74 = call i8* @AlphabetType2String(i32 %15)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.65, i32 0, i32 0), i8* %call73, i8* %call74)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.else.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.69
  br label %if.end.375

if.else.77:                                       ; preds = %if.else.47
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call79 = call i32 @strncmp(i8* %arraydecay78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i64 5) #5
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.89

if.then.81:                                       ; preds = %if.else.77
  %arraydecay82 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr83 = getelementptr inbounds i8, i8* %arraydecay82, i64 6
  %16 = load i8, i8* %add.ptr83, align 1
  %conv = sext i8 %16 to i32
  %call84 = call i32 @sre_toupper(i32 %conv)
  %cmp85 = icmp eq i32 %call84, 89
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.81
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 47
  %18 = load i32, i32* %flags, align 4
  %or = or i32 %18, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.81
  br label %if.end.374

if.else.89:                                       ; preds = %if.else.77
  %arraydecay90 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call91 = call i32 @strncmp(i8* %arraydecay90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i64 5) #5
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.else.105

if.then.94:                                       ; preds = %if.else.89
  %arraydecay95 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr96 = getelementptr inbounds i8, i8* %arraydecay95, i64 6
  %19 = load i8, i8* %add.ptr96, align 1
  %conv97 = sext i8 %19 to i32
  %call98 = call i32 @sre_toupper(i32 %conv97)
  %cmp99 = icmp eq i32 %call98, 89
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.then.94
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 47
  %21 = load i32, i32* %flags102, align 4
  %or103 = or i32 %21, 8
  store i32 %or103, i32* %flags102, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.then.94
  br label %if.end.373

if.else.105:                                      ; preds = %if.else.89
  %arraydecay106 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call107 = call i32 @strncmp(i8* %arraydecay106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i64 5) #5
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then.110, label %if.else.121

if.then.110:                                      ; preds = %if.else.105
  %arraydecay111 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr112 = getelementptr inbounds i8, i8* %arraydecay111, i64 6
  %22 = load i8, i8* %add.ptr112, align 1
  %conv113 = sext i8 %22 to i32
  %call114 = call i32 @sre_toupper(i32 %conv113)
  %cmp115 = icmp eq i32 %call114, 89
  br i1 %cmp115, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.then.110
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags118 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 47
  %24 = load i32, i32* %flags118, align 4
  %or119 = or i32 %24, 256
  store i32 %or119, i32* %flags118, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.then.110
  br label %if.end.372

if.else.121:                                      ; preds = %if.else.105
  %arraydecay122 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call123 = call i32 @strncmp(i8* %arraydecay122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i64 5) #5
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.153

if.then.126:                                      ; preds = %if.else.121
  %arraydecay127 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr128 = getelementptr inbounds i8, i8* %arraydecay127, i64 6
  call void @StringChop(i8* %add.ptr128)
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 6
  %26 = load i8*, i8** %comlog, align 8
  %cmp129 = icmp eq i8* %26, null
  br i1 %cmp129, label %if.then.131, label %if.else.136

if.then.131:                                      ; preds = %if.then.126
  %arraydecay132 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr133 = getelementptr inbounds i8, i8* %arraydecay132, i64 6
  %call134 = call i8* @Strdup(i8* %add.ptr133)
  %27 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 6
  store i8* %call134, i8** %comlog135, align 8
  br label %if.end.152

if.else.136:                                      ; preds = %if.then.126
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog137 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 6
  %29 = load i8*, i8** %comlog137, align 8
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog138 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 6
  %31 = load i8*, i8** %comlog138, align 8
  %call139 = call i64 @strlen(i8* %31) #5
  %add = add i64 %call139, 1
  %arraydecay140 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr141 = getelementptr inbounds i8, i8* %arraydecay140, i64 6
  %call142 = call i64 @strlen(i8* %add.ptr141) #5
  %add143 = add i64 %add, %call142
  %mul = mul i64 8, %add143
  %call144 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 624, i8* %29, i64 %mul)
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog145 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 6
  store i8* %call144, i8** %comlog145, align 8
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog146 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 6
  %34 = load i8*, i8** %comlog146, align 8
  %call147 = call i8* @strcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog148 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 6
  %36 = load i8*, i8** %comlog148, align 8
  %arraydecay149 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr150 = getelementptr inbounds i8, i8* %arraydecay149, i64 6
  %call151 = call i8* @strcat(i8* %36, i8* %add.ptr150) #6
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.136, %if.then.131
  br label %if.end.371

if.else.153:                                      ; preds = %if.else.121
  %arraydecay154 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call155 = call i32 @strncmp(i8* %arraydecay154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i64 5) #5
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.else.164

if.then.158:                                      ; preds = %if.else.153
  %arraydecay159 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr160 = getelementptr inbounds i8, i8* %arraydecay159, i64 6
  call void @StringChop(i8* %add.ptr160)
  %arraydecay161 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr162 = getelementptr inbounds i8, i8* %arraydecay161, i64 6
  %call163 = call i8* @Strdup(i8* %add.ptr162)
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 8
  store i8* %call163, i8** %ctime, align 8
  br label %if.end.370

if.else.164:                                      ; preds = %if.else.153
  %arraydecay165 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call166 = call i32 @strncmp(i8* %arraydecay165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i64 5) #5
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then.169, label %if.else.188

if.then.169:                                      ; preds = %if.else.164
  %arraydecay170 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr171 = getelementptr inbounds i8, i8* %arraydecay170, i64 6
  %call172 = call i8* @strtok(i8* %add.ptr171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call172, i8** %s, align 8
  %cmp173 = icmp eq i8* %call172, null
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.then.169
  br label %FAILURE

if.end.176:                                       ; preds = %if.then.169
  %38 = load i8*, i8** %s, align 8
  %call177 = call double @atof(i8* %38) #5
  %conv178 = fptrunc double %call177 to float
  %39 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 14
  store float %conv178, float* %ga1, align 4
  %call179 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call179, i8** %s, align 8
  %cmp180 = icmp eq i8* %call179, null
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.176
  br label %FAILURE

if.end.183:                                       ; preds = %if.end.176
  %40 = load i8*, i8** %s, align 8
  %call184 = call double @atof(i8* %40) #5
  %conv185 = fptrunc double %call184 to float
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 15
  store float %conv185, float* %ga2, align 4
  %42 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags186 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 47
  %43 = load i32, i32* %flags186, align 4
  %or187 = or i32 %43, 1024
  store i32 %or187, i32* %flags186, align 4
  br label %if.end.369

if.else.188:                                      ; preds = %if.else.164
  %arraydecay189 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call190 = call i32 @strncmp(i8* %arraydecay189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i64 5) #5
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.then.193, label %if.else.212

if.then.193:                                      ; preds = %if.else.188
  %arraydecay194 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr195 = getelementptr inbounds i8, i8* %arraydecay194, i64 6
  %call196 = call i8* @strtok(i8* %add.ptr195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call196, i8** %s, align 8
  %cmp197 = icmp eq i8* %call196, null
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.then.193
  br label %FAILURE

if.end.200:                                       ; preds = %if.then.193
  %44 = load i8*, i8** %s, align 8
  %call201 = call double @atof(i8* %44) #5
  %conv202 = fptrunc double %call201 to float
  %45 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 16
  store float %conv202, float* %tc1, align 4
  %call203 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call203, i8** %s, align 8
  %cmp204 = icmp eq i8* %call203, null
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.200
  br label %FAILURE

if.end.207:                                       ; preds = %if.end.200
  %46 = load i8*, i8** %s, align 8
  %call208 = call double @atof(i8* %46) #5
  %conv209 = fptrunc double %call208 to float
  %47 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 17
  store float %conv209, float* %tc2, align 4
  %48 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags210 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 47
  %49 = load i32, i32* %flags210, align 4
  %or211 = or i32 %49, 2048
  store i32 %or211, i32* %flags210, align 4
  br label %if.end.368

if.else.212:                                      ; preds = %if.else.188
  %arraydecay213 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call214 = call i32 @strncmp(i8* %arraydecay213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i64 5) #5
  %cmp215 = icmp eq i32 %call214, 0
  br i1 %cmp215, label %if.then.217, label %if.else.236

if.then.217:                                      ; preds = %if.else.212
  %arraydecay218 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr219 = getelementptr inbounds i8, i8* %arraydecay218, i64 6
  %call220 = call i8* @strtok(i8* %add.ptr219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call220, i8** %s, align 8
  %cmp221 = icmp eq i8* %call220, null
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.then.217
  br label %FAILURE

if.end.224:                                       ; preds = %if.then.217
  %50 = load i8*, i8** %s, align 8
  %call225 = call double @atof(i8* %50) #5
  %conv226 = fptrunc double %call225 to float
  %51 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 18
  store float %conv226, float* %nc1, align 4
  %call227 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call227, i8** %s, align 8
  %cmp228 = icmp eq i8* %call227, null
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.224
  br label %FAILURE

if.end.231:                                       ; preds = %if.end.224
  %52 = load i8*, i8** %s, align 8
  %call232 = call double @atof(i8* %52) #5
  %conv233 = fptrunc double %call232 to float
  %53 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 19
  store float %conv233, float* %nc2, align 4
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags234 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 47
  %55 = load i32, i32* %flags234, align 4
  %or235 = or i32 %55, 4096
  store i32 %or235, i32* %flags234, align 4
  br label %if.end.367

if.else.236:                                      ; preds = %if.else.212
  %arraydecay237 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call238 = call i32 @strncmp(i8* %arraydecay237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i64 5) #5
  %cmp239 = icmp eq i32 %call238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.266

if.then.241:                                      ; preds = %if.else.236
  %arraydecay242 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr243 = getelementptr inbounds i8, i8* %arraydecay242, i64 6
  %call244 = call i8* @strtok(i8* %add.ptr243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call244, i8** %s, align 8
  %cmp245 = icmp eq i8* %call244, null
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.then.241
  br label %FAILURE

if.end.248:                                       ; preds = %if.then.241
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.263, %if.end.248
  %56 = load i32, i32* %k, align 4
  %cmp249 = icmp slt i32 %56, 4
  br i1 %cmp249, label %for.body, label %for.end.265

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc, %for.body
  %57 = load i32, i32* %x, align 4
  %cmp252 = icmp slt i32 %57, 2
  br i1 %cmp252, label %for.body.254, label %for.end

for.body.254:                                     ; preds = %for.cond.251
  %58 = load i8*, i8** %s, align 8
  %cmp255 = icmp eq i8* %58, null
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %for.body.254
  br label %FAILURE

if.end.258:                                       ; preds = %for.body.254
  %59 = load i8*, i8** %s, align 8
  %call259 = call float @ascii2prob(i8* %59, float 1.000000e+00)
  %60 = load i32, i32* %x, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load i32, i32* %k, align 4
  %idxprom260 = sext i32 %61 to i64
  %62 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom260
  %arrayidx261 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 %idxprom
  store float %call259, float* %arrayidx261, align 4
  %call262 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call262, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.258
  %63 = load i32, i32* %x, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.251

for.end:                                          ; preds = %for.cond.251
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end
  %64 = load i32, i32* %k, align 4
  %inc264 = add nsw i32 %64, 1
  store i32 %inc264, i32* %k, align 4
  br label %for.cond

for.end.265:                                      ; preds = %for.cond
  br label %if.end.366

if.else.266:                                      ; preds = %if.else.236
  %arraydecay267 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call268 = call i32 @strncmp(i8* %arraydecay267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i64 5) #5
  %cmp269 = icmp eq i32 %call268, 0
  br i1 %cmp269, label %if.then.271, label %if.else.290

if.then.271:                                      ; preds = %if.else.266
  %arraydecay272 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr273 = getelementptr inbounds i8, i8* %arraydecay272, i64 6
  %call274 = call i8* @strtok(i8* %add.ptr273, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call274, i8** %s, align 8
  %cmp275 = icmp eq i8* %call274, null
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.then.271
  br label %FAILURE

if.end.278:                                       ; preds = %if.then.271
  %65 = load i8*, i8** %s, align 8
  %call279 = call float @ascii2prob(i8* %65, float 1.000000e+00)
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 29
  store float %call279, float* %p1, align 4
  %call280 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call280, i8** %s, align 8
  %cmp281 = icmp eq i8* %call280, null
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.278
  br label %FAILURE

if.end.284:                                       ; preds = %if.end.278
  %67 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1285 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 29
  %68 = load float, float* %p1285, align 4
  %69 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1286 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %69, i32 0, i32 29
  %70 = load float, float* %p1286, align 4
  %71 = load i8*, i8** %s, align 8
  %call287 = call float @ascii2prob(i8* %71, float 1.000000e+00)
  %add288 = fadd float %70, %call287
  %div = fdiv float %68, %add288
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 29
  store float %div, float* %p1289, align 4
  br label %if.end.365

if.else.290:                                      ; preds = %if.else.266
  %arraydecay291 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call292 = call i32 @strncmp(i8* %arraydecay291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i64 5) #5
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then.295, label %if.else.322

if.then.295:                                      ; preds = %if.else.290
  %73 = load i32, i32* @Alphabet_type, align 4
  %cmp296 = icmp eq i32 %73, 0
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.then.295
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %if.then.295
  %arraydecay300 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr301 = getelementptr inbounds i8, i8* %arraydecay300, i64 6
  %call302 = call i8* @strtok(i8* %add.ptr301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call302, i8** %s, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.319, %if.end.299
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* @Alphabet_size, align 4
  %cmp304 = icmp slt i32 %74, %75
  br i1 %cmp304, label %for.body.306, label %for.end.321

for.body.306:                                     ; preds = %for.cond.303
  %76 = load i8*, i8** %s, align 8
  %cmp307 = icmp eq i8* %76, null
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %for.body.306
  br label %FAILURE

if.end.310:                                       ; preds = %for.body.306
  %77 = load i8*, i8** %s, align 8
  %78 = load i32, i32* @Alphabet_size, align 4
  %conv311 = sitofp i32 %78 to float
  %conv312 = fpext float %conv311 to double
  %div313 = fdiv double 1.000000e+00, %conv312
  %conv314 = fptrunc double %div313 to float
  %call315 = call float @ascii2prob(i8* %77, float %conv314)
  %79 = load i32, i32* %x, align 4
  %idxprom316 = sext i32 %79 to i64
  %80 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 28
  %arrayidx317 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i64 %idxprom316
  store float %call315, float* %arrayidx317, align 4
  %call318 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call318, i8** %s, align 8
  br label %for.inc.319

for.inc.319:                                      ; preds = %if.end.310
  %81 = load i32, i32* %x, align 4
  %inc320 = add nsw i32 %81, 1
  store i32 %inc320, i32* %x, align 4
  br label %for.cond.303

for.end.321:                                      ; preds = %for.cond.303
  br label %if.end.364

if.else.322:                                      ; preds = %if.else.290
  %arraydecay323 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call324 = call i32 @strncmp(i8* %arraydecay323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i64 5) #5
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %if.then.327, label %if.else.346

if.then.327:                                      ; preds = %if.else.322
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags328 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 47
  %83 = load i32, i32* %flags328, align 4
  %or329 = or i32 %83, 128
  store i32 %or329, i32* %flags328, align 4
  %arraydecay330 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr331 = getelementptr inbounds i8, i8* %arraydecay330, i64 6
  %call332 = call i8* @strtok(i8* %add.ptr331, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call332, i8** %s, align 8
  %cmp333 = icmp eq i8* %call332, null
  br i1 %cmp333, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.then.327
  br label %FAILURE

if.end.336:                                       ; preds = %if.then.327
  %84 = load i8*, i8** %s, align 8
  %call337 = call double @atof(i8* %84) #5
  %conv338 = fptrunc double %call337 to float
  %85 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 45
  store float %conv338, float* %mu, align 4
  %call339 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call339, i8** %s, align 8
  %cmp340 = icmp eq i8* %call339, null
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.end.336
  br label %FAILURE

if.end.343:                                       ; preds = %if.end.336
  %86 = load i8*, i8** %s, align 8
  %call344 = call double @atof(i8* %86) #5
  %conv345 = fptrunc double %call344 to float
  %87 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 46
  store float %conv345, float* %lambda, align 4
  br label %if.end.363

if.else.346:                                      ; preds = %if.else.322
  %arraydecay347 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call348 = call i32 @strncmp(i8* %arraydecay347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i64 5) #5
  %cmp349 = icmp eq i32 %call348, 0
  br i1 %cmp349, label %if.then.351, label %if.else.355

if.then.351:                                      ; preds = %if.else.346
  %arraydecay352 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %add.ptr353 = getelementptr inbounds i8, i8* %arraydecay352, i64 6
  %call354 = call i32 @atoi(i8* %add.ptr353) #5
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %checksum = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 10
  store i32 %call354, i32* %checksum, align 4
  br label %if.end.362

if.else.355:                                      ; preds = %if.else.346
  %arraydecay356 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call357 = call i32 @strncmp(i8* %arraydecay356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i64 5) #5
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.else.355
  br label %while.end

if.end.361:                                       ; preds = %if.else.355
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.then.351
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.end.343
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %for.end.321
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.end.284
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %for.end.265
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.end.231
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.207
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.end.183
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.then.158
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.end.152
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %if.end.120
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.end.104
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.end.88
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.end.76
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.43
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.then.35
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.28
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.21
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.16
  br label %while.cond

while.end:                                        ; preds = %if.then.360, %while.cond
  %89 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f381 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %89, i32 0, i32 0
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %f381, align 8
  %call382 = call i32 @feof(%struct._IO_FILE* %90) #6
  %tobool383 = icmp ne i32 %call382, 0
  br i1 %tobool383, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %while.end
  br label %FAILURE

if.end.385:                                       ; preds = %while.end
  %91 = load i32, i32* %M, align 4
  %cmp386 = icmp slt i32 %91, 1
  br i1 %cmp386, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %if.end.385
  br label %FAILURE

if.end.389:                                       ; preds = %if.end.385
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 0
  %93 = load i8*, i8** %name, align 8
  %cmp390 = icmp eq i8* %93, null
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.389
  br label %FAILURE

if.end.393:                                       ; preds = %if.end.389
  %94 = load i32, i32* @Alphabet_type, align 4
  %cmp394 = icmp eq i32 %94, 0
  br i1 %cmp394, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %if.end.393
  br label %FAILURE

if.end.397:                                       ; preds = %if.end.393
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %96 = load i32, i32* %M, align 4
  call void @AllocPlan7Body(%struct.plan7_s* %95, i32 %96)
  %arraydecay398 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %97 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f399 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %97, i32 0, i32 0
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %f399, align 8
  %call400 = call i8* @fgets(i8* %arraydecay398, i32 512, %struct._IO_FILE* %98)
  %cmp401 = icmp eq i8* %call400, null
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.end.397
  br label %FAILURE

if.end.404:                                       ; preds = %if.end.397
  %arraydecay405 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %99 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f406 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %99, i32 0, i32 0
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %f406, align 8
  %call407 = call i8* @fgets(i8* %arraydecay405, i32 512, %struct._IO_FILE* %100)
  %cmp408 = icmp eq i8* %call407, null
  br i1 %cmp408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.404
  br label %FAILURE

if.end.411:                                       ; preds = %if.end.404
  %arraydecay412 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call413 = call i8* @strtok(i8* %arraydecay412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call413, i8** %s, align 8
  %cmp414 = icmp eq i8* %call413, null
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.end.411
  br label %FAILURE

if.end.417:                                       ; preds = %if.end.411
  %101 = load i8*, i8** %s, align 8
  %call418 = call float @ascii2prob(i8* %101, float 1.000000e+00)
  store float %call418, float* %p, align 4
  %call419 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call419, i8** %s, align 8
  %cmp420 = icmp eq i8* %call419, null
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %if.end.417
  br label %FAILURE

if.end.423:                                       ; preds = %if.end.417
  %call424 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call424, i8** %s, align 8
  %cmp425 = icmp eq i8* %call424, null
  br i1 %cmp425, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %if.end.423
  br label %FAILURE

if.end.428:                                       ; preds = %if.end.423
  %102 = load i8*, i8** %s, align 8
  %call429 = call float @ascii2prob(i8* %102, float 1.000000e+00)
  %103 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %103, i32 0, i32 24
  store float %call429, float* %tbd1, align 4
  %104 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1430 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %104, i32 0, i32 24
  %105 = load float, float* %tbd1430, align 4
  %106 = load float, float* %p, align 4
  %107 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1431 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 24
  %108 = load float, float* %tbd1431, align 4
  %add432 = fadd float %106, %108
  %div433 = fdiv float %105, %add432
  %109 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1434 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %109, i32 0, i32 24
  store float %div433, float* %tbd1434, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.435

for.cond.435:                                     ; preds = %for.inc.593, %if.end.428
  %110 = load i32, i32* %k, align 4
  %111 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M436 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %111, i32 0, i32 20
  %112 = load i32, i32* %M436, align 4
  %cmp437 = icmp sle i32 %110, %112
  br i1 %cmp437, label %for.body.439, label %for.end.595

for.body.439:                                     ; preds = %for.cond.435
  %arraydecay440 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %113 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f441 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %113, i32 0, i32 0
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %f441, align 8
  %call442 = call i8* @fgets(i8* %arraydecay440, i32 512, %struct._IO_FILE* %114)
  %cmp443 = icmp eq i8* %call442, null
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %for.body.439
  br label %FAILURE

if.end.446:                                       ; preds = %for.body.439
  %arraydecay447 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call448 = call i8* @strtok(i8* %arraydecay447, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call448, i8** %s, align 8
  %cmp449 = icmp eq i8* %call448, null
  br i1 %cmp449, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %if.end.446
  br label %FAILURE

if.end.452:                                       ; preds = %if.end.446
  %115 = load i8*, i8** %s, align 8
  %call453 = call i32 @atoi(i8* %115) #5
  %116 = load i32, i32* %k, align 4
  %cmp454 = icmp ne i32 %call453, %116
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %if.end.452
  br label %FAILURE

if.end.457:                                       ; preds = %if.end.452
  store i32 0, i32* %x, align 4
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.475, %if.end.457
  %117 = load i32, i32* %x, align 4
  %118 = load i32, i32* @Alphabet_size, align 4
  %cmp459 = icmp slt i32 %117, %118
  br i1 %cmp459, label %for.body.461, label %for.end.477

for.body.461:                                     ; preds = %for.cond.458
  %call462 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call462, i8** %s, align 8
  %cmp463 = icmp eq i8* %call462, null
  br i1 %cmp463, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %for.body.461
  br label %FAILURE

if.end.466:                                       ; preds = %for.body.461
  %119 = load i8*, i8** %s, align 8
  %120 = load i32, i32* %x, align 4
  %idxprom467 = sext i32 %120 to i64
  %121 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null468 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %121, i32 0, i32 28
  %arrayidx469 = getelementptr inbounds [20 x float], [20 x float]* %null468, i32 0, i64 %idxprom467
  %122 = load float, float* %arrayidx469, align 4
  %call470 = call float @ascii2prob(i8* %119, float %122)
  %123 = load i32, i32* %x, align 4
  %idxprom471 = sext i32 %123 to i64
  %124 = load i32, i32* %k, align 4
  %idxprom472 = sext i32 %124 to i64
  %125 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %125, i32 0, i32 22
  %126 = load float**, float*** %mat, align 8
  %arrayidx473 = getelementptr inbounds float*, float** %126, i64 %idxprom472
  %127 = load float*, float** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds float, float* %127, i64 %idxprom471
  store float %call470, float* %arrayidx474, align 4
  br label %for.inc.475

for.inc.475:                                      ; preds = %if.end.466
  %128 = load i32, i32* %x, align 4
  %inc476 = add nsw i32 %128, 1
  store i32 %inc476, i32* %x, align 4
  br label %for.cond.458

for.end.477:                                      ; preds = %for.cond.458
  %129 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags478 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 47
  %130 = load i32, i32* %flags478, align 4
  %and = and i32 %130, 256
  %tobool479 = icmp ne i32 %and, 0
  br i1 %tobool479, label %if.then.480, label %if.end.489

if.then.480:                                      ; preds = %for.end.477
  %call481 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call481, i8** %s, align 8
  %cmp482 = icmp eq i8* %call481, null
  br i1 %cmp482, label %if.then.484, label %if.end.485

if.then.484:                                      ; preds = %if.then.480
  br label %FAILURE

if.end.485:                                       ; preds = %if.then.480
  %131 = load i8*, i8** %s, align 8
  %call486 = call i32 @atoi(i8* %131) #5
  %132 = load i32, i32* %k, align 4
  %idxprom487 = sext i32 %132 to i64
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 9
  %134 = load i32*, i32** %map, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %134, i64 %idxprom487
  store i32 %call486, i32* %arrayidx488, align 4
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.485, %for.end.477
  %arraydecay490 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %135 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f491 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %135, i32 0, i32 0
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %f491, align 8
  %call492 = call i8* @fgets(i8* %arraydecay490, i32 512, %struct._IO_FILE* %136)
  %cmp493 = icmp eq i8* %call492, null
  br i1 %cmp493, label %if.then.495, label %if.end.496

if.then.495:                                      ; preds = %if.end.489
  br label %FAILURE

if.end.496:                                       ; preds = %if.end.489
  %arraydecay497 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call498 = call i8* @strtok(i8* %arraydecay497, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call498, i8** %s, align 8
  %cmp499 = icmp eq i8* %call498, null
  br i1 %cmp499, label %if.then.501, label %if.end.502

if.then.501:                                      ; preds = %if.end.496
  br label %FAILURE

if.end.502:                                       ; preds = %if.end.496
  %137 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags503 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 47
  %138 = load i32, i32* %flags503, align 4
  %and504 = and i32 %138, 4
  %tobool505 = icmp ne i32 %and504, 0
  br i1 %tobool505, label %if.then.506, label %if.end.509

if.then.506:                                      ; preds = %if.end.502
  %139 = load i8*, i8** %s, align 8
  %140 = load i8, i8* %139, align 1
  %141 = load i32, i32* %k, align 4
  %idxprom507 = sext i32 %141 to i64
  %142 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 3
  %143 = load i8*, i8** %rf, align 8
  %arrayidx508 = getelementptr inbounds i8, i8* %143, i64 %idxprom507
  store i8 %140, i8* %arrayidx508, align 1
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.506, %if.end.502
  %144 = load i32, i32* %k, align 4
  %145 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M510 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %145, i32 0, i32 20
  %146 = load i32, i32* %M510, align 4
  %cmp511 = icmp slt i32 %144, %146
  br i1 %cmp511, label %if.then.513, label %if.end.534

if.then.513:                                      ; preds = %if.end.509
  store i32 0, i32* %x, align 4
  br label %for.cond.514

for.cond.514:                                     ; preds = %for.inc.531, %if.then.513
  %147 = load i32, i32* %x, align 4
  %148 = load i32, i32* @Alphabet_size, align 4
  %cmp515 = icmp slt i32 %147, %148
  br i1 %cmp515, label %for.body.517, label %for.end.533

for.body.517:                                     ; preds = %for.cond.514
  %call518 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call518, i8** %s, align 8
  %cmp519 = icmp eq i8* %call518, null
  br i1 %cmp519, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %for.body.517
  br label %FAILURE

if.end.522:                                       ; preds = %for.body.517
  %149 = load i8*, i8** %s, align 8
  %150 = load i32, i32* %x, align 4
  %idxprom523 = sext i32 %150 to i64
  %151 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null524 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %151, i32 0, i32 28
  %arrayidx525 = getelementptr inbounds [20 x float], [20 x float]* %null524, i32 0, i64 %idxprom523
  %152 = load float, float* %arrayidx525, align 4
  %call526 = call float @ascii2prob(i8* %149, float %152)
  %153 = load i32, i32* %x, align 4
  %idxprom527 = sext i32 %153 to i64
  %154 = load i32, i32* %k, align 4
  %idxprom528 = sext i32 %154 to i64
  %155 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %155, i32 0, i32 23
  %156 = load float**, float*** %ins, align 8
  %arrayidx529 = getelementptr inbounds float*, float** %156, i64 %idxprom528
  %157 = load float*, float** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds float, float* %157, i64 %idxprom527
  store float %call526, float* %arrayidx530, align 4
  br label %for.inc.531

for.inc.531:                                      ; preds = %if.end.522
  %158 = load i32, i32* %x, align 4
  %inc532 = add nsw i32 %158, 1
  store i32 %inc532, i32* %x, align 4
  br label %for.cond.514

for.end.533:                                      ; preds = %for.cond.514
  br label %if.end.534

if.end.534:                                       ; preds = %for.end.533, %if.end.509
  %arraydecay535 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %159 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f536 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %159, i32 0, i32 0
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %f536, align 8
  %call537 = call i8* @fgets(i8* %arraydecay535, i32 512, %struct._IO_FILE* %160)
  %cmp538 = icmp eq i8* %call537, null
  br i1 %cmp538, label %if.then.540, label %if.end.541

if.then.540:                                      ; preds = %if.end.534
  br label %FAILURE

if.end.541:                                       ; preds = %if.end.534
  %arraydecay542 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call543 = call i8* @strtok(i8* %arraydecay542, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call543, i8** %s, align 8
  %cmp544 = icmp eq i8* %call543, null
  br i1 %cmp544, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %if.end.541
  br label %FAILURE

if.end.547:                                       ; preds = %if.end.541
  %161 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags548 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %161, i32 0, i32 47
  %162 = load i32, i32* %flags548, align 4
  %and549 = and i32 %162, 8
  %tobool550 = icmp ne i32 %and549, 0
  br i1 %tobool550, label %if.then.551, label %if.end.554

if.then.551:                                      ; preds = %if.end.547
  %163 = load i8*, i8** %s, align 8
  %164 = load i8, i8* %163, align 1
  %165 = load i32, i32* %k, align 4
  %idxprom552 = sext i32 %165 to i64
  %166 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %166, i32 0, i32 4
  %167 = load i8*, i8** %cs, align 8
  %arrayidx553 = getelementptr inbounds i8, i8* %167, i64 %idxprom552
  store i8 %164, i8* %arrayidx553, align 1
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.551, %if.end.547
  store i32 0, i32* %x, align 4
  br label %for.cond.555

for.cond.555:                                     ; preds = %for.inc.574, %if.end.554
  %168 = load i32, i32* %x, align 4
  %cmp556 = icmp slt i32 %168, 7
  br i1 %cmp556, label %for.body.558, label %for.end.576

for.body.558:                                     ; preds = %for.cond.555
  %call559 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call559, i8** %s, align 8
  %cmp560 = icmp eq i8* %call559, null
  br i1 %cmp560, label %if.then.562, label %if.end.563

if.then.562:                                      ; preds = %for.body.558
  br label %FAILURE

if.end.563:                                       ; preds = %for.body.558
  %169 = load i32, i32* %k, align 4
  %170 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M564 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %170, i32 0, i32 20
  %171 = load i32, i32* %M564, align 4
  %cmp565 = icmp slt i32 %169, %171
  br i1 %cmp565, label %if.then.567, label %if.end.573

if.then.567:                                      ; preds = %if.end.563
  %172 = load i8*, i8** %s, align 8
  %call568 = call float @ascii2prob(i8* %172, float 1.000000e+00)
  %173 = load i32, i32* %x, align 4
  %idxprom569 = sext i32 %173 to i64
  %174 = load i32, i32* %k, align 4
  %idxprom570 = sext i32 %174 to i64
  %175 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %175, i32 0, i32 21
  %176 = load float**, float*** %t, align 8
  %arrayidx571 = getelementptr inbounds float*, float** %176, i64 %idxprom570
  %177 = load float*, float** %arrayidx571, align 8
  %arrayidx572 = getelementptr inbounds float, float* %177, i64 %idxprom569
  store float %call568, float* %arrayidx572, align 4
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.567, %if.end.563
  br label %for.inc.574

for.inc.574:                                      ; preds = %if.end.573
  %178 = load i32, i32* %x, align 4
  %inc575 = add nsw i32 %178, 1
  store i32 %inc575, i32* %x, align 4
  br label %for.cond.555

for.end.576:                                      ; preds = %for.cond.555
  %call577 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call577, i8** %s, align 8
  %cmp578 = icmp eq i8* %call577, null
  br i1 %cmp578, label %if.then.580, label %if.end.581

if.then.580:                                      ; preds = %for.end.576
  br label %FAILURE

if.end.581:                                       ; preds = %for.end.576
  %179 = load i8*, i8** %s, align 8
  %call582 = call float @ascii2prob(i8* %179, float 1.000000e+00)
  %180 = load i32, i32* %k, align 4
  %idxprom583 = sext i32 %180 to i64
  %181 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %181, i32 0, i32 26
  %182 = load float*, float** %begin, align 8
  %arrayidx584 = getelementptr inbounds float, float* %182, i64 %idxprom583
  store float %call582, float* %arrayidx584, align 4
  %call585 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call585, i8** %s, align 8
  %cmp586 = icmp eq i8* %call585, null
  br i1 %cmp586, label %if.then.588, label %if.end.589

if.then.588:                                      ; preds = %if.end.581
  br label %FAILURE

if.end.589:                                       ; preds = %if.end.581
  %183 = load i8*, i8** %s, align 8
  %call590 = call float @ascii2prob(i8* %183, float 1.000000e+00)
  %184 = load i32, i32* %k, align 4
  %idxprom591 = sext i32 %184 to i64
  %185 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %185, i32 0, i32 27
  %186 = load float*, float** %end, align 8
  %arrayidx592 = getelementptr inbounds float, float* %186, i64 %idxprom591
  store float %call590, float* %arrayidx592, align 4
  br label %for.inc.593

for.inc.593:                                      ; preds = %if.end.589
  %187 = load i32, i32* %k, align 4
  %inc594 = add nsw i32 %187, 1
  store i32 %inc594, i32* %k, align 4
  br label %for.cond.435

for.end.595:                                      ; preds = %for.cond.435
  br label %while.cond.596

while.cond.596:                                   ; preds = %if.end.608, %for.end.595
  %arraydecay597 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %188 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f598 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %188, i32 0, i32 0
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %f598, align 8
  %call599 = call i8* @fgets(i8* %arraydecay597, i32 512, %struct._IO_FILE* %189)
  %cmp600 = icmp ne i8* %call599, null
  br i1 %cmp600, label %while.body.602, label %while.end.609

while.body.602:                                   ; preds = %while.cond.596
  %arraydecay603 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call604 = call i32 @strncmp(i8* %arraydecay603, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i64 2) #5
  %cmp605 = icmp eq i32 %call604, 0
  br i1 %cmp605, label %if.then.607, label %if.end.608

if.then.607:                                      ; preds = %while.body.602
  br label %while.end.609

if.end.608:                                       ; preds = %while.body.602
  br label %while.cond.596

while.end.609:                                    ; preds = %if.then.607, %while.cond.596
  %190 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %190)
  %191 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags610 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %191, i32 0, i32 47
  %192 = load i32, i32* %flags610, align 4
  %or611 = or i32 %192, 32
  store i32 %or611, i32* %flags610, align 4
  %193 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags612 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %193, i32 0, i32 47
  %194 = load i32, i32* %flags612, align 4
  %and613 = and i32 %194, -2
  store i32 %and613, i32* %flags612, align 4
  %195 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %196 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %195, %struct.plan7_s** %196, align 8
  store i32 1, i32* %retval
  br label %return

FAILURE:                                          ; preds = %if.then.588, %if.then.580, %if.then.562, %if.then.546, %if.then.540, %if.then.521, %if.then.501, %if.then.495, %if.then.484, %if.then.465, %if.then.456, %if.then.451, %if.then.445, %if.then.427, %if.then.422, %if.then.416, %if.then.410, %if.then.403, %if.then.396, %if.then.392, %if.then.388, %if.then.384, %if.then.342, %if.then.335, %if.then.309, %if.then.283, %if.then.277, %if.then.257, %if.then.247, %if.then.230, %if.then.223, %if.then.206, %if.then.199, %if.then.182, %if.then.175, %if.else.65, %if.then.6
  %197 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cmp614 = icmp ne %struct.plan7_s* %197, null
  br i1 %cmp614, label %if.then.616, label %if.end.617

if.then.616:                                      ; preds = %FAILURE
  %198 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %198)
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.616, %FAILURE
  %199 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %199, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.617, %while.end.609, %if.then
  %200 = load i32, i32* %retval
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define internal i32 @read_asc19hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [512 x i8], align 16
  %s = alloca i8*, align 8
  %M = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %atype = alloca i32, align 4
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %hmm, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @feof(%struct._IO_FILE* %2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %3)
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* %arraydecay2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 10) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %FAILURE

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct.plan7_s* @AllocPlan7Shell()
  store %struct.plan7_s* %call7, %struct.plan7_s** %hmm, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i8* @Getword(%struct._IO_FILE* %4, i32 1)
  store i8* %call8, i8** %s, align 8
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  br label %FAILURE

if.end.11:                                        ; preds = %if.end.6
  %5 = load i8*, i8** %s, align 8
  %call12 = call i32 @atoi(i8* %5) #5
  store i32 %call12, i32* %M, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call13 = call i8* @Getword(%struct._IO_FILE* %6, i32 1)
  store i8* %call13, i8** %s, align 8
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  br label %FAILURE

if.end.16:                                        ; preds = %if.end.11
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i8* @Getword(%struct._IO_FILE* %7, i32 4)
  store i8* %call17, i8** %s, align 8
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %FAILURE

if.end.20:                                        ; preds = %if.end.16
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %9 = load i8*, i8** %s, align 8
  call void @Plan7SetName(%struct.plan7_s* %8, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call21 = call i8* @Getword(%struct._IO_FILE* %10, i32 4)
  store i8* %call21, i8** %s, align 8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  br label %FAILURE

if.end.24:                                        ; preds = %if.end.20
  %11 = load i8*, i8** %s, align 8
  call void @s2upper(i8* %11)
  %12 = load i8*, i8** %s, align 8
  %call25 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0)) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.24
  store i32 3, i32* %atype, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end.24
  %13 = load i8*, i8** %s, align 8
  %call28 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0)) #5
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else
  store i32 2, i32* %atype, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %if.else
  br label %FAILURE

if.end.32:                                        ; preds = %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.27
  %14 = load i32, i32* @Alphabet_type, align 4
  %cmp34 = icmp eq i32 %14, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.33
  %15 = load i32, i32* %atype, align 4
  call void @SetAlphabet(i32 %15)
  br label %if.end.42

if.else.36:                                       ; preds = %if.end.33
  %16 = load i32, i32* %atype, align 4
  %17 = load i32, i32* @Alphabet_type, align 4
  %cmp37 = icmp ne i32 %16, %17
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.else.36
  %18 = load i32, i32* @Alphabet_type, align 4
  %call39 = call i8* @AlphabetType2String(i32 %18)
  %19 = load i32, i32* %atype, align 4
  %call40 = call i8* @AlphabetType2String(i32 %19)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.65, i32 0, i32 0), i8* %call39, i8* %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.35
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call43 = call i8* @Getword(%struct._IO_FILE* %20, i32 4)
  store i8* %call43, i8** %s, align 8
  %cmp44 = icmp eq i8* %call43, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  br label %FAILURE

if.end.46:                                        ; preds = %if.end.42
  %21 = load i8*, i8** %s, align 8
  %22 = load i32, i32* @Alphabet_size, align 4
  %conv = sext i32 %22 to i64
  %call47 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i64 %conv) #5
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  br label %FAILURE

if.end.51:                                        ; preds = %if.end.46
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call52 = call i8* @Getword(%struct._IO_FILE* %23, i32 4)
  store i8* %call52, i8** %s, align 8
  %cmp53 = icmp eq i8* %call52, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  br label %FAILURE

if.end.56:                                        ; preds = %if.end.51
  %24 = load i8*, i8** %s, align 8
  %call57 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #5
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 47
  %26 = load i32, i32* %flags, align 4
  %or = or i32 %26, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.56
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call62 = call i8* @Getword(%struct._IO_FILE* %27, i32 4)
  store i8* %call62, i8** %s, align 8
  %cmp63 = icmp eq i8* %call62, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  br label %FAILURE

if.end.66:                                        ; preds = %if.end.61
  %28 = load i8*, i8** %s, align 8
  %call67 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #5
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.66
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 47
  %30 = load i32, i32* %flags71, align 4
  %or72 = or i32 %30, 8
  store i32 %or72, i32* %flags71, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.66
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call74 = call i8* @Getword(%struct._IO_FILE* %31, i32 4)
  store i8* %call74, i8** %s, align 8
  %cmp75 = icmp eq i8* %call74, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  br label %FAILURE

if.end.78:                                        ; preds = %if.end.73
  %32 = load i8*, i8** %s, align 8
  %call79 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0)) #5
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  br label %FAILURE

if.end.83:                                        ; preds = %if.end.78
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.83
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* @Alphabet_size, align 4
  %cmp84 = icmp slt i32 %33, %34
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call86 = call i8* @Getword(%struct._IO_FILE* %35, i32 1)
  store i8* %call86, i8** %s, align 8
  %cmp87 = icmp eq i8* %call86, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body
  br label %FAILURE

if.end.90:                                        ; preds = %for.body
  %36 = load i8*, i8** %s, align 8
  %call91 = call float @ascii2prob(i8* %36, float 1.000000e+00)
  %37 = load i32, i32* %x, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 28
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i64 %idxprom
  store float %call91, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %39 = load i32, i32* %x, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* @Alphabet_type, align 4
  %cmp92 = icmp eq i32 %40, 3
  %cond = select i1 %cmp92, double 0x3FEFE8A9353DFE8B, double 0x3FEFF7D0F16C2E09
  %conv94 = fptrunc double %cond to float
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 29
  store float %conv94, float* %p1, align 4
  %42 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f95 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %42, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %f95, align 8
  %call96 = call i32 @feof(%struct._IO_FILE* %43) #6
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.end
  br label %FAILURE

if.end.99:                                        ; preds = %for.end
  %44 = load i32, i32* %M, align 4
  %cmp100 = icmp slt i32 %44, 1
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  br label %FAILURE

if.end.103:                                       ; preds = %if.end.99
  %45 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 0
  %46 = load i8*, i8** %name, align 8
  %cmp104 = icmp eq i8* %46, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  br label %FAILURE

if.end.107:                                       ; preds = %if.end.103
  %47 = load i32, i32* @Alphabet_type, align 4
  %cmp108 = icmp eq i32 %47, 0
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.107
  br label %FAILURE

if.end.111:                                       ; preds = %if.end.107
  %48 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %49 = load i32, i32* %M, align 4
  call void @AllocPlan7Body(%struct.plan7_s* %48, i32 %49)
  %50 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @ZeroPlan7(%struct.plan7_s* %50)
  %51 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7LSConfig(%struct.plan7_s* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call112 = call i8* @Getword(%struct._IO_FILE* %52, i32 1)
  store i8* %call112, i8** %s, align 8
  %cmp113 = icmp eq i8* %call112, null
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.111
  br label %FAILURE

if.end.116:                                       ; preds = %if.end.111
  store i32 0, i32* %x, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.126, %if.end.116
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* @Alphabet_size, align 4
  %cmp118 = icmp slt i32 %53, %54
  br i1 %cmp118, label %for.body.120, label %for.end.128

for.body.120:                                     ; preds = %for.cond.117
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call121 = call i8* @Getword(%struct._IO_FILE* %55, i32 1)
  store i8* %call121, i8** %s, align 8
  %cmp122 = icmp eq i8* %call121, null
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.body.120
  br label %FAILURE

if.end.125:                                       ; preds = %for.body.120
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %56 = load i32, i32* %x, align 4
  %inc127 = add nsw i32 %56, 1
  store i32 %inc127, i32* %x, align 4
  br label %for.cond.117

for.end.128:                                      ; preds = %for.cond.117
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call129 = call i8* @Getword(%struct._IO_FILE* %57, i32 1)
  store i8* %call129, i8** %s, align 8
  %cmp130 = icmp eq i8* %call129, null
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.end.128
  br label %FAILURE

if.end.133:                                       ; preds = %for.end.128
  %58 = load i8*, i8** %s, align 8
  %call134 = call float @ascii2prob(i8* %58, float 1.000000e+00)
  %59 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 26
  %60 = load float*, float** %begin, align 8
  %arrayidx135 = getelementptr inbounds float, float* %60, i64 1
  store float %call134, float* %arrayidx135, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call136 = call i8* @Getword(%struct._IO_FILE* %61, i32 1)
  store i8* %call136, i8** %s, align 8
  %cmp137 = icmp eq i8* %call136, null
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.133
  br label %FAILURE

if.end.140:                                       ; preds = %if.end.133
  %62 = load i8*, i8** %s, align 8
  %call141 = call float @ascii2prob(i8* %62, float 1.000000e+00)
  %63 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 24
  store float %call141, float* %tbd1, align 4
  %64 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin142 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 26
  %65 = load float*, float** %begin142, align 8
  %arrayidx143 = getelementptr inbounds float, float* %65, i64 1
  %66 = load float, float* %arrayidx143, align 4
  %67 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin144 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 26
  %68 = load float*, float** %begin144, align 8
  %arrayidx145 = getelementptr inbounds float, float* %68, i64 1
  %69 = load float, float* %arrayidx145, align 4
  %70 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1146 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 24
  %71 = load float, float* %tbd1146, align 4
  %add = fadd float %69, %71
  %div = fdiv float %66, %add
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 26
  %73 = load float*, float** %begin147, align 8
  %arrayidx148 = getelementptr inbounds float, float* %73, i64 1
  store float %div, float* %arrayidx148, align 4
  %74 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1149 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 24
  %75 = load float, float* %tbd1149, align 4
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin150 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 26
  %77 = load float*, float** %begin150, align 8
  %arrayidx151 = getelementptr inbounds float, float* %77, i64 1
  %78 = load float, float* %arrayidx151, align 4
  %79 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1152 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 24
  %80 = load float, float* %tbd1152, align 4
  %add153 = fadd float %78, %80
  %div154 = fdiv float %75, %add153
  %81 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tbd1155 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %81, i32 0, i32 24
  store float %div154, float* %tbd1155, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.165, %if.end.140
  %82 = load i32, i32* %x, align 4
  %cmp157 = icmp slt i32 %82, 7
  br i1 %cmp157, label %for.body.159, label %for.end.167

for.body.159:                                     ; preds = %for.cond.156
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call160 = call i8* @Getword(%struct._IO_FILE* %83, i32 1)
  store i8* %call160, i8** %s, align 8
  %cmp161 = icmp eq i8* %call160, null
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %for.body.159
  br label %FAILURE

if.end.164:                                       ; preds = %for.body.159
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %84 = load i32, i32* %x, align 4
  %inc166 = add nsw i32 %84, 1
  store i32 %inc166, i32* %x, align 4
  br label %for.cond.156

for.end.167:                                      ; preds = %for.cond.156
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call168 = call i8* @Getword(%struct._IO_FILE* %85, i32 4)
  store i8* %call168, i8** %s, align 8
  %cmp169 = icmp eq i8* %call168, null
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %for.end.167
  br label %FAILURE

if.end.172:                                       ; preds = %for.end.167
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call173 = call i8* @Getword(%struct._IO_FILE* %86, i32 4)
  store i8* %call173, i8** %s, align 8
  %cmp174 = icmp eq i8* %call173, null
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.172
  br label %FAILURE

if.end.177:                                       ; preds = %if.end.172
  store i32 1, i32* %k, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.360, %if.end.177
  %87 = load i32, i32* %k, align 4
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M179 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 20
  %89 = load i32, i32* %M179, align 4
  %cmp180 = icmp sle i32 %87, %89
  br i1 %cmp180, label %for.body.182, label %for.end.362

for.body.182:                                     ; preds = %for.cond.178
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call183 = call i8* @Getword(%struct._IO_FILE* %90, i32 1)
  store i8* %call183, i8** %s, align 8
  %cmp184 = icmp eq i8* %call183, null
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %for.body.182
  br label %FAILURE

if.end.187:                                       ; preds = %for.body.182
  store i32 0, i32* %x, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.205, %if.end.187
  %91 = load i32, i32* %x, align 4
  %92 = load i32, i32* @Alphabet_size, align 4
  %cmp189 = icmp slt i32 %91, %92
  br i1 %cmp189, label %for.body.191, label %for.end.207

for.body.191:                                     ; preds = %for.cond.188
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call192 = call i8* @Getword(%struct._IO_FILE* %93, i32 1)
  store i8* %call192, i8** %s, align 8
  %cmp193 = icmp eq i8* %call192, null
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %for.body.191
  br label %FAILURE

if.end.196:                                       ; preds = %for.body.191
  %94 = load i8*, i8** %s, align 8
  %95 = load i32, i32* %x, align 4
  %idxprom197 = sext i32 %95 to i64
  %96 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null198 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 28
  %arrayidx199 = getelementptr inbounds [20 x float], [20 x float]* %null198, i32 0, i64 %idxprom197
  %97 = load float, float* %arrayidx199, align 4
  %call200 = call float @ascii2prob(i8* %94, float %97)
  %98 = load i32, i32* %x, align 4
  %idxprom201 = sext i32 %98 to i64
  %99 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %99 to i64
  %100 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 22
  %101 = load float**, float*** %mat, align 8
  %arrayidx203 = getelementptr inbounds float*, float** %101, i64 %idxprom202
  %102 = load float*, float** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds float, float* %102, i64 %idxprom201
  store float %call200, float* %arrayidx204, align 4
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.196
  %103 = load i32, i32* %x, align 4
  %inc206 = add nsw i32 %103, 1
  store i32 %inc206, i32* %x, align 4
  br label %for.cond.188

for.end.207:                                      ; preds = %for.cond.188
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call208 = call i8* @Getword(%struct._IO_FILE* %104, i32 1)
  store i8* %call208, i8** %s, align 8
  %cmp209 = icmp eq i8* %call208, null
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %for.end.207
  br label %FAILURE

if.end.212:                                       ; preds = %for.end.207
  %105 = load i32, i32* %k, align 4
  %106 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M213 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 20
  %107 = load i32, i32* %M213, align 4
  %cmp214 = icmp slt i32 %105, %107
  br i1 %cmp214, label %if.then.216, label %if.end.221

if.then.216:                                      ; preds = %if.end.212
  %108 = load i8*, i8** %s, align 8
  %call217 = call float @ascii2prob(i8* %108, float 1.000000e+00)
  %109 = load i32, i32* %k, align 4
  %idxprom218 = sext i32 %109 to i64
  %110 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 21
  %111 = load float**, float*** %t, align 8
  %arrayidx219 = getelementptr inbounds float*, float** %111, i64 %idxprom218
  %112 = load float*, float** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds float, float* %112, i64 0
  store float %call217, float* %arrayidx220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.216, %if.end.212
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call222 = call i8* @Getword(%struct._IO_FILE* %113, i32 1)
  store i8* %call222, i8** %s, align 8
  %cmp223 = icmp eq i8* %call222, null
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.221
  br label %FAILURE

if.end.226:                                       ; preds = %if.end.221
  %114 = load i32, i32* %k, align 4
  %115 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M227 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 20
  %116 = load i32, i32* %M227, align 4
  %cmp228 = icmp slt i32 %114, %116
  br i1 %cmp228, label %if.then.230, label %if.end.242

if.then.230:                                      ; preds = %if.end.226
  %117 = load i32, i32* %k, align 4
  %118 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M231 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %118, i32 0, i32 20
  %119 = load i32, i32* %M231, align 4
  %cmp232 = icmp eq i32 %117, %119
  br i1 %cmp232, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.230
  br label %cond.end

cond.false:                                       ; preds = %if.then.230
  %120 = load i8*, i8** %s, align 8
  %call234 = call float @ascii2prob(i8* %120, float 1.000000e+00)
  %conv235 = fpext float %call234 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond236 = phi double [ 0.000000e+00, %cond.true ], [ %conv235, %cond.false ]
  %conv237 = fptrunc double %cond236 to float
  %121 = load i32, i32* %k, align 4
  %idxprom238 = sext i32 %121 to i64
  %122 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t239 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 21
  %123 = load float**, float*** %t239, align 8
  %arrayidx240 = getelementptr inbounds float*, float** %123, i64 %idxprom238
  %124 = load float*, float** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds float, float* %124, i64 2
  store float %conv237, float* %arrayidx241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %cond.end, %if.end.226
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call243 = call i8* @Getword(%struct._IO_FILE* %125, i32 1)
  store i8* %call243, i8** %s, align 8
  %cmp244 = icmp eq i8* %call243, null
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.242
  br label %FAILURE

if.end.247:                                       ; preds = %if.end.242
  %126 = load i32, i32* %k, align 4
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M248 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 20
  %128 = load i32, i32* %M248, align 4
  %cmp249 = icmp slt i32 %126, %128
  br i1 %cmp249, label %if.then.251, label %if.end.257

if.then.251:                                      ; preds = %if.end.247
  %129 = load i8*, i8** %s, align 8
  %call252 = call float @ascii2prob(i8* %129, float 1.000000e+00)
  %130 = load i32, i32* %k, align 4
  %idxprom253 = sext i32 %130 to i64
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t254 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 21
  %132 = load float**, float*** %t254, align 8
  %arrayidx255 = getelementptr inbounds float*, float** %132, i64 %idxprom253
  %133 = load float*, float** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds float, float* %133, i64 1
  store float %call252, float* %arrayidx256, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.251, %if.end.247
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call258 = call i8* @Getword(%struct._IO_FILE* %134, i32 1)
  store i8* %call258, i8** %s, align 8
  %cmp259 = icmp eq i8* %call258, null
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %if.end.257
  br label %FAILURE

if.end.262:                                       ; preds = %if.end.257
  %135 = load i32, i32* %k, align 4
  %136 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M263 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %136, i32 0, i32 20
  %137 = load i32, i32* %M263, align 4
  %cmp264 = icmp slt i32 %135, %137
  br i1 %cmp264, label %if.then.266, label %if.end.272

if.then.266:                                      ; preds = %if.end.262
  %138 = load i8*, i8** %s, align 8
  %call267 = call float @ascii2prob(i8* %138, float 1.000000e+00)
  %139 = load i32, i32* %k, align 4
  %idxprom268 = sext i32 %139 to i64
  %140 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t269 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %140, i32 0, i32 21
  %141 = load float**, float*** %t269, align 8
  %arrayidx270 = getelementptr inbounds float*, float** %141, i64 %idxprom268
  %142 = load float*, float** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds float, float* %142, i64 5
  store float %call267, float* %arrayidx271, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.266, %if.end.262
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call273 = call i8* @Getword(%struct._IO_FILE* %143, i32 1)
  store i8* %call273, i8** %s, align 8
  %cmp274 = icmp eq i8* %call273, null
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.end.272
  br label %FAILURE

if.end.277:                                       ; preds = %if.end.272
  %144 = load i32, i32* %k, align 4
  %145 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M278 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %145, i32 0, i32 20
  %146 = load i32, i32* %M278, align 4
  %cmp279 = icmp slt i32 %144, %146
  br i1 %cmp279, label %if.then.281, label %if.end.296

if.then.281:                                      ; preds = %if.end.277
  %147 = load i32, i32* %k, align 4
  %148 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M282 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %148, i32 0, i32 20
  %149 = load i32, i32* %M282, align 4
  %cmp283 = icmp eq i32 %147, %149
  br i1 %cmp283, label %cond.true.285, label %cond.false.286

cond.true.285:                                    ; preds = %if.then.281
  br label %cond.end.289

cond.false.286:                                   ; preds = %if.then.281
  %150 = load i8*, i8** %s, align 8
  %call287 = call float @ascii2prob(i8* %150, float 1.000000e+00)
  %conv288 = fpext float %call287 to double
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.286, %cond.true.285
  %cond290 = phi double [ 0.000000e+00, %cond.true.285 ], [ %conv288, %cond.false.286 ]
  %conv291 = fptrunc double %cond290 to float
  %151 = load i32, i32* %k, align 4
  %idxprom292 = sext i32 %151 to i64
  %152 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t293 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %152, i32 0, i32 21
  %153 = load float**, float*** %t293, align 8
  %arrayidx294 = getelementptr inbounds float*, float** %153, i64 %idxprom292
  %154 = load float*, float** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds float, float* %154, i64 6
  store float %conv291, float* %arrayidx295, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %cond.end.289, %if.end.277
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call297 = call i8* @Getword(%struct._IO_FILE* %155, i32 1)
  store i8* %call297, i8** %s, align 8
  %cmp298 = icmp eq i8* %call297, null
  br i1 %cmp298, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %if.end.296
  br label %FAILURE

if.end.301:                                       ; preds = %if.end.296
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call302 = call i8* @Getword(%struct._IO_FILE* %156, i32 1)
  store i8* %call302, i8** %s, align 8
  %cmp303 = icmp eq i8* %call302, null
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.301
  br label %FAILURE

if.end.306:                                       ; preds = %if.end.301
  %157 = load i32, i32* %k, align 4
  %158 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M307 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %158, i32 0, i32 20
  %159 = load i32, i32* %M307, align 4
  %cmp308 = icmp slt i32 %157, %159
  br i1 %cmp308, label %if.then.310, label %if.end.316

if.then.310:                                      ; preds = %if.end.306
  %160 = load i8*, i8** %s, align 8
  %call311 = call float @ascii2prob(i8* %160, float 1.000000e+00)
  %161 = load i32, i32* %k, align 4
  %idxprom312 = sext i32 %161 to i64
  %162 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t313 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %162, i32 0, i32 21
  %163 = load float**, float*** %t313, align 8
  %arrayidx314 = getelementptr inbounds float*, float** %163, i64 %idxprom312
  %164 = load float*, float** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds float, float* %164, i64 3
  store float %call311, float* %arrayidx315, align 4
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.310, %if.end.306
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call317 = call i8* @Getword(%struct._IO_FILE* %165, i32 1)
  store i8* %call317, i8** %s, align 8
  %cmp318 = icmp eq i8* %call317, null
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %if.end.316
  br label %FAILURE

if.end.321:                                       ; preds = %if.end.316
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call322 = call i8* @Getword(%struct._IO_FILE* %166, i32 1)
  store i8* %call322, i8** %s, align 8
  %cmp323 = icmp eq i8* %call322, null
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.end.321
  br label %FAILURE

if.end.326:                                       ; preds = %if.end.321
  %167 = load i32, i32* %k, align 4
  %168 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M327 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %168, i32 0, i32 20
  %169 = load i32, i32* %M327, align 4
  %cmp328 = icmp slt i32 %167, %169
  br i1 %cmp328, label %if.then.330, label %if.end.336

if.then.330:                                      ; preds = %if.end.326
  %170 = load i8*, i8** %s, align 8
  %call331 = call float @ascii2prob(i8* %170, float 1.000000e+00)
  %171 = load i32, i32* %k, align 4
  %idxprom332 = sext i32 %171 to i64
  %172 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t333 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %172, i32 0, i32 21
  %173 = load float**, float*** %t333, align 8
  %arrayidx334 = getelementptr inbounds float*, float** %173, i64 %idxprom332
  %174 = load float*, float** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds float, float* %174, i64 4
  store float %call331, float* %arrayidx335, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.330, %if.end.326
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call337 = call i8* @Getword(%struct._IO_FILE* %175, i32 4)
  store i8* %call337, i8** %s, align 8
  %cmp338 = icmp eq i8* %call337, null
  br i1 %cmp338, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %if.end.336
  br label %FAILURE

if.end.341:                                       ; preds = %if.end.336
  %176 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags342 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %176, i32 0, i32 47
  %177 = load i32, i32* %flags342, align 4
  %and = and i32 %177, 4
  %tobool343 = icmp ne i32 %and, 0
  br i1 %tobool343, label %if.then.344, label %if.end.347

if.then.344:                                      ; preds = %if.end.341
  %178 = load i8*, i8** %s, align 8
  %179 = load i8, i8* %178, align 1
  %180 = load i32, i32* %k, align 4
  %idxprom345 = sext i32 %180 to i64
  %181 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %181, i32 0, i32 3
  %182 = load i8*, i8** %rf, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %182, i64 %idxprom345
  store i8 %179, i8* %arrayidx346, align 1
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.344, %if.end.341
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call348 = call i8* @Getword(%struct._IO_FILE* %183, i32 4)
  store i8* %call348, i8** %s, align 8
  %cmp349 = icmp eq i8* %call348, null
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.end.347
  br label %FAILURE

if.end.352:                                       ; preds = %if.end.347
  %184 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags353 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %184, i32 0, i32 47
  %185 = load i32, i32* %flags353, align 4
  %and354 = and i32 %185, 8
  %tobool355 = icmp ne i32 %and354, 0
  br i1 %tobool355, label %if.then.356, label %if.end.359

if.then.356:                                      ; preds = %if.end.352
  %186 = load i8*, i8** %s, align 8
  %187 = load i8, i8* %186, align 1
  %188 = load i32, i32* %k, align 4
  %idxprom357 = sext i32 %188 to i64
  %189 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 4
  %190 = load i8*, i8** %cs, align 8
  %arrayidx358 = getelementptr inbounds i8, i8* %190, i64 %idxprom357
  store i8 %187, i8* %arrayidx358, align 1
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.356, %if.end.352
  br label %for.inc.360

for.inc.360:                                      ; preds = %if.end.359
  %191 = load i32, i32* %k, align 4
  %inc361 = add nsw i32 %191, 1
  store i32 %inc361, i32* %k, align 4
  br label %for.cond.178

for.end.362:                                      ; preds = %for.cond.178
  store i32 0, i32* %k, align 4
  br label %for.cond.363

for.cond.363:                                     ; preds = %for.inc.400, %for.end.362
  %192 = load i32, i32* %k, align 4
  %193 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M364 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %193, i32 0, i32 20
  %194 = load i32, i32* %M364, align 4
  %cmp365 = icmp sle i32 %192, %194
  br i1 %cmp365, label %for.body.367, label %for.end.402

for.body.367:                                     ; preds = %for.cond.363
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call368 = call i8* @Getword(%struct._IO_FILE* %195, i32 1)
  store i8* %call368, i8** %s, align 8
  %cmp369 = icmp eq i8* %call368, null
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %for.body.367
  br label %FAILURE

if.end.372:                                       ; preds = %for.body.367
  store i32 0, i32* %x, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.397, %if.end.372
  %196 = load i32, i32* %x, align 4
  %197 = load i32, i32* @Alphabet_size, align 4
  %cmp374 = icmp slt i32 %196, %197
  br i1 %cmp374, label %for.body.376, label %for.end.399

for.body.376:                                     ; preds = %for.cond.373
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call377 = call i8* @Getword(%struct._IO_FILE* %198, i32 1)
  store i8* %call377, i8** %s, align 8
  %cmp378 = icmp eq i8* %call377, null
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %for.body.376
  br label %FAILURE

if.end.381:                                       ; preds = %for.body.376
  %199 = load i32, i32* %k, align 4
  %cmp382 = icmp sgt i32 %199, 0
  br i1 %cmp382, label %land.lhs.true, label %if.end.396

land.lhs.true:                                    ; preds = %if.end.381
  %200 = load i32, i32* %k, align 4
  %201 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M384 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %201, i32 0, i32 20
  %202 = load i32, i32* %M384, align 4
  %cmp385 = icmp slt i32 %200, %202
  br i1 %cmp385, label %if.then.387, label %if.end.396

if.then.387:                                      ; preds = %land.lhs.true
  %203 = load i8*, i8** %s, align 8
  %204 = load i32, i32* %x, align 4
  %idxprom388 = sext i32 %204 to i64
  %205 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %null389 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %205, i32 0, i32 28
  %arrayidx390 = getelementptr inbounds [20 x float], [20 x float]* %null389, i32 0, i64 %idxprom388
  %206 = load float, float* %arrayidx390, align 4
  %call391 = call float @ascii2prob(i8* %203, float %206)
  %207 = load i32, i32* %x, align 4
  %idxprom392 = sext i32 %207 to i64
  %208 = load i32, i32* %k, align 4
  %idxprom393 = sext i32 %208 to i64
  %209 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %209, i32 0, i32 23
  %210 = load float**, float*** %ins, align 8
  %arrayidx394 = getelementptr inbounds float*, float** %210, i64 %idxprom393
  %211 = load float*, float** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds float, float* %211, i64 %idxprom392
  store float %call391, float* %arrayidx395, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.387, %land.lhs.true, %if.end.381
  br label %for.inc.397

for.inc.397:                                      ; preds = %if.end.396
  %212 = load i32, i32* %x, align 4
  %inc398 = add nsw i32 %212, 1
  store i32 %inc398, i32* %x, align 4
  br label %for.cond.373

for.end.399:                                      ; preds = %for.cond.373
  br label %for.inc.400

for.inc.400:                                      ; preds = %for.end.399
  %213 = load i32, i32* %k, align 4
  %inc401 = add nsw i32 %213, 1
  store i32 %inc401, i32* %k, align 4
  br label %for.cond.363

for.end.402:                                      ; preds = %for.cond.363
  %214 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags403 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %214, i32 0, i32 47
  %215 = load i32, i32* %flags403, align 4
  %or404 = or i32 %215, 32
  store i32 %or404, i32* %flags403, align 4
  %216 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags405 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %216, i32 0, i32 47
  %217 = load i32, i32* %flags405, align 4
  %and406 = and i32 %217, -2
  store i32 %and406, i32* %flags405, align 4
  %218 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %218)
  %call407 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %219 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %219, i32 0, i32 6
  store i8* %call407, i8** %comlog, align 8
  %220 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7SetCtime(%struct.plan7_s* %220)
  %221 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %222 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %221, %struct.plan7_s** %222, align 8
  store i32 1, i32* %retval
  br label %return

FAILURE:                                          ; preds = %if.then.380, %if.then.371, %if.then.351, %if.then.340, %if.then.325, %if.then.320, %if.then.305, %if.then.300, %if.then.276, %if.then.261, %if.then.246, %if.then.225, %if.then.211, %if.then.195, %if.then.186, %if.then.176, %if.then.171, %if.then.163, %if.then.139, %if.then.132, %if.then.124, %if.then.115, %if.then.110, %if.then.106, %if.then.102, %if.then.98, %if.then.89, %if.then.82, %if.then.77, %if.then.65, %if.then.55, %if.then.50, %if.then.45, %if.else.31, %if.then.23, %if.then.19, %if.then.15, %if.then.10, %if.then.5
  %223 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cmp408 = icmp ne %struct.plan7_s* %223, null
  br i1 %cmp408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %FAILURE
  %224 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %224)
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.410, %FAILURE
  %225 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %225, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.411, %for.end.402, %if.then
  %226 = load i32, i32* %retval
  ret i32 %226
}

; Function Attrs: nounwind uwtable
define internal i32 @read_asc17hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %p9hmm = alloca %struct.plan9_s*, align 8
  %buffer = alloca [512 x i8], align 16
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %3)
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f3 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f3, align 8
  %call4 = call %struct.plan9_s* @read_plan9_aschmm(%struct._IO_FILE* %5, i32 6)
  store %struct.plan9_s* %call4, %struct.plan9_s** %p9hmm, align 8
  %6 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %cmp5 = icmp eq %struct.plan9_s* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* null, %struct.plan7_s** %7, align 8
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  call void @Plan9toPlan7(%struct.plan9_s* %8, %struct.plan7_s** %hmm)
  %call8 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 6
  store i8* %call8, i8** %comlog, align 8
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7SetCtime(%struct.plan7_s* %10)
  %11 = load %struct.plan9_s*, %struct.plan9_s** %p9hmm, align 8
  %call9 = call i32 @P9FreeHMM(%struct.plan9_s* %11)
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %12)
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %14 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %13, %struct.plan7_s** %14, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @read_asc11hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.90, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @read_asc10hmm(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @HMMFileRead(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %status = alloca i32, align 4
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %is_seekable = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 5
  %1 = load i32, i32* %is_seekable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %4 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %mode = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %4, i32 0, i32 6
  %5 = load i32, i32* %mode, align 4
  %6 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %offset = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %6, i32 0, i32 7
  %call = call i32 @SSIGetFilePosition(%struct._IO_FILE* %3, i32 %5, %struct.ssioffset_s* %offset)
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %8 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %parser = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %8, i32 0, i32 2
  %9 = load i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser, align 8
  %10 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %11 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  %call3 = call i32 %9(%struct.hmmfile_s* %10, %struct.plan7_s** %11)
  ret i32 %call3
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @SSIClose(%struct.ssifile_s*) #1

; Function Attrs: nounwind uwtable
define void @HMMFileRewind(%struct.hmmfile_s* %hmmfp) #0 {
entry:
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @rewind(%struct._IO_FILE* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @HMMFilePositionByName(%struct.hmmfile_s* %hmmfp, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %name.addr = alloca i8*, align 8
  %offset = alloca %struct.ssioffset_s, align 8
  %fh = alloca i32, align 4
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %ssi = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 1
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi, align 8
  %cmp = icmp eq %struct.ssifile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %ssi1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 1
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi1, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %3, i8* %4, i32* %fh, %struct.ssioffset_s* %offset)
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %6, %struct.ssioffset_s* %offset)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #1

declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #1

; Function Attrs: nounwind uwtable
define i32 @HMMFilePositionByIndex(%struct.hmmfile_s* %hmmfp, i32 %idx) #0 {
entry:
  %retval = alloca i32, align 4
  %hmmfp.addr = alloca %struct.hmmfile_s*, align 8
  %idx.addr = alloca i32, align 4
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  store %struct.hmmfile_s* %hmmfp, %struct.hmmfile_s** %hmmfp.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %ssi = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %0, i32 0, i32 1
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi, align 8
  %cmp = icmp eq %struct.ssifile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %ssi1 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %2, i32 0, i32 1
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi1, align 8
  %4 = load i32, i32* %idx.addr, align 4
  %call = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %3, i32 %4, i32* %fh, %struct.ssioffset_s* %offset)
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp.addr, align 8
  %f = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %6, %struct.ssioffset_s* %offset)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #1

; Function Attrs: nounwind uwtable
define void @WriteAscHMM(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %ts = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* %3)
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 47
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %acc, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 47
  %10 = load i32, i32* %flags3, align 4
  %and4 = and i32 %10, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %desc, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 20
  %16 = load i32, i32* %M, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %18 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp eq i32 %18, 3
  %cond = select i1 %cmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %cond)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 47
  %21 = load i32, i32* %flags11, align 4
  %and12 = and i32 %21, 4
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %cond14)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 47
  %24 = load i32, i32* %flags16, align 4
  %and17 = and i32 %24, 8
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* %cond19)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 47
  %27 = load i32, i32* %flags21, align 4
  %and22 = and i32 %27, 256
  %tobool23 = icmp ne i32 %and22, 0
  %cond24 = select i1 %tobool23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* %cond24)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 6
  %30 = load i8*, i8** %comlog, align 8
  call void @multiline(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 7
  %33 = load i32, i32* %nseq, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 8
  %36 = load i8*, i8** %ctime, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %38 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %checksum = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 10
  %39 = load i32, i32* %checksum, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 %39)
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 47
  %41 = load i32, i32* %flags29, align 4
  %and30 = and i32 %41, 1024
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 14
  %44 = load float, float* %ga1, align 4
  %conv = fpext float %44 to double
  %45 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 15
  %46 = load float, float* %ga2, align 4
  %conv33 = fpext float %46 to double
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), double %conv, double %conv33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.8
  %47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 47
  %48 = load i32, i32* %flags36, align 4
  %and37 = and i32 %48, 2048
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.35
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 16
  %51 = load float, float* %tc1, align 4
  %conv40 = fpext float %51 to double
  %52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 17
  %53 = load float, float* %tc2, align 4
  %conv41 = fpext float %53 to double
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), double %conv40, double %conv41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.35
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 47
  %55 = load i32, i32* %flags44, align 4
  %and45 = and i32 %55, 4096
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.43
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 18
  %58 = load float, float* %nc1, align 4
  %conv48 = fpext float %58 to double
  %59 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 19
  %60 = load float, float* %nc2, align 4
  %conv49 = fpext float %60 to double
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), double %conv48, double %conv49)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.43
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call52 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %61)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %if.end.51
  %62 = load i32, i32* %k, align 4
  %cmp53 = icmp slt i32 %62, 4
  br i1 %cmp53, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc, %for.body
  %63 = load i32, i32* %x, align 4
  %cmp56 = icmp slt i32 %63, 2
  br i1 %cmp56, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.55
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %65 = load i32, i32* %x, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load i32, i32* %k, align 4
  %idxprom59 = sext i32 %66 to i64
  %67 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom59
  %arrayidx60 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 %idxprom
  %68 = load float, float* %arrayidx60, align 4
  %call61 = call i8* @prob2ascii(float %68, float 1.000000e+00)
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %call61)
  br label %for.inc

for.inc:                                          ; preds = %for.body.58
  %69 = load i32, i32* %x, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.55

for.end:                                          ; preds = %for.cond.55
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end
  %70 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %70, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %74 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 29
  %75 = load float, float* %p1, align 4
  %call68 = call i8* @prob2ascii(float %75, float 1.000000e+00)
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %call68)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p170 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 29
  %78 = load float, float* %p170, align 4
  %conv71 = fpext float %78 to double
  %sub = fsub double 1.000000e+00, %conv71
  %conv72 = fptrunc double %sub to float
  %call73 = call i8* @prob2ascii(float %conv72, float 1.000000e+00)
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* %call73)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call75 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %79)
  store i32 0, i32* %x, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.85, %for.end.65
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* @Alphabet_size, align 4
  %cmp77 = icmp slt i32 %80, %81
  br i1 %cmp77, label %for.body.79, label %for.end.87

for.body.79:                                      ; preds = %for.cond.76
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %83 = load i32, i32* %x, align 4
  %idxprom80 = sext i32 %83 to i64
  %84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 28
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i64 %idxprom80
  %85 = load float, float* %arrayidx81, align 4
  %86 = load i32, i32* @Alphabet_size, align 4
  %conv82 = sitofp i32 %86 to float
  %div = fdiv float 1.000000e+00, %conv82
  %call83 = call i8* @prob2ascii(float %85, float %div)
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %call83)
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.79
  %87 = load i32, i32* %x, align 4
  %inc86 = add nsw i32 %87, 1
  store i32 %inc86, i32* %x, align 4
  br label %for.cond.76

for.end.87:                                       ; preds = %for.cond.76
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call88 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %88)
  %89 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 47
  %90 = load i32, i32* %flags89, align 4
  %and90 = and i32 %90, 128
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %for.end.87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 45
  %93 = load float, float* %mu, align 4
  %conv93 = fpext float %93 to double
  %94 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 46
  %95 = load float, float* %lambda, align 4
  %conv94 = fpext float %95 to double
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), double %conv93, double %conv94)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %for.end.87
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %x, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.106, %if.end.96
  %97 = load i32, i32* %x, align 4
  %98 = load i32, i32* @Alphabet_size, align 4
  %cmp99 = icmp slt i32 %97, %98
  br i1 %cmp99, label %for.body.101, label %for.end.108

for.body.101:                                     ; preds = %for.cond.98
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %100 = load i32, i32* %x, align 4
  %idxprom102 = sext i32 %100 to i64
  %arrayidx103 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom102
  %101 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %101 to i32
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %conv104)
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.101
  %102 = load i32, i32* %x, align 4
  %inc107 = add nsw i32 %102, 1
  store i32 %inc107, i32* %x, align 4
  br label %for.cond.98

for.end.108:                                      ; preds = %for.cond.98
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0))
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %106 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 24
  %107 = load float, float* %tbd1, align 4
  %sub111 = fsub float 1.000000e+00, %107
  %call112 = call i8* @prob2ascii(float %sub111, float 1.000000e+00)
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* %call112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %109 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1114 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %109, i32 0, i32 24
  %110 = load float, float* %tbd1114, align 4
  %call115 = call i8* @prob2ascii(float %110, float 1.000000e+00)
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* %call115)
  store i32 1, i32* %k, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.220, %for.end.108
  %111 = load i32, i32* %k, align 4
  %112 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M118 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %112, i32 0, i32 20
  %113 = load i32, i32* %M118, align 4
  %cmp119 = icmp sle i32 %111, %113
  br i1 %cmp119, label %for.body.121, label %for.end.222

for.body.121:                                     ; preds = %for.cond.117
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %115 = load i32, i32* %k, align 4
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 %115)
  store i32 0, i32* %x, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.136, %for.body.121
  %116 = load i32, i32* %x, align 4
  %117 = load i32, i32* @Alphabet_size, align 4
  %cmp124 = icmp slt i32 %116, %117
  br i1 %cmp124, label %for.body.126, label %for.end.138

for.body.126:                                     ; preds = %for.cond.123
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %119 = load i32, i32* %x, align 4
  %idxprom127 = sext i32 %119 to i64
  %120 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %120 to i64
  %121 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %121, i32 0, i32 22
  %122 = load float**, float*** %mat, align 8
  %arrayidx129 = getelementptr inbounds float*, float** %122, i64 %idxprom128
  %123 = load float*, float** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds float, float* %123, i64 %idxprom127
  %124 = load float, float* %arrayidx130, align 4
  %125 = load i32, i32* %x, align 4
  %idxprom131 = sext i32 %125 to i64
  %126 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null132 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %126, i32 0, i32 28
  %arrayidx133 = getelementptr inbounds [20 x float], [20 x float]* %null132, i32 0, i64 %idxprom131
  %127 = load float, float* %arrayidx133, align 4
  %call134 = call i8* @prob2ascii(float %124, float %127)
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %call134)
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.126
  %128 = load i32, i32* %x, align 4
  %inc137 = add nsw i32 %128, 1
  store i32 %inc137, i32* %x, align 4
  br label %for.cond.123

for.end.138:                                      ; preds = %for.cond.123
  %129 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags139 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 47
  %130 = load i32, i32* %flags139, align 4
  %and140 = and i32 %130, 256
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %for.end.138
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %132 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %132 to i64
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 9
  %134 = load i32*, i32** %map, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %134, i64 %idxprom143
  %135 = load i32, i32* %arrayidx144, align 4
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 %135)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.142, %for.end.138
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call147 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %136)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %138 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags148 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %138, i32 0, i32 47
  %139 = load i32, i32* %flags148, align 4
  %and149 = and i32 %139, 4
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.146
  %140 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %140 to i64
  %141 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 3
  %142 = load i8*, i8** %rf, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %142, i64 %idxprom151
  %143 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %143 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.146
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond154 = phi i32 [ %conv153, %cond.true ], [ 45, %cond.false ]
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %cond154)
  store i32 0, i32* %x, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.176, %cond.end
  %144 = load i32, i32* %x, align 4
  %145 = load i32, i32* @Alphabet_size, align 4
  %cmp157 = icmp slt i32 %144, %145
  br i1 %cmp157, label %for.body.159, label %for.end.178

for.body.159:                                     ; preds = %for.cond.156
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %147 = load i32, i32* %k, align 4
  %148 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M160 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %148, i32 0, i32 20
  %149 = load i32, i32* %M160, align 4
  %cmp161 = icmp slt i32 %147, %149
  br i1 %cmp161, label %cond.true.163, label %cond.false.172

cond.true.163:                                    ; preds = %for.body.159
  %150 = load i32, i32* %x, align 4
  %idxprom164 = sext i32 %150 to i64
  %151 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %151 to i64
  %152 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %152, i32 0, i32 23
  %153 = load float**, float*** %ins, align 8
  %arrayidx166 = getelementptr inbounds float*, float** %153, i64 %idxprom165
  %154 = load float*, float** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds float, float* %154, i64 %idxprom164
  %155 = load float, float* %arrayidx167, align 4
  %156 = load i32, i32* %x, align 4
  %idxprom168 = sext i32 %156 to i64
  %157 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null169 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %157, i32 0, i32 28
  %arrayidx170 = getelementptr inbounds [20 x float], [20 x float]* %null169, i32 0, i64 %idxprom168
  %158 = load float, float* %arrayidx170, align 4
  %call171 = call i8* @prob2ascii(float %155, float %158)
  br label %cond.end.173

cond.false.172:                                   ; preds = %for.body.159
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.163
  %cond174 = phi i8* [ %call171, %cond.true.163 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.172 ]
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %cond174)
  br label %for.inc.176

for.inc.176:                                      ; preds = %cond.end.173
  %159 = load i32, i32* %x, align 4
  %inc177 = add nsw i32 %159, 1
  store i32 %inc177, i32* %x, align 4
  br label %for.cond.156

for.end.178:                                      ; preds = %for.cond.156
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call179 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %160)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %162 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags180 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %162, i32 0, i32 47
  %163 = load i32, i32* %flags180, align 4
  %and181 = and i32 %163, 8
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %cond.true.183, label %cond.false.187

cond.true.183:                                    ; preds = %for.end.178
  %164 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %164 to i64
  %165 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 4
  %166 = load i8*, i8** %cs, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %166, i64 %idxprom184
  %167 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %167 to i32
  br label %cond.end.188

cond.false.187:                                   ; preds = %for.end.178
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.183
  %cond189 = phi i32 [ %conv186, %cond.true.183 ], [ 45, %cond.false.187 ]
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %cond189)
  store i32 0, i32* %ts, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.208, %cond.end.188
  %168 = load i32, i32* %ts, align 4
  %cmp192 = icmp slt i32 %168, 7
  br i1 %cmp192, label %for.body.194, label %for.end.210

for.body.194:                                     ; preds = %for.cond.191
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %170 = load i32, i32* %k, align 4
  %171 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M195 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %171, i32 0, i32 20
  %172 = load i32, i32* %M195, align 4
  %cmp196 = icmp slt i32 %170, %172
  br i1 %cmp196, label %cond.true.198, label %cond.false.204

cond.true.198:                                    ; preds = %for.body.194
  %173 = load i32, i32* %ts, align 4
  %idxprom199 = sext i32 %173 to i64
  %174 = load i32, i32* %k, align 4
  %idxprom200 = sext i32 %174 to i64
  %175 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %175, i32 0, i32 21
  %176 = load float**, float*** %t, align 8
  %arrayidx201 = getelementptr inbounds float*, float** %176, i64 %idxprom200
  %177 = load float*, float** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds float, float* %177, i64 %idxprom199
  %178 = load float, float* %arrayidx202, align 4
  %call203 = call i8* @prob2ascii(float %178, float 1.000000e+00)
  br label %cond.end.205

cond.false.204:                                   ; preds = %for.body.194
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.204, %cond.true.198
  %cond206 = phi i8* [ %call203, %cond.true.198 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.204 ]
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %cond206)
  br label %for.inc.208

for.inc.208:                                      ; preds = %cond.end.205
  %179 = load i32, i32* %ts, align 4
  %inc209 = add nsw i32 %179, 1
  store i32 %inc209, i32* %ts, align 4
  br label %for.cond.191

for.end.210:                                      ; preds = %for.cond.191
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %181 = load i32, i32* %k, align 4
  %idxprom211 = sext i32 %181 to i64
  %182 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %182, i32 0, i32 26
  %183 = load float*, float** %begin, align 8
  %arrayidx212 = getelementptr inbounds float, float* %183, i64 %idxprom211
  %184 = load float, float* %arrayidx212, align 4
  %call213 = call i8* @prob2ascii(float %184, float 1.000000e+00)
  %call214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %call213)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %186 = load i32, i32* %k, align 4
  %idxprom215 = sext i32 %186 to i64
  %187 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %187, i32 0, i32 27
  %188 = load float*, float** %end, align 8
  %arrayidx216 = getelementptr inbounds float, float* %188, i64 %idxprom215
  %189 = load float, float* %arrayidx216, align 4
  %call217 = call i8* @prob2ascii(float %189, float 1.000000e+00)
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %call217)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call219 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %190)
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.end.210
  %191 = load i32, i32* %k, align 4
  %inc221 = add nsw i32 %191, 1
  store i32 %inc221, i32* %k, align 4
  br label %for.cond.117

for.end.222:                                      ; preds = %for.cond.117
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call223 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %192)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @multiline(%struct._IO_FILE* %fp, i8* %pfx, i8* %s) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %pfx.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %pfx, i8** %pfx.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i8* @Strdup(i8* %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %call1 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  store i8* %call1, i8** %sptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i8*, i8** %sptr, align 8
  %cmp2 = icmp ne i8* %3, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i8*, i8** %pfx.addr, align 8
  %6 = load i8*, i8** %sptr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* %5, i8* %6)
  %call4 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  store i8* %call4, i8** %sptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %buf, align 8
  call void @free(i8* %7) #6
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @prob2ascii(float %p, float %null) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca float, align 4
  %null.addr = alloca float, align 4
  store float %p, float* %p.addr, align 4
  store float %null, float* %null.addr, align 4
  %0 = load float, float* %p.addr, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load float, float* %p.addr, align 4
  %2 = load float, float* %null.addr, align 4
  %call = call i32 @Prob2Score(float %1, float %2)
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @prob2ascii.buffer, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 %call) #6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @prob2ascii.buffer, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define void @WriteBinHMM(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fwrite(i8* bitcast (i32* @v20magic to i8*), i64 4, i64 1, %struct._IO_FILE* %0)
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 47
  %2 = bitcast i32* %flags to i8*
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  call void @write_bin_string(%struct._IO_FILE* %4, i8* %6)
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 47
  %8 = load i32, i32* %flags2, align 4
  %and = and i32 %8, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %acc, align 8
  call void @write_bin_string(%struct._IO_FILE* %9, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 47
  %13 = load i32, i32* %flags3, align 4
  %and4 = and i32 %13, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 2
  %16 = load i8*, i8** %desc, align 8
  call void @write_bin_string(%struct._IO_FILE* %14, i8* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 20
  %18 = bitcast i32* %M to i8*
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i64 @fwrite(i8* %18, i64 4, i64 1, %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i64 @fwrite(i8* bitcast (i32* @Alphabet_type to i8*), i64 4, i64 1, %struct._IO_FILE* %20)
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 47
  %22 = load i32, i32* %flags10, align 4
  %and11 = and i32 %22, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.7
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 3
  %24 = load i8*, i8** %rf, align 8
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 20
  %26 = load i32, i32* %M14, align 4
  %add = add nsw i32 %26, 1
  %conv = sext i32 %add to i64
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i64 @fwrite(i8* %24, i64 1, i64 %conv, %struct._IO_FILE* %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.7
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 47
  %29 = load i32, i32* %flags17, align 4
  %and18 = and i32 %29, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end.16
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 4
  %31 = load i8*, i8** %cs, align 8
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 20
  %33 = load i32, i32* %M21, align 4
  %add22 = add nsw i32 %33, 1
  %conv23 = sext i32 %add22 to i64
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i64 @fwrite(i8* %31, i64 1, i64 %conv23, %struct._IO_FILE* %34)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end.16
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags26 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 47
  %36 = load i32, i32* %flags26, align 4
  %and27 = and i32 %36, 256
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.25
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 9
  %38 = load i32*, i32** %map, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 20
  %41 = load i32, i32* %M30, align 4
  %add31 = add nsw i32 %41, 1
  %conv32 = sext i32 %add31 to i64
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call33 = call i64 @fwrite(i8* %39, i64 4, i64 %conv32, %struct._IO_FILE* %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.25
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 6
  %45 = load i8*, i8** %comlog, align 8
  call void @write_bin_string(%struct._IO_FILE* %43, i8* %45)
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 7
  %47 = bitcast i32* %nseq to i8*
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call35 = call i64 @fwrite(i8* %47, i64 4, i64 1, %struct._IO_FILE* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 8
  %51 = load i8*, i8** %ctime, align 8
  call void @write_bin_string(%struct._IO_FILE* %49, i8* %51)
  %52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %checksum = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 10
  %53 = bitcast i32* %checksum to i8*
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i64 @fwrite(i8* %53, i64 4, i64 1, %struct._IO_FILE* %54)
  %55 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %55, i32 0, i32 47
  %56 = load i32, i32* %flags37, align 4
  %and38 = and i32 %56, 1024
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.34
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 14
  %58 = bitcast float* %ga1 to i8*
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call41 = call i64 @fwrite(i8* %58, i64 4, i64 1, %struct._IO_FILE* %59)
  %60 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 15
  %61 = bitcast float* %ga2 to i8*
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call42 = call i64 @fwrite(i8* %61, i64 4, i64 1, %struct._IO_FILE* %62)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.34
  %63 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 47
  %64 = load i32, i32* %flags44, align 4
  %and45 = and i32 %64, 2048
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.43
  %65 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %65, i32 0, i32 16
  %66 = bitcast float* %tc1 to i8*
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call48 = call i64 @fwrite(i8* %66, i64 4, i64 1, %struct._IO_FILE* %67)
  %68 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 17
  %69 = bitcast float* %tc2 to i8*
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call49 = call i64 @fwrite(i8* %69, i64 4, i64 1, %struct._IO_FILE* %70)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.43
  %71 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %71, i32 0, i32 47
  %72 = load i32, i32* %flags51, align 4
  %and52 = and i32 %72, 4096
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.50
  %73 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 18
  %74 = bitcast float* %nc1 to i8*
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call55 = call i64 @fwrite(i8* %74, i64 4, i64 1, %struct._IO_FILE* %75)
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 19
  %77 = bitcast float* %nc2 to i8*
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call56 = call i64 @fwrite(i8* %77, i64 4, i64 1, %struct._IO_FILE* %78)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.50
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.57
  %79 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %79, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %k, align 4
  %idxprom = sext i32 %80 to i64
  %81 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %81, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i32 0
  %82 = bitcast float* %arraydecay to i8*
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call59 = call i64 @fwrite(i8* %82, i64 4, i64 2, %struct._IO_FILE* %83)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %k, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 29
  %86 = bitcast float* %p1 to i8*
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call60 = call i64 @fwrite(i8* %86, i64 4, i64 1, %struct._IO_FILE* %87)
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 28
  %arraydecay61 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %89 = bitcast float* %arraydecay61 to i8*
  %90 = load i32, i32* @Alphabet_size, align 4
  %conv62 = sext i32 %90 to i64
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call63 = call i64 @fwrite(i8* %89, i64 4, i64 %conv62, %struct._IO_FILE* %91)
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 47
  %93 = load i32, i32* %flags64, align 4
  %and65 = and i32 %93, 128
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %for.end
  %94 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 45
  %95 = bitcast float* %mu to i8*
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call68 = call i64 @fwrite(i8* %95, i64 4, i64 1, %struct._IO_FILE* %96)
  %97 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %97, i32 0, i32 46
  %98 = bitcast float* %lambda to i8*
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call69 = call i64 @fwrite(i8* %98, i64 4, i64 1, %struct._IO_FILE* %99)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %for.end
  %100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 24
  %101 = bitcast float* %tbd1 to i8*
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call71 = call i64 @fwrite(i8* %101, i64 4, i64 1, %struct._IO_FILE* %102)
  %103 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %103, i32 0, i32 26
  %104 = load float*, float** %begin, align 8
  %105 = bitcast float* %104 to i8*
  %106 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 20
  %107 = load i32, i32* %M72, align 4
  %add73 = add nsw i32 %107, 1
  %conv74 = sext i32 %add73 to i64
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call75 = call i64 @fwrite(i8* %105, i64 4, i64 %conv74, %struct._IO_FILE* %108)
  %109 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %109, i32 0, i32 27
  %110 = load float*, float** %end, align 8
  %111 = bitcast float* %110 to i8*
  %112 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M76 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %112, i32 0, i32 20
  %113 = load i32, i32* %M76, align 4
  %add77 = add nsw i32 %113, 1
  %conv78 = sext i32 %add77 to i64
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call79 = call i64 @fwrite(i8* %111, i64 4, i64 %conv78, %struct._IO_FILE* %114)
  store i32 1, i32* %k, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.89, %if.end.70
  %115 = load i32, i32* %k, align 4
  %116 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %116, i32 0, i32 20
  %117 = load i32, i32* %M81, align 4
  %cmp82 = icmp sle i32 %115, %117
  br i1 %cmp82, label %for.body.84, label %for.end.91

for.body.84:                                      ; preds = %for.cond.80
  %118 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %118 to i64
  %119 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %119, i32 0, i32 22
  %120 = load float**, float*** %mat, align 8
  %arrayidx86 = getelementptr inbounds float*, float** %120, i64 %idxprom85
  %121 = load float*, float** %arrayidx86, align 8
  %122 = bitcast float* %121 to i8*
  %123 = load i32, i32* @Alphabet_size, align 4
  %conv87 = sext i32 %123 to i64
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call88 = call i64 @fwrite(i8* %122, i64 4, i64 %conv87, %struct._IO_FILE* %124)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.84
  %125 = load i32, i32* %k, align 4
  %inc90 = add nsw i32 %125, 1
  store i32 %inc90, i32* %k, align 4
  br label %for.cond.80

for.end.91:                                       ; preds = %for.cond.80
  store i32 1, i32* %k, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.101, %for.end.91
  %126 = load i32, i32* %k, align 4
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M93 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 20
  %128 = load i32, i32* %M93, align 4
  %cmp94 = icmp slt i32 %126, %128
  br i1 %cmp94, label %for.body.96, label %for.end.103

for.body.96:                                      ; preds = %for.cond.92
  %129 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %129 to i64
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 23
  %131 = load float**, float*** %ins, align 8
  %arrayidx98 = getelementptr inbounds float*, float** %131, i64 %idxprom97
  %132 = load float*, float** %arrayidx98, align 8
  %133 = bitcast float* %132 to i8*
  %134 = load i32, i32* @Alphabet_size, align 4
  %conv99 = sext i32 %134 to i64
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call100 = call i64 @fwrite(i8* %133, i64 4, i64 %conv99, %struct._IO_FILE* %135)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.96
  %136 = load i32, i32* %k, align 4
  %inc102 = add nsw i32 %136, 1
  store i32 %inc102, i32* %k, align 4
  br label %for.cond.92

for.end.103:                                      ; preds = %for.cond.92
  store i32 1, i32* %k, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.112, %for.end.103
  %137 = load i32, i32* %k, align 4
  %138 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M105 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %138, i32 0, i32 20
  %139 = load i32, i32* %M105, align 4
  %cmp106 = icmp slt i32 %137, %139
  br i1 %cmp106, label %for.body.108, label %for.end.114

for.body.108:                                     ; preds = %for.cond.104
  %140 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %140 to i64
  %141 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 21
  %142 = load float**, float*** %t, align 8
  %arrayidx110 = getelementptr inbounds float*, float** %142, i64 %idxprom109
  %143 = load float*, float** %arrayidx110, align 8
  %144 = bitcast float* %143 to i8*
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call111 = call i64 @fwrite(i8* %144, i64 4, i64 7, %struct._IO_FILE* %145)
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.108
  %146 = load i32, i32* %k, align 4
  %inc113 = add nsw i32 %146, 1
  store i32 %inc113, i32* %k, align 4
  br label %for.cond.104

for.end.114:                                      ; preds = %for.cond.104
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @write_bin_string(%struct._IO_FILE* %fp, i8* %s) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %2 = bitcast i32* %len to i8*
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3)
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %len, align 4
  %conv2 = sext i32 %5 to i64
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i64 @fwrite(i8* %4, i64 1, i64 %conv2, %struct._IO_FILE* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %len, align 4
  %7 = bitcast i32* %len to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i64 @fwrite(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare %struct.plan7_s* @AllocPlan7Shell() #1

declare void @Plan7SetName(%struct.plan7_s*, i8*) #1

declare void @Plan7SetAccession(%struct.plan7_s*, i8*) #1

declare void @Plan7SetDescription(%struct.plan7_s*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare void @s2upper(i8*) #1

declare void @SetAlphabet(i32) #1

declare i8* @AlphabetType2String(i32) #1

declare i32 @sre_toupper(i32) #1

declare void @StringChop(i8*) #1

declare i8* @Strdup(i8*) #1

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind uwtable
define internal float @ascii2prob(i8* %s, float %null) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %null.addr = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store float %null, float* %null.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i32 @atoi(i8* %2) #5
  %3 = load float, float* %null.addr, align 4
  %call2 = call float @Score2Prob(i32 %call, float %3)
  %conv3 = fpext float %call2 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = fptrunc double %cond to float
  ret float %conv4
}

declare void @AllocPlan7Body(%struct.plan7_s*, i32) #1

declare void @Plan7Renormalize(%struct.plan7_s*) #1

declare void @FreePlan7(%struct.plan7_s*) #1

declare float @Score2Prob(i32, float) #1

; Function Attrs: nounwind uwtable
define internal void @byteswap(i8* %swap, i32 %nbytes) #0 {
entry:
  %swap.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %byte = alloca i8, align 1
  store i8* %swap, i8** %swap.addr, align 8
  store i32 %nbytes, i32* %nbytes.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %nbytes.addr, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %nbytes.addr, align 4
  %3 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %2, %3
  %sub1 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub1 to i64
  %4 = load i8*, i8** %swap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %byte, align 1
  %6 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8*, i8** %swap.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %9 = load i32, i32* %nbytes.addr, align 4
  %10 = load i32, i32* %x, align 4
  %sub4 = sub nsw i32 %9, %10
  %sub5 = sub nsw i32 %sub4, 1
  %idxprom6 = sext i32 %sub5 to i64
  %11 = load i8*, i8** %swap.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  store i8 %8, i8* %arrayidx7, align 1
  %12 = load i8, i8* %byte, align 1
  %13 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i8*, i8** %swap.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %idxprom8
  store i8 %12, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_bin_string(%struct._IO_FILE* %fp, i32 %doswap, i8** %ret_s) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %doswap.addr = alloca i32, align 4
  %ret_s.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %doswap, i32* %doswap.addr, align 4
  store i8** %ret_s, i8*** %ret_s.addr, align 8
  %0 = bitcast i32* %len to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %doswap.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = bitcast i32* %len to i8*
  call void @byteswap(i8* %3, i32 4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %len, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 1, %conv
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1370, i64 %mul)
  store i8* %call4, i8** %s, align 8
  %5 = load i8*, i8** %s, align 8
  %6 = load i32, i32* %len, align 4
  %conv5 = sext i32 %6 to i64
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i64 @fread(i8* %5, i64 1, i64 %conv5, %struct._IO_FILE* %7)
  %tobool7 = icmp ne i64 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.3
  %8 = load i8*, i8** %s, align 8
  call void @free(i8* %8) #6
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  %9 = load i8*, i8** %s, align 8
  %10 = load i8**, i8*** %ret_s.addr, align 8
  store i8* %9, i8** %10, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i8* @Getword(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @ZeroPlan7(%struct.plan7_s*) #1

declare void @Plan7LSConfig(%struct.plan7_s*) #1

declare void @Plan7SetCtime(%struct.plan7_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %fp, i32 %version, i32 %swapped) #0 {
entry:
  %retval = alloca %struct.plan9_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %version.addr = alloca i32, align 4
  %swapped.addr = alloca i32, align 4
  %hmm = alloca %struct.plan9_s*, align 8
  %M = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %len = alloca i32, align 4
  %asize = alloca i32, align 4
  %atype = alloca i32, align 4
  %abet = alloca [20 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  store i32 %swapped, i32* %swapped.addr, align 4
  %0 = bitcast i32* %M to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %asize to i8*
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3)
  %tobool2 = icmp ne i64 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %swapped.addr, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %5 = bitcast i32* %M to i8*
  call void @byteswap(i8* %5, i32 4)
  %6 = bitcast i32* %asize to i8*
  call void @byteswap(i8* %6, i32 4)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %7 = load i32, i32* %asize, align 4
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.7
  store i32 2, i32* %atype, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.7
  %8 = load i32, i32* %asize, align 4
  %cmp9 = icmp eq i32 %8, 20
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 3, i32* %atype, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.else
  %9 = load i32, i32* %asize, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.85, i32 0, i32 0), i32 %9)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.8
  %10 = load i32, i32* @Alphabet_type, align 4
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  %11 = load i32, i32* %atype, align 4
  call void @SetAlphabet(i32 %11)
  br label %if.end.22

if.else.16:                                       ; preds = %if.end.13
  %12 = load i32, i32* %atype, align 4
  %13 = load i32, i32* @Alphabet_type, align 4
  %cmp17 = icmp ne i32 %12, %13
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.else.16
  %14 = load i32, i32* @Alphabet_type, align 4
  %call19 = call i8* @AlphabetType2String(i32 %14)
  %15 = load i32, i32* %atype, align 4
  %call20 = call i8* @AlphabetType2String(i32 %15)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.65, i32 0, i32 0), i8* %call19, i8* %call20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.else.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %16 = load i32, i32* %M, align 4
  %call23 = call %struct.plan9_s* @P9AllocHMM(i32 %16)
  store %struct.plan9_s* %call23, %struct.plan9_s** %hmm, align 8
  %cmp24 = icmp eq %struct.plan9_s* %call23, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %17 = load i32, i32* %version.addr, align 4
  %cmp27 = icmp eq i32 %17, 7
  br i1 %cmp27, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %if.end.26
  %18 = bitcast i32* %len to i8*
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call29 = call i64 @fread(i8* %18, i64 4, i64 1, %struct._IO_FILE* %19)
  %tobool30 = icmp ne i64 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.28
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.28
  %20 = load i32, i32* %swapped.addr, align 4
  %tobool33 = icmp ne i32 %20, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %21 = bitcast i32* %len to i8*
  call void @byteswap(i8* %21, i32 4)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  %22 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %22, i32 0, i32 5
  %23 = load i8*, i8** %name, align 8
  %24 = load i32, i32* %len, align 4
  %add = add nsw i32 %24, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call36 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1475, i8* %23, i64 %mul)
  %25 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %name37 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %25, i32 0, i32 5
  store i8* %call36, i8** %name37, align 8
  %26 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %name38 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %26, i32 0, i32 5
  %27 = load i8*, i8** %name38, align 8
  %28 = load i32, i32* %len, align 4
  %conv39 = sext i32 %28 to i64
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call40 = call i64 @fread(i8* %27, i64 1, i64 %conv39, %struct._IO_FILE* %29)
  %tobool41 = icmp ne i64 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.35
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.35
  %30 = load i32, i32* %len, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %name44 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %31, i32 0, i32 5
  %32 = load i8*, i8** %name44, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.43, %if.end.26
  %33 = bitcast i32* %atype to i8*
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call46 = call i64 @fread(i8* %33, i64 4, i64 1, %struct._IO_FILE* %34)
  %tobool47 = icmp ne i64 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.45
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %abet, i32 0, i32 0
  %35 = load i32, i32* @Alphabet_size, align 4
  %conv50 = sext i32 %35 to i64
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call51 = call i64 @fread(i8* %arraydecay, i64 1, i64 %conv50, %struct._IO_FILE* %36)
  %tobool52 = icmp ne i64 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.54:                                        ; preds = %if.end.49
  %37 = load i32, i32* %version.addr, align 4
  %cmp55 = icmp eq i32 %37, 1
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.54
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %39 = load i32, i32* @Alphabet_size, align 4
  %conv58 = sext i32 %39 to i64
  %mul59 = mul i64 4, %conv58
  %call60 = call i32 @fseek(%struct._IO_FILE* %38, i64 %mul59, i32 1)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.54
  %40 = load i32, i32* %version.addr, align 4
  %cmp62 = icmp eq i32 %40, 5
  br i1 %cmp62, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.61
  %41 = load i32, i32* %version.addr, align 4
  %cmp64 = icmp eq i32 %41, 7
  br i1 %cmp64, label %if.then.66, label %if.end.105

if.then.66:                                       ; preds = %lor.lhs.false, %if.end.61
  %42 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %42, i32 0, i32 9
  %43 = bitcast i32* %flags to i8*
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call67 = call i64 @fread(i8* %43, i64 4, i64 1, %struct._IO_FILE* %44)
  %tobool68 = icmp ne i64 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.then.66
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.66
  %45 = load i32, i32* %swapped.addr, align 4
  %tobool71 = icmp ne i32 %45, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.70
  %46 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags73 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %46, i32 0, i32 9
  %47 = bitcast i32* %flags73 to i8*
  call void @byteswap(i8* %47, i32 4)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.70
  %48 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags75 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %48, i32 0, i32 9
  %49 = load i32, i32* %flags75, align 4
  %and = and i32 %49, 1
  %tobool76 = icmp ne i32 %and, 0
  br i1 %tobool76, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.end.74
  %50 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ref = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %50, i32 0, i32 6
  %51 = load i8*, i8** %ref, align 8
  %52 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M77 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %52, i32 0, i32 0
  %53 = load i32, i32* %M77, align 4
  %add78 = add nsw i32 %53, 1
  %conv79 = sext i32 %add78 to i64
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call80 = call i64 @fread(i8* %51, i64 1, i64 %conv79, %struct._IO_FILE* %54)
  %tobool81 = icmp ne i64 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.83:                                        ; preds = %land.lhs.true, %if.end.74
  %55 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M84 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %55, i32 0, i32 0
  %56 = load i32, i32* %M84, align 4
  %add85 = add nsw i32 %56, 1
  %idxprom86 = sext i32 %add85 to i64
  %57 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ref87 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %57, i32 0, i32 6
  %58 = load i8*, i8** %ref87, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %58, i64 %idxprom86
  store i8 0, i8* %arrayidx88, align 1
  %59 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags89 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %59, i32 0, i32 9
  %60 = load i32, i32* %flags89, align 4
  %and90 = and i32 %60, 2
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %land.lhs.true.92, label %if.end.99

land.lhs.true.92:                                 ; preds = %if.end.83
  %61 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %61, i32 0, i32 7
  %62 = load i8*, i8** %cs, align 8
  %63 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M93 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %63, i32 0, i32 0
  %64 = load i32, i32* %M93, align 4
  %add94 = add nsw i32 %64, 1
  %conv95 = sext i32 %add94 to i64
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call96 = call i64 @fread(i8* %62, i64 1, i64 %conv95, %struct._IO_FILE* %65)
  %tobool97 = icmp ne i64 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.92
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.99:                                        ; preds = %land.lhs.true.92, %if.end.83
  %66 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M100 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %66, i32 0, i32 0
  %67 = load i32, i32* %M100, align 4
  %add101 = add nsw i32 %67, 1
  %idxprom102 = sext i32 %add101 to i64
  %68 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %cs103 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %68, i32 0, i32 7
  %69 = load i8*, i8** %cs103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %69, i64 %idxprom102
  store i8 0, i8* %arrayidx104, align 1
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.99, %lor.lhs.false
  %70 = load i32, i32* %version.addr, align 4
  %cmp106 = icmp eq i32 %70, 7
  br i1 %cmp106, label %if.then.108, label %if.else.123

if.then.108:                                      ; preds = %if.end.105
  %71 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %null = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %71, i32 0, i32 4
  %arraydecay109 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %72 = bitcast float* %arraydecay109 to i8*
  %73 = load i32, i32* @Alphabet_size, align 4
  %conv110 = sext i32 %73 to i64
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call111 = call i64 @fread(i8* %72, i64 4, i64 %conv110, %struct._IO_FILE* %74)
  %tobool112 = icmp ne i64 %call111, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.then.108
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.114:                                       ; preds = %if.then.108
  %75 = load i32, i32* %swapped.addr, align 4
  %tobool115 = icmp ne i32 %75, 0
  br i1 %tobool115, label %if.then.116, label %if.end.122

if.then.116:                                      ; preds = %if.end.114
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %76 = load i32, i32* %x, align 4
  %77 = load i32, i32* @Alphabet_size, align 4
  %cmp117 = icmp slt i32 %76, %77
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load i32, i32* %x, align 4
  %idxprom119 = sext i32 %78 to i64
  %79 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %null120 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %79, i32 0, i32 4
  %arrayidx121 = getelementptr inbounds [20 x float], [20 x float]* %null120, i32 0, i64 %idxprom119
  %80 = bitcast float* %arrayidx121 to i8*
  call void @byteswap(i8* %80, i32 4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %x, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.122

if.end.122:                                       ; preds = %for.end, %if.end.114
  br label %if.end.126

if.else.123:                                      ; preds = %if.end.105
  %82 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %null124 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %82, i32 0, i32 4
  %arraydecay125 = getelementptr inbounds [20 x float], [20 x float]* %null124, i32 0, i32 0
  call void @P9DefaultNullModel(float* %arraydecay125)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.end.122
  store i32 0, i32* %k, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.329, %if.end.126
  %83 = load i32, i32* %k, align 4
  %84 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M128 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %84, i32 0, i32 0
  %85 = load i32, i32* %M128, align 4
  %cmp129 = icmp sle i32 %83, %85
  br i1 %cmp129, label %for.body.131, label %for.end.331

for.body.131:                                     ; preds = %for.cond.127
  %86 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %86 to i64
  %87 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %87, i32 0, i32 2
  %88 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %arrayidx133 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %88, i64 %idxprom132
  %t = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx133, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x float], [3 x float]* %t, i32 0, i64 0
  %89 = bitcast float* %arrayidx134 to i8*
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call135 = call i64 @fread(i8* %89, i64 4, i64 1, %struct._IO_FILE* %90)
  %tobool136 = icmp ne i64 %call135, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %for.body.131
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.138:                                       ; preds = %for.body.131
  %91 = load i32, i32* %k, align 4
  %idxprom139 = sext i32 %91 to i64
  %92 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat140 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %92, i32 0, i32 2
  %93 = load %struct.basic_state*, %struct.basic_state** %mat140, align 8
  %arrayidx141 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %93, i64 %idxprom139
  %t142 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x float], [3 x float]* %t142, i32 0, i64 2
  %94 = bitcast float* %arrayidx143 to i8*
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call144 = call i64 @fread(i8* %94, i64 4, i64 1, %struct._IO_FILE* %95)
  %tobool145 = icmp ne i64 %call144, 0
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %if.end.138
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.147:                                       ; preds = %if.end.138
  %96 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %96 to i64
  %97 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat149 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %97, i32 0, i32 2
  %98 = load %struct.basic_state*, %struct.basic_state** %mat149, align 8
  %arrayidx150 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %98, i64 %idxprom148
  %t151 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [3 x float], [3 x float]* %t151, i32 0, i64 1
  %99 = bitcast float* %arrayidx152 to i8*
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call153 = call i64 @fread(i8* %99, i64 4, i64 1, %struct._IO_FILE* %100)
  %tobool154 = icmp ne i64 %call153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.end.147
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.156:                                       ; preds = %if.end.147
  %101 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %101 to i64
  %102 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat158 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %102, i32 0, i32 2
  %103 = load %struct.basic_state*, %struct.basic_state** %mat158, align 8
  %arrayidx159 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %103, i64 %idxprom157
  %p = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx159, i32 0, i32 1
  %arraydecay160 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %104 = bitcast float* %arraydecay160 to i8*
  %105 = load i32, i32* @Alphabet_size, align 4
  %conv161 = sext i32 %105 to i64
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call162 = call i64 @fread(i8* %104, i64 4, i64 %conv161, %struct._IO_FILE* %106)
  %tobool163 = icmp ne i64 %call162, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %if.end.156
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.165:                                       ; preds = %if.end.156
  %107 = load i32, i32* %swapped.addr, align 4
  %tobool166 = icmp ne i32 %107, 0
  br i1 %tobool166, label %if.then.167, label %if.end.196

if.then.167:                                      ; preds = %if.end.165
  %108 = load i32, i32* %k, align 4
  %idxprom168 = sext i32 %108 to i64
  %109 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat169 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %109, i32 0, i32 2
  %110 = load %struct.basic_state*, %struct.basic_state** %mat169, align 8
  %arrayidx170 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %110, i64 %idxprom168
  %t171 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x float], [3 x float]* %t171, i32 0, i64 0
  %111 = bitcast float* %arrayidx172 to i8*
  call void @byteswap(i8* %111, i32 4)
  %112 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %112 to i64
  %113 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat174 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %113, i32 0, i32 2
  %114 = load %struct.basic_state*, %struct.basic_state** %mat174, align 8
  %arrayidx175 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %114, i64 %idxprom173
  %t176 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x float], [3 x float]* %t176, i32 0, i64 2
  %115 = bitcast float* %arrayidx177 to i8*
  call void @byteswap(i8* %115, i32 4)
  %116 = load i32, i32* %k, align 4
  %idxprom178 = sext i32 %116 to i64
  %117 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat179 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %117, i32 0, i32 2
  %118 = load %struct.basic_state*, %struct.basic_state** %mat179, align 8
  %arrayidx180 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %118, i64 %idxprom178
  %t181 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i64 1
  %119 = bitcast float* %arrayidx182 to i8*
  call void @byteswap(i8* %119, i32 4)
  store i32 0, i32* %x, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.193, %if.then.167
  %120 = load i32, i32* %x, align 4
  %121 = load i32, i32* @Alphabet_size, align 4
  %cmp184 = icmp slt i32 %120, %121
  br i1 %cmp184, label %for.body.186, label %for.end.195

for.body.186:                                     ; preds = %for.cond.183
  %122 = load i32, i32* %x, align 4
  %idxprom187 = sext i32 %122 to i64
  %123 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %123 to i64
  %124 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat189 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %124, i32 0, i32 2
  %125 = load %struct.basic_state*, %struct.basic_state** %mat189, align 8
  %arrayidx190 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %125, i64 %idxprom188
  %p191 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx190, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [20 x float], [20 x float]* %p191, i32 0, i64 %idxprom187
  %126 = bitcast float* %arrayidx192 to i8*
  call void @byteswap(i8* %126, i32 4)
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.186
  %127 = load i32, i32* %x, align 4
  %inc194 = add nsw i32 %127, 1
  store i32 %inc194, i32* %x, align 4
  br label %for.cond.183

for.end.195:                                      ; preds = %for.cond.183
  br label %if.end.196

if.end.196:                                       ; preds = %for.end.195, %if.end.165
  %128 = load i32, i32* %version.addr, align 4
  %cmp197 = icmp eq i32 %128, 1
  br i1 %cmp197, label %if.then.199, label %if.end.204

if.then.199:                                      ; preds = %if.end.196
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %130 = load i32, i32* @Alphabet_size, align 4
  %add200 = add nsw i32 3, %130
  %conv201 = sext i32 %add200 to i64
  %mul202 = mul i64 4, %conv201
  %call203 = call i32 @fseek(%struct._IO_FILE* %129, i64 %mul202, i32 1)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.199, %if.end.196
  %131 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %131 to i64
  %132 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %132, i32 0, i32 3
  %133 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %arrayidx206 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %133, i64 %idxprom205
  %t207 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [3 x float], [3 x float]* %t207, i32 0, i64 0
  %134 = bitcast float* %arrayidx208 to i8*
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call209 = call i64 @fread(i8* %134, i64 4, i64 1, %struct._IO_FILE* %135)
  %tobool210 = icmp ne i64 %call209, 0
  br i1 %tobool210, label %if.end.212, label %if.then.211

if.then.211:                                      ; preds = %if.end.204
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.212:                                       ; preds = %if.end.204
  %136 = load i32, i32* %k, align 4
  %idxprom213 = sext i32 %136 to i64
  %137 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del214 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %137, i32 0, i32 3
  %138 = load %struct.basic_state*, %struct.basic_state** %del214, align 8
  %arrayidx215 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %138, i64 %idxprom213
  %t216 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x float], [3 x float]* %t216, i32 0, i64 2
  %139 = bitcast float* %arrayidx217 to i8*
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call218 = call i64 @fread(i8* %139, i64 4, i64 1, %struct._IO_FILE* %140)
  %tobool219 = icmp ne i64 %call218, 0
  br i1 %tobool219, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %if.end.212
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.221:                                       ; preds = %if.end.212
  %141 = load i32, i32* %k, align 4
  %idxprom222 = sext i32 %141 to i64
  %142 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del223 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %142, i32 0, i32 3
  %143 = load %struct.basic_state*, %struct.basic_state** %del223, align 8
  %arrayidx224 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %143, i64 %idxprom222
  %t225 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [3 x float], [3 x float]* %t225, i32 0, i64 1
  %144 = bitcast float* %arrayidx226 to i8*
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call227 = call i64 @fread(i8* %144, i64 4, i64 1, %struct._IO_FILE* %145)
  %tobool228 = icmp ne i64 %call227, 0
  br i1 %tobool228, label %if.end.230, label %if.then.229

if.then.229:                                      ; preds = %if.end.221
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.230:                                       ; preds = %if.end.221
  %146 = load i32, i32* %swapped.addr, align 4
  %tobool231 = icmp ne i32 %146, 0
  br i1 %tobool231, label %if.then.232, label %if.end.248

if.then.232:                                      ; preds = %if.end.230
  %147 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %147 to i64
  %148 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del234 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %148, i32 0, i32 3
  %149 = load %struct.basic_state*, %struct.basic_state** %del234, align 8
  %arrayidx235 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %149, i64 %idxprom233
  %t236 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx235, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [3 x float], [3 x float]* %t236, i32 0, i64 0
  %150 = bitcast float* %arrayidx237 to i8*
  call void @byteswap(i8* %150, i32 4)
  %151 = load i32, i32* %k, align 4
  %idxprom238 = sext i32 %151 to i64
  %152 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del239 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %152, i32 0, i32 3
  %153 = load %struct.basic_state*, %struct.basic_state** %del239, align 8
  %arrayidx240 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %153, i64 %idxprom238
  %t241 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [3 x float], [3 x float]* %t241, i32 0, i64 2
  %154 = bitcast float* %arrayidx242 to i8*
  call void @byteswap(i8* %154, i32 4)
  %155 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %155 to i64
  %156 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del244 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %156, i32 0, i32 3
  %157 = load %struct.basic_state*, %struct.basic_state** %del244, align 8
  %arrayidx245 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %157, i64 %idxprom243
  %t246 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [3 x float], [3 x float]* %t246, i32 0, i64 1
  %158 = bitcast float* %arrayidx247 to i8*
  call void @byteswap(i8* %158, i32 4)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.232, %if.end.230
  %159 = load i32, i32* %version.addr, align 4
  %cmp249 = icmp eq i32 %159, 1
  br i1 %cmp249, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.end.248
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call252 = call i32 @fseek(%struct._IO_FILE* %160, i64 12, i32 1)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %if.end.248
  %161 = load i32, i32* %k, align 4
  %idxprom254 = sext i32 %161 to i64
  %162 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %162, i32 0, i32 1
  %163 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %arrayidx255 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %163, i64 %idxprom254
  %t256 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [3 x float], [3 x float]* %t256, i32 0, i64 0
  %164 = bitcast float* %arrayidx257 to i8*
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call258 = call i64 @fread(i8* %164, i64 4, i64 1, %struct._IO_FILE* %165)
  %tobool259 = icmp ne i64 %call258, 0
  br i1 %tobool259, label %if.end.261, label %if.then.260

if.then.260:                                      ; preds = %if.end.253
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.261:                                       ; preds = %if.end.253
  %166 = load i32, i32* %k, align 4
  %idxprom262 = sext i32 %166 to i64
  %167 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins263 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %167, i32 0, i32 1
  %168 = load %struct.basic_state*, %struct.basic_state** %ins263, align 8
  %arrayidx264 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %168, i64 %idxprom262
  %t265 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [3 x float], [3 x float]* %t265, i32 0, i64 2
  %169 = bitcast float* %arrayidx266 to i8*
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call267 = call i64 @fread(i8* %169, i64 4, i64 1, %struct._IO_FILE* %170)
  %tobool268 = icmp ne i64 %call267, 0
  br i1 %tobool268, label %if.end.270, label %if.then.269

if.then.269:                                      ; preds = %if.end.261
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.270:                                       ; preds = %if.end.261
  %171 = load i32, i32* %k, align 4
  %idxprom271 = sext i32 %171 to i64
  %172 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins272 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %172, i32 0, i32 1
  %173 = load %struct.basic_state*, %struct.basic_state** %ins272, align 8
  %arrayidx273 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %173, i64 %idxprom271
  %t274 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [3 x float], [3 x float]* %t274, i32 0, i64 1
  %174 = bitcast float* %arrayidx275 to i8*
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call276 = call i64 @fread(i8* %174, i64 4, i64 1, %struct._IO_FILE* %175)
  %tobool277 = icmp ne i64 %call276, 0
  br i1 %tobool277, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %if.end.270
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.279:                                       ; preds = %if.end.270
  %176 = load i32, i32* %k, align 4
  %idxprom280 = sext i32 %176 to i64
  %177 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins281 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %177, i32 0, i32 1
  %178 = load %struct.basic_state*, %struct.basic_state** %ins281, align 8
  %arrayidx282 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %178, i64 %idxprom280
  %p283 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx282, i32 0, i32 1
  %arraydecay284 = getelementptr inbounds [20 x float], [20 x float]* %p283, i32 0, i32 0
  %179 = bitcast float* %arraydecay284 to i8*
  %180 = load i32, i32* @Alphabet_size, align 4
  %conv285 = sext i32 %180 to i64
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call286 = call i64 @fread(i8* %179, i64 4, i64 %conv285, %struct._IO_FILE* %181)
  %tobool287 = icmp ne i64 %call286, 0
  br i1 %tobool287, label %if.end.289, label %if.then.288

if.then.288:                                      ; preds = %if.end.279
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.289:                                       ; preds = %if.end.279
  %182 = load i32, i32* %swapped.addr, align 4
  %tobool290 = icmp ne i32 %182, 0
  br i1 %tobool290, label %if.then.291, label %if.end.320

if.then.291:                                      ; preds = %if.end.289
  %183 = load i32, i32* %k, align 4
  %idxprom292 = sext i32 %183 to i64
  %184 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins293 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %184, i32 0, i32 1
  %185 = load %struct.basic_state*, %struct.basic_state** %ins293, align 8
  %arrayidx294 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %185, i64 %idxprom292
  %t295 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx294, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [3 x float], [3 x float]* %t295, i32 0, i64 0
  %186 = bitcast float* %arrayidx296 to i8*
  call void @byteswap(i8* %186, i32 4)
  %187 = load i32, i32* %k, align 4
  %idxprom297 = sext i32 %187 to i64
  %188 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins298 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %188, i32 0, i32 1
  %189 = load %struct.basic_state*, %struct.basic_state** %ins298, align 8
  %arrayidx299 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %189, i64 %idxprom297
  %t300 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [3 x float], [3 x float]* %t300, i32 0, i64 2
  %190 = bitcast float* %arrayidx301 to i8*
  call void @byteswap(i8* %190, i32 4)
  %191 = load i32, i32* %k, align 4
  %idxprom302 = sext i32 %191 to i64
  %192 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins303 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %192, i32 0, i32 1
  %193 = load %struct.basic_state*, %struct.basic_state** %ins303, align 8
  %arrayidx304 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %193, i64 %idxprom302
  %t305 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [3 x float], [3 x float]* %t305, i32 0, i64 1
  %194 = bitcast float* %arrayidx306 to i8*
  call void @byteswap(i8* %194, i32 4)
  store i32 0, i32* %x, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.317, %if.then.291
  %195 = load i32, i32* %x, align 4
  %196 = load i32, i32* @Alphabet_size, align 4
  %cmp308 = icmp slt i32 %195, %196
  br i1 %cmp308, label %for.body.310, label %for.end.319

for.body.310:                                     ; preds = %for.cond.307
  %197 = load i32, i32* %x, align 4
  %idxprom311 = sext i32 %197 to i64
  %198 = load i32, i32* %k, align 4
  %idxprom312 = sext i32 %198 to i64
  %199 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins313 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %199, i32 0, i32 1
  %200 = load %struct.basic_state*, %struct.basic_state** %ins313, align 8
  %arrayidx314 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %200, i64 %idxprom312
  %p315 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx314, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [20 x float], [20 x float]* %p315, i32 0, i64 %idxprom311
  %201 = bitcast float* %arrayidx316 to i8*
  call void @byteswap(i8* %201, i32 4)
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.body.310
  %202 = load i32, i32* %x, align 4
  %inc318 = add nsw i32 %202, 1
  store i32 %inc318, i32* %x, align 4
  br label %for.cond.307

for.end.319:                                      ; preds = %for.cond.307
  br label %if.end.320

if.end.320:                                       ; preds = %for.end.319, %if.end.289
  %203 = load i32, i32* %version.addr, align 4
  %cmp321 = icmp eq i32 %203, 1
  br i1 %cmp321, label %if.then.323, label %if.end.328

if.then.323:                                      ; preds = %if.end.320
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %205 = load i32, i32* @Alphabet_size, align 4
  %add324 = add nsw i32 3, %205
  %conv325 = sext i32 %add324 to i64
  %mul326 = mul i64 4, %conv325
  %call327 = call i32 @fseek(%struct._IO_FILE* %204, i64 %mul326, i32 1)
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.323, %if.end.320
  br label %for.inc.329

for.inc.329:                                      ; preds = %if.end.328
  %206 = load i32, i32* %k, align 4
  %inc330 = add nsw i32 %206, 1
  store i32 %inc330, i32* %k, align 4
  br label %for.cond.127

for.end.331:                                      ; preds = %for.cond.127
  %207 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  call void @P9Renormalize(%struct.plan9_s* %207)
  %208 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  store %struct.plan9_s* %208, %struct.plan9_s** %retval
  br label %return

return:                                           ; preds = %for.end.331, %if.then.288, %if.then.278, %if.then.269, %if.then.260, %if.then.229, %if.then.220, %if.then.211, %if.then.164, %if.then.155, %if.then.146, %if.then.137, %if.then.113, %if.then.98, %if.then.82, %if.then.69, %if.then.53, %if.then.48, %if.then.42, %if.then.31, %if.then.3, %if.then
  %209 = load %struct.plan9_s*, %struct.plan9_s** %retval
  ret %struct.plan9_s* %209
}

declare void @Plan9toPlan7(%struct.plan9_s*, %struct.plan7_s**) #1

declare i32 @P9FreeHMM(%struct.plan9_s*) #1

declare %struct.plan9_s* @P9AllocHMM(i32) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare void @P9DefaultNullModel(float*) #1

declare void @P9Renormalize(%struct.plan9_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.plan9_s* @read_plan9_aschmm(%struct._IO_FILE* %fp, i32 %version) #0 {
entry:
  %retval = alloca %struct.plan9_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %version.addr = alloca i32, align 4
  %hmm = alloca %struct.plan9_s*, align 8
  %M = alloca i32, align 4
  %buffer = alloca [512 x i8], align 16
  %statetype = alloca i8*, align 8
  %s = alloca i8*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %asize = alloca i32, align 4
  %atype = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %0)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call2 = call i8* @strtok(i8* %arraydecay1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call2, i8** %s, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %call6 = call i16** @__ctype_b_loc() #7
  %3 = load i16*, i16** %call6, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %4 to i32
  %and = and i32 %conv7, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %5 = load i8*, i8** %s, align 8
  %call10 = call i32 @atoi(i8* %5) #5
  store i32 %call10, i32* %M, align 4
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i8* @fgets(i8* %arraydecay11, i32 512, %struct._IO_FILE* %6)
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call18 = call i8* @strtok(i8* %arraydecay17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call18, i8** %s, align 8
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.16
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv23 = sext i8 %8 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %call25 = call i16** @__ctype_b_loc() #7
  %9 = load i16*, i16** %call25, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %9, i64 %idxprom24
  %10 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %10 to i32
  %and28 = and i32 %conv27, 2048
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.22
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.22
  %11 = load i8*, i8** %s, align 8
  %call32 = call i32 @atoi(i8* %11) #5
  store i32 %call32, i32* %asize, align 4
  %12 = load i32, i32* %asize, align 4
  %cmp33 = icmp eq i32 %12, 4
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.31
  store i32 2, i32* %atype, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.end.31
  %13 = load i32, i32* %asize, align 4
  %cmp36 = icmp eq i32 %13, 20
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else
  store i32 3, i32* %atype, align 4
  br label %if.end.40

if.else.39:                                       ; preds = %if.else
  %14 = load i32, i32* %asize, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.85, i32 0, i32 0), i32 %14)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.35
  %15 = load i32, i32* @Alphabet_type, align 4
  %cmp42 = icmp eq i32 %15, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  %16 = load i32, i32* %atype, align 4
  call void @SetAlphabet(i32 %16)
  br label %if.end.52

if.else.45:                                       ; preds = %if.end.41
  %17 = load i32, i32* %atype, align 4
  %18 = load i32, i32* @Alphabet_type, align 4
  %cmp46 = icmp ne i32 %17, %18
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.else.45
  %19 = load i32, i32* @Alphabet_type, align 4
  %call49 = call i8* @AlphabetType2String(i32 %19)
  %20 = load i32, i32* %atype, align 4
  %call50 = call i8* @AlphabetType2String(i32 %20)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.65, i32 0, i32 0), i8* %call49, i8* %call50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.else.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.44
  %21 = load i32, i32* %M, align 4
  %call53 = call %struct.plan9_s* @P9AllocHMM(i32 %21)
  store %struct.plan9_s* %call53, %struct.plan9_s** %hmm, align 8
  %cmp54 = icmp eq %struct.plan9_s* %call53, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.52
  %arraydecay58 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call59 = call i8* @fgets(i8* %arraydecay58, i32 512, %struct._IO_FILE* %22)
  %cmp60 = icmp eq i8* %call59, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.57
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.57
  %arraydecay64 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call65 = call i8* @strtok(i8* %arraydecay64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call65, i8** %s, align 8
  %cmp66 = icmp eq i8* %call65, null
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.63
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.63
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv70 = sext i8 %24 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %call72 = call i16** @__ctype_b_loc() #7
  %25 = load i16*, i16** %call72, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %25, i64 %idxprom71
  %26 = load i16, i16* %arrayidx73, align 2
  %conv74 = zext i16 %26 to i32
  %and75 = and i32 %conv74, 2048
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.69
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.78:                                        ; preds = %if.end.69
  %arraydecay79 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call80 = call i8* @fgets(i8* %arraydecay79, i32 512, %struct._IO_FILE* %27)
  %cmp81 = icmp eq i8* %call80, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.78
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.84:                                        ; preds = %if.end.78
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call86 = call i8* @strtok(i8* %arraydecay85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call86, i8** %s, align 8
  %cmp87 = icmp eq i8* %call86, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.84
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.84
  %28 = load i32, i32* %version.addr, align 4
  %cmp91 = icmp eq i32 %28, 2
  br i1 %cmp91, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %if.end.90
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.93
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @Alphabet_size, align 4
  %cmp94 = icmp slt i32 %29, %30
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay96 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call97 = call i8* @fgets(i8* %arraydecay96, i32 512, %struct._IO_FILE* %31)
  %cmp98 = icmp eq i8* %call97, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.body
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.101:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.101
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.102

if.end.102:                                       ; preds = %for.end, %if.end.90
  %33 = load i32, i32* %version.addr, align 4
  %cmp103 = icmp eq i32 %33, 6
  br i1 %cmp103, label %if.then.105, label %if.end.132

if.then.105:                                      ; preds = %if.end.102
  %arraydecay106 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call107 = call i8* @fgets(i8* %arraydecay106, i32 512, %struct._IO_FILE* %34)
  %cmp108 = icmp eq i8* %call107, null
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.105
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.111:                                       ; preds = %if.then.105
  %arraydecay112 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call113 = call i32 @strncmp(i8* %arraydecay112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64 3) #5
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.111
  %35 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %35, i32 0, i32 9
  %36 = load i32, i32* %flags, align 4
  %or = or i32 %36, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.end.111
  %arraydecay118 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call119 = call i8* @fgets(i8* %arraydecay118, i32 512, %struct._IO_FILE* %37)
  %cmp120 = icmp eq i8* %call119, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.117
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.123:                                       ; preds = %if.end.117
  %arraydecay124 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call125 = call i32 @strncmp(i8* %arraydecay124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64 3) #5
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.end.123
  %38 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags129 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %38, i32 0, i32 9
  %39 = load i32, i32* %flags129, align 4
  %or130 = or i32 %39, 2
  store i32 %or130, i32* %flags129, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.end.123
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.102
  br label %while.cond

while.cond:                                       ; preds = %if.end.495, %if.end.132
  %arraydecay133 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call134 = call i8* @fgets(i8* %arraydecay133, i32 512, %struct._IO_FILE* %40)
  %cmp135 = icmp ne i8* %call134, null
  br i1 %cmp135, label %while.body, label %while.end.496

while.body:                                       ; preds = %while.cond
  %arraydecay137 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call138 = call i8* @strtok(i8* %arraydecay137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call138, i8** %statetype, align 8
  %cmp139 = icmp eq i8* %call138, null
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %while.body
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.142:                                       ; preds = %while.body
  %call143 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call143, i8** %s, align 8
  %cmp144 = icmp eq i8* %call143, null
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.142
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.147:                                       ; preds = %if.end.142
  %41 = load i8*, i8** %s, align 8
  %42 = load i8, i8* %41, align 1
  %conv148 = sext i8 %42 to i32
  %idxprom149 = sext i32 %conv148 to i64
  %call150 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %call150, align 8
  %arrayidx151 = getelementptr inbounds i16, i16* %43, i64 %idxprom149
  %44 = load i16, i16* %arrayidx151, align 2
  %conv152 = zext i16 %44 to i32
  %and153 = and i32 %conv152, 2048
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.end.147
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.156:                                       ; preds = %if.end.147
  %45 = load i8*, i8** %s, align 8
  %call157 = call i32 @atoi(i8* %45) #5
  store i32 %call157, i32* %k, align 4
  %46 = load i32, i32* %k, align 4
  %cmp158 = icmp slt i32 %46, 0
  br i1 %cmp158, label %if.then.163, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.156
  %47 = load i32, i32* %k, align 4
  %48 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M160 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %48, i32 0, i32 0
  %49 = load i32, i32* %M160, align 4
  %add = add nsw i32 %49, 1
  %cmp161 = icmp sgt i32 %47, %add
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %lor.lhs.false, %if.end.156
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.164:                                       ; preds = %lor.lhs.false
  %50 = load i8*, i8** %statetype, align 8
  %call165 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0)) #5
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %if.then.168, label %if.else.308

if.then.168:                                      ; preds = %if.end.164
  %51 = load i32, i32* %version.addr, align 4
  %cmp169 = icmp eq i32 %51, 6
  br i1 %cmp169, label %if.then.171, label %if.end.208

if.then.171:                                      ; preds = %if.then.168
  %call172 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  store i8* %call172, i8** %s, align 8
  br label %while.cond.173

while.cond.173:                                   ; preds = %while.body.180, %if.then.171
  %52 = load i8*, i8** %s, align 8
  %53 = load i8, i8* %52, align 1
  %conv174 = sext i8 %53 to i32
  %cmp175 = icmp ne i32 %conv174, 40
  br i1 %cmp175, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.173
  %54 = load i8*, i8** %s, align 8
  %55 = load i8, i8* %54, align 1
  %conv177 = sext i8 %55 to i32
  %cmp178 = icmp ne i32 %conv177, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.173
  %56 = phi i1 [ false, %while.cond.173 ], [ %cmp178, %land.rhs ]
  br i1 %56, label %while.body.180, label %while.end

while.body.180:                                   ; preds = %land.end
  %57 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.173

while.end:                                        ; preds = %land.end
  %58 = load i8*, i8** %s, align 8
  %59 = load i8, i8* %58, align 1
  %conv181 = sext i8 %59 to i32
  %cmp182 = icmp ne i32 %conv181, 40
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %while.end
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.185:                                       ; preds = %while.end
  %60 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %add.ptr, align 1
  %62 = load i32, i32* %k, align 4
  %idxprom186 = sext i32 %62 to i64
  %63 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ref = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %63, i32 0, i32 6
  %64 = load i8*, i8** %ref, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %64, i64 %idxprom186
  store i8 %61, i8* %arrayidx187, align 1
  br label %while.cond.188

while.cond.188:                                   ; preds = %while.body.197, %if.end.185
  %65 = load i8*, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %conv189 = sext i8 %66 to i32
  %cmp190 = icmp ne i32 %conv189, 40
  br i1 %cmp190, label %land.rhs.192, label %land.end.196

land.rhs.192:                                     ; preds = %while.cond.188
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %conv193 = sext i8 %68 to i32
  %cmp194 = icmp ne i32 %conv193, 0
  br label %land.end.196

land.end.196:                                     ; preds = %land.rhs.192, %while.cond.188
  %69 = phi i1 [ false, %while.cond.188 ], [ %cmp194, %land.rhs.192 ]
  br i1 %69, label %while.body.197, label %while.end.199

while.body.197:                                   ; preds = %land.end.196
  %70 = load i8*, i8** %s, align 8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr198, i8** %s, align 8
  br label %while.cond.188

while.end.199:                                    ; preds = %land.end.196
  %71 = load i8*, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %conv200 = sext i8 %72 to i32
  %cmp201 = icmp ne i32 %conv200, 40
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %while.end.199
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.204:                                       ; preds = %while.end.199
  %73 = load i8*, i8** %s, align 8
  %add.ptr205 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load i8, i8* %add.ptr205, align 1
  %75 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %75 to i64
  %76 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %76, i32 0, i32 7
  %77 = load i8*, i8** %cs, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %77, i64 %idxprom206
  store i8 %74, i8* %arrayidx207, align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.204, %if.then.168
  %arraydecay209 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call210 = call i8* @fgets(i8* %arraydecay209, i32 512, %struct._IO_FILE* %78)
  %cmp211 = icmp eq i8* %call210, null
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.end.208
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.214:                                       ; preds = %if.end.208
  %arraydecay215 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call216 = call i8* @strtok(i8* %arraydecay215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call216, i8** %s, align 8
  %cmp217 = icmp eq i8* %call216, null
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.end.214
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.220:                                       ; preds = %if.end.214
  %79 = load i8*, i8** %s, align 8
  %call221 = call double @atof(i8* %79) #5
  %conv222 = fptrunc double %call221 to float
  %80 = load i32, i32* %k, align 4
  %idxprom223 = sext i32 %80 to i64
  %81 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %81, i32 0, i32 2
  %82 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %arrayidx224 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %82, i64 %idxprom223
  %t = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx224, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [3 x float], [3 x float]* %t, i32 0, i64 0
  store float %conv222, float* %arrayidx225, align 4
  %arraydecay226 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call227 = call i8* @fgets(i8* %arraydecay226, i32 512, %struct._IO_FILE* %83)
  %cmp228 = icmp eq i8* %call227, null
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.220
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.231:                                       ; preds = %if.end.220
  %arraydecay232 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call233 = call i8* @strtok(i8* %arraydecay232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call233, i8** %s, align 8
  %cmp234 = icmp eq i8* %call233, null
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.231
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.237:                                       ; preds = %if.end.231
  %84 = load i8*, i8** %s, align 8
  %call238 = call double @atof(i8* %84) #5
  %conv239 = fptrunc double %call238 to float
  %85 = load i32, i32* %k, align 4
  %idxprom240 = sext i32 %85 to i64
  %86 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat241 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %86, i32 0, i32 2
  %87 = load %struct.basic_state*, %struct.basic_state** %mat241, align 8
  %arrayidx242 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %87, i64 %idxprom240
  %t243 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [3 x float], [3 x float]* %t243, i32 0, i64 2
  store float %conv239, float* %arrayidx244, align 4
  %arraydecay245 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call246 = call i8* @fgets(i8* %arraydecay245, i32 512, %struct._IO_FILE* %88)
  %cmp247 = icmp eq i8* %call246, null
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.237
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.250:                                       ; preds = %if.end.237
  %arraydecay251 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call252 = call i8* @strtok(i8* %arraydecay251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call252, i8** %s, align 8
  %cmp253 = icmp eq i8* %call252, null
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.end.250
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.256:                                       ; preds = %if.end.250
  %89 = load i8*, i8** %s, align 8
  %call257 = call double @atof(i8* %89) #5
  %conv258 = fptrunc double %call257 to float
  %90 = load i32, i32* %k, align 4
  %idxprom259 = sext i32 %90 to i64
  %91 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat260 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %91, i32 0, i32 2
  %92 = load %struct.basic_state*, %struct.basic_state** %mat260, align 8
  %arrayidx261 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %92, i64 %idxprom259
  %t262 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [3 x float], [3 x float]* %t262, i32 0, i64 1
  store float %conv258, float* %arrayidx263, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.287, %if.end.256
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* @Alphabet_size, align 4
  %cmp265 = icmp slt i32 %93, %94
  br i1 %cmp265, label %for.body.267, label %for.end.289

for.body.267:                                     ; preds = %for.cond.264
  %arraydecay268 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call269 = call i8* @fgets(i8* %arraydecay268, i32 512, %struct._IO_FILE* %95)
  %cmp270 = icmp eq i8* %call269, null
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %for.body.267
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.273:                                       ; preds = %for.body.267
  %arraydecay274 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call275 = call i8* @strtok(i8* %arraydecay274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call275, i8** %s, align 8
  %cmp276 = icmp eq i8* %call275, null
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.end.273
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.279:                                       ; preds = %if.end.273
  %96 = load i8*, i8** %s, align 8
  %call280 = call double @atof(i8* %96) #5
  %conv281 = fptrunc double %call280 to float
  %97 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %97 to i64
  %98 = load i32, i32* %k, align 4
  %idxprom283 = sext i32 %98 to i64
  %99 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat284 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %99, i32 0, i32 2
  %100 = load %struct.basic_state*, %struct.basic_state** %mat284, align 8
  %arrayidx285 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %100, i64 %idxprom283
  %p = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx285, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i64 %idxprom282
  store float %conv281, float* %arrayidx286, align 4
  br label %for.inc.287

for.inc.287:                                      ; preds = %if.end.279
  %101 = load i32, i32* %i, align 4
  %inc288 = add nsw i32 %101, 1
  store i32 %inc288, i32* %i, align 4
  br label %for.cond.264

for.end.289:                                      ; preds = %for.cond.264
  %102 = load i32, i32* %version.addr, align 4
  %cmp290 = icmp eq i32 %102, 2
  br i1 %cmp290, label %if.then.292, label %if.end.307

if.then.292:                                      ; preds = %for.end.289
  store i32 0, i32* %i, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.304, %if.then.292
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* @Alphabet_size, align 4
  %add294 = add nsw i32 %104, 3
  %cmp295 = icmp slt i32 %103, %add294
  br i1 %cmp295, label %for.body.297, label %for.end.306

for.body.297:                                     ; preds = %for.cond.293
  %arraydecay298 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call299 = call i8* @fgets(i8* %arraydecay298, i32 512, %struct._IO_FILE* %105)
  %cmp300 = icmp eq i8* %call299, null
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %for.body.297
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.303:                                       ; preds = %for.body.297
  br label %for.inc.304

for.inc.304:                                      ; preds = %if.end.303
  %106 = load i32, i32* %i, align 4
  %inc305 = add nsw i32 %106, 1
  store i32 %inc305, i32* %i, align 4
  br label %for.cond.293

for.end.306:                                      ; preds = %for.cond.293
  br label %if.end.307

if.end.307:                                       ; preds = %for.end.306, %for.end.289
  br label %if.end.495

if.else.308:                                      ; preds = %if.end.164
  %107 = load i8*, i8** %statetype, align 8
  %call309 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0)) #5
  %cmp310 = icmp eq i32 %call309, 0
  br i1 %cmp310, label %if.then.312, label %if.else.414

if.then.312:                                      ; preds = %if.else.308
  %arraydecay313 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call314 = call i8* @fgets(i8* %arraydecay313, i32 512, %struct._IO_FILE* %108)
  %cmp315 = icmp eq i8* %call314, null
  br i1 %cmp315, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %if.then.312
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.318:                                       ; preds = %if.then.312
  %arraydecay319 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call320 = call i8* @strtok(i8* %arraydecay319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call320, i8** %s, align 8
  %cmp321 = icmp eq i8* %call320, null
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.end.318
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.324:                                       ; preds = %if.end.318
  %109 = load i8*, i8** %s, align 8
  %call325 = call double @atof(i8* %109) #5
  %conv326 = fptrunc double %call325 to float
  %110 = load i32, i32* %k, align 4
  %idxprom327 = sext i32 %110 to i64
  %111 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %111, i32 0, i32 1
  %112 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %arrayidx328 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %112, i64 %idxprom327
  %t329 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [3 x float], [3 x float]* %t329, i32 0, i64 0
  store float %conv326, float* %arrayidx330, align 4
  %arraydecay331 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call332 = call i8* @fgets(i8* %arraydecay331, i32 512, %struct._IO_FILE* %113)
  %cmp333 = icmp eq i8* %call332, null
  br i1 %cmp333, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.end.324
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.336:                                       ; preds = %if.end.324
  %arraydecay337 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call338 = call i8* @strtok(i8* %arraydecay337, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call338, i8** %s, align 8
  %cmp339 = icmp eq i8* %call338, null
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %if.end.336
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.342:                                       ; preds = %if.end.336
  %114 = load i8*, i8** %s, align 8
  %call343 = call double @atof(i8* %114) #5
  %conv344 = fptrunc double %call343 to float
  %115 = load i32, i32* %k, align 4
  %idxprom345 = sext i32 %115 to i64
  %116 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins346 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %116, i32 0, i32 1
  %117 = load %struct.basic_state*, %struct.basic_state** %ins346, align 8
  %arrayidx347 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %117, i64 %idxprom345
  %t348 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx347, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [3 x float], [3 x float]* %t348, i32 0, i64 2
  store float %conv344, float* %arrayidx349, align 4
  %arraydecay350 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call351 = call i8* @fgets(i8* %arraydecay350, i32 512, %struct._IO_FILE* %118)
  %cmp352 = icmp eq i8* %call351, null
  br i1 %cmp352, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %if.end.342
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.355:                                       ; preds = %if.end.342
  %arraydecay356 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call357 = call i8* @strtok(i8* %arraydecay356, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call357, i8** %s, align 8
  %cmp358 = icmp eq i8* %call357, null
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.end.355
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.361:                                       ; preds = %if.end.355
  %119 = load i8*, i8** %s, align 8
  %call362 = call double @atof(i8* %119) #5
  %conv363 = fptrunc double %call362 to float
  %120 = load i32, i32* %k, align 4
  %idxprom364 = sext i32 %120 to i64
  %121 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins365 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %121, i32 0, i32 1
  %122 = load %struct.basic_state*, %struct.basic_state** %ins365, align 8
  %arrayidx366 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %122, i64 %idxprom364
  %t367 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx366, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [3 x float], [3 x float]* %t367, i32 0, i64 1
  store float %conv363, float* %arrayidx368, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.393, %if.end.361
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* @Alphabet_size, align 4
  %cmp370 = icmp slt i32 %123, %124
  br i1 %cmp370, label %for.body.372, label %for.end.395

for.body.372:                                     ; preds = %for.cond.369
  %arraydecay373 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call374 = call i8* @fgets(i8* %arraydecay373, i32 512, %struct._IO_FILE* %125)
  %cmp375 = icmp eq i8* %call374, null
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %for.body.372
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.378:                                       ; preds = %for.body.372
  %arraydecay379 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call380 = call i8* @strtok(i8* %arraydecay379, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call380, i8** %s, align 8
  %cmp381 = icmp eq i8* %call380, null
  br i1 %cmp381, label %if.then.383, label %if.end.384

if.then.383:                                      ; preds = %if.end.378
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.384:                                       ; preds = %if.end.378
  %126 = load i8*, i8** %s, align 8
  %call385 = call double @atof(i8* %126) #5
  %conv386 = fptrunc double %call385 to float
  %127 = load i32, i32* %i, align 4
  %idxprom387 = sext i32 %127 to i64
  %128 = load i32, i32* %k, align 4
  %idxprom388 = sext i32 %128 to i64
  %129 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins389 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %129, i32 0, i32 1
  %130 = load %struct.basic_state*, %struct.basic_state** %ins389, align 8
  %arrayidx390 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %130, i64 %idxprom388
  %p391 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx390, i32 0, i32 1
  %arrayidx392 = getelementptr inbounds [20 x float], [20 x float]* %p391, i32 0, i64 %idxprom387
  store float %conv386, float* %arrayidx392, align 4
  br label %for.inc.393

for.inc.393:                                      ; preds = %if.end.384
  %131 = load i32, i32* %i, align 4
  %inc394 = add nsw i32 %131, 1
  store i32 %inc394, i32* %i, align 4
  br label %for.cond.369

for.end.395:                                      ; preds = %for.cond.369
  %132 = load i32, i32* %version.addr, align 4
  %cmp396 = icmp eq i32 %132, 2
  br i1 %cmp396, label %if.then.398, label %if.end.413

if.then.398:                                      ; preds = %for.end.395
  store i32 0, i32* %i, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.410, %if.then.398
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* @Alphabet_size, align 4
  %add400 = add nsw i32 %134, 3
  %cmp401 = icmp slt i32 %133, %add400
  br i1 %cmp401, label %for.body.403, label %for.end.412

for.body.403:                                     ; preds = %for.cond.399
  %arraydecay404 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call405 = call i8* @fgets(i8* %arraydecay404, i32 512, %struct._IO_FILE* %135)
  %cmp406 = icmp eq i8* %call405, null
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %for.body.403
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.409:                                       ; preds = %for.body.403
  br label %for.inc.410

for.inc.410:                                      ; preds = %if.end.409
  %136 = load i32, i32* %i, align 4
  %inc411 = add nsw i32 %136, 1
  store i32 %inc411, i32* %i, align 4
  br label %for.cond.399

for.end.412:                                      ; preds = %for.cond.399
  br label %if.end.413

if.end.413:                                       ; preds = %for.end.412, %for.end.395
  br label %if.end.494

if.else.414:                                      ; preds = %if.else.308
  %137 = load i8*, i8** %statetype, align 8
  %call415 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0)) #5
  %cmp416 = icmp eq i32 %call415, 0
  br i1 %cmp416, label %if.then.418, label %if.else.492

if.then.418:                                      ; preds = %if.else.414
  %arraydecay419 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call420 = call i8* @fgets(i8* %arraydecay419, i32 512, %struct._IO_FILE* %138)
  %cmp421 = icmp eq i8* %call420, null
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %if.then.418
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.424:                                       ; preds = %if.then.418
  %arraydecay425 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call426 = call i8* @strtok(i8* %arraydecay425, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call426, i8** %s, align 8
  %cmp427 = icmp eq i8* %call426, null
  br i1 %cmp427, label %if.then.429, label %if.end.430

if.then.429:                                      ; preds = %if.end.424
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.430:                                       ; preds = %if.end.424
  %139 = load i8*, i8** %s, align 8
  %call431 = call double @atof(i8* %139) #5
  %conv432 = fptrunc double %call431 to float
  %140 = load i32, i32* %k, align 4
  %idxprom433 = sext i32 %140 to i64
  %141 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %141, i32 0, i32 3
  %142 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %arrayidx434 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %142, i64 %idxprom433
  %t435 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx434, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [3 x float], [3 x float]* %t435, i32 0, i64 0
  store float %conv432, float* %arrayidx436, align 4
  %arraydecay437 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call438 = call i8* @fgets(i8* %arraydecay437, i32 512, %struct._IO_FILE* %143)
  %cmp439 = icmp eq i8* %call438, null
  br i1 %cmp439, label %if.then.441, label %if.end.442

if.then.441:                                      ; preds = %if.end.430
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.442:                                       ; preds = %if.end.430
  %arraydecay443 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call444 = call i8* @strtok(i8* %arraydecay443, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call444, i8** %s, align 8
  %cmp445 = icmp eq i8* %call444, null
  br i1 %cmp445, label %if.then.447, label %if.end.448

if.then.447:                                      ; preds = %if.end.442
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.448:                                       ; preds = %if.end.442
  %144 = load i8*, i8** %s, align 8
  %call449 = call double @atof(i8* %144) #5
  %conv450 = fptrunc double %call449 to float
  %145 = load i32, i32* %k, align 4
  %idxprom451 = sext i32 %145 to i64
  %146 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del452 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %146, i32 0, i32 3
  %147 = load %struct.basic_state*, %struct.basic_state** %del452, align 8
  %arrayidx453 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %147, i64 %idxprom451
  %t454 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [3 x float], [3 x float]* %t454, i32 0, i64 2
  store float %conv450, float* %arrayidx455, align 4
  %arraydecay456 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call457 = call i8* @fgets(i8* %arraydecay456, i32 512, %struct._IO_FILE* %148)
  %cmp458 = icmp eq i8* %call457, null
  br i1 %cmp458, label %if.then.460, label %if.end.461

if.then.460:                                      ; preds = %if.end.448
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.461:                                       ; preds = %if.end.448
  %arraydecay462 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call463 = call i8* @strtok(i8* %arraydecay462, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #6
  store i8* %call463, i8** %s, align 8
  %cmp464 = icmp eq i8* %call463, null
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.461
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.467:                                       ; preds = %if.end.461
  %149 = load i8*, i8** %s, align 8
  %call468 = call double @atof(i8* %149) #5
  %conv469 = fptrunc double %call468 to float
  %150 = load i32, i32* %k, align 4
  %idxprom470 = sext i32 %150 to i64
  %151 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del471 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %151, i32 0, i32 3
  %152 = load %struct.basic_state*, %struct.basic_state** %del471, align 8
  %arrayidx472 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %152, i64 %idxprom470
  %t473 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx472, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [3 x float], [3 x float]* %t473, i32 0, i64 1
  store float %conv469, float* %arrayidx474, align 4
  %153 = load i32, i32* %version.addr, align 4
  %cmp475 = icmp eq i32 %153, 2
  br i1 %cmp475, label %if.then.477, label %if.end.491

if.then.477:                                      ; preds = %if.end.467
  store i32 0, i32* %i, align 4
  br label %for.cond.478

for.cond.478:                                     ; preds = %for.inc.488, %if.then.477
  %154 = load i32, i32* %i, align 4
  %cmp479 = icmp slt i32 %154, 3
  br i1 %cmp479, label %for.body.481, label %for.end.490

for.body.481:                                     ; preds = %for.cond.478
  %arraydecay482 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call483 = call i8* @fgets(i8* %arraydecay482, i32 512, %struct._IO_FILE* %155)
  %cmp484 = icmp eq i8* %call483, null
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %for.body.481
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.487:                                       ; preds = %for.body.481
  br label %for.inc.488

for.inc.488:                                      ; preds = %if.end.487
  %156 = load i32, i32* %i, align 4
  %inc489 = add nsw i32 %156, 1
  store i32 %inc489, i32* %i, align 4
  br label %for.cond.478

for.end.490:                                      ; preds = %for.cond.478
  br label %if.end.491

if.end.491:                                       ; preds = %for.end.490, %if.end.467
  br label %if.end.493

if.else.492:                                      ; preds = %if.else.414
  store %struct.plan9_s* null, %struct.plan9_s** %retval
  br label %return

if.end.493:                                       ; preds = %if.end.491
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.end.413
  br label %if.end.495

if.end.495:                                       ; preds = %if.end.494, %if.end.307
  br label %while.cond

while.end.496:                                    ; preds = %while.cond
  %157 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %null = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %157, i32 0, i32 4
  %arraydecay497 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  call void @P9DefaultNullModel(float* %arraydecay497)
  %158 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  call void @P9Renormalize(%struct.plan9_s* %158)
  %159 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  store %struct.plan9_s* %159, %struct.plan9_s** %retval
  br label %return

return:                                           ; preds = %while.end.496, %if.else.492, %if.then.486, %if.then.466, %if.then.460, %if.then.447, %if.then.441, %if.then.429, %if.then.423, %if.then.408, %if.then.383, %if.then.377, %if.then.360, %if.then.354, %if.then.341, %if.then.335, %if.then.323, %if.then.317, %if.then.302, %if.then.278, %if.then.272, %if.then.255, %if.then.249, %if.then.236, %if.then.230, %if.then.219, %if.then.213, %if.then.203, %if.then.184, %if.then.163, %if.then.155, %if.then.146, %if.then.141, %if.then.122, %if.then.110, %if.then.100, %if.then.89, %if.then.83, %if.then.77, %if.then.68, %if.then.62, %if.then.30, %if.then.21, %if.then.15, %if.then.8, %if.then.4, %if.then
  %160 = load %struct.plan9_s*, %struct.plan9_s** %retval
  ret %struct.plan9_s* %160
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @Prob2Score(float, float) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
