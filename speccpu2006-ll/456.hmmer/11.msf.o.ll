; ModuleID = 'msf.c'
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"!!AA_MULTIPLE_ALIGNMENT\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"!!NA_MULTIPLE_ALIGNMENT\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MSF:\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"^.+MSF: +([0-9]+) +Type: +([PNX]).+Check: +([0-9]+) +\5C.\5C.\00", align 1
@sqd_parse = external global [10 x i8*], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Weight:\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"No Weight: on line %d for %s in name section of MSF file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Invalid line (probably %d) in name section of MSF file %s:\0A%s\0A\00", align 1
@squid_errno = external global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Didn't find a sequence for %s in MSF file %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"msf.c\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"!!NA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"!!AA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"WriteMSF(): couldn't guess whether that alignment is RNA or protein.\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Invalid sequence type %d in WriteMSF()\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%B %d, %Y %H:%M\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"What time is it on earth? strftime() failed in WriteMSF().\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c" %s  MSF: %d  Type: %c  %s  Check: %d  ..\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"squid.msf\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c" Name: %-*.*s  Len:  %5d  Check: %4d  Weight: %.2f\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"%*s  %-6d%*s%6d\0A\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%*s  %-6d\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca %struct.msa_struct*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %s = alloca i8*, align 8
  %alleged_alen = alloca i32, align 4
  %alleged_type = alloca i32, align 4
  %alleged_checksum = alloca i32, align 4
  %tok = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %slen = alloca i32, align 4
  %sqidx = alloca i32, align 4
  %name = alloca i8*, align 8
  %seq = alloca i8*, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %2)
  store i8* %call1, i8** %s, align 8
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %call4, %struct.msa_struct** %msa, align 8
  %3 = load i8*, i8** %s, align 8
  %call5 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i64 23) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.3
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %type = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 6
  store i32 3, i32* %type, align 4
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call8 = call i8* @MSAFileGetLine(%struct.msafile_struct* %5)
  store i8* %call8, i8** %s, align 8
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.21

if.else:                                          ; preds = %if.end.3
  %6 = load i8*, i8** %s, align 8
  %call12 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i64 23) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %type15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 6
  store i32 2, i32* %type15, align 4
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call16 = call i8* @MSAFileGetLine(%struct.msafile_struct* %8)
  store i8* %call16, i8** %s, align 8
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.11
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.21
  %9 = load i8*, i8** %s, align 8
  %call22 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp23 = icmp ne i8* %call22, null
  br i1 %cmp23, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %do.body
  %10 = load i8*, i8** %s, align 8
  %call24 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #6
  %cmp25 = icmp ne i8* %call24, null
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.40

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** %s, align 8
  %call27 = call i32 @Strparse(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), i8* %11, i32 3)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %land.lhs.true.26
  %12 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 0), align 8
  %call30 = call i32 @atoi(i8* %12) #6
  store i32 %call30, i32* %alleged_alen, align 4
  %13 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 1), align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 78, label %sw.bb
    i32 80, label %sw.bb.31
    i32 88, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.then.29
  store i32 2, i32* %alleged_type, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.29
  store i32 3, i32* %alleged_type, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.then.29
  store i32 0, i32* %alleged_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.29
  store i32 0, i32* %alleged_type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.32, %sw.bb.31, %sw.bb
  %15 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 3), align 8
  %call33 = call i32 @atoi(i8* %15) #6
  store i32 %call33, i32* %alleged_checksum, align 4
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %type34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 6
  %17 = load i32, i32* %type34, align 4
  %cmp35 = icmp eq i32 %17, 0
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %sw.epilog
  %18 = load i32, i32* %alleged_type, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %type38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 6
  store i32 %18, i32* %type38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %sw.epilog
  br label %do.end

if.end.40:                                        ; preds = %land.lhs.true.26, %land.lhs.true, %do.body
  %20 = load i8*, i8** %s, align 8
  %call41 = call i32 @IsBlankline(i8* %20)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.40
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %22 = load i8*, i8** %s, align 8
  call void @MSAAddComment(%struct.msa_struct* %21, i8* %22)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %23 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call45 = call i8* @MSAFileGetLine(%struct.msafile_struct* %23)
  store i8* %call45, i8** %s, align 8
  %cmp46 = icmp ne i8* %call45, null
  br i1 %cmp46, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.39
  br label %while.cond

while.cond:                                       ; preds = %if.end.106, %if.then.64, %do.end
  %24 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call48 = call i8* @MSAFileGetLine(%struct.msafile_struct* %24)
  store i8* %call48, i8** %s, align 8
  %cmp49 = icmp ne i8* %call48, null
  br i1 %cmp49, label %while.body, label %while.end.107

while.body:                                       ; preds = %while.cond
  br label %while.cond.51

while.cond.51:                                    ; preds = %while.body.60, %while.body
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %conv52 = sext i8 %26 to i32
  %cmp53 = icmp eq i32 %conv52, 32
  br i1 %cmp53, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond.51
  %27 = load i8*, i8** %s, align 8
  %28 = load i8, i8* %27, align 1
  %conv55 = sext i8 %28 to i32
  %cmp56 = icmp eq i32 %conv55, 9
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond.51
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv58 = sext i8 %30 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %31 = phi i1 [ false, %lor.lhs.false ], [ %tobool59, %land.rhs ]
  br i1 %31, label %while.body.60, label %while.end

while.body.60:                                    ; preds = %land.end
  %32 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.51

