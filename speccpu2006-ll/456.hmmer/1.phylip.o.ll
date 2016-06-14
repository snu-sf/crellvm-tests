; ModuleID = 'phylip.c'
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

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Failed to parse nseq/alen from first line of PHYLIP file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"nseq and/or alen not an integer in first line of PHYLIP file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to parse sequence at line %d of PHYLIP file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %d  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%-10.10s%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca %struct.msa_struct*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %s = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %name = alloca [11 x i8], align 1
  %nseq = alloca i32, align 4
  %alen = alloca i32, align 4
  %idx = alloca i32, align 4
  %slen = alloca i32, align 4
  %nblock = alloca i32, align 4
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
  store i32 0, i32* %nseq, align 4
  store i32 0, i32* %alen, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.then.4, %if.end
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %2)
  store i8* %call1, i8** %s, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* null)
  store i8* %call2, i8** %s1, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.cond

if.end.5:                                         ; preds = %while.body
  %call6 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* null)
  store i8* %call6, i8** %s2, align 8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %3 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %3, i32 0, i32 1
  %4 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %5 = load i8*, i8** %s1, align 8
  %call10 = call i32 @IsInt(i8* %5)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %if.end.9
  %6 = load i8*, i8** %s2, align 8
  %call12 = call i32 @IsInt(i8* %6)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.9
  %7 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname15 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %7, i32 0, i32 1
  %8 = load i8*, i8** %fname15, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* %8)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %lor.lhs.false
  %9 = load i8*, i8** %s1, align 8
  %call17 = call i32 @atoi(i8* %9) #6
  store i32 %call17, i32* %nseq, align 4
  %10 = load i8*, i8** %s2, align 8
  %call18 = call i32 @atoi(i8* %10) #6
  store i32 %call18, i32* %alen, align 4
  br label %while.end

while.end:                                        ; preds = %if.end.16, %while.cond
  %11 = load i32, i32* %nseq, align 4
  %call19 = call %struct.msa_struct* @MSAAlloc(i32 %11, i32 0)
  store %struct.msa_struct* %call19, %struct.msa_struct** %msa, align 8
  store i32 0, i32* %idx, align 4
  store i32 0, i32* %nblock, align 4
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.59, %if.then.27, %while.end
  %12 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call21 = call i8* @MSAFileGetLine(%struct.msafile_struct* %12)
  store i8* %call21, i8** %s, align 8
  %cmp22 = icmp ne i8* %call21, null
  br i1 %cmp22, label %while.body.23, label %while.end.60

while.body.23:                                    ; preds = %while.cond.20
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %call24 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call24, align 8
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv25 = zext i16 %16 to i32
  %and = and i32 %conv25, 8192
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.body.23
  br label %while.cond.20

if.end.28:                                        ; preds = %while.body.23
  %17 = load i32, i32* %nblock, align 4
  %cmp29 = icmp eq i32 %17, 0
  br i1 %cmp29, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %if.end.28
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %name, i32 0, i32 0
  %18 = load i8*, i8** %s, align 8
  %call32 = call i8* @strncpy(i8* %arraydecay, i8* %18, i64 10) #5
  %arrayidx33 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i32 0, i64 10
  store i8 0, i8* %arrayidx33, align 1
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 39
  %20 = load %struct.GKI*, %struct.GKI** %index, align 8
  %arraydecay34 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i32 0, i32 0
  %call35 = call i32 @GKIStoreKey(%struct.GKI* %20, i8* %arraydecay34)
  %arraydecay36 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i32 0, i32 0
  %call37 = call i8* @sre_strdup(i8* %arraydecay36, i32 -1)
  %21 = load i32, i32* %idx, align 4
  %idxprom38 = sext i32 %21 to i64
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 1
  %23 = load i8**, i8*** %sqname, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %23, i64 %idxprom38
  store i8* %call37, i8** %arrayidx39, align 8
  %24 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 10
  store i8* %add.ptr, i8** %s, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.31, %if.end.28
  %call41 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %slen)
  store i8* %call41, i8** %s1, align 8
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %25 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %25, i32 0, i32 2
  %26 = load i32, i32* %linenumber, align 4
  %27 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname45 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %27, i32 0, i32 1
  %28 = load i8*, i8** %fname45, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i32 %26, i8* %28)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %29 = load i32, i32* %idx, align 4
  %idxprom47 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 0
  %31 = load i8**, i8*** %aseq, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %31, i64 %idxprom47
  %32 = load i32, i32* %idx, align 4
  %idxprom49 = sext i32 %32 to i64
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 42
  %34 = load i32*, i32** %sqlen, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %34, i64 %idxprom49
  %35 = load i32, i32* %arrayidx50, align 4
  %36 = load i8*, i8** %s1, align 8
  %37 = load i32, i32* %slen, align 4
  %call51 = call i32 @sre_strcat(i8** %arrayidx48, i32 %35, i8* %36, i32 %37)
  %38 = load i32, i32* %idx, align 4
  %idxprom52 = sext i32 %38 to i64
  %39 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 42
  %40 = load i32*, i32** %sqlen53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %40, i64 %idxprom52
  store i32 %call51, i32* %arrayidx54, align 4
  %41 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %idx, align 4
  %42 = load i32, i32* %idx, align 4
  %43 = load i32, i32* %nseq, align 4
  %cmp55 = icmp eq i32 %42, %43
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.46
  store i32 0, i32* %idx, align 4
  %44 = load i32, i32* %nblock, align 4
  %inc58 = add nsw i32 %44, 1
  store i32 %inc58, i32* %nblock, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.46
  br label %while.cond.20

while.end.60:                                     ; preds = %while.cond.20
  %45 = load i32, i32* %nseq, align 4
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 4
  store i32 %45, i32* %nseq61, align 4
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %47)
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  store %struct.msa_struct* %48, %struct.msa_struct** %retval
  br label %return

return:                                           ; preds = %while.end.60, %if.then
  %49 = load %struct.msa_struct*, %struct.msa_struct** %retval
  ret %struct.msa_struct* %49
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

declare void @Die(i8*, ...) #2

declare i32 @IsInt(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

declare i8* @sre_strdup(i8*, i32) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind uwtable
define void @WritePhylip(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  %cpl = alloca i32, align 4
  %buf = alloca [51 x i8], align 16
  %pos = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 50, i32* %cpl, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %nseq, align 4
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 3
  %4 = load i32, i32* %alen, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %2, i32 %4)
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %5 = load i32, i32* %pos, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %alen1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %idx, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.end
  %10 = load i32, i32* %idx, align 4
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %nseq5, align 4
  %cmp6 = icmp slt i32 %10, %12
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %arraydecay = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 0
  %15 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  %17 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %18 = load i32, i32* %cpl, align 4
  %conv = sext i32 %18 to i64
  %call8 = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr, i64 %conv) #5
  %19 = load i32, i32* %cpl, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  %20 = load i32, i32* %pos, align 4
  %cmp11 = icmp sgt i32 %20, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.7
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay14 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay14)
  br label %if.end.20

if.else:                                          ; preds = %for.body.7
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %23 = load i32, i32* %idx, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 1
  %25 = load i8**, i8*** %sqname, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %25, i64 %idxprom16
  %26 = load i8*, i8** %arrayidx17, align 8
  %arraydecay18 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %26, i8* %arraydecay18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %27 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %28 = load i32, i32* %cpl, align 4
  %29 = load i32, i32* %pos, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* %pos, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

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
