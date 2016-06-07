; ModuleID = 'stockholm.c'
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

@.str = private unnamed_addr constant [15 x i8] c"# STOCKHOLM 1.\00", align 1
@.str.1 = private unnamed_addr constant [334 x i8] c"File %s doesn't appear to be in Stockholm format.\0AAssuming there isn't some other problem with your file (it is an\0Aalignment file, right?), please either:\0A  a) use the Babelfish format autotranslator option (-B, usually);\0A  b) specify the file's format with the --informat option; or\0A  a) reformat the alignment to Stockholm format.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"#=GF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"#=GS\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"#=GC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"#=GR\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"Stockholm format parse error: line %d of file %s while reading alignment %s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Didn't find // at end of alignment %s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"stockholm.c\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"# STOCKHOLM 1.0\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"#=GF ID    %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"#=GF AC    %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"#=GF DE    %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"#=GF AU    %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"#=GF GA    %.1f %.1f\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"#=GF GA    %.1f\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"#=GF NC    %.1f %.1f\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"#=GF NC    %.1f\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"#=GF TC    %.1f %.1f\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"#=GF TC    %.1f\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"#=GF %-5s %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"#=GS %-*.*s WT    %.2f\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"#=GS %-*.*s AC    %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"#=GS %*.*s DE    %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"#=GS %*.*s %5s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"%-*.*s  %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"#=GR %-*.*s SS     %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"#=GR %-*.*s SA     %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"#=GR %-*.*s %5s  %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"#=GC %-*.*s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"SS_cons\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SA_cons\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"GA\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"SA\00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca %struct.msa_struct*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %s = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
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
  %call1 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %call1, %struct.msa_struct** %msa, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call2 = call i8* @MSAFileGetLine(%struct.msafile_struct* %2)
  store i8* %call2, i8** %s, align 8
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAFree(%struct.msa_struct* %3)
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.4:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  %4 = load i8*, i8** %s, align 8
  %call5 = call i32 @IsBlankline(i8* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i8*, i8** %s, align 8
  %call7 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i64 14) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %6, i32 0, i32 1
  %7 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([334 x i8], [334 x i8]* @.str.1, i32 0, i32 0), i8* %7)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.74, %if.then.61, %if.end.10
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call11 = call i8* @MSAFileGetLine(%struct.msafile_struct* %8)
  store i8* %call11, i8** %s, align 8
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %while.body, label %while.end.75

while.body:                                       ; preds = %while.cond
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.19, %while.body
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv, 32
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.13
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.13
  %13 = phi i1 [ true, %while.cond.13 ], [ %cmp17, %lor.rhs ]
  br i1 %13, label %while.body.19, label %while.end

while.body.19:                                    ; preds = %lor.end
  %14 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.13

while.end:                                        ; preds = %lor.end
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 35
  br i1 %cmp21, label %if.then.23, label %if.else.52

if.then.23:                                       ; preds = %while.end
  %17 = load i8*, i8** %s, align 8
  %call24 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.23
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %19 = load i8*, i8** %s, align 8
  %call28 = call i32 @parse_gf(%struct.msa_struct* %18, i8* %19)
  store i32 %call28, i32* %status, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.then.23
  %20 = load i8*, i8** %s, align 8
  %call29 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 4) #5
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.else
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %22 = load i8*, i8** %s, align 8
  %call33 = call i32 @parse_gs(%struct.msa_struct* %21, i8* %22)
  store i32 %call33, i32* %status, align 4
  br label %if.end.50

if.else.34:                                       ; preds = %if.else
  %23 = load i8*, i8** %s, align 8
  %call35 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 4) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.else.34
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %25 = load i8*, i8** %s, align 8
  %call39 = call i32 @parse_gc(%struct.msa_struct* %24, i8* %25)
  store i32 %call39, i32* %status, align 4
  br label %if.end.49

if.else.40:                                       ; preds = %if.else.34
  %26 = load i8*, i8** %s, align 8
  %call41 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4) #5
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.else.40
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %28 = load i8*, i8** %s, align 8
  %call45 = call i32 @parse_gr(%struct.msa_struct* %27, i8* %28)
  store i32 %call45, i32* %status, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %if.else.40
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %30 = load i8*, i8** %s, align 8
  %call47 = call i32 @parse_comment(%struct.msa_struct* %29, i8* %30)
  store i32 %call47, i32* %status, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.32
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.27
  br label %if.end.66

if.else.52:                                       ; preds = %while.end
  %31 = load i8*, i8** %s, align 8
  %call53 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 2) #5
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.52
  br label %while.end.75

if.else.57:                                       ; preds = %if.else.52
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv58 = sext i8 %33 to i32
  %cmp59 = icmp eq i32 %conv58, 10
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.else.57
  br label %while.cond

if.else.62:                                       ; preds = %if.else.57
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %35 = load i8*, i8** %s, align 8
  %call63 = call i32 @parse_sequence(%struct.msa_struct* %34, i8* %35)
  store i32 %call63, i32* %status, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.51
  %36 = load i32, i32* %status, align 4
  %cmp67 = icmp eq i32 %36, 0
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.66
  %37 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %37, i32 0, i32 2
  %38 = load i32, i32* %linenumber, align 4
  %39 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname70 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %39, i32 0, i32 1
  %40 = load i8*, i8** %fname70, align 8
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 7
  %42 = load i8*, i8** %name, align 8
  %cmp71 = icmp eq i8* %42, null
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.69
  br label %cond.end

cond.false:                                       ; preds = %if.then.69
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %name73 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 7
  %44 = load i8*, i8** %name73, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.true ], [ %44, %cond.false ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i32 0, i32 0), i32 %38, i8* %40, i8* %cond)
  br label %if.end.74

if.end.74:                                        ; preds = %cond.end, %if.end.66
  br label %while.cond

while.end.75:                                     ; preds = %if.then.56, %while.cond
  %45 = load i8*, i8** %s, align 8
  %cmp76 = icmp eq i8* %45, null
  br i1 %cmp76, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %while.end.75
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 4
  %47 = load i32, i32* %nseq, align 4
  %cmp78 = icmp ne i32 %47, 0
  br i1 %cmp78, label %if.then.80, label %if.end.89

if.then.80:                                       ; preds = %land.lhs.true
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %name81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 7
  %49 = load i8*, i8** %name81, align 8
  %cmp82 = icmp eq i8* %49, null
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %if.then.80
  br label %cond.end.87

cond.false.85:                                    ; preds = %if.then.80
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %name86 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 7
  %51 = load i8*, i8** %name86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.84
  %cond88 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.true.84 ], [ %51, %cond.false.85 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* %cond88)
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.87, %land.lhs.true, %while.end.75
  %52 = load i8*, i8** %s, align 8
  %cmp90 = icmp eq i8* %52, null
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.97

land.lhs.true.92:                                 ; preds = %if.end.89
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq93 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 4
  %54 = load i32, i32* %nseq93, align 4
  %cmp94 = icmp eq i32 %54, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.92
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAFree(%struct.msa_struct* %55)
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.97:                                        ; preds = %land.lhs.true.92, %if.end.89
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %56)
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  store %struct.msa_struct* %57, %struct.msa_struct** %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then.96, %if.then.3, %if.then
  %58 = load %struct.msa_struct*, %struct.msa_struct** %retval
  ret %struct.msa_struct* %58
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare void @MSAFree(%struct.msa_struct*) #2

declare i32 @IsBlankline(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_gf(%struct.msa_struct* %msa, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %gf = alloca i8*, align 8
  %featurename = alloca i8*, align 8
  %text = alloca i8*, align 8
  %s = alloca i8*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call, i8** %gf, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call1, i8** %featurename, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32* null)
  store i8* %call5, i8** %text, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %1 = load i8*, i8** %text, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %text, align 8
  %4 = load i8, i8* %3, align 1
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load i8*, i8** %text, align 8
  %6 = load i8, i8* %5, align 1
  %conv12 = sext i8 %6 to i32
  %cmp13 = icmp eq i32 %conv12, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %cmp13, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %7, %lor.end ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %text, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %text, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %featurename, align 8
  %call15 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %while.end
  %11 = load i8*, i8** %text, align 8
  %call19 = call i8* @sre_strdup(i8* %11, i32 -1)
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 7
  store i8* %call19, i8** %name, align 8
  br label %if.end.122

if.else:                                          ; preds = %while.end
  %13 = load i8*, i8** %featurename, align 8
  %call20 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0)) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else
  %14 = load i8*, i8** %text, align 8
  %call24 = call i8* @sre_strdup(i8* %14, i32 -1)
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 9
  store i8* %call24, i8** %acc, align 8
  br label %if.end.121