while.end:                                        ; preds = %land.end
  %33 = load i8*, i8** %s, align 8
  %34 = load i8, i8* %33, align 1
  %conv61 = sext i8 %34 to i32
  %cmp62 = icmp eq i32 %conv61, 10
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %while.end
  br label %while.cond

if.else.65:                                       ; preds = %while.end
  %35 = load i8*, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %conv66 = sext i8 %36 to i32
  %cmp67 = icmp eq i32 %conv66, 33
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.65
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %38 = load i8*, i8** %s, align 8
  call void @MSAAddComment(%struct.msa_struct* %37, i8* %38)
  br label %if.end.105

if.else.70:                                       ; preds = %if.else.65
  %39 = load i8*, i8** %s, align 8
  %call71 = call i8* @strstr(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  store i8* %call71, i8** %sp, align 8
  %cmp72 = icmp ne i8* %call71, null
  br i1 %cmp72, label %if.then.74, label %if.else.96

if.then.74:                                       ; preds = %if.else.70
  %40 = load i8*, i8** %sp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 5
  store i8* %add.ptr, i8** %sp, align 8
  %call75 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %slen)
  store i8* %call75, i8** %tok, align 8
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 39
  %42 = load %struct.GKI*, %struct.GKI** %index, align 8
  %43 = load i8*, i8** %tok, align 8
  %call76 = call i32 @GKIStoreKey(%struct.GKI* %42, i8* %43)
  store i32 %call76, i32* %sqidx, align 4
  %44 = load i32, i32* %sqidx, align 4
  %45 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 40
  %46 = load i32, i32* %nseqalloc, align 4
  %cmp77 = icmp sge i32 %44, %46
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.74
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAExpand(%struct.msa_struct* %47)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.74
  %48 = load i8*, i8** %tok, align 8
  %49 = load i32, i32* %slen, align 4
  %call81 = call i8* @sre_strdup(i8* %48, i32 %49)
  %50 = load i32, i32* %sqidx, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 1
  %52 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %52, i64 %idxprom
  store i8* %call81, i8** %arrayidx, align 8
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 4
  %54 = load i32, i32* %nseq, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %nseq, align 4
  %55 = load i8*, i8** %sp, align 8
  %call82 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %call82, i8** %sp, align 8
  %cmp83 = icmp eq i8* %call82, null
  br i1 %cmp83, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %if.end.80
  %56 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %56, i32 0, i32 2
  %57 = load i32, i32* %linenumber, align 4
  %58 = load i32, i32* %sqidx, align 4
  %idxprom86 = sext i32 %58 to i64
  %59 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 1
  %60 = load i8**, i8*** %sqname87, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %60, i64 %idxprom86
  %61 = load i8*, i8** %arrayidx88, align 8
  %62 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %62, i32 0, i32 1
  %63 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0), i32 %57, i8* %61, i8* %63)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %if.end.80
  %64 = load i8*, i8** %sp, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %64, i64 7
  store i8* %add.ptr90, i8** %sp, align 8
  %call91 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %slen)
  store i8* %call91, i8** %tok, align 8
  %65 = load i8*, i8** %tok, align 8
  %call92 = call double @atof(i8* %65) #6
  %conv93 = fptrunc double %call92 to float
  %66 = load i32, i32* %sqidx, align 4
  %idxprom94 = sext i32 %66 to i64
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 2
  %68 = load float*, float** %wgt, align 8
  %arrayidx95 = getelementptr inbounds float, float* %68, i64 %idxprom94
  store float %conv93, float* %arrayidx95, align 4
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %flags = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 5
  %70 = load i32, i32* %flags, align 4
  %or = or i32 %70, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.104

if.else.96:                                       ; preds = %if.else.70
  %71 = load i8*, i8** %s, align 8
  %call97 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2) #6
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.else.96
  br label %while.end.107

if.else.101:                                      ; preds = %if.else.96
  %72 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber102 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %72, i32 0, i32 2
  %73 = load i32, i32* %linenumber102, align 4
  %74 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname103 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %74, i32 0, i32 1
  %75 = load i8*, i8** %fname103, align 8
  %76 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0), i32 %73, i8* %75, i8* %76)
  store i32 5, i32* @squid_errno, align 4
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.104:                                       ; preds = %if.end.89
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.69
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105
  br label %while.cond

while.end.107:                                    ; preds = %if.then.100, %while.cond
  br label %while.cond.108

while.cond.108:                                   ; preds = %if.end.144, %if.then.143, %if.then.137, %if.then.121, %if.then.116, %while.end.107
  %77 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call109 = call i8* @MSAFileGetLine(%struct.msafile_struct* %77)
  store i8* %call109, i8** %s, align 8
  %cmp110 = icmp ne i8* %call109, null
  br i1 %cmp110, label %while.body.112, label %while.end.153

while.body.112:                                   ; preds = %while.cond.108
  %78 = load i8*, i8** %s, align 8
  store i8* %78, i8** %sp, align 8
  %call113 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* null)
  store i8* %call113, i8** %name, align 8
  %cmp114 = icmp eq i8* %call113, null
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %while.body.112
  br label %while.cond.108

if.end.117:                                       ; preds = %while.body.112
  %call118 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32* %slen)
  store i8* %call118, i8** %seq, align 8
  %cmp119 = icmp eq i8* %call118, null
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.117
  br label %while.cond.108

