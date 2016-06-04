; ModuleID = 'a2m.c'
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
@.str.1 = private unnamed_addr constant [37 x i8] c"Blank name in A2M file %s (line %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca %struct.msa_struct*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %buf = alloca i8*, align 8
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %seq = alloca i8*, align 8
  %idx = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %name, align 8
  %call1 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %call1, %struct.msa_struct** %msa, align 8
  store i32 0, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then.28, %if.end
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call2 = call i8* @MSAFileGetLine(%struct.msafile_struct* %2)
  store i8* %call2, i8** %buf, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %buf, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 62
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.body
  %5 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %buf, align 8
  %call6 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %len1)
  store i8* %call6, i8** %name, align 8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %6, i32 0, i32 1
  %7 = load i8*, i8** %fname, align 8
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %8, i32 0, i32 2
  %9 = load i32, i32* %linenumber, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* %7, i32 %9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  %call11 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32* %len2)
  store i8* %call11, i8** %desc, align 8
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 39
  %11 = load %struct.GKI*, %struct.GKI** %index, align 8
  %12 = load i8*, i8** %name, align 8
  %call12 = call i32 @GKIStoreKey(%struct.GKI* %11, i8* %12)
  store i32 %call12, i32* %idx, align 4
  %13 = load i32, i32* %idx, align 4
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 40
  %15 = load i32, i32* %nseqalloc, align 4
  %cmp13 = icmp sge i32 %13, %15
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAExpand(%struct.msa_struct* %16)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.10
  %17 = load i8*, i8** %name, align 8
  %18 = load i32, i32* %len1, align 4
  %call17 = call i8* @sre_strdup(i8* %17, i32 %18)
  %19 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 1
  %21 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  store i8* %call17, i8** %arrayidx, align 8
  %22 = load i8*, i8** %desc, align 8
  %cmp18 = icmp ne i8* %22, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %24 = load i32, i32* %idx, align 4
  %25 = load i8*, i8** %desc, align 8
  call void @MSASetSeqDescription(%struct.msa_struct* %23, i32 %24, i8* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.16
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 4
  %27 = load i32, i32* %nseq, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %nseq, align 4
  br label %if.end.39

if.else:                                          ; preds = %while.body
  %28 = load i8*, i8** %name, align 8
  %cmp22 = icmp ne i8* %28, null
  br i1 %cmp22, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %if.else
  %call25 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %len1)
  store i8* %call25, i8** %seq, align 8
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  br label %while.cond

if.end.29:                                        ; preds = %if.then.24
  %29 = load i32, i32* %idx, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 0
  %31 = load i8**, i8*** %aseq, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %31, i64 %idxprom30
  %32 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 42
  %34 = load i32*, i32** %sqlen, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %34, i64 %idxprom32
  %35 = load i32, i32* %arrayidx33, align 4
  %36 = load i8*, i8** %seq, align 8
  %37 = load i32, i32* %len1, align 4
  %call34 = call i32 @sre_strcat(i8** %arrayidx31, i32 %35, i8* %36, i32 %37)
  %38 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 42
  %40 = load i32*, i32** %sqlen36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %40, i64 %idxprom35
  store i32 %call34, i32* %arrayidx37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.29, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load i8*, i8** %name, align 8
  %cmp40 = icmp eq i8* %41, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %while.end
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAFree(%struct.msa_struct* %42)
  store %struct.msa_struct* null, %struct.msa_struct** %retval
  br label %return

if.end.43:                                        ; preds = %while.end
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %43)
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  store %struct.msa_struct* %44, %struct.msa_struct** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.42, %if.then
  %45 = load %struct.msa_struct*, %struct.msa_struct** %retval
  ret %struct.msa_struct* %45
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

declare void @Die(i8*, ...) #2

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

declare void @MSAExpand(%struct.msa_struct*) #2

declare i8* @sre_strdup(i8*, i32) #2

declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAFree(%struct.msa_struct*) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind uwtable
define void @WriteA2M(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  %pos = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %cpl = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 60, i32* %cpl, align 4
  %0 = load i32, i32* %cpl, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %1 = load i32, i32* %idx, align 4
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 1
  %7 = load i8**, i8*** %sqname, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 15
  %10 = load i8**, i8*** %sqdesc, align 8
  %cmp3 = icmp ne i8** %10, null
  br i1 %cmp3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 15
  %13 = load i8**, i8*** %sqdesc5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 %idxprom4
  %14 = load i8*, i8** %arrayidx6, align 8
  %cmp7 = icmp ne i8* %14, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 15
  %17 = load i8**, i8*** %sqdesc9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %17, i64 %idxprom8
  %18 = load i8*, i8** %arrayidx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %8, i8* %cond)
  store i32 0, i32* %pos, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %cond.end
  %19 = load i32, i32* %pos, align 4
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 3
  %21 = load i32, i32* %alen, align 4
  %cmp12 = icmp slt i32 %19, %21
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load i32, i32* %idx, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 0
  %25 = load i8**, i8*** %aseq, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %25, i64 %idxprom15
  %26 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 %idxprom14
  %27 = load i32, i32* %cpl, align 4
  %conv = sext i32 %27 to i64
  %call18 = call i8* @strncpy(i8* %arraydecay, i8* %arrayidx17, i64 %conv) #3
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay19 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay19)
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %29 = load i32, i32* %cpl, align 4
  %30 = load i32, i32* %pos, align 4
  %add = add nsw i32 %30, %29
  store i32 %add, i32* %pos, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %31 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