if.else.25:                                       ; preds = %if.else
  %16 = load i8*, i8** %featurename, align 8
  %call26 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else.25
  %17 = load i8*, i8** %text, align 8
  %call30 = call i8* @sre_strdup(i8* %17, i32 -1)
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 8
  store i8* %call30, i8** %desc, align 8
  br label %if.end.120

if.else.31:                                       ; preds = %if.else.25
  %19 = load i8*, i8** %featurename, align 8
  %call32 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.else.31
  %20 = load i8*, i8** %text, align 8
  %call36 = call i8* @sre_strdup(i8* %20, i32 -1)
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 10
  store i8* %call36, i8** %au, align 8
  br label %if.end.119

if.else.37:                                       ; preds = %if.else.31
  %22 = load i8*, i8** %featurename, align 8
  %call38 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0)) #5
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.61

if.then.41:                                       ; preds = %if.else.37
  %23 = load i8*, i8** %text, align 8
  store i8* %23, i8** %s, align 8
  %call42 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call42, i8** %text, align 8
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.41
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.41
  %24 = load i8*, i8** %text, align 8
  %call47 = call double @atof(i8* %24) #5
  %conv48 = fptrunc double %call47 to float
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 18
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %cutoff, i32 0, i64 2
  store float %conv48, float* %arrayidx, align 4
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 19
  %arrayidx49 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set, i32 0, i64 2
  store i32 1, i32* %arrayidx49, align 4
  %call50 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call50, i8** %text, align 8
  %cmp51 = icmp ne i8* %call50, null
  br i1 %cmp51, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.46
  %27 = load i8*, i8** %text, align 8
  %call54 = call double @atof(i8* %27) #5
  %conv55 = fptrunc double %call54 to float
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 18
  %arrayidx57 = getelementptr inbounds [6 x float], [6 x float]* %cutoff56, i32 0, i64 3
  store float %conv55, float* %arrayidx57, align 4
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 19
  %arrayidx59 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set58, i32 0, i64 3
  store i32 1, i32* %arrayidx59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.end.46
  br label %if.end.118

if.else.61:                                       ; preds = %if.else.37
  %30 = load i8*, i8** %featurename, align 8
  %call62 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0)) #5
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.88

if.then.65:                                       ; preds = %if.else.61
  %31 = load i8*, i8** %text, align 8
  store i8* %31, i8** %s, align 8
  %call66 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call66, i8** %text, align 8
  %cmp67 = icmp eq i8* %call66, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.65
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.65
  %32 = load i8*, i8** %text, align 8
  %call71 = call double @atof(i8* %32) #5
  %conv72 = fptrunc double %call71 to float
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff73 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 18
  %arrayidx74 = getelementptr inbounds [6 x float], [6 x float]* %cutoff73, i32 0, i64 4
  store float %conv72, float* %arrayidx74, align 4
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set75 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 19
  %arrayidx76 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set75, i32 0, i64 4
  store i32 1, i32* %arrayidx76, align 4
  %call77 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call77, i8** %text, align 8
  %cmp78 = icmp ne i8* %call77, null
  br i1 %cmp78, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %if.end.70
  %35 = load i8*, i8** %text, align 8
  %call81 = call double @atof(i8* %35) #5
  %conv82 = fptrunc double %call81 to float
  %36 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 18
  %arrayidx84 = getelementptr inbounds [6 x float], [6 x float]* %cutoff83, i32 0, i64 5
  store float %conv82, float* %arrayidx84, align 4
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 19
  %arrayidx86 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set85, i32 0, i64 5
  store i32 1, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.80, %if.end.70
  br label %if.end.117

if.else.88:                                       ; preds = %if.else.61
  %38 = load i8*, i8** %featurename, align 8
  %call89 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.else.115

if.then.92:                                       ; preds = %if.else.88
  %39 = load i8*, i8** %text, align 8
  store i8* %39, i8** %s, align 8
  %call93 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call93, i8** %text, align 8
  %cmp94 = icmp eq i8* %call93, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.92
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.then.92
  %40 = load i8*, i8** %text, align 8
  %call98 = call double @atof(i8* %40) #5
  %conv99 = fptrunc double %call98 to float
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff100 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 18
  %arrayidx101 = getelementptr inbounds [6 x float], [6 x float]* %cutoff100, i32 0, i64 0
  store float %conv99, float* %arrayidx101, align 4
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 19
  %arrayidx103 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set102, i32 0, i64 0
  store i32 1, i32* %arrayidx103, align 4
  %call104 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call104, i8** %text, align 8
  %cmp105 = icmp ne i8* %call104, null
  br i1 %cmp105, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %if.end.97
  %43 = load i8*, i8** %text, align 8
  %call108 = call double @atof(i8* %43) #5
  %conv109 = fptrunc double %call108 to float
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff110 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 18
  %arrayidx111 = getelementptr inbounds [6 x float], [6 x float]* %cutoff110, i32 0, i64 1
  store float %conv109, float* %arrayidx111, align 4
  %45 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set112 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 19
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set112, i32 0, i64 1
  store i32 1, i32* %arrayidx113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.107, %if.end.97
  br label %if.end.116

if.else.115:                                      ; preds = %if.else.88
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %47 = load i8*, i8** %featurename, align 8
  %48 = load i8*, i8** %text, align 8
  call void @MSAAddGF(%struct.msa_struct* %46, i8* %47, i8* %48)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.end.114
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.87
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.60
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.35
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.29
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.23
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.18
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.then.96, %if.then.69, %if.then.45, %if.then.7, %if.then.3, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_gs(%struct.msa_struct* %msa, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %gs = alloca i8*, align 8
  %seqname = alloca i8*, align 8
  %featurename = alloca i8*, align 8
  %text = alloca i8*, align 8
  %seqidx = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call, i8** %gs, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call1, i8** %seqname, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call5, i8** %featurename, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32* null)
  store i8* %call9, i8** %text, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %1 = load i8*, i8** %text, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %text, align 8
  %4 = load i8, i8* %3, align 1
  %conv13 = sext i8 %4 to i32
  %cmp14 = icmp eq i32 %conv13, 32
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load i8*, i8** %text, align 8
  %6 = load i8, i8* %5, align 1
  %conv16 = sext i8 %6 to i32
  %cmp17 = icmp eq i32 %conv16, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %cmp17, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %7, %lor.end ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %text, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %text, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %11 = load i8*, i8** %seqname, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 45
  %13 = load i32, i32* %lastidx, align 4
  %add = add nsw i32 %13, 1
  %call19 = call i32 @MSAGetSeqidx(%struct.msa_struct* %10, i8* %11, i32 %add)
  store i32 %call19, i32* %seqidx, align 4
  %14 = load i32, i32* %seqidx, align 4
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %lastidx20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 45
  store i32 %14, i32* %lastidx20, align 4
  %16 = load i8*, i8** %featurename, align 8
  %call21 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %while.end
  %17 = load i8*, i8** %text, align 8
  %call25 = call double @atof(i8* %17) #5
  %conv26 = fptrunc double %call25 to float
  %18 = load i32, i32* %seqidx, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 2
  %20 = load float*, float** %wgt, align 8
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom
  store float %conv26, float* %arrayidx, align 4
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %flags = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 5
  %22 = load i32, i32* %flags, align 4
  %or = or i32 %22, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.39

if.else:                                          ; preds = %while.end
  %23 = load i8*, i8** %featurename, align 8
  %call27 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0)) #5
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %25 = load i32, i32* %seqidx, align 4
  %26 = load i8*, i8** %text, align 8
  call void @MSASetSeqAccession(%struct.msa_struct* %24, i32 %25, i8* %26)
  br label %if.end.38

if.else.31:                                       ; preds = %if.else
  %27 = load i8*, i8** %featurename, align 8
  %call32 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %29 = load i32, i32* %seqidx, align 4
  %30 = load i8*, i8** %text, align 8
  call void @MSASetSeqDescription(%struct.msa_struct* %28, i32 %29, i8* %30)
  br label %if.end.37

if.else.36:                                       ; preds = %if.else.31
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %32 = load i8*, i8** %featurename, align 8
  %33 = load i32, i32* %seqidx, align 4
  %34 = load i8*, i8** %text, align 8
  call void @MSAAddGS(%struct.msa_struct* %31, i8* %32, i32 %33, i8* %34)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.24
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.11, %if.then.7, %if.then.3, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_gc(%struct.msa_struct* %msa, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %gc = alloca i8*, align 8
  %featurename = alloca i8*, align 8
  %text = alloca i8*, align 8
  %s = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call, i8** %gc, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call1, i8** %featurename, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* %len)
  store i8* %call5, i8** %text, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %1 = load i8*, i8** %featurename, align 8
  %call9 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 11
  %3 = load i8*, i8** %text, align 8
  %4 = load i32, i32* %len, align 4
  %call12 = call i32 @sre_strcat(i8** %ss_cons, i32 -1, i8* %3, i32 %4)
  br label %if.end.25