if.end.122:                                       ; preds = %if.end.117
  %79 = load i8*, i8** %name, align 8
  %80 = load i8, i8* %79, align 1
  %conv123 = sext i8 %80 to i32
  %idxprom124 = sext i32 %conv123 to i64
  %call125 = call i16** @__ctype_b_loc() #7
  %81 = load i16*, i16** %call125, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %81, i64 %idxprom124
  %82 = load i16, i16* %arrayidx126, align 2
  %conv127 = zext i16 %82 to i32
  %and = and i32 %conv127, 2048
  %tobool128 = icmp ne i32 %and, 0
  br i1 %tobool128, label %land.lhs.true.129, label %if.end.138

land.lhs.true.129:                                ; preds = %if.end.122
  %83 = load i8*, i8** %seq, align 8
  %84 = load i8, i8* %83, align 1
  %conv130 = sext i8 %84 to i32
  %idxprom131 = sext i32 %conv130 to i64
  %call132 = call i16** @__ctype_b_loc() #7
  %85 = load i16*, i16** %call132, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %85, i64 %idxprom131
  %86 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %86 to i32
  %and135 = and i32 %conv134, 2048
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.129
  br label %while.cond.108

if.end.138:                                       ; preds = %land.lhs.true.129, %if.end.122
  %87 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %index139 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 39
  %88 = load %struct.GKI*, %struct.GKI** %index139, align 8
  %89 = load i8*, i8** %name, align 8
  %call140 = call i32 @GKIKeyIndex(%struct.GKI* %88, i8* %89)
  store i32 %call140, i32* %sqidx, align 4
  %90 = load i32, i32* %sqidx, align 4
  %cmp141 = icmp slt i32 %90, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.138
  br label %while.cond.108

if.end.144:                                       ; preds = %if.end.138
  %91 = load i32, i32* %sqidx, align 4
  %idxprom145 = sext i32 %91 to i64
  %92 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 0
  %93 = load i8**, i8*** %aseq, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %93, i64 %idxprom145
  %94 = load i32, i32* %sqidx, align 4
  %idxprom147 = sext i32 %94 to i64
  %95 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 42
  %96 = load i32*, i32** %sqlen, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %96, i64 %idxprom147
  %97 = load i32, i32* %arrayidx148, align 4
  %98 = load i8*, i8** %seq, align 8
  %99 = load i32, i32* %slen, align 4
  %call149 = call i32 @sre_strcat(i8** %arrayidx146, i32 %97, i8* %98, i32 %99)
  %100 = load i32, i32* %sqidx, align 4
  %idxprom150 = sext i32 %100 to i64
  %101 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen151 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %101, i32 0, i32 42
  %102 = load i32*, i32** %sqlen151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %102, i64 %idxprom150
  store i32 %call149, i32* %arrayidx152, align 4
  br label %while.cond.108

while.end.153:                                    ; preds = %while.cond.108
  store i32 0, i32* %sqidx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.191, %while.end.153
  %103 = load i32, i32* %sqidx, align 4
  %104 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq154 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %104, i32 0, i32 4
  %105 = load i32, i32* %nseq154, align 4
  %cmp155 = icmp slt i32 %103, %105
  br i1 %cmp155, label %for.body, label %for.end.193

for.body:                                         ; preds = %for.cond
  %106 = load i32, i32* %sqidx, align 4
  %idxprom157 = sext i32 %106 to i64
  %107 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq158 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 0
  %108 = load i8**, i8*** %aseq158, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %108, i64 %idxprom157
  %109 = load i8*, i8** %arrayidx159, align 8
  %cmp160 = icmp eq i8* %109, null
  br i1 %cmp160, label %if.then.162, label %if.end.167

if.then.162:                                      ; preds = %for.body
  %110 = load i32, i32* %sqidx, align 4
  %idxprom163 = sext i32 %110 to i64
  %111 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %111, i32 0, i32 1
  %112 = load i8**, i8*** %sqname164, align 8
  %arrayidx165 = getelementptr inbounds i8*, i8** %112, i64 %idxprom163
  %113 = load i8*, i8** %arrayidx165, align 8
  %114 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname166 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %114, i32 0, i32 1
  %115 = load i8*, i8** %fname166, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* %113, i8* %115)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.162, %for.body
  %116 = load i32, i32* %sqidx, align 4
  %idxprom168 = sext i32 %116 to i64
  %117 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 0
  %118 = load i8**, i8*** %aseq169, align 8
  %arrayidx170 = getelementptr inbounds i8*, i8** %118, i64 %idxprom168
  %119 = load i8*, i8** %arrayidx170, align 8
  store i8* %119, i8** %sp, align 8
  store i8* %119, i8** %s, align 8
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc, %if.end.167
  %120 = load i8*, i8** %s, align 8
  %121 = load i8, i8* %120, align 1
  %conv172 = sext i8 %121 to i32
  %cmp173 = icmp ne i32 %conv172, 0
  br i1 %cmp173, label %for.body.175, label %for.end

for.body.175:                                     ; preds = %for.cond.171
  %122 = load i8*, i8** %s, align 8
  %123 = load i8, i8* %122, align 1
  %conv176 = sext i8 %123 to i32
  %cmp177 = icmp eq i32 %conv176, 32
  br i1 %cmp177, label %if.then.183, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %for.body.175
  %124 = load i8*, i8** %s, align 8
  %125 = load i8, i8* %124, align 1
  %conv180 = sext i8 %125 to i32
  %cmp181 = icmp eq i32 %conv180, 9
  br i1 %cmp181, label %if.then.183, label %if.else.187

if.then.183:                                      ; preds = %lor.lhs.false.179, %for.body.175
  %126 = load i32, i32* %sqidx, align 4
  %idxprom184 = sext i32 %126 to i64
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen185 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 42
  %128 = load i32*, i32** %sqlen185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %128, i64 %idxprom184
  %129 = load i32, i32* %arrayidx186, align 4
  %dec = add nsw i32 %129, -1
  store i32 %dec, i32* %arrayidx186, align 4
  br label %if.end.189

