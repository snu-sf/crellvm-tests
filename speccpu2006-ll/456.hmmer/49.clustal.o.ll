; ModuleID = 'clustal.c'
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

@.str = private unnamed_addr constant [8 x i8] c"CLUSTAL\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"multiple sequence alignment\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".*:\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Parse failed at line %d, file %s: possibly using spaces as gaps\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"CLUSTAL W(1.5) multiple sequence alignment\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%*s %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca %struct.msa_struct*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %s = alloca i8*, align 8
  %slen = alloca i32, align 4
  %sqidx = alloca i32, align 4
  %name = alloca i8*, align 8
  %seq = alloca i8*, align 8
  %s2 = alloca i8*, align 8
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
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %2)
  store i8* %call1, i8** %s, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s, align 8
  %call2 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 7) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8*, i8** %s, align 8
  %call4 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  br label %while.end

if.end.7:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.6, %while.cond
  %5 = load i8*, i8** %s, align 8
  %cmp8 = icmp eq i8* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.end
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.10:                                        ; preds = %while.end
  %call11 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %call11, %struct.msa_struct** %msa, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end.34, %if.then.30, %if.then.22, %if.then.18, %if.end.10
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call13 = call i8* @MSAFileGetLine(%struct.msafile_struct* %6)
  store i8* %call13, i8** %s, align 8
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %while.body.15, label %while.end.43

while.body.15:                                    ; preds = %while.cond.12
  %call16 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32* null)
  store i8* %call16, i8** %name, align 8
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body.15
  br label %while.cond.12

if.end.19:                                        ; preds = %while.body.15
  %call20 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32* %slen)
  store i8* %call20, i8** %seq, align 8
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  br label %while.cond.12

if.end.23:                                        ; preds = %if.end.19
  %call24 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32* null)
  store i8* %call24, i8** %s2, align 8
  %7 = load i8*, i8** %name, align 8
  %call25 = call i8* @strpbrk(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp26 = icmp ne i8* %call25, null
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.end.23
  %8 = load i8*, i8** %seq, align 8
  %call28 = call i8* @strpbrk(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp29 = icmp ne i8* %call28, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  br label %while.cond.12

if.end.31:                                        ; preds = %land.lhs.true.27, %if.end.23
  %9 = load i8*, i8** %s2, align 8
  %cmp32 = icmp ne i8* %9, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %10 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %10, i32 0, i32 2
  %11 = load i32, i32* %linenumber, align 4
  %12 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %12, i32 0, i32 1
  %13 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0), i32 %11, i8* %13)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 45
  %17 = load i32, i32* %lastidx, align 4
  %add = add nsw i32 %17, 1
  %call35 = call i32 @MSAGetSeqidx(%struct.msa_struct* %14, i8* %15, i32 %add)
  store i32 %call35, i32* %sqidx, align 4
  %18 = load i32, i32* %sqidx, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %lastidx36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 45
  store i32 %18, i32* %lastidx36, align 4
  %20 = load i32, i32* %sqidx, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 0
  %22 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i32, i32* %sqidx, align 4
  %idxprom37 = sext i32 %23 to i64
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 42
  %25 = load i32*, i32** %sqlen, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %25, i64 %idxprom37
  %26 = load i32, i32* %arrayidx38, align 4
  %27 = load i8*, i8** %seq, align 8
  %28 = load i32, i32* %slen, align 4
  %call39 = call i32 @sre_strcat(i8** %arrayidx, i32 %26, i8* %27, i32 %28)
  %29 = load i32, i32* %sqidx, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 42
  %31 = load i32*, i32** %sqlen41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %31, i64 %idxprom40
  store i32 %call39, i32* %arrayidx42, align 4
  br label %while.cond.12

while.end.43:                                     ; preds = %while.cond.12
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %32)
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  store %struct.msa_struct* %33, %struct.msa_struct** %retval
  br label %return

return:                                           ; preds = %while.end.43, %if.then.9, %if.then
  %34 = load %struct.msa_struct*, %struct.msa_struct** %retval
  ret %struct.msa_struct* %34
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #3

declare void @Die(i8*, ...) #2

declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind uwtable
define void @WriteClustal(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  %len = alloca i32, align 4
  %namelen = alloca i32, align 4
  %pos = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %cpl = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 50, i32* %cpl, align 4
  store i32 0, i32* %namelen, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 1
  %5 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %6) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %7 = load i32, i32* %namelen, align 4
  %cmp1 = icmp sgt i32 %conv, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %len, align 4
  store i32 %8, i32* %namelen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %pos, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.28, %for.end
  %11 = load i32, i32* %pos, align 4
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 3
  %13 = load i32, i32* %alen, align 4
  %cmp5 = icmp slt i32 %11, %13
  br i1 %cmp5, label %for.body.7, label %for.end.29

for.body.7:                                       ; preds = %for.cond.4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %idx, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.25, %for.body.7
  %15 = load i32, i32* %idx, align 4
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 4
  %17 = load i32, i32* %nseq10, align 4
  %cmp11 = icmp slt i32 %15, %17
  br i1 %cmp11, label %for.body.13, label %for.end.27

for.body.13:                                      ; preds = %for.cond.9
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %18 = load i32, i32* %idx, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 0
  %20 = load i8**, i8*** %aseq, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %20, i64 %idxprom14
  %21 = load i8*, i8** %arrayidx15, align 8
  %22 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load i32, i32* %cpl, align 4
  %conv16 = sext i32 %23 to i64
  %call17 = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr, i64 %conv16) #4
  %24 = load i32, i32* %cpl, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom18
  store i8 0, i8* %arrayidx19, align 1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %26 = load i32, i32* %namelen, align 4
  %27 = load i32, i32* %idx, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 1
  %29 = load i8**, i8*** %sqname21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %29, i64 %idxprom20
  %30 = load i8*, i8** %arrayidx22, align 8
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %26, i8* %30, i8* %arraydecay23)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.13
  %31 = load i32, i32* %idx, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %idx, align 4
  br label %for.cond.9

for.end.27:                                       ; preds = %for.cond.9
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %32 = load i32, i32* %cpl, align 4
  %33 = load i32, i32* %pos, align 4
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %pos, align 4
  br label %for.cond.4

for.end.29:                                       ; preds = %for.cond.4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

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