if.else:                                          ; preds = %if.end.8
  %5 = load i8*, i8** %featurename, align 8
  %call13 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #5
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 12
  %7 = load i8*, i8** %text, align 8
  %8 = load i32, i32* %len, align 4
  %call16 = call i32 @sre_strcat(i8** %sa_cons, i32 -1, i8* %7, i32 %8)
  br label %if.end.24

if.else.17:                                       ; preds = %if.else
  %9 = load i8*, i8** %featurename, align 8
  %call18 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0)) #5
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.17
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 13
  %11 = load i8*, i8** %text, align 8
  %12 = load i32, i32* %len, align 4
  %call21 = call i32 @sre_strcat(i8** %rf, i32 -1, i8* %11, i32 %12)
  br label %if.end.23

if.else.22:                                       ; preds = %if.else.17
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %14 = load i8*, i8** %featurename, align 8
  %15 = load i8*, i8** %text, align 8
  call void @MSAAppendGC(%struct.msa_struct* %13, i8* %14, i8* %15)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.11
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.7, %if.then.3, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_gr(%struct.msa_struct* %msa, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %gr = alloca i8*, align 8
  %seqname = alloca i8*, align 8
  %featurename = alloca i8*, align 8
  %text = alloca i8*, align 8
  %seqidx = alloca i32, align 4
  %len = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call, i8** %gr, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call1, i8** %seqname, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call5, i8** %featurename, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* %len)
  store i8* %call9, i8** %text, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %2 = load i8*, i8** %seqname, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 45
  %4 = load i32, i32* %lastidx, align 4
  %call13 = call i32 @MSAGetSeqidx(%struct.msa_struct* %1, i8* %2, i32 %4)
  store i32 %call13, i32* %seqidx, align 4
  %5 = load i32, i32* %seqidx, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %lastidx14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 45
  store i32 %5, i32* %lastidx14, align 4
  %7 = load i8*, i8** %featurename, align 8
  %call15 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.12
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 16
  %9 = load i8**, i8*** %ss, align 8
  %cmp18 = icmp eq i8** %9, null
  br i1 %cmp18, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %if.then.17
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 40
  %11 = load i32, i32* %nseqalloc, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 8, %conv
  %call20 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 561, i64 %mul)
  %12 = bitcast i8* %call20 to i8**
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 16
  store i8** %12, i8*** %ss21, align 8
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 40
  %15 = load i32, i32* %nseqalloc22, align 4
  %conv23 = sext i32 %15 to i64
  %mul24 = mul i64 4, %conv23
  %call25 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 562, i64 %mul24)
  %16 = bitcast i8* %call25 to i32*
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 43
  store i32* %16, i32** %sslen, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %18 = load i32, i32* %j, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 40
  %20 = load i32, i32* %nseqalloc26, align 4
  %cmp27 = icmp slt i32 %18, %20
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %j, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 16
  %23 = load i8**, i8*** %ss29, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen31 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 43
  %26 = load i32*, i32** %sslen31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %26, i64 %idxprom30
  store i32 0, i32* %arrayidx32, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.then.17
  %28 = load i32, i32* %seqidx, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss35 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 16
  %30 = load i8**, i8*** %ss35, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %30, i64 %idxprom34
  %31 = load i32, i32* %seqidx, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 43
  %33 = load i32*, i32** %sslen38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %33, i64 %idxprom37
  %34 = load i32, i32* %arrayidx39, align 4
  %35 = load i8*, i8** %text, align 8
  %36 = load i32, i32* %len, align 4
  %call40 = call i32 @sre_strcat(i8** %arrayidx36, i32 %34, i8* %35, i32 %36)
  %37 = load i32, i32* %seqidx, align 4
  %idxprom41 = sext i32 %37 to i64
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 43
  %39 = load i32*, i32** %sslen42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %39, i64 %idxprom41
  store i32 %call40, i32* %arrayidx43, align 4
  br label %if.end.87

if.else:                                          ; preds = %if.end.12
  %40 = load i8*, i8** %featurename, align 8
  %call44 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.85

if.then.47:                                       ; preds = %if.else
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 17
  %42 = load i8**, i8*** %sa, align 8
  %cmp48 = icmp eq i8** %42, null
  br i1 %cmp48, label %if.then.50, label %if.end.74

if.then.50:                                       ; preds = %if.then.47
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc51 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 40
  %44 = load i32, i32* %nseqalloc51, align 4
  %conv52 = sext i32 %44 to i64
  %mul53 = mul i64 8, %conv52
  %call54 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 575, i64 %mul53)
  %45 = bitcast i8* %call54 to i8**
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 17
  store i8** %45, i8*** %sa55, align 8
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 40
  %48 = load i32, i32* %nseqalloc56, align 4
  %conv57 = sext i32 %48 to i64
  %mul58 = mul i64 4, %conv57
  %call59 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 576, i64 %mul58)
  %49 = bitcast i8* %call59 to i32*
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 44
  store i32* %49, i32** %salen, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.71, %if.then.50
  %51 = load i32, i32* %j, align 4
  %52 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 40
  %53 = load i32, i32* %nseqalloc61, align 4
  %cmp62 = icmp slt i32 %51, %53
  br i1 %cmp62, label %for.body.64, label %for.end.73

for.body.64:                                      ; preds = %for.cond.60
  %54 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 17
  %56 = load i8**, i8*** %sa66, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %56, i64 %idxprom65
  store i8* null, i8** %arrayidx67, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %57 to i64
  %58 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %58, i32 0, i32 44
  %59 = load i32*, i32** %salen69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %59, i64 %idxprom68
  store i32 0, i32* %arrayidx70, align 4
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.64
  %60 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %60, 1
  store i32 %inc72, i32* %j, align 4
  br label %for.cond.60

for.end.73:                                       ; preds = %for.cond.60
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %if.then.47
  %61 = load i32, i32* %seqidx, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa76 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 17
  %63 = load i8**, i8*** %sa76, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %63, i64 %idxprom75
  %64 = load i32, i32* %seqidx, align 4
  %idxprom78 = sext i32 %64 to i64
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 44
  %66 = load i32*, i32** %salen79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %66, i64 %idxprom78
  %67 = load i32, i32* %arrayidx80, align 4
  %68 = load i8*, i8** %text, align 8
  %69 = load i32, i32* %len, align 4
  %call81 = call i32 @sre_strcat(i8** %arrayidx77, i32 %67, i8* %68, i32 %69)
  %70 = load i32, i32* %seqidx, align 4
  %idxprom82 = sext i32 %70 to i64
  %71 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %71, i32 0, i32 44
  %72 = load i32*, i32** %salen83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %72, i64 %idxprom82
  store i32 %call81, i32* %arrayidx84, align 4
  br label %if.end.86

if.else.85:                                       ; preds = %if.else
  %73 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %74 = load i8*, i8** %featurename, align 8
  %75 = load i32, i32* %seqidx, align 4
  %76 = load i8*, i8** %text, align 8
  call void @MSAAppendGR(%struct.msa_struct* %73, i8* %74, i32 %75, i8* %76)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.end.74
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.33
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.then.11, %if.then.7, %if.then.3, %if.then
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_comment(%struct.msa_struct* %msa, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %comment = alloca i8*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s, align 8
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** %s, align 8
  store i8* %4, i8** %comment, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32* null)
  store i8* %call, i8** %comment, align 8
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %6 = load i8*, i8** %comment, align 8
  call void @MSAAddComment(%struct.msa_struct* %5, i8* %6)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_sequence(%struct.msa_struct* %msa, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %seqname = alloca i8*, align 8
  %text = alloca i8*, align 8
  %seqidx = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %call = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* null)
  store i8* %call, i8** %seqname, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32* %len)
  store i8* %call1, i8** %text, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %2 = load i8*, i8** %seqname, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 45
  %4 = load i32, i32* %lastidx, align 4
  %add = add nsw i32 %4, 1
  %call5 = call i32 @MSAGetSeqidx(%struct.msa_struct* %1, i8* %2, i32 %add)
  store i32 %call5, i32* %seqidx, align 4
  %5 = load i32, i32* %seqidx, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %lastidx6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 45
  store i32 %5, i32* %lastidx6, align 4
  %7 = load i32, i32* %seqidx, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 0
  %9 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i32, i32* %seqidx, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 42
  %12 = load i32*, i32** %sqlen, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %14 = load i8*, i8** %text, align 8
  %15 = load i32, i32* %len, align 4
  %call9 = call i32 @sre_strcat(i8** %arrayidx, i32 %13, i8* %14, i32 %15)
  %16 = load i32, i32* %seqidx, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 42
  %18 = load i32*, i32** %sqlen11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  store i32 %call9, i32* %arrayidx12, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind uwtable