if.else.187:                                      ; preds = %lor.lhs.false.179
  %130 = load i8*, i8** %s, align 8
  %131 = load i8, i8* %130, align 1
  %132 = load i8*, i8** %sp, align 8
  store i8 %131, i8* %132, align 1
  %133 = load i8*, i8** %sp, align 8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr188, i8** %sp, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.183
  br label %for.inc

for.inc:                                          ; preds = %if.end.189
  %134 = load i8*, i8** %s, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr190, i8** %s, align 8
  br label %for.cond.171

for.end:                                          ; preds = %for.cond.171
  %135 = load i8*, i8** %sp, align 8
  store i8 0, i8* %135, align 1
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.end
  %136 = load i32, i32* %sqidx, align 4
  %inc192 = add nsw i32 %136, 1
  store i32 %inc192, i32* %sqidx, align 4
  br label %for.cond

for.end.193:                                      ; preds = %for.cond
  %137 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %137)
  %138 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  store %struct.msa_struct* %138, %struct.msa_struct** %retval
  br label %return

return:                                           ; preds = %for.end.193, %if.else.101, %if.then.18, %if.then.10, %if.then.2, %if.then
  %139 = load %struct.msa_struct*, %struct.msa_struct** %retval
  ret %struct.msa_struct* %139
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @Strparse(i8*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @IsBlankline(i8*) #2

declare void @MSAAddComment(%struct.msa_struct*, i8*) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

declare void @MSAExpand(%struct.msa_struct*) #2

declare i8* @sre_strdup(i8*, i32) #2

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind uwtable
define void @WriteMSF(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %now = alloca i64, align 8
  %date = alloca [64 x i8], align 16
  %gcg_aseq = alloca i8**, align 8
  %gcg_sqname = alloca i8**, align 8
  %idx = alloca i32, align 4
  %s = alloca i8*, align 8
  %len = alloca i32, align 4
  %namelen = alloca i32, align 4
  %pos = alloca i32, align 4
  %buffer = alloca [51 x i8], align 16
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %nseq, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 273, i64 %mul)
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %gcg_aseq, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %nseq1, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 8, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 274, i64 %mul3)
  %5 = bitcast i8* %call4 to i8**
  store i8** %5, i8*** %gcg_sqname, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %idx, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %nseq5, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 0
  %11 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 3
  %14 = load i32, i32* %alen, align 4
  %call7 = call i8* @sre_strdup(i8* %12, i32 %14)
  %15 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 %idxprom8
  store i8* %call7, i8** %arrayidx9, align 8
  %17 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 1
  %19 = load i8**, i8*** %sqname, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %19, i64 %idxprom10
  %20 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i8* @sre_strdup(i8* %20, i32 -1)
  %21 = load i32, i32* %idx, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i8**, i8*** %gcg_sqname, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %22, i64 %idxprom13
  store i8* %call12, i8** %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.41, %for.end
  %24 = load i32, i32* %idx, align 4
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 4
  %26 = load i32, i32* %nseq16, align 4
  %cmp17 = icmp slt i32 %24, %26
  br i1 %cmp17, label %for.body.19, label %for.end.43

for.body.19:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %idx, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load i8**, i8*** %gcg_sqname, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %28, i64 %idxprom20
  %29 = load i8*, i8** %arrayidx21, align 8
  store i8* %29, i8** %s, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.39, %for.body.19
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %conv23 = sext i8 %31 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %for.body.26, label %for.end.40

for.body.26:                                      ; preds = %for.cond.22
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv27 = sext i8 %33 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %call29 = call i16** @__ctype_b_loc() #7
  %34 = load i16*, i16** %call29, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %34, i64 %idxprom28
  %35 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %35 to i32
  %and = and i32 %conv31, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.26
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %conv32 = sext i8 %37 to i32
  %cmp33 = icmp ne i32 %conv32, 45
  br i1 %cmp33, label %land.lhs.true.35, label %if.end

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %conv36 = sext i8 %39 to i32
  %cmp37 = icmp ne i32 %conv36, 95
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.35
  %40 = load i8*, i8** %s, align 8
  store i8 95, i8* %40, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.35, %land.lhs.true, %for.body.26
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end
  %41 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond.22

for.end.40:                                       ; preds = %for.cond.22
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %42 = load i32, i32* %idx, align 4
  %inc42 = add nsw i32 %42, 1
  store i32 %inc42, i32* %idx, align 4
  br label %for.cond.15

for.end.43:                                       ; preds = %for.cond.15
  store i32 0, i32* %idx, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.158, %for.end.43
  %43 = load i32, i32* %idx, align 4
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 4
  %45 = load i32, i32* %nseq45, align 4
  %cmp46 = icmp slt i32 %43, %45
  br i1 %cmp46, label %for.body.48, label %for.end.160