define void @WriteStockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @actually_write_stockholm(%struct._IO_FILE* %0, %struct.msa_struct* %1, i32 50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %cpl.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %namewidth = alloca i32, align 4
  %typewidth = alloca i32, align 4
  %markupwidth = alloca i32, align 4
  %buf = alloca i8*, align 8
  %currpos = alloca i32, align 4
  %s = alloca i8*, align 8
  %tok = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %cpl, i32* %cpl.addr, align 4
  store i32 0, i32* %len, align 4
  store i32 0, i32* %typewidth, align 4
  store i32 0, i32* %markupwidth, align 4
  store i32 0, i32* %namewidth, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 1
  %5 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %6) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %7 = load i32, i32* %namewidth, align 4
  %cmp1 = icmp sgt i32 %conv, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %len, align 4
  store i32 %8, i32* %namewidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 16
  %11 = load i8**, i8*** %ss, align 8
  %cmp3 = icmp ne i8** %11, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  store i32 4, i32* %markupwidth, align 4
  store i32 2, i32* %typewidth, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %for.end
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 17
  %13 = load i8**, i8*** %sa, align 8
  %cmp7 = icmp ne i8** %13, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 4, i32* %markupwidth, align 4
  store i32 2, i32* %typewidth, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %if.end.10
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 38
  %16 = load i32, i32* %ngr, align 4
  %cmp12 = icmp slt i32 %14, %16
  br i1 %cmp12, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 35
  %19 = load i8**, i8*** %gr_tag, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %19, i64 %idxprom15
  %20 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i64 @strlen(i8* %20) #5
  %conv18 = trunc i64 %call17 to i32
  store i32 %conv18, i32* %len, align 4
  %21 = load i32, i32* %typewidth, align 4
  %cmp19 = icmp sgt i32 %conv18, %21
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.14
  %22 = load i32, i32* %len, align 4
  store i32 %22, i32* %typewidth, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body.14
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %23 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 13
  %25 = load i8*, i8** %rf, align 8
  %cmp26 = icmp ne i8* %25, null
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %for.end.25
  store i32 4, i32* %markupwidth, align 4
  %26 = load i32, i32* %typewidth, align 4
  %cmp29 = icmp slt i32 %26, 2
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i32 2, i32* %typewidth, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end.25
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 11
  %28 = load i8*, i8** %ss_cons, align 8
  %cmp34 = icmp ne i8* %28, null
  br i1 %cmp34, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end.33
  store i32 4, i32* %markupwidth, align 4
  %29 = load i32, i32* %typewidth, align 4
  %cmp37 = icmp slt i32 %29, 7
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.36
  store i32 7, i32* %typewidth, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.33
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 12
  %31 = load i8*, i8** %sa_cons, align 8
  %cmp42 = icmp ne i8* %31, null
  br i1 %cmp42, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.41
  store i32 4, i32* %markupwidth, align 4
  %32 = load i32, i32* %typewidth, align 4
  %cmp45 = icmp slt i32 %32, 7
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.44
  store i32 7, i32* %typewidth, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.41
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.62, %if.end.49
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 34
  %35 = load i32, i32* %ngc, align 4
  %cmp51 = icmp slt i32 %33, %35
  br i1 %cmp51, label %for.body.53, label %for.end.64

for.body.53:                                      ; preds = %for.cond.50
  %36 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %36 to i64
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 31
  %38 = load i8**, i8*** %gc_tag, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %38, i64 %idxprom54
  %39 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i64 @strlen(i8* %39) #5
  %conv57 = trunc i64 %call56 to i32
  store i32 %conv57, i32* %len, align 4
  %40 = load i32, i32* %typewidth, align 4
  %cmp58 = icmp sgt i32 %conv57, %40
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.53
  %41 = load i32, i32* %len, align 4
  store i32 %41, i32* %typewidth, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.body.53
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %42 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %42, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  %43 = load i32, i32* %cpl.addr, align 4
  %44 = load i32, i32* %namewidth, align 4
  %add = add nsw i32 %43, %44
  %45 = load i32, i32* %typewidth, align 4
  %add65 = add nsw i32 %add, %45
  %46 = load i32, i32* %markupwidth, align 4
  %add66 = add nsw i32 %add65, %46
  %add67 = add nsw i32 %add66, 61
  %conv68 = sext i32 %add67 to i64
  %mul = mul i64 1, %conv68
  %call69 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 251, i64 %mul)
  store i8* %call69, i8** %buf, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.78, %for.end.64
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 21
  %50 = load i32, i32* %ncomment, align 4
  %cmp72 = icmp slt i32 %48, %50
  br i1 %cmp72, label %for.body.74, label %for.end.80

for.body.74:                                      ; preds = %for.cond.71
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %52 to i64
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 20
  %54 = load i8**, i8*** %comment, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %54, i64 %idxprom75
  %55 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %55)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.74
  %56 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %56, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.71

for.end.80:                                       ; preds = %for.cond.71
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 21
  %58 = load i32, i32* %ncomment81, align 4
  %cmp82 = icmp sgt i32 %58, 0
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %for.end.80
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %for.end.80
  %60 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 7
  %61 = load i8*, i8** %name, align 8
  %cmp87 = icmp ne i8* %61, null
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.86
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %63 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name90 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 7
  %64 = load i8*, i8** %name90, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* %64)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 9
  %66 = load i8*, i8** %acc, align 8
  %cmp93 = icmp ne i8* %66, null
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.92
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 9
  %69 = load i8*, i8** %acc96, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %69)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.92
  %70 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 8
  %71 = load i8*, i8** %desc, align 8
  %cmp99 = icmp ne i8* %71, null
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.98
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %73 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 8
  %74 = load i8*, i8** %desc102, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %74)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.98
  %75 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 10
  %76 = load i8*, i8** %au, align 8
  %cmp105 = icmp ne i8* %76, null
  br i1 %cmp105, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.end.104
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %78 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 10
  %79 = load i8*, i8** %au108, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* %79)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.end.104
  %80 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %80, i32 0, i32 19
  %arrayidx111 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set, i32 0, i64 2
  %81 = load i32, i32* %arrayidx111, align 4
  %tobool = icmp ne i32 %81, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.110
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set112 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 19
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set112, i32 0, i64 3
  %83 = load i32, i32* %arrayidx113, align 4
  %tobool114 = icmp ne i32 %83, 0
  br i1 %tobool114, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %land.lhs.true
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %85 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 18
  %arrayidx116 = getelementptr inbounds [6 x float], [6 x float]* %cutoff, i32 0, i64 2
  %86 = load float, float* %arrayidx116, align 4
  %conv117 = fpext float %86 to double
  %87 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 18
  %arrayidx119 = getelementptr inbounds [6 x float], [6 x float]* %cutoff118, i32 0, i64 3
  %88 = load float, float* %arrayidx119, align 4
  %conv120 = fpext float %88 to double
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), double %conv117, double %conv120)
  br label %if.end.131

if.else:                                          ; preds = %land.lhs.true, %if.end.110
  %89 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set122 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 19
  %arrayidx123 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set122, i32 0, i64 2
  %90 = load i32, i32* %arrayidx123, align 4
  %tobool124 = icmp ne i32 %90, 0
  br i1 %tobool124, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.else
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %92 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 18
  %arrayidx127 = getelementptr inbounds [6 x float], [6 x float]* %cutoff126, i32 0, i64 2
  %93 = load float, float* %arrayidx127, align 4
  %conv128 = fpext float %93 to double
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), double %conv128)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %if.else
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.115
  %94 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set132 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %94, i32 0, i32 19
  %arrayidx133 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set132, i32 0, i64 4
  %95 = load i32, i32* %arrayidx133, align 4
  %tobool134 = icmp ne i32 %95, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.else.147

land.lhs.true.135:                                ; preds = %if.end.131
  %96 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set136 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %96, i32 0, i32 19
  %arrayidx137 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set136, i32 0, i64 5
  %97 = load i32, i32* %arrayidx137, align 4
  %tobool138 = icmp ne i32 %97, 0
  br i1 %tobool138, label %if.then.139, label %if.else.147