for.body.48:                                      ; preds = %for.cond.44
  %46 = load i32, i32* %idx, align 4
  %idxprom49 = sext i32 %46 to i64
  %47 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %47, i64 %idxprom49
  %48 = load i8*, i8** %arrayidx50, align 8
  store i8* %48, i8** %s, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.73, %for.body.48
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv52 = sext i8 %50 to i32
  %cmp53 = icmp ne i32 %conv52, 0
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.51
  %51 = load i8*, i8** %s, align 8
  %52 = load i8, i8* %51, align 1
  %conv55 = sext i8 %52 to i32
  %cmp56 = icmp eq i32 %conv55, 32
  br i1 %cmp56, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %53 = load i8*, i8** %s, align 8
  %54 = load i8, i8* %53, align 1
  %conv58 = sext i8 %54 to i32
  %cmp59 = icmp eq i32 %conv58, 46
  br i1 %cmp59, label %lor.end, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false
  %55 = load i8*, i8** %s, align 8
  %56 = load i8, i8* %55, align 1
  %conv62 = sext i8 %56 to i32
  %cmp63 = icmp eq i32 %conv62, 95
  br i1 %cmp63, label %lor.end, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.61
  %57 = load i8*, i8** %s, align 8
  %58 = load i8, i8* %57, align 1
  %conv66 = sext i8 %58 to i32
  %cmp67 = icmp eq i32 %conv66, 45
  br i1 %cmp67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.65
  %59 = load i8*, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  %conv69 = sext i8 %60 to i32
  %cmp70 = icmp eq i32 %conv69, 126
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.65, %lor.lhs.false.61, %lor.lhs.false, %land.rhs
  %61 = phi i1 [ true, %lor.lhs.false.65 ], [ true, %lor.lhs.false.61 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp70, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond.51
  %62 = phi i1 [ false, %for.cond.51 ], [ %61, %lor.end ]
  br i1 %62, label %for.body.72, label %for.end.75

for.body.72:                                      ; preds = %land.end
  %63 = load i8*, i8** %s, align 8
  store i8 126, i8* %63, align 1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.72
  %64 = load i8*, i8** %s, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr74, i8** %s, align 8
  br label %for.cond.51

for.end.75:                                       ; preds = %land.end
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.102, %for.end.75
  %65 = load i8*, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %conv77 = sext i8 %66 to i32
  %cmp78 = icmp ne i32 %conv77, 0
  br i1 %cmp78, label %for.body.80, label %for.end.104

for.body.80:                                      ; preds = %for.cond.76
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %conv81 = sext i8 %68 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br i1 %cmp82, label %if.then.100, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %for.body.80
  %69 = load i8*, i8** %s, align 8
  %70 = load i8, i8* %69, align 1
  %conv85 = sext i8 %70 to i32
  %cmp86 = icmp eq i32 %conv85, 46
  br i1 %cmp86, label %if.then.100, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.84
  %71 = load i8*, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %conv89 = sext i8 %72 to i32
  %cmp90 = icmp eq i32 %conv89, 95
  br i1 %cmp90, label %if.then.100, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.88
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv93 = sext i8 %74 to i32
  %cmp94 = icmp eq i32 %conv93, 45
  br i1 %cmp94, label %if.then.100, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.92
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv97 = sext i8 %76 to i32
  %cmp98 = icmp eq i32 %conv97, 126
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false.96, %lor.lhs.false.92, %lor.lhs.false.88, %lor.lhs.false.84, %for.body.80
  %77 = load i8*, i8** %s, align 8
  store i8 46, i8* %77, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %lor.lhs.false.96
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %78 = load i8*, i8** %s, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr103, i8** %s, align 8
  br label %for.cond.76

for.end.104:                                      ; preds = %for.cond.76
  %79 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen105 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 3
  %80 = load i32, i32* %alen105, align 4
  %sub = sub nsw i32 %80, 1
  store i32 %sub, i32* %pos, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.156, %for.end.104
  %81 = load i32, i32* %pos, align 4
  %cmp107 = icmp sgt i32 %81, 0
  br i1 %cmp107, label %land.rhs.109, label %land.end.150

land.rhs.109:                                     ; preds = %for.cond.106
  %82 = load i32, i32* %pos, align 4
  %idxprom110 = sext i32 %82 to i64
  %83 = load i32, i32* %idx, align 4
  %idxprom111 = sext i32 %83 to i64
  %84 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %84, i64 %idxprom111
  %85 = load i8*, i8** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %85, i64 %idxprom110
  %86 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %86 to i32
  %cmp115 = icmp eq i32 %conv114, 32
  br i1 %cmp115, label %lor.end.149, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %land.rhs.109
  %87 = load i32, i32* %pos, align 4
  %idxprom118 = sext i32 %87 to i64
  %88 = load i32, i32* %idx, align 4
  %idxprom119 = sext i32 %88 to i64
  %89 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %89, i64 %idxprom119
  %90 = load i8*, i8** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %90, i64 %idxprom118
  %91 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %91 to i32
  %cmp123 = icmp eq i32 %conv122, 46
  br i1 %cmp123, label %lor.end.149, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false.117
  %92 = load i32, i32* %pos, align 4
  %idxprom126 = sext i32 %92 to i64
  %93 = load i32, i32* %idx, align 4
  %idxprom127 = sext i32 %93 to i64
  %94 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %94, i64 %idxprom127
  %95 = load i8*, i8** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %95, i64 %idxprom126
  %96 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %96 to i32
  %cmp131 = icmp eq i32 %conv130, 95
  br i1 %cmp131, label %lor.end.149, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %lor.lhs.false.125
  %97 = load i32, i32* %pos, align 4
  %idxprom134 = sext i32 %97 to i64
  %98 = load i32, i32* %idx, align 4
  %idxprom135 = sext i32 %98 to i64
  %99 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %99, i64 %idxprom135
  %100 = load i8*, i8** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %100, i64 %idxprom134
  %101 = load i8, i8* %arrayidx137, align 1
  %conv138 = sext i8 %101 to i32
  %cmp139 = icmp eq i32 %conv138, 45
  br i1 %cmp139, label %lor.end.149, label %lor.rhs.141

lor.rhs.141:                                      ; preds = %lor.lhs.false.133
  %102 = load i32, i32* %pos, align 4
  %idxprom142 = sext i32 %102 to i64
  %103 = load i32, i32* %idx, align 4
  %idxprom143 = sext i32 %103 to i64
  %104 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %104, i64 %idxprom143
  %105 = load i8*, i8** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %105, i64 %idxprom142
  %106 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %106 to i32
  %cmp147 = icmp eq i32 %conv146, 126
  br label %lor.end.149

lor.end.149:                                      ; preds = %lor.rhs.141, %lor.lhs.false.133, %lor.lhs.false.125, %lor.lhs.false.117, %land.rhs.109
  %107 = phi i1 [ true, %lor.lhs.false.133 ], [ true, %lor.lhs.false.125 ], [ true, %lor.lhs.false.117 ], [ true, %land.rhs.109 ], [ %cmp147, %lor.rhs.141 ]
  br label %land.end.150

land.end.150:                                     ; preds = %lor.end.149, %for.cond.106
  %108 = phi i1 [ false, %for.cond.106 ], [ %107, %lor.end.149 ]
  br i1 %108, label %for.body.151, label %for.end.157

for.body.151:                                     ; preds = %land.end.150
  %109 = load i32, i32* %pos, align 4
  %idxprom152 = sext i32 %109 to i64
  %110 = load i32, i32* %idx, align 4
  %idxprom153 = sext i32 %110 to i64
  %111 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %111, i64 %idxprom153
  %112 = load i8*, i8** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %112, i64 %idxprom152
  store i8 126, i8* %arrayidx155, align 1
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.151
  %113 = load i32, i32* %pos, align 4
  %dec = add nsw i32 %113, -1
  store i32 %dec, i32* %pos, align 4
  br label %for.cond.106

for.end.157:                                      ; preds = %land.end.150
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %114 = load i32, i32* %idx, align 4
  %inc159 = add nsw i32 %114, 1
  store i32 %inc159, i32* %idx, align 4
  br label %for.cond.44

for.end.160:                                      ; preds = %for.cond.44
  store i32 0, i32* %namelen, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.175, %for.end.160
  %115 = load i32, i32* %idx, align 4
  %116 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq162 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %116, i32 0, i32 4
  %117 = load i32, i32* %nseq162, align 4
  %cmp163 = icmp slt i32 %115, %117
  br i1 %cmp163, label %for.body.165, label %for.end.177

for.body.165:                                     ; preds = %for.cond.161
  %118 = load i32, i32* %idx, align 4
  %idxprom166 = sext i32 %118 to i64
  %119 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname167 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 1
  %120 = load i8**, i8*** %sqname167, align 8
  %arrayidx168 = getelementptr inbounds i8*, i8** %120, i64 %idxprom166
  %121 = load i8*, i8** %arrayidx168, align 8
  %call169 = call i64 @strlen(i8* %121) #6
  %conv170 = trunc i64 %call169 to i32
  store i32 %conv170, i32* %len, align 4
  %122 = load i32, i32* %namelen, align 4
  %cmp171 = icmp sgt i32 %conv170, %122
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.body.165
  %123 = load i32, i32* %len, align 4
  store i32 %123, i32* %namelen, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %for.body.165
  br label %for.inc.175

for.inc.175:                                      ; preds = %if.end.174
  %124 = load i32, i32* %idx, align 4
  %inc176 = add nsw i32 %124, 1
  store i32 %inc176, i32* %idx, align 4
  br label %for.cond.161

for.end.177:                                      ; preds = %for.cond.161
  %125 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 6
  %126 = load i32, i32* %type, align 4
  %cmp178 = icmp eq i32 %126, 0
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %for.end.177
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq181 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 0
  %128 = load i8**, i8*** %aseq181, align 8
  %129 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq182 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %129, i32 0, i32 4
  %130 = load i32, i32* %nseq182, align 4
  %call183 = call i32 @GuessAlignmentSeqtype(i8** %128, i32 %130)
  %131 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type184 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %131, i32 0, i32 6
  store i32 %call183, i32* %type184, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.180, %for.end.177
  %132 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type186 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 6
  %133 = load i32, i32* %type186, align 4
  %cmp187 = icmp eq i32 %133, 2
  br i1 %cmp187, label %if.then.189, label %if.else

if.then.189:                                      ; preds = %if.end.185
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.212

if.else:                                          ; preds = %if.end.185
  %135 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type191 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %135, i32 0, i32 6
  %136 = load i32, i32* %type191, align 4
  %cmp192 = icmp eq i32 %136, 1
  br i1 %cmp192, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.else
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.211

if.else.196:                                      ; preds = %if.else
  %138 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type197 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %138, i32 0, i32 6
  %139 = load i32, i32* %type197, align 4
  %cmp198 = icmp eq i32 %139, 3
  br i1 %cmp198, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.else.196
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.210

if.else.202:                                      ; preds = %if.else.196
  %141 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type203 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %141, i32 0, i32 6
  %142 = load i32, i32* %type203, align 4
  %cmp204 = icmp eq i32 %142, 0
  br i1 %cmp204, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %if.else.202
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.209

if.else.207:                                      ; preds = %if.else.202
  %143 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type208 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 6
  %144 = load i32, i32* %type208, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i32 %144)
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.207, %if.then.206
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.200
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.194
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.189
  %145 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %145, i32 0, i32 21
  %146 = load i32, i32* %ncomment, align 4
  %cmp213 = icmp sgt i32 %146, 0
  br i1 %cmp213, label %if.then.215, label %if.end.228

if.then.215:                                      ; preds = %if.end.212
  store i32 0, i32* %idx, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.224, %if.then.215
  %147 = load i32, i32* %idx, align 4
  %148 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment217 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %148, i32 0, i32 21
  %149 = load i32, i32* %ncomment217, align 4
  %cmp218 = icmp slt i32 %147, %149
  br i1 %cmp218, label %for.body.220, label %for.end.226

for.body.220:                                     ; preds = %for.cond.216
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %151 = load i32, i32* %idx, align 4
  %idxprom221 = sext i32 %151 to i64
  %152 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 20
  %153 = load i8**, i8*** %comment, align 8
  %arrayidx222 = getelementptr inbounds i8*, i8** %153, i64 %idxprom221
  %154 = load i8*, i8** %arrayidx222, align 8
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %154)
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.body.220
  %155 = load i32, i32* %idx, align 4
  %inc225 = add nsw i32 %155, 1
  store i32 %inc225, i32* %idx, align 4
  br label %for.cond.216

for.end.226:                                      ; preds = %for.cond.216
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.228

if.end.228:                                       ; preds = %for.end.226, %if.end.212
  %call229 = call i64 @time(i64* null) #5
  store i64 %call229, i64* %now, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %date, i32 0, i32 0
  %call230 = call %struct.tm* @localtime(i64* %now) #5
  %call231 = call i64 @strftime(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), %struct.tm* %call230) #5
  %cmp232 = icmp eq i64 %call231, 0
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.end.228
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %if.end.228
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %158 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 7
  %159 = load i8*, i8** %name, align 8
  %cmp236 = icmp ne i8* %159, null
  br i1 %cmp236, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.235
  %160 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name238 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 7
  %161 = load i8*, i8** %name238, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.235
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %161, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), %cond.false ]
  %162 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen239 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %162, i32 0, i32 3
  %163 = load i32, i32* %alen239, align 4
  %164 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type240 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 6
  %165 = load i32, i32* %type240, align 4
  %cmp241 = icmp eq i32 %165, 2
  %cond243 = select i1 %cmp241, i32 78, i32 80
  %arraydecay244 = getelementptr inbounds [64 x i8], [64 x i8]* %date, i32 0, i32 0
  %166 = load i8**, i8*** %gcg_aseq, align 8
  %167 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq245 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %167, i32 0, i32 4
  %168 = load i32, i32* %nseq245, align 4
  %call246 = call i32 @GCGMultchecksum(i8** %166, i32 %168)
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* %cond, i32 %163, i32 %cond243, i8* %arraydecay244, i32 %call246)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %idx, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.265, %cond.end
  %170 = load i32, i32* %idx, align 4
  %171 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq250 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %171, i32 0, i32 4
  %172 = load i32, i32* %nseq250, align 4
  %cmp251 = icmp slt i32 %170, %172
  br i1 %cmp251, label %for.body.253, label %for.end.267