if.then.139:                                      ; preds = %land.lhs.true.135
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %99 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff140 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %99, i32 0, i32 18
  %arrayidx141 = getelementptr inbounds [6 x float], [6 x float]* %cutoff140, i32 0, i64 4
  %100 = load float, float* %arrayidx141, align 4
  %conv142 = fpext float %100 to double
  %101 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff143 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %101, i32 0, i32 18
  %arrayidx144 = getelementptr inbounds [6 x float], [6 x float]* %cutoff143, i32 0, i64 5
  %102 = load float, float* %arrayidx144, align 4
  %conv145 = fpext float %102 to double
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), double %conv142, double %conv145)
  br label %if.end.157

if.else.147:                                      ; preds = %land.lhs.true.135, %if.end.131
  %103 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set148 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 19
  %arrayidx149 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set148, i32 0, i64 4
  %104 = load i32, i32* %arrayidx149, align 4
  %tobool150 = icmp ne i32 %104, 0
  br i1 %tobool150, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %if.else.147
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %106 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff152 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %106, i32 0, i32 18
  %arrayidx153 = getelementptr inbounds [6 x float], [6 x float]* %cutoff152, i32 0, i64 4
  %107 = load float, float* %arrayidx153, align 4
  %conv154 = fpext float %107 to double
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), double %conv154)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.151, %if.else.147
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.139
  %108 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set158 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %108, i32 0, i32 19
  %arrayidx159 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set158, i32 0, i64 0
  %109 = load i32, i32* %arrayidx159, align 4
  %tobool160 = icmp ne i32 %109, 0
  br i1 %tobool160, label %land.lhs.true.161, label %if.else.173

land.lhs.true.161:                                ; preds = %if.end.157
  %110 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set162 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %110, i32 0, i32 19
  %arrayidx163 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set162, i32 0, i64 1
  %111 = load i32, i32* %arrayidx163, align 4
  %tobool164 = icmp ne i32 %111, 0
  br i1 %tobool164, label %if.then.165, label %if.else.173

if.then.165:                                      ; preds = %land.lhs.true.161
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %113 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff166 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 18
  %arrayidx167 = getelementptr inbounds [6 x float], [6 x float]* %cutoff166, i32 0, i64 0
  %114 = load float, float* %arrayidx167, align 4
  %conv168 = fpext float %114 to double
  %115 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %115, i32 0, i32 18
  %arrayidx170 = getelementptr inbounds [6 x float], [6 x float]* %cutoff169, i32 0, i64 1
  %116 = load float, float* %arrayidx170, align 4
  %conv171 = fpext float %116 to double
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), double %conv168, double %conv171)
  br label %if.end.183

if.else.173:                                      ; preds = %land.lhs.true.161, %if.end.157
  %117 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set174 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 19
  %arrayidx175 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set174, i32 0, i64 0
  %118 = load i32, i32* %arrayidx175, align 4
  %tobool176 = icmp ne i32 %118, 0
  br i1 %tobool176, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %if.else.173
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff178 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 18
  %arrayidx179 = getelementptr inbounds [6 x float], [6 x float]* %cutoff178, i32 0, i64 0
  %121 = load float, float* %arrayidx179, align 4
  %conv180 = fpext float %121 to double
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), double %conv180)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.177, %if.else.173
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.165
  store i32 0, i32* %i, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.193, %if.end.183
  %122 = load i32, i32* %i, align 4
  %123 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 25
  %124 = load i32, i32* %ngf, align 4
  %cmp185 = icmp slt i32 %122, %124
  br i1 %cmp185, label %for.body.187, label %for.end.195

for.body.187:                                     ; preds = %for.cond.184
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %126 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %126 to i64
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 23
  %128 = load i8**, i8*** %gf_tag, align 8
  %arrayidx189 = getelementptr inbounds i8*, i8** %128, i64 %idxprom188
  %129 = load i8*, i8** %arrayidx189, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %130 to i64
  %131 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %131, i32 0, i32 24
  %132 = load i8**, i8*** %gf, align 8
  %arrayidx191 = getelementptr inbounds i8*, i8** %132, i64 %idxprom190
  %133 = load i8*, i8** %arrayidx191, align 8
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* %129, i8* %133)
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.187
  %134 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %134, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.184

for.end.195:                                      ; preds = %for.cond.184
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %136 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %flags = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 5
  %137 = load i32, i32* %flags, align 4
  %and = and i32 %137, 1
  %tobool197 = icmp ne i32 %and, 0
  br i1 %tobool197, label %if.then.198, label %if.end.215

if.then.198:                                      ; preds = %for.end.195
  store i32 0, i32* %i, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.211, %if.then.198
  %138 = load i32, i32* %i, align 4
  %139 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq200 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %139, i32 0, i32 4
  %140 = load i32, i32* %nseq200, align 4
  %cmp201 = icmp slt i32 %138, %140
  br i1 %cmp201, label %for.body.203, label %for.end.213

for.body.203:                                     ; preds = %for.cond.199
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %142 = load i32, i32* %namewidth, align 4
  %143 = load i32, i32* %namewidth, align 4
  %144 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %144 to i64
  %145 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname205 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %145, i32 0, i32 1
  %146 = load i8**, i8*** %sqname205, align 8
  %arrayidx206 = getelementptr inbounds i8*, i8** %146, i64 %idxprom204
  %147 = load i8*, i8** %arrayidx206, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %148 to i64
  %149 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %149, i32 0, i32 2
  %150 = load float*, float** %wgt, align 8
  %arrayidx208 = getelementptr inbounds float, float* %150, i64 %idxprom207
  %151 = load float, float* %arrayidx208, align 4
  %conv209 = fpext float %151 to double
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i32 %142, i32 %143, i8* %147, double %conv209)
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.body.203
  %152 = load i32, i32* %i, align 4
  %inc212 = add nsw i32 %152, 1
  store i32 %inc212, i32* %i, align 4
  br label %for.cond.199

for.end.213:                                      ; preds = %for.cond.199
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %for.end.213, %for.end.195
  %154 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %154, i32 0, i32 14
  %155 = load i8**, i8*** %sqacc, align 8
  %cmp216 = icmp ne i8** %155, null
  br i1 %cmp216, label %if.then.218, label %if.end.242

if.then.218:                                      ; preds = %if.end.215
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.238, %if.then.218
  %156 = load i32, i32* %i, align 4
  %157 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq220 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %157, i32 0, i32 4
  %158 = load i32, i32* %nseq220, align 4
  %cmp221 = icmp slt i32 %156, %158
  br i1 %cmp221, label %for.body.223, label %for.end.240

for.body.223:                                     ; preds = %for.cond.219
  %159 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %159 to i64
  %160 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc225 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 14
  %161 = load i8**, i8*** %sqacc225, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %161, i64 %idxprom224
  %162 = load i8*, i8** %arrayidx226, align 8
  %cmp227 = icmp ne i8* %162, null
  br i1 %cmp227, label %if.then.229, label %if.end.237

if.then.229:                                      ; preds = %for.body.223
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %164 = load i32, i32* %namewidth, align 4
  %165 = load i32, i32* %namewidth, align 4
  %166 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %166 to i64
  %167 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname231 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %167, i32 0, i32 1
  %168 = load i8**, i8*** %sqname231, align 8
  %arrayidx232 = getelementptr inbounds i8*, i8** %168, i64 %idxprom230
  %169 = load i8*, i8** %arrayidx232, align 8
  %170 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %170 to i64
  %171 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc234 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %171, i32 0, i32 14
  %172 = load i8**, i8*** %sqacc234, align 8
  %arrayidx235 = getelementptr inbounds i8*, i8** %172, i64 %idxprom233
  %173 = load i8*, i8** %arrayidx235, align 8
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 %164, i32 %165, i8* %169, i8* %173)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.229, %for.body.223
  br label %for.inc.238

for.inc.238:                                      ; preds = %if.end.237
  %174 = load i32, i32* %i, align 4
  %inc239 = add nsw i32 %174, 1
  store i32 %inc239, i32* %i, align 4
  br label %for.cond.219

for.end.240:                                      ; preds = %for.cond.219
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.240, %if.end.215
  %176 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %176, i32 0, i32 15
  %177 = load i8**, i8*** %sqdesc, align 8
  %cmp243 = icmp ne i8** %177, null
  br i1 %cmp243, label %if.then.245, label %if.end.269

if.then.245:                                      ; preds = %if.end.242
  store i32 0, i32* %i, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.265, %if.then.245
  %178 = load i32, i32* %i, align 4
  %179 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq247 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 4
  %180 = load i32, i32* %nseq247, align 4
  %cmp248 = icmp slt i32 %178, %180
  br i1 %cmp248, label %for.body.250, label %for.end.267

for.body.250:                                     ; preds = %for.cond.246
  %181 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %181 to i64
  %182 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc252 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %182, i32 0, i32 15
  %183 = load i8**, i8*** %sqdesc252, align 8
  %arrayidx253 = getelementptr inbounds i8*, i8** %183, i64 %idxprom251
  %184 = load i8*, i8** %arrayidx253, align 8
  %cmp254 = icmp ne i8* %184, null
  br i1 %cmp254, label %if.then.256, label %if.end.264

if.then.256:                                      ; preds = %for.body.250
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %186 = load i32, i32* %namewidth, align 4
  %187 = load i32, i32* %namewidth, align 4
  %188 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %188 to i64
  %189 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname258 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %189, i32 0, i32 1
  %190 = load i8**, i8*** %sqname258, align 8
  %arrayidx259 = getelementptr inbounds i8*, i8** %190, i64 %idxprom257
  %191 = load i8*, i8** %arrayidx259, align 8
  %192 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %192 to i64
  %193 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc261 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %193, i32 0, i32 15
  %194 = load i8**, i8*** %sqdesc261, align 8
  %arrayidx262 = getelementptr inbounds i8*, i8** %194, i64 %idxprom260
  %195 = load i8*, i8** %arrayidx262, align 8
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 %186, i32 %187, i8* %191, i8* %195)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.256, %for.body.250
  br label %for.inc.265

for.inc.265:                                      ; preds = %if.end.264
  %196 = load i32, i32* %i, align 4
  %inc266 = add nsw i32 %196, 1
  store i32 %inc266, i32* %i, align 4
  br label %for.cond.246

for.end.267:                                      ; preds = %for.cond.246
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.267, %if.end.242
  store i32 0, i32* %i, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.305, %if.end.269
  %198 = load i32, i32* %i, align 4
  %199 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %199, i32 0, i32 30
  %200 = load i32, i32* %ngs, align 4
  %cmp271 = icmp slt i32 %198, %200
  br i1 %cmp271, label %for.body.273, label %for.end.307

for.body.273:                                     ; preds = %for.cond.270
  store i32 0, i32* %j, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.301, %for.body.273
  %201 = load i32, i32* %j, align 4
  %202 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq275 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %202, i32 0, i32 4
  %203 = load i32, i32* %nseq275, align 4
  %cmp276 = icmp slt i32 %201, %203
  br i1 %cmp276, label %for.body.278, label %for.end.303

for.body.278:                                     ; preds = %for.cond.274
  %204 = load i32, i32* %j, align 4
  %idxprom279 = sext i32 %204 to i64
  %205 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %205 to i64
  %206 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %206, i32 0, i32 28
  %207 = load i8***, i8**** %gs, align 8
  %arrayidx281 = getelementptr inbounds i8**, i8*** %207, i64 %idxprom280
  %208 = load i8**, i8*** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %208, i64 %idxprom279
  %209 = load i8*, i8** %arrayidx282, align 8
  %cmp283 = icmp ne i8* %209, null
  br i1 %cmp283, label %if.then.285, label %if.end.300

if.then.285:                                      ; preds = %for.body.278
  %210 = load i32, i32* %j, align 4
  %idxprom286 = sext i32 %210 to i64
  %211 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %211 to i64
  %212 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs288 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %212, i32 0, i32 28
  %213 = load i8***, i8**** %gs288, align 8
  %arrayidx289 = getelementptr inbounds i8**, i8*** %213, i64 %idxprom287
  %214 = load i8**, i8*** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i8*, i8** %214, i64 %idxprom286
  %215 = load i8*, i8** %arrayidx290, align 8
  store i8* %215, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.285
  %call291 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32* null)
  store i8* %call291, i8** %tok, align 8
  %cmp292 = icmp ne i8* %call291, null
  br i1 %cmp292, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %217 = load i32, i32* %namewidth, align 4
  %218 = load i32, i32* %namewidth, align 4
  %219 = load i32, i32* %j, align 4
  %idxprom294 = sext i32 %219 to i64
  %220 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname295 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %220, i32 0, i32 1
  %221 = load i8**, i8*** %sqname295, align 8
  %arrayidx296 = getelementptr inbounds i8*, i8** %221, i64 %idxprom294
  %222 = load i8*, i8** %arrayidx296, align 8
  %223 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %223 to i64
  %224 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %224, i32 0, i32 27
  %225 = load i8**, i8*** %gs_tag, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %225, i64 %idxprom297
  %226 = load i8*, i8** %arrayidx298, align 8
  %227 = load i8*, i8** %tok, align 8
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i32 %217, i32 %218, i8* %222, i8* %226, i8* %227)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.300

if.end.300:                                       ; preds = %while.end, %for.body.278
  br label %for.inc.301

for.inc.301:                                      ; preds = %if.end.300
  %228 = load i32, i32* %j, align 4
  %inc302 = add nsw i32 %228, 1
  store i32 %inc302, i32* %j, align 4
  br label %for.cond.274

for.end.303:                                      ; preds = %for.cond.274
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.end.303
  %230 = load i32, i32* %i, align 4
  %inc306 = add nsw i32 %230, 1
  store i32 %inc306, i32* %i, align 4
  br label %for.cond.270

for.end.307:                                      ; preds = %for.cond.270
  store i32 0, i32* %currpos, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.488, %for.end.307
  %231 = load i32, i32* %currpos, align 4
  %232 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %232, i32 0, i32 3
  %233 = load i32, i32* %alen, align 4
  %cmp309 = icmp slt i32 %231, %233
  br i1 %cmp309, label %for.body.311, label %for.end.490

for.body.311:                                     ; preds = %for.cond.308
  %234 = load i32, i32* %currpos, align 4
  %cmp312 = icmp sgt i32 %234, 0
  br i1 %cmp312, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %for.body.311
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %for.body.311
  store i32 0, i32* %i, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.418, %if.end.316
  %236 = load i32, i32* %i, align 4
  %237 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq318 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %237, i32 0, i32 4
  %238 = load i32, i32* %nseq318, align 4
  %cmp319 = icmp slt i32 %236, %238
  br i1 %cmp319, label %for.body.321, label %for.end.420

for.body.321:                                     ; preds = %for.cond.317
  %239 = load i8*, i8** %buf, align 8
  %240 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %240 to i64
  %241 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %241, i32 0, i32 0
  %242 = load i8**, i8*** %aseq, align 8
  %arrayidx323 = getelementptr inbounds i8*, i8** %242, i64 %idxprom322
  %243 = load i8*, i8** %arrayidx323, align 8
  %244 = load i32, i32* %currpos, align 4
  %idx.ext = sext i32 %244 to i64
  %add.ptr = getelementptr inbounds i8, i8* %243, i64 %idx.ext
  %245 = load i32, i32* %cpl.addr, align 4
  %conv324 = sext i32 %245 to i64
  %call325 = call i8* @strncpy(i8* %239, i8* %add.ptr, i64 %conv324) #4
  %246 = load i32, i32* %cpl.addr, align 4
  %idxprom326 = sext i32 %246 to i64
  %247 = load i8*, i8** %buf, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %247, i64 %idxprom326
  store i8 0, i8* %arrayidx327, align 1
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %249 = load i32, i32* %namewidth, align 4
  %250 = load i32, i32* %typewidth, align 4
  %add328 = add nsw i32 %249, %250
  %251 = load i32, i32* %markupwidth, align 4
  %add329 = add nsw i32 %add328, %251
  %252 = load i32, i32* %namewidth, align 4
  %253 = load i32, i32* %typewidth, align 4
  %add330 = add nsw i32 %252, %253
  %254 = load i32, i32* %markupwidth, align 4
  %add331 = add nsw i32 %add330, %254
  %255 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %255 to i64
  %256 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname333 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %256, i32 0, i32 1
  %257 = load i8**, i8*** %sqname333, align 8
  %arrayidx334 = getelementptr inbounds i8*, i8** %257, i64 %idxprom332
  %258 = load i8*, i8** %arrayidx334, align 8
  %259 = load i8*, i8** %buf, align 8
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %add329, i32 %add331, i8* %258, i8* %259)
  %260 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss336 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %260, i32 0, i32 16
  %261 = load i8**, i8*** %ss336, align 8
  %cmp337 = icmp ne i8** %261, null
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.359