for.body.253:                                     ; preds = %for.cond.249
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %174 = load i32, i32* %namelen, align 4
  %175 = load i32, i32* %namelen, align 4
  %176 = load i32, i32* %idx, align 4
  %idxprom254 = sext i32 %176 to i64
  %177 = load i8**, i8*** %gcg_sqname, align 8
  %arrayidx255 = getelementptr inbounds i8*, i8** %177, i64 %idxprom254
  %178 = load i8*, i8** %arrayidx255, align 8
  %179 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen256 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 3
  %180 = load i32, i32* %alen256, align 4
  %181 = load i32, i32* %idx, align 4
  %idxprom257 = sext i32 %181 to i64
  %182 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx258 = getelementptr inbounds i8*, i8** %182, i64 %idxprom257
  %183 = load i8*, i8** %arrayidx258, align 8
  %184 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen259 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 3
  %185 = load i32, i32* %alen259, align 4
  %call260 = call i32 @GCGchecksum(i8* %183, i32 %185)
  %186 = load i32, i32* %idx, align 4
  %idxprom261 = sext i32 %186 to i64
  %187 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %187, i32 0, i32 2
  %188 = load float*, float** %wgt, align 8
  %arrayidx262 = getelementptr inbounds float, float* %188, i64 %idxprom261
  %189 = load float, float* %arrayidx262, align 4
  %conv263 = fpext float %189 to double
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0), i32 %174, i32 %175, i8* %178, i32 %180, i32 %call260, double %conv263)
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.body.253
  %190 = load i32, i32* %idx, align 4
  %inc266 = add nsw i32 %190, 1
  store i32 %inc266, i32* %idx, align 4
  br label %for.cond.249

for.end.267:                                      ; preds = %for.cond.249
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %pos, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.330, %for.end.267
  %193 = load i32, i32* %pos, align 4
  %194 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen271 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %194, i32 0, i32 3
  %195 = load i32, i32* %alen271, align 4
  %cmp272 = icmp slt i32 %193, %195
  br i1 %cmp272, label %for.body.274, label %for.end.332

for.body.274:                                     ; preds = %for.cond.270
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %197 = load i32, i32* %pos, align 4
  %add = add nsw i32 %197, 50
  %198 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen276 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %198, i32 0, i32 3
  %199 = load i32, i32* %alen276, align 4
  %cmp277 = icmp sgt i32 %add, %199
  br i1 %cmp277, label %cond.true.279, label %cond.false.282