land.lhs.true.339:                                ; preds = %for.body.321
  %262 = load i32, i32* %i, align 4
  %idxprom340 = sext i32 %262 to i64
  %263 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss341 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %263, i32 0, i32 16
  %264 = load i8**, i8*** %ss341, align 8
  %arrayidx342 = getelementptr inbounds i8*, i8** %264, i64 %idxprom340
  %265 = load i8*, i8** %arrayidx342, align 8
  %cmp343 = icmp ne i8* %265, null
  br i1 %cmp343, label %if.then.345, label %if.end.359

if.then.345:                                      ; preds = %land.lhs.true.339
  %266 = load i8*, i8** %buf, align 8
  %267 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %267 to i64
  %268 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss347 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %268, i32 0, i32 16
  %269 = load i8**, i8*** %ss347, align 8
  %arrayidx348 = getelementptr inbounds i8*, i8** %269, i64 %idxprom346
  %270 = load i8*, i8** %arrayidx348, align 8
  %271 = load i32, i32* %currpos, align 4
  %idx.ext349 = sext i32 %271 to i64
  %add.ptr350 = getelementptr inbounds i8, i8* %270, i64 %idx.ext349
  %272 = load i32, i32* %cpl.addr, align 4
  %conv351 = sext i32 %272 to i64
  %call352 = call i8* @strncpy(i8* %266, i8* %add.ptr350, i64 %conv351) #4
  %273 = load i32, i32* %cpl.addr, align 4
  %idxprom353 = sext i32 %273 to i64
  %274 = load i8*, i8** %buf, align 8
  %arrayidx354 = getelementptr inbounds i8, i8* %274, i64 %idxprom353
  store i8 0, i8* %arrayidx354, align 1
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %276 = load i32, i32* %namewidth, align 4
  %277 = load i32, i32* %namewidth, align 4
  %278 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %278 to i64
  %279 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname356 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %279, i32 0, i32 1
  %280 = load i8**, i8*** %sqname356, align 8
  %arrayidx357 = getelementptr inbounds i8*, i8** %280, i64 %idxprom355
  %281 = load i8*, i8** %arrayidx357, align 8
  %282 = load i8*, i8** %buf, align 8
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i32 %276, i32 %277, i8* %281, i8* %282)
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.345, %land.lhs.true.339, %for.body.321
  %283 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa360 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %283, i32 0, i32 17
  %284 = load i8**, i8*** %sa360, align 8
  %cmp361 = icmp ne i8** %284, null
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.383

land.lhs.true.363:                                ; preds = %if.end.359
  %285 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %285 to i64
  %286 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa365 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %286, i32 0, i32 17
  %287 = load i8**, i8*** %sa365, align 8
  %arrayidx366 = getelementptr inbounds i8*, i8** %287, i64 %idxprom364
  %288 = load i8*, i8** %arrayidx366, align 8
  %cmp367 = icmp ne i8* %288, null
  br i1 %cmp367, label %if.then.369, label %if.end.383

if.then.369:                                      ; preds = %land.lhs.true.363
  %289 = load i8*, i8** %buf, align 8
  %290 = load i32, i32* %i, align 4
  %idxprom370 = sext i32 %290 to i64
  %291 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa371 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %291, i32 0, i32 17
  %292 = load i8**, i8*** %sa371, align 8
  %arrayidx372 = getelementptr inbounds i8*, i8** %292, i64 %idxprom370
  %293 = load i8*, i8** %arrayidx372, align 8
  %294 = load i32, i32* %currpos, align 4
  %idx.ext373 = sext i32 %294 to i64
  %add.ptr374 = getelementptr inbounds i8, i8* %293, i64 %idx.ext373
  %295 = load i32, i32* %cpl.addr, align 4
  %conv375 = sext i32 %295 to i64
  %call376 = call i8* @strncpy(i8* %289, i8* %add.ptr374, i64 %conv375) #4
  %296 = load i32, i32* %cpl.addr, align 4
  %idxprom377 = sext i32 %296 to i64
  %297 = load i8*, i8** %buf, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %297, i64 %idxprom377
  store i8 0, i8* %arrayidx378, align 1
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %299 = load i32, i32* %namewidth, align 4
  %300 = load i32, i32* %namewidth, align 4
  %301 = load i32, i32* %i, align 4
  %idxprom379 = sext i32 %301 to i64
  %302 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname380 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %302, i32 0, i32 1
  %303 = load i8**, i8*** %sqname380, align 8
  %arrayidx381 = getelementptr inbounds i8*, i8** %303, i64 %idxprom379
  %304 = load i8*, i8** %arrayidx381, align 8
  %305 = load i8*, i8** %buf, align 8
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i32 %299, i32 %300, i8* %304, i8* %305)
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.369, %land.lhs.true.363, %if.end.359
  store i32 0, i32* %j, align 4
  br label %for.cond.384

for.cond.384:                                     ; preds = %for.inc.415, %if.end.383
  %306 = load i32, i32* %j, align 4
  %307 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr385 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %307, i32 0, i32 38
  %308 = load i32, i32* %ngr385, align 4
  %cmp386 = icmp slt i32 %306, %308
  br i1 %cmp386, label %for.body.388, label %for.end.417

for.body.388:                                     ; preds = %for.cond.384
  %309 = load i32, i32* %i, align 4
  %idxprom389 = sext i32 %309 to i64
  %310 = load i32, i32* %j, align 4
  %idxprom390 = sext i32 %310 to i64
  %311 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %311, i32 0, i32 36
  %312 = load i8***, i8**** %gr, align 8
  %arrayidx391 = getelementptr inbounds i8**, i8*** %312, i64 %idxprom390
  %313 = load i8**, i8*** %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds i8*, i8** %313, i64 %idxprom389
  %314 = load i8*, i8** %arrayidx392, align 8
  %cmp393 = icmp ne i8* %314, null
  br i1 %cmp393, label %if.then.395, label %if.end.414

if.then.395:                                      ; preds = %for.body.388
  %315 = load i8*, i8** %buf, align 8
  %316 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %316 to i64
  %317 = load i32, i32* %j, align 4
  %idxprom397 = sext i32 %317 to i64
  %318 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr398 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %318, i32 0, i32 36
  %319 = load i8***, i8**** %gr398, align 8
  %arrayidx399 = getelementptr inbounds i8**, i8*** %319, i64 %idxprom397
  %320 = load i8**, i8*** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i8*, i8** %320, i64 %idxprom396
  %321 = load i8*, i8** %arrayidx400, align 8
  %322 = load i32, i32* %currpos, align 4
  %idx.ext401 = sext i32 %322 to i64
  %add.ptr402 = getelementptr inbounds i8, i8* %321, i64 %idx.ext401
  %323 = load i32, i32* %cpl.addr, align 4
  %conv403 = sext i32 %323 to i64
  %call404 = call i8* @strncpy(i8* %315, i8* %add.ptr402, i64 %conv403) #4
  %324 = load i32, i32* %cpl.addr, align 4
  %idxprom405 = sext i32 %324 to i64
  %325 = load i8*, i8** %buf, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %325, i64 %idxprom405
  store i8 0, i8* %arrayidx406, align 1
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %327 = load i32, i32* %namewidth, align 4
  %328 = load i32, i32* %namewidth, align 4
  %329 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %329 to i64
  %330 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname408 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %330, i32 0, i32 1
  %331 = load i8**, i8*** %sqname408, align 8
  %arrayidx409 = getelementptr inbounds i8*, i8** %331, i64 %idxprom407
  %332 = load i8*, i8** %arrayidx409, align 8
  %333 = load i32, i32* %j, align 4
  %idxprom410 = sext i32 %333 to i64
  %334 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag411 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %334, i32 0, i32 35
  %335 = load i8**, i8*** %gr_tag411, align 8
  %arrayidx412 = getelementptr inbounds i8*, i8** %335, i64 %idxprom410
  %336 = load i8*, i8** %arrayidx412, align 8
  %337 = load i8*, i8** %buf, align 8
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i32 %327, i32 %328, i8* %332, i8* %336, i8* %337)
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.395, %for.body.388
  br label %for.inc.415

for.inc.415:                                      ; preds = %if.end.414
  %338 = load i32, i32* %j, align 4
  %inc416 = add nsw i32 %338, 1
  store i32 %inc416, i32* %j, align 4
  br label %for.cond.384

for.end.417:                                      ; preds = %for.cond.384
  br label %for.inc.418

for.inc.418:                                      ; preds = %for.end.417
  %339 = load i32, i32* %i, align 4
  %inc419 = add nsw i32 %339, 1
  store i32 %inc419, i32* %i, align 4
  br label %for.cond.317

for.end.420:                                      ; preds = %for.cond.317
  %340 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons421 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %340, i32 0, i32 11
  %341 = load i8*, i8** %ss_cons421, align 8
  %cmp422 = icmp ne i8* %341, null
  br i1 %cmp422, label %if.then.424, label %if.end.435

if.then.424:                                      ; preds = %for.end.420
  %342 = load i8*, i8** %buf, align 8
  %343 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons425 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %343, i32 0, i32 11
  %344 = load i8*, i8** %ss_cons425, align 8
  %345 = load i32, i32* %currpos, align 4
  %idx.ext426 = sext i32 %345 to i64
  %add.ptr427 = getelementptr inbounds i8, i8* %344, i64 %idx.ext426
  %346 = load i32, i32* %cpl.addr, align 4
  %conv428 = sext i32 %346 to i64
  %call429 = call i8* @strncpy(i8* %342, i8* %add.ptr427, i64 %conv428) #4
  %347 = load i32, i32* %cpl.addr, align 4
  %idxprom430 = sext i32 %347 to i64
  %348 = load i8*, i8** %buf, align 8
  %arrayidx431 = getelementptr inbounds i8, i8* %348, i64 %idxprom430
  store i8 0, i8* %arrayidx431, align 1
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %350 = load i32, i32* %namewidth, align 4
  %351 = load i32, i32* %typewidth, align 4
  %add432 = add nsw i32 %350, %351
  %352 = load i32, i32* %namewidth, align 4
  %353 = load i32, i32* %typewidth, align 4
  %add433 = add nsw i32 %352, %353
  %354 = load i8*, i8** %buf, align 8
  %call434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %349, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %add432, i32 %add433, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* %354)
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.424, %for.end.420
  %355 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons436 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %355, i32 0, i32 12
  %356 = load i8*, i8** %sa_cons436, align 8
  %cmp437 = icmp ne i8* %356, null
  br i1 %cmp437, label %if.then.439, label %if.end.450

if.then.439:                                      ; preds = %if.end.435
  %357 = load i8*, i8** %buf, align 8
  %358 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons440 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %358, i32 0, i32 12
  %359 = load i8*, i8** %sa_cons440, align 8
  %360 = load i32, i32* %currpos, align 4
  %idx.ext441 = sext i32 %360 to i64
  %add.ptr442 = getelementptr inbounds i8, i8* %359, i64 %idx.ext441
  %361 = load i32, i32* %cpl.addr, align 4
  %conv443 = sext i32 %361 to i64
  %call444 = call i8* @strncpy(i8* %357, i8* %add.ptr442, i64 %conv443) #4
  %362 = load i32, i32* %cpl.addr, align 4
  %idxprom445 = sext i32 %362 to i64
  %363 = load i8*, i8** %buf, align 8
  %arrayidx446 = getelementptr inbounds i8, i8* %363, i64 %idxprom445
  store i8 0, i8* %arrayidx446, align 1
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %365 = load i32, i32* %namewidth, align 4
  %366 = load i32, i32* %typewidth, align 4
  %add447 = add nsw i32 %365, %366
  %367 = load i32, i32* %namewidth, align 4
  %368 = load i32, i32* %typewidth, align 4
  %add448 = add nsw i32 %367, %368
  %369 = load i8*, i8** %buf, align 8
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %364, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %add447, i32 %add448, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* %369)
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.439, %if.end.435
  %370 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf451 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %370, i32 0, i32 13
  %371 = load i8*, i8** %rf451, align 8
  %cmp452 = icmp ne i8* %371, null
  br i1 %cmp452, label %if.then.454, label %if.end.465

if.then.454:                                      ; preds = %if.end.450
  %372 = load i8*, i8** %buf, align 8
  %373 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf455 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %373, i32 0, i32 13
  %374 = load i8*, i8** %rf455, align 8
  %375 = load i32, i32* %currpos, align 4
  %idx.ext456 = sext i32 %375 to i64
  %add.ptr457 = getelementptr inbounds i8, i8* %374, i64 %idx.ext456
  %376 = load i32, i32* %cpl.addr, align 4
  %conv458 = sext i32 %376 to i64
  %call459 = call i8* @strncpy(i8* %372, i8* %add.ptr457, i64 %conv458) #4
  %377 = load i32, i32* %cpl.addr, align 4
  %idxprom460 = sext i32 %377 to i64
  %378 = load i8*, i8** %buf, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %378, i64 %idxprom460
  store i8 0, i8* %arrayidx461, align 1
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %380 = load i32, i32* %namewidth, align 4
  %381 = load i32, i32* %typewidth, align 4
  %add462 = add nsw i32 %380, %381
  %382 = load i32, i32* %namewidth, align 4
  %383 = load i32, i32* %typewidth, align 4
  %add463 = add nsw i32 %382, %383
  %384 = load i8*, i8** %buf, align 8
  %call464 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %379, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %add462, i32 %add463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* %384)
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.454, %if.end.450
  store i32 0, i32* %j, align 4
  br label %for.cond.466

for.cond.466:                                     ; preds = %for.inc.485, %if.end.465
  %385 = load i32, i32* %j, align 4
  %386 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc467 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %386, i32 0, i32 34
  %387 = load i32, i32* %ngc467, align 4
  %cmp468 = icmp slt i32 %385, %387
  br i1 %cmp468, label %for.body.470, label %for.end.487

for.body.470:                                     ; preds = %for.cond.466
  %388 = load i8*, i8** %buf, align 8
  %389 = load i32, i32* %j, align 4
  %idxprom471 = sext i32 %389 to i64
  %390 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %390, i32 0, i32 32
  %391 = load i8**, i8*** %gc, align 8
  %arrayidx472 = getelementptr inbounds i8*, i8** %391, i64 %idxprom471
  %392 = load i8*, i8** %arrayidx472, align 8
  %393 = load i32, i32* %currpos, align 4
  %idx.ext473 = sext i32 %393 to i64
  %add.ptr474 = getelementptr inbounds i8, i8* %392, i64 %idx.ext473
  %394 = load i32, i32* %cpl.addr, align 4
  %conv475 = sext i32 %394 to i64
  %call476 = call i8* @strncpy(i8* %388, i8* %add.ptr474, i64 %conv475) #4
  %395 = load i32, i32* %cpl.addr, align 4
  %idxprom477 = sext i32 %395 to i64
  %396 = load i8*, i8** %buf, align 8
  %arrayidx478 = getelementptr inbounds i8, i8* %396, i64 %idxprom477
  store i8 0, i8* %arrayidx478, align 1
  %397 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %398 = load i32, i32* %namewidth, align 4
  %399 = load i32, i32* %typewidth, align 4
  %add479 = add nsw i32 %398, %399
  %400 = load i32, i32* %namewidth, align 4
  %401 = load i32, i32* %typewidth, align 4
  %add480 = add nsw i32 %400, %401
  %402 = load i32, i32* %j, align 4
  %idxprom481 = sext i32 %402 to i64
  %403 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag482 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %403, i32 0, i32 31
  %404 = load i8**, i8*** %gc_tag482, align 8
  %arrayidx483 = getelementptr inbounds i8*, i8** %404, i64 %idxprom481
  %405 = load i8*, i8** %arrayidx483, align 8
  %406 = load i8*, i8** %buf, align 8
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %397, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %add479, i32 %add480, i8* %405, i8* %406)
  br label %for.inc.485

for.inc.485:                                      ; preds = %for.body.470
  %407 = load i32, i32* %j, align 4
  %inc486 = add nsw i32 %407, 1
  store i32 %inc486, i32* %j, align 4
  br label %for.cond.466

for.end.487:                                      ; preds = %for.cond.466
  br label %for.inc.488

for.inc.488:                                      ; preds = %for.end.487
  %408 = load i32, i32* %cpl.addr, align 4
  %409 = load i32, i32* %currpos, align 4
  %add489 = add nsw i32 %409, %408
  store i32 %add489, i32* %currpos, align 4
  br label %for.cond.308

for.end.490:                                      ; preds = %for.cond.308
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call491 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %410, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  %411 = load i8*, i8** %buf, align 8
  call void @free(i8* %411) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteStockholmOneBlock(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
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
  call void @actually_write_stockholm(%struct._IO_FILE* %0, %struct.msa_struct* %1, i32 %3)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @sre_malloc(i8*, i32, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare void @MSAAddGF(%struct.msa_struct*, i8*, i8*) #2

declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #2

declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #2

declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

declare void @MSAAddGS(%struct.msa_struct*, i8*, i32, i8*) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAAppendGC(%struct.msa_struct*, i8*, i8*) #2

declare void @MSAAppendGR(%struct.msa_struct*, i8*, i32, i8*) #2

declare void @MSAAddComment(%struct.msa_struct*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