cond.true.279:                                    ; preds = %for.body.274
  %200 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen280 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %200, i32 0, i32 3
  %201 = load i32, i32* %alen280, align 4
  %202 = load i32, i32* %pos, align 4
  %sub281 = sub nsw i32 %201, %202
  br label %cond.end.283

cond.false.282:                                   ; preds = %for.body.274
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.282, %cond.true.279
  %cond284 = phi i32 [ %sub281, %cond.true.279 ], [ 50, %cond.false.282 ]
  store i32 %cond284, i32* %len, align 4
  %203 = load i32, i32* %len, align 4
  %cmp285 = icmp sgt i32 %203, 10
  br i1 %cmp285, label %if.then.287, label %if.else.294

if.then.287:                                      ; preds = %cond.end.283
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %205 = load i32, i32* %namelen, align 4
  %206 = load i32, i32* %pos, align 4
  %add288 = add nsw i32 %206, 1
  %207 = load i32, i32* %len, align 4
  %208 = load i32, i32* %len, align 4
  %sub289 = sub nsw i32 %208, 1
  %div = sdiv i32 %sub289, 10
  %add290 = add nsw i32 %207, %div
  %sub291 = sub nsw i32 %add290, 12
  %209 = load i32, i32* %pos, align 4
  %210 = load i32, i32* %len, align 4
  %add292 = add nsw i32 %209, %210
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 %add288, i32 %sub291, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 %add292)
  br label %if.end.297

if.else.294:                                      ; preds = %cond.end.283
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %212 = load i32, i32* %namelen, align 4
  %213 = load i32, i32* %pos, align 4
  %add295 = add nsw i32 %213, 1
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 %add295)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.294, %if.then.287
  store i32 0, i32* %idx, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.327, %if.end.297
  %214 = load i32, i32* %idx, align 4
  %215 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq299 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %215, i32 0, i32 4
  %216 = load i32, i32* %nseq299, align 4
  %cmp300 = icmp slt i32 %214, %216
  br i1 %cmp300, label %for.body.302, label %for.end.329

for.body.302:                                     ; preds = %for.cond.298
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %218 = load i32, i32* %namelen, align 4
  %219 = load i32, i32* %idx, align 4
  %idxprom303 = sext i32 %219 to i64
  %220 = load i8**, i8*** %gcg_sqname, align 8
  %arrayidx304 = getelementptr inbounds i8*, i8** %220, i64 %idxprom303
  %221 = load i8*, i8** %arrayidx304, align 8
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %218, i8* %221)
  %arraydecay306 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %222 = load i32, i32* %idx, align 4
  %idxprom307 = sext i32 %222 to i64
  %223 = load i8**, i8*** %gcg_aseq, align 8
  %arrayidx308 = getelementptr inbounds i8*, i8** %223, i64 %idxprom307
  %224 = load i8*, i8** %arrayidx308, align 8
  %225 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %225 to i64
  %add.ptr = getelementptr inbounds i8, i8* %224, i64 %idx.ext
  %call309 = call i8* @strncpy(i8* %arraydecay306, i8* %add.ptr, i64 50) #5
  %arrayidx310 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i64 50
  store i8 0, i8* %arrayidx310, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.323, %for.body.302
  %226 = load i32, i32* %i, align 4
  %227 = load i32, i32* %len, align 4
  %cmp312 = icmp slt i32 %226, %227
  br i1 %cmp312, label %for.body.314, label %for.end.325

for.body.314:                                     ; preds = %for.cond.311
  %228 = load i32, i32* %i, align 4
  %rem = srem i32 %228, 10
  %tobool315 = icmp ne i32 %rem, 0
  br i1 %tobool315, label %if.end.318, label %if.then.316

if.then.316:                                      ; preds = %for.body.314
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call317 = call i32 @fputc(i32 32, %struct._IO_FILE* %229)
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %for.body.314
  %230 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %230 to i64
  %arrayidx320 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i64 %idxprom319
  %231 = load i8, i8* %arrayidx320, align 1
  %conv321 = sext i8 %231 to i32
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call322 = call i32 @fputc(i32 %conv321, %struct._IO_FILE* %232)
  br label %for.inc.323

for.inc.323:                                      ; preds = %if.end.318
  %233 = load i32, i32* %i, align 4
  %inc324 = add nsw i32 %233, 1
  store i32 %inc324, i32* %i, align 4
  br label %for.cond.311

for.end.325:                                      ; preds = %for.cond.311
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call326 = call i32 @fputc(i32 10, %struct._IO_FILE* %234)
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.end.325
  %235 = load i32, i32* %idx, align 4
  %inc328 = add nsw i32 %235, 1
  store i32 %inc328, i32* %idx, align 4
  br label %for.cond.298

for.end.329:                                      ; preds = %for.cond.298
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.end.329
  %236 = load i32, i32* %pos, align 4
  %add331 = add nsw i32 %236, 50
  store i32 %add331, i32* %pos, align 4
  br label %for.cond.270

for.end.332:                                      ; preds = %for.cond.270
  %237 = load i8**, i8*** %gcg_aseq, align 8
  %238 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq333 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %238, i32 0, i32 4
  %239 = load i32, i32* %nseq333, align 4
  call void @Free2DArray(i8** %237, i32 %239)
  %240 = load i8**, i8*** %gcg_sqname, align 8
  %241 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq334 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %241, i32 0, i32 4
  %242 = load i32, i32* %nseq334, align 4
  call void @Free2DArray(i8** %240, i32 %242)
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @GuessAlignmentSeqtype(i8**, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

declare i32 @GCGMultchecksum(i8**, i32) #2

declare i32 @GCGchecksum(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare void @Free2DArray(i8**, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
