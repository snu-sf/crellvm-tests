; ModuleID = 'msa.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"msa.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to sre_strcat()\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Parse error: no sequences were found for alignment %s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Parse error: No sequence for %s in alignment %s\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Parse error: some weights are set, but %s doesn't have one in alignment %s\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Parse error: sequence %s: length %d, expected %d in alignment %s\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"Parse error: #=GR SS annotation for %s: length %d, expected %d in alignment %s\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"Parse error: #=GR SA annotation for %s: length %d, expected %d in alignment %s\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"Parse error: #=GC SS_cons annotation: length %d, expected %d in alignment %s\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"Parse error: #=GC SA_cons annotation: length %d, expected %d in alignment %s\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"Parse error: #=GC RF annotation: length %d, expected %d in alignment %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"[STDIN]\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s.ssi\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"Can't autodetect alignment file format from a stdin or gzip pipe\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Can't determine format of multiple alignment file %s\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"MSAFILE corrupted: bad format index\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"can't write. no such alignment format %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [156 x i8] c"File %s does not appear to be an alignment file;\0Arather, it appears to be an unaligned file in %s format.\0AI'm expecting an alignment file in this context.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @MSAAlloc(i32 %nseq, i32 %alen) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %msa = alloca %struct.msa_struct*, align 8
  %i = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 68, i64 360)
  %0 = bitcast i8* %call to %struct.msa_struct*
  store %struct.msa_struct* %0, %struct.msa_struct** %msa, align 8
  %1 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 69, i64 %mul)
  %2 = bitcast i8* %call1 to i8**
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 0
  store i8** %2, i8*** %aseq, align 8
  %4 = load i32, i32* %nseq.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 8, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 70, i64 %mul3)
  %5 = bitcast i8* %call4 to i8**
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 1
  store i8** %5, i8*** %sqname, align 8
  %7 = load i32, i32* %nseq.addr, align 4
  %conv5 = sext i32 %7 to i64
  %mul6 = mul i64 4, %conv5
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 71, i64 %mul6)
  %8 = bitcast i8* %call7 to i32*
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 42
  store i32* %8, i32** %sqlen, align 8
  %10 = load i32, i32* %nseq.addr, align 4
  %conv8 = sext i32 %10 to i64
  %mul9 = mul i64 4, %conv8
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 72, i64 %mul9)
  %11 = bitcast i8* %call10 to float*
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 2
  store float* %11, float** %wgt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 1
  %17 = load i8**, i8*** %sqname12, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 42
  %20 = load i32*, i32** %sqlen14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom13
  store i32 0, i32* %arrayidx15, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %wgt17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 2
  %23 = load float*, float** %wgt17, align 8
  %arrayidx18 = getelementptr inbounds float, float* %23, i64 %idxprom16
  store float -1.000000e+00, float* %arrayidx18, align 4
  %24 = load i32, i32* %alen.addr, align 4
  %cmp19 = icmp ne i32 %24, 0
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %25, 1
  %conv21 = sext i32 %add to i64
  %mul22 = mul i64 1, %conv21
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 80, i64 %mul22)
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 0
  %28 = load i8**, i8*** %aseq25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %28, i64 %idxprom24
  store i8* %call23, i8** %arrayidx26, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 0
  %31 = load i8**, i8*** %aseq28, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %31, i64 %idxprom27
  store i8* null, i8** %arrayidx29, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %alen.addr, align 4
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 3
  store i32 %33, i32* %alen30, align 4
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq31 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 4
  store i32 0, i32* %nseq31, align 4
  %36 = load i32, i32* %nseq.addr, align 4
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 40
  store i32 %36, i32* %nseqalloc, align 4
  %38 = load i32, i32* %nseq.addr, align 4
  %39 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqlump = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 41
  store i32 %38, i32* %nseqlump, align 4
  %40 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %flags = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 5
  store i32 0, i32* %flags, align 4
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %type = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 6
  store i32 0, i32* %type, align 4
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 7
  store i8* null, i8** %name, align 8
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %desc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 8
  store i8* null, i8** %desc, align 8
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %acc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 9
  store i8* null, i8** %acc, align 8
  %45 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 10
  store i8* null, i8** %au, align 8
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 11
  store i8* null, i8** %ss_cons, align 8
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 12
  store i8* null, i8** %sa_cons, align 8
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 13
  store i8* null, i8** %rf, align 8
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 14
  store i8** null, i8*** %sqacc, align 8
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 15
  store i8** null, i8*** %sqdesc, align 8
  %51 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 16
  store i8** null, i8*** %ss, align 8
  %52 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sslen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 43
  store i32* null, i32** %sslen, align 8
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 17
  store i8** null, i8*** %sa, align 8
  %54 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %salen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 44
  store i32* null, i32** %salen, align 8
  %call32 = call %struct.GKI* @GKIInit()
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 39
  store %struct.GKI* %call32, %struct.GKI** %index, align 8
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 45
  store i32 0, i32* %lastidx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %for.end
  %57 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %57, 6
  br i1 %cmp34, label %for.body.36, label %for.end.43

for.body.36:                                      ; preds = %for.cond.33
  %58 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %58 to i64
  %59 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 18
  %arrayidx38 = getelementptr inbounds [6 x float], [6 x float]* %cutoff, i32 0, i64 %idxprom37
  store float 0.000000e+00, float* %arrayidx38, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %60 to i64
  %61 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 19
  %arrayidx40 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set, i32 0, i64 %idxprom39
  store i32 0, i32* %arrayidx40, align 4
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.36
  %62 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %62, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  %63 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %comment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 20
  store i8** null, i8*** %comment, align 8
  %64 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 21
  store i32 0, i32* %ncomment, align 4
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alloc_ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 22
  store i32 0, i32* %alloc_ncomment, align 4
  %66 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gf_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 23
  store i8** null, i8*** %gf_tag, align 8
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 24
  store i8** null, i8*** %gf, align 8
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ngf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 25
  store i32 0, i32* %ngf, align 4
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gs_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 27
  store i8** null, i8*** %gs_tag, align 8
  %70 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 28
  store i8*** null, i8**** %gs, align 8
  %71 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gs_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %71, i32 0, i32 29
  store %struct.GKI* null, %struct.GKI** %gs_idx, align 8
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ngs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 30
  store i32 0, i32* %ngs, align 4
  %73 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gc_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 31
  store i8** null, i8*** %gc_tag, align 8
  %74 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 32
  store i8** null, i8*** %gc, align 8
  %75 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gc_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 33
  store %struct.GKI* null, %struct.GKI** %gc_idx, align 8
  %76 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ngc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 34
  store i32 0, i32* %ngc, align 4
  %77 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gr_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 35
  store i8** null, i8*** %gr_tag, align 8
  %78 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 36
  store i8*** null, i8**** %gr, align 8
  %79 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %gr_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 37
  store %struct.GKI* null, %struct.GKI** %gr_idx, align 8
  %80 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ngr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %80, i32 0, i32 38
  store i32 0, i32* %ngr, align 4
  %81 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  ret %struct.msa_struct* %81
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare %struct.GKI* @GKIInit() #1

; Function Attrs: nounwind uwtable
define void @MSAExpand(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqlump = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 41
  %1 = load i32, i32* %nseqlump, align 4
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 40
  %3 = load i32, i32* %nseqalloc, align 4
  %add = add nsw i32 %3, %1
  store i32 %add, i32* %nseqalloc, align 4
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 0
  %5 = load i8**, i8*** %aseq, align 8
  %6 = bitcast i8** %5 to i8*
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 40
  %8 = load i32, i32* %nseqalloc1, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 162, i8* %6, i64 %mul)
  %9 = bitcast i8* %call to i8**
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 0
  store i8** %9, i8*** %aseq2, align 8
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 1
  %12 = load i8**, i8*** %sqname, align 8
  %13 = bitcast i8** %12 to i8*
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc3 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 40
  %15 = load i32, i32* %nseqalloc3, align 4
  %conv4 = sext i32 %15 to i64
  %mul5 = mul i64 8, %conv4
  %call6 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 163, i8* %13, i64 %mul5)
  %16 = bitcast i8* %call6 to i8**
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 1
  store i8** %16, i8*** %sqname7, align 8
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 42
  %19 = load i32*, i32** %sqlen, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 40
  %22 = load i32, i32* %nseqalloc8, align 4
  %conv9 = sext i32 %22 to i64
  %mul10 = mul i64 8, %conv9
  %call11 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 164, i8* %20, i64 %mul10)
  %23 = bitcast i8* %call11 to i32*
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 42
  store i32* %23, i32** %sqlen12, align 8
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 2
  %26 = load float*, float** %wgt, align 8
  %27 = bitcast float* %26 to i8*
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 40
  %29 = load i32, i32* %nseqalloc13, align 4
  %conv14 = sext i32 %29 to i64
  %mul15 = mul i64 4, %conv14
  %call16 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 165, i8* %27, i64 %mul15)
  %30 = bitcast i8* %call16 to float*
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 2
  store float* %30, float** %wgt17, align 8
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 16
  %33 = load i8**, i8*** %ss, align 8
  %cmp = icmp ne i8** %33, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 16
  %35 = load i8**, i8*** %ss19, align 8
  %36 = bitcast i8** %35 to i8*
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 40
  %38 = load i32, i32* %nseqalloc20, align 4
  %conv21 = sext i32 %38 to i64
  %mul22 = mul i64 8, %conv21
  %call23 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 168, i8* %36, i64 %mul22)
  %39 = bitcast i8* %call23 to i8**
  %40 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 16
  store i8** %39, i8*** %ss24, align 8
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 43
  %42 = load i32*, i32** %sslen, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 40
  %45 = load i32, i32* %nseqalloc25, align 4
  %conv26 = sext i32 %45 to i64
  %mul27 = mul i64 4, %conv26
  %call28 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 169, i8* %43, i64 %mul27)
  %46 = bitcast i8* %call28 to i32*
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 43
  store i32* %46, i32** %sslen29, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 17
  %49 = load i8**, i8*** %sa, align 8
  %cmp30 = icmp ne i8** %49, null
  br i1 %cmp30, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.end
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 17
  %51 = load i8**, i8*** %sa33, align 8
  %52 = bitcast i8** %51 to i8*
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 40
  %54 = load i32, i32* %nseqalloc34, align 4
  %conv35 = sext i32 %54 to i64
  %mul36 = mul i64 8, %conv35
  %call37 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 172, i8* %52, i64 %mul36)
  %55 = bitcast i8* %call37 to i8**
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 17
  store i8** %55, i8*** %sa38, align 8
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 44
  %58 = load i32*, i32** %salen, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 40
  %61 = load i32, i32* %nseqalloc39, align 4
  %conv40 = sext i32 %61 to i64
  %mul41 = mul i64 4, %conv40
  %call42 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 173, i8* %59, i64 %mul41)
  %62 = bitcast i8* %call42 to i32*
  %63 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 44
  store i32* %62, i32** %salen43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.32, %if.end
  %64 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 14
  %65 = load i8**, i8*** %sqacc, align 8
  %cmp45 = icmp ne i8** %65, null
  br i1 %cmp45, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.end.44
  %66 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 14
  %67 = load i8**, i8*** %sqacc48, align 8
  %68 = bitcast i8** %67 to i8*
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 40
  %70 = load i32, i32* %nseqalloc49, align 4
  %conv50 = sext i32 %70 to i64
  %mul51 = mul i64 8, %conv50
  %call52 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 176, i8* %68, i64 %mul51)
  %71 = bitcast i8* %call52 to i8**
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 14
  store i8** %71, i8*** %sqacc53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.end.44
  %73 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 15
  %74 = load i8**, i8*** %sqdesc, align 8
  %cmp55 = icmp ne i8** %74, null
  br i1 %cmp55, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.54
  %75 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 15
  %76 = load i8**, i8*** %sqdesc58, align 8
  %77 = bitcast i8** %76 to i8*
  %78 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc59 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 40
  %79 = load i32, i32* %nseqalloc59, align 4
  %conv60 = sext i32 %79 to i64
  %mul61 = mul i64 8, %conv60
  %call62 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 178, i8* %77, i64 %mul61)
  %80 = bitcast i8* %call62 to i8**
  %81 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc63 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 15
  store i8** %80, i8*** %sqdesc63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.57, %if.end.54
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 40
  %83 = load i32, i32* %nseqalloc65, align 4
  %84 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqlump66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 41
  %85 = load i32, i32* %nseqlump66, align 4
  %sub = sub nsw i32 %83, %85
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.64
  %86 = load i32, i32* %i, align 4
  %87 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc67 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 40
  %88 = load i32, i32* %nseqalloc67, align 4
  %cmp68 = icmp slt i32 %86, %88
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i32, i32* %i, align 4
  %idxprom = sext i32 %89 to i64
  %90 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %90, i32 0, i32 1
  %91 = load i8**, i8*** %sqname70, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %91, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %92 to i64
  %93 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt72 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %93, i32 0, i32 2
  %94 = load float*, float** %wgt72, align 8
  %arrayidx73 = getelementptr inbounds float, float* %94, i64 %idxprom71
  store float -1.000000e+00, float* %arrayidx73, align 4
  %95 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 14
  %96 = load i8**, i8*** %sqacc74, align 8
  %cmp75 = icmp ne i8** %96, null
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %for.body
  %97 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %97 to i64
  %98 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %98, i32 0, i32 14
  %99 = load i8**, i8*** %sqacc79, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %99, i64 %idxprom78
  store i8* null, i8** %arrayidx80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %for.body
  %100 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 15
  %101 = load i8**, i8*** %sqdesc82, align 8
  %cmp83 = icmp ne i8** %101, null
  br i1 %cmp83, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %if.end.81
  %102 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %102 to i64
  %103 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 15
  %104 = load i8**, i8*** %sqdesc87, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %104, i64 %idxprom86
  store i8* null, i8** %arrayidx88, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %if.end.81
  %105 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 3
  %106 = load i32, i32* %alen, align 4
  %cmp90 = icmp ne i32 %106, 0
  br i1 %cmp90, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %if.end.89
  %107 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %107 to i64
  %108 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq94 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %108, i32 0, i32 0
  %109 = load i8**, i8*** %aseq94, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %109, i64 %idxprom93
  %110 = load i8*, i8** %arrayidx95, align 8
  %111 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %111, i32 0, i32 3
  %112 = load i32, i32* %alen96, align 4
  %add97 = add nsw i32 %112, 1
  %conv98 = sext i32 %add97 to i64
  %mul99 = mul i64 1, %conv98
  %call100 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 189, i8* %110, i64 %mul99)
  %113 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %113 to i64
  %114 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 0
  %115 = load i8**, i8*** %aseq102, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %115, i64 %idxprom101
  store i8* %call100, i8** %arrayidx103, align 8
  br label %if.end.107

if.else:                                          ; preds = %if.end.89
  %116 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %116 to i64
  %117 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq105 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 0
  %118 = load i8**, i8*** %aseq105, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %118, i64 %idxprom104
  store i8* null, i8** %arrayidx106, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.92
  %119 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %119 to i64
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen109 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 42
  %121 = load i32*, i32** %sqlen109, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %121, i64 %idxprom108
  store i32 0, i32* %arrayidx110, align 4
  %122 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss111 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %122, i32 0, i32 16
  %123 = load i8**, i8*** %ss111, align 8
  %cmp112 = icmp ne i8** %123, null
  br i1 %cmp112, label %if.then.114, label %if.end.138

if.then.114:                                      ; preds = %if.end.107
  %124 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen115 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %124, i32 0, i32 3
  %125 = load i32, i32* %alen115, align 4
  %cmp116 = icmp ne i32 %125, 0
  br i1 %cmp116, label %if.then.118, label %if.else.130

if.then.118:                                      ; preds = %if.then.114
  %126 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %126 to i64
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss120 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 16
  %128 = load i8**, i8*** %ss120, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %128, i64 %idxprom119
  %129 = load i8*, i8** %arrayidx121, align 8
  %130 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen122 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 3
  %131 = load i32, i32* %alen122, align 4
  %add123 = add nsw i32 %131, 1
  %conv124 = sext i32 %add123 to i64
  %mul125 = mul i64 1, %conv124
  %call126 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 195, i8* %129, i64 %mul125)
  %132 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %132 to i64
  %133 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss128 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %133, i32 0, i32 16
  %134 = load i8**, i8*** %ss128, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %134, i64 %idxprom127
  store i8* %call126, i8** %arrayidx129, align 8
  br label %if.end.134

if.else.130:                                      ; preds = %if.then.114
  %135 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %135 to i64
  %136 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss132 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 16
  %137 = load i8**, i8*** %ss132, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %137, i64 %idxprom131
  store i8* null, i8** %arrayidx133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.130, %if.then.118
  %138 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %138 to i64
  %139 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen136 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %139, i32 0, i32 43
  %140 = load i32*, i32** %sslen136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %140, i64 %idxprom135
  store i32 0, i32* %arrayidx137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.134, %if.end.107
  %141 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa139 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %141, i32 0, i32 17
  %142 = load i8**, i8*** %sa139, align 8
  %cmp140 = icmp ne i8** %142, null
  br i1 %cmp140, label %if.then.142, label %if.end.166

if.then.142:                                      ; preds = %if.end.138
  %143 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen143 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 3
  %144 = load i32, i32* %alen143, align 4
  %cmp144 = icmp ne i32 %144, 0
  br i1 %cmp144, label %if.then.146, label %if.else.158

if.then.146:                                      ; preds = %if.then.142
  %145 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %145 to i64
  %146 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss148 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %146, i32 0, i32 16
  %147 = load i8**, i8*** %ss148, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %147, i64 %idxprom147
  %148 = load i8*, i8** %arrayidx149, align 8
  %149 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen150 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %149, i32 0, i32 3
  %150 = load i32, i32* %alen150, align 4
  %add151 = add nsw i32 %150, 1
  %conv152 = sext i32 %add151 to i64
  %mul153 = mul i64 1, %conv152
  %call154 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 201, i8* %148, i64 %mul153)
  %151 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %151 to i64
  %152 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa156 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 17
  %153 = load i8**, i8*** %sa156, align 8
  %arrayidx157 = getelementptr inbounds i8*, i8** %153, i64 %idxprom155
  store i8* %call154, i8** %arrayidx157, align 8
  br label %if.end.162

if.else.158:                                      ; preds = %if.then.142
  %154 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %154 to i64
  %155 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa160 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %155, i32 0, i32 17
  %156 = load i8**, i8*** %sa160, align 8
  %arrayidx161 = getelementptr inbounds i8*, i8** %156, i64 %idxprom159
  store i8* null, i8** %arrayidx161, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.158, %if.then.146
  %157 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %157 to i64
  %158 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 44
  %159 = load i32*, i32** %salen164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %159, i64 %idxprom163
  store i32 0, i32* %arrayidx165, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.162, %if.end.138
  br label %for.inc

for.inc:                                          ; preds = %if.end.166
  %160 = load i32, i32* %i, align 4
  %inc = add nsw i32 %160, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %161 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %161, i32 0, i32 28
  %162 = load i8***, i8**** %gs, align 8
  %cmp167 = icmp ne i8*** %162, null
  br i1 %cmp167, label %if.then.169, label %if.end.210

if.then.169:                                      ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.207, %if.then.169
  %163 = load i32, i32* %i, align 4
  %164 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 30
  %165 = load i32, i32* %ngs, align 4
  %cmp171 = icmp slt i32 %163, %165
  br i1 %cmp171, label %for.body.173, label %for.end.209

for.body.173:                                     ; preds = %for.cond.170
  %166 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %166 to i64
  %167 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs175 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %167, i32 0, i32 28
  %168 = load i8***, i8**** %gs175, align 8
  %arrayidx176 = getelementptr inbounds i8**, i8*** %168, i64 %idxprom174
  %169 = load i8**, i8*** %arrayidx176, align 8
  %cmp177 = icmp ne i8** %169, null
  br i1 %cmp177, label %if.then.179, label %if.end.206

if.then.179:                                      ; preds = %for.body.173
  %170 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %170 to i64
  %171 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs181 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %171, i32 0, i32 28
  %172 = load i8***, i8**** %gs181, align 8
  %arrayidx182 = getelementptr inbounds i8**, i8*** %172, i64 %idxprom180
  %173 = load i8**, i8*** %arrayidx182, align 8
  %174 = bitcast i8** %173 to i8*
  %175 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc183 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %175, i32 0, i32 40
  %176 = load i32, i32* %nseqalloc183, align 4
  %conv184 = sext i32 %176 to i64
  %mul185 = mul i64 8, %conv184
  %call186 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 217, i8* %174, i64 %mul185)
  %177 = bitcast i8* %call186 to i8**
  %178 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %178 to i64
  %179 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs188 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 28
  %180 = load i8***, i8**** %gs188, align 8
  %arrayidx189 = getelementptr inbounds i8**, i8*** %180, i64 %idxprom187
  store i8** %177, i8*** %arrayidx189, align 8
  %181 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc190 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %181, i32 0, i32 40
  %182 = load i32, i32* %nseqalloc190, align 4
  %183 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqlump191 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %183, i32 0, i32 41
  %184 = load i32, i32* %nseqlump191, align 4
  %sub192 = sub nsw i32 %182, %184
  store i32 %sub192, i32* %j, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.203, %if.then.179
  %185 = load i32, i32* %j, align 4
  %186 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc194 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %186, i32 0, i32 40
  %187 = load i32, i32* %nseqalloc194, align 4
  %cmp195 = icmp slt i32 %185, %187
  br i1 %cmp195, label %for.body.197, label %for.end.205

for.body.197:                                     ; preds = %for.cond.193
  %188 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %188 to i64
  %189 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %189 to i64
  %190 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs200 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %190, i32 0, i32 28
  %191 = load i8***, i8**** %gs200, align 8
  %arrayidx201 = getelementptr inbounds i8**, i8*** %191, i64 %idxprom199
  %192 = load i8**, i8*** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %192, i64 %idxprom198
  store i8* null, i8** %arrayidx202, align 8
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.197
  %193 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %193, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond.193

for.end.205:                                      ; preds = %for.cond.193
  br label %if.end.206

if.end.206:                                       ; preds = %for.end.205, %for.body.173
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %194 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %194, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond.170

for.end.209:                                      ; preds = %for.cond.170
  br label %if.end.210

if.end.210:                                       ; preds = %for.end.209, %for.end
  %195 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %195, i32 0, i32 36
  %196 = load i8***, i8**** %gr, align 8
  %cmp211 = icmp ne i8*** %196, null
  br i1 %cmp211, label %if.then.213, label %if.end.254

if.then.213:                                      ; preds = %if.end.210
  store i32 0, i32* %i, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.251, %if.then.213
  %197 = load i32, i32* %i, align 4
  %198 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %198, i32 0, i32 38
  %199 = load i32, i32* %ngr, align 4
  %cmp215 = icmp slt i32 %197, %199
  br i1 %cmp215, label %for.body.217, label %for.end.253

for.body.217:                                     ; preds = %for.cond.214
  %200 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %200 to i64
  %201 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr219 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %201, i32 0, i32 36
  %202 = load i8***, i8**** %gr219, align 8
  %arrayidx220 = getelementptr inbounds i8**, i8*** %202, i64 %idxprom218
  %203 = load i8**, i8*** %arrayidx220, align 8
  %cmp221 = icmp ne i8** %203, null
  br i1 %cmp221, label %if.then.223, label %if.end.250

if.then.223:                                      ; preds = %for.body.217
  %204 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %204 to i64
  %205 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr225 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %205, i32 0, i32 36
  %206 = load i8***, i8**** %gr225, align 8
  %arrayidx226 = getelementptr inbounds i8**, i8*** %206, i64 %idxprom224
  %207 = load i8**, i8*** %arrayidx226, align 8
  %208 = bitcast i8** %207 to i8*
  %209 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc227 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %209, i32 0, i32 40
  %210 = load i32, i32* %nseqalloc227, align 4
  %conv228 = sext i32 %210 to i64
  %mul229 = mul i64 8, %conv228
  %call230 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 232, i8* %208, i64 %mul229)
  %211 = bitcast i8* %call230 to i8**
  %212 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %212 to i64
  %213 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr232 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %213, i32 0, i32 36
  %214 = load i8***, i8**** %gr232, align 8
  %arrayidx233 = getelementptr inbounds i8**, i8*** %214, i64 %idxprom231
  store i8** %211, i8*** %arrayidx233, align 8
  %215 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc234 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %215, i32 0, i32 40
  %216 = load i32, i32* %nseqalloc234, align 4
  %217 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqlump235 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %217, i32 0, i32 41
  %218 = load i32, i32* %nseqlump235, align 4
  %sub236 = sub nsw i32 %216, %218
  store i32 %sub236, i32* %j, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.247, %if.then.223
  %219 = load i32, i32* %j, align 4
  %220 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc238 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %220, i32 0, i32 40
  %221 = load i32, i32* %nseqalloc238, align 4
  %cmp239 = icmp slt i32 %219, %221
  br i1 %cmp239, label %for.body.241, label %for.end.249

for.body.241:                                     ; preds = %for.cond.237
  %222 = load i32, i32* %j, align 4
  %idxprom242 = sext i32 %222 to i64
  %223 = load i32, i32* %i, align 4
  %idxprom243 = sext i32 %223 to i64
  %224 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr244 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %224, i32 0, i32 36
  %225 = load i8***, i8**** %gr244, align 8
  %arrayidx245 = getelementptr inbounds i8**, i8*** %225, i64 %idxprom243
  %226 = load i8**, i8*** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i8*, i8** %226, i64 %idxprom242
  store i8* null, i8** %arrayidx246, align 8
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.241
  %227 = load i32, i32* %j, align 4
  %inc248 = add nsw i32 %227, 1
  store i32 %inc248, i32* %j, align 4
  br label %for.cond.237

for.end.249:                                      ; preds = %for.cond.237
  br label %if.end.250

if.end.250:                                       ; preds = %for.end.249, %for.body.217
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.250
  %228 = load i32, i32* %i, align 4
  %inc252 = add nsw i32 %228, 1
  store i32 %inc252, i32* %i, align 4
  br label %for.cond.214

for.end.253:                                      ; preds = %for.cond.214
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.253, %if.end.210
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @MSAFree(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 0
  %1 = load i8**, i8*** %aseq, align 8
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %nseq, align 4
  call void @Free2DArray(i8** %1, i32 %3)
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 1
  %5 = load i8**, i8*** %sqname, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %nseq1, align 4
  call void @Free2DArray(i8** %5, i32 %7)
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 14
  %9 = load i8**, i8*** %sqacc, align 8
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 4
  %11 = load i32, i32* %nseq2, align 4
  call void @Free2DArray(i8** %9, i32 %11)
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 15
  %13 = load i8**, i8*** %sqdesc, align 8
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq3 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 4
  %15 = load i32, i32* %nseq3, align 4
  call void @Free2DArray(i8** %13, i32 %15)
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 16
  %17 = load i8**, i8*** %ss, align 8
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 4
  %19 = load i32, i32* %nseq4, align 4
  call void @Free2DArray(i8** %17, i32 %19)
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 17
  %21 = load i8**, i8*** %sa, align 8
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 4
  %23 = load i32, i32* %nseq5, align 4
  call void @Free2DArray(i8** %21, i32 %23)
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 42
  %25 = load i32*, i32** %sqlen, align 8
  %cmp = icmp ne i32* %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 42
  %27 = load i32*, i32** %sqlen6, align 8
  %28 = bitcast i32* %27 to i8*
  call void @free(i8* %28) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 2
  %30 = load float*, float** %wgt, align 8
  %cmp7 = icmp ne float* %30, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 2
  %32 = load float*, float** %wgt9, align 8
  %33 = bitcast float* %32 to i8*
  call void @free(i8* %33) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 7
  %35 = load i8*, i8** %name, align 8
  %cmp11 = icmp ne i8* %35, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %36 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 7
  %37 = load i8*, i8** %name13, align 8
  call void @free(i8* %37) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 8
  %39 = load i8*, i8** %desc, align 8
  %cmp15 = icmp ne i8* %39, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %40 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 8
  %41 = load i8*, i8** %desc17, align 8
  call void @free(i8* %41) #4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 9
  %43 = load i8*, i8** %acc, align 8
  %cmp19 = icmp ne i8* %43, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 9
  %45 = load i8*, i8** %acc21, align 8
  call void @free(i8* %45) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 10
  %47 = load i8*, i8** %au, align 8
  %cmp23 = icmp ne i8* %47, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 10
  %49 = load i8*, i8** %au25, align 8
  call void @free(i8* %49) #4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 11
  %51 = load i8*, i8** %ss_cons, align 8
  %cmp27 = icmp ne i8* %51, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %52 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 11
  %53 = load i8*, i8** %ss_cons29, align 8
  call void @free(i8* %53) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %54 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 12
  %55 = load i8*, i8** %sa_cons, align 8
  %cmp31 = icmp ne i8* %55, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 12
  %57 = load i8*, i8** %sa_cons33, align 8
  call void @free(i8* %57) #4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %58 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %58, i32 0, i32 13
  %59 = load i8*, i8** %rf, align 8
  %cmp35 = icmp ne i8* %59, null
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.34
  %60 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 13
  %61 = load i8*, i8** %rf37, align 8
  call void @free(i8* %61) #4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.34
  %62 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 43
  %63 = load i32*, i32** %sslen, align 8
  %cmp39 = icmp ne i32* %63, null
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.38
  %64 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 43
  %65 = load i32*, i32** %sslen41, align 8
  %66 = bitcast i32* %65 to i8*
  call void @free(i8* %66) #4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.38
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 44
  %68 = load i32*, i32** %salen, align 8
  %cmp43 = icmp ne i32* %68, null
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 44
  %70 = load i32*, i32** %salen45, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 20
  %73 = load i8**, i8*** %comment, align 8
  %74 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 21
  %75 = load i32, i32* %ncomment, align 4
  call void @Free2DArray(i8** %73, i32 %75)
  %76 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 23
  %77 = load i8**, i8*** %gf_tag, align 8
  %78 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 25
  %79 = load i32, i32* %ngf, align 4
  call void @Free2DArray(i8** %77, i32 %79)
  %80 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %80, i32 0, i32 24
  %81 = load i8**, i8*** %gf, align 8
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 25
  %83 = load i32, i32* %ngf47, align 4
  call void @Free2DArray(i8** %81, i32 %83)
  %84 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 27
  %85 = load i8**, i8*** %gs_tag, align 8
  %86 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %86, i32 0, i32 30
  %87 = load i32, i32* %ngs, align 4
  call void @Free2DArray(i8** %85, i32 %87)
  %88 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %88, i32 0, i32 28
  %89 = load i8***, i8**** %gs, align 8
  %90 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %90, i32 0, i32 30
  %91 = load i32, i32* %ngs48, align 4
  %92 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 4
  %93 = load i32, i32* %nseq49, align 4
  call void @Free3DArray(i8*** %89, i32 %91, i32 %93)
  %94 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %94, i32 0, i32 31
  %95 = load i8**, i8*** %gc_tag, align 8
  %96 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %96, i32 0, i32 34
  %97 = load i32, i32* %ngc, align 4
  call void @Free2DArray(i8** %95, i32 %97)
  %98 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %98, i32 0, i32 32
  %99 = load i8**, i8*** %gc, align 8
  %100 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 34
  %101 = load i32, i32* %ngc50, align 4
  call void @Free2DArray(i8** %99, i32 %101)
  %102 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 35
  %103 = load i8**, i8*** %gr_tag, align 8
  %104 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %104, i32 0, i32 38
  %105 = load i32, i32* %ngr, align 4
  call void @Free2DArray(i8** %103, i32 %105)
  %106 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %106, i32 0, i32 36
  %107 = load i8***, i8**** %gr, align 8
  %108 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr51 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %108, i32 0, i32 38
  %109 = load i32, i32* %ngr51, align 4
  %110 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq52 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %110, i32 0, i32 4
  %111 = load i32, i32* %nseq52, align 4
  call void @Free3DArray(i8*** %107, i32 %109, i32 %111)
  %112 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 39
  %113 = load %struct.GKI*, %struct.GKI** %index, align 8
  call void @GKIFree(%struct.GKI* %113)
  %114 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 29
  %115 = load %struct.GKI*, %struct.GKI** %gs_idx, align 8
  call void @GKIFree(%struct.GKI* %115)
  %116 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %116, i32 0, i32 33
  %117 = load %struct.GKI*, %struct.GKI** %gc_idx, align 8
  call void @GKIFree(%struct.GKI* %117)
  %118 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %118, i32 0, i32 37
  %119 = load %struct.GKI*, %struct.GKI** %gr_idx, align 8
  call void @GKIFree(%struct.GKI* %119)
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %121 = bitcast %struct.msa_struct* %120 to i8*
  call void @free(i8* %121) #4
  ret void
}

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @Free3DArray(i8***, i32, i32) #1

declare void @GKIFree(%struct.GKI*) #1

; Function Attrs: nounwind uwtable
define void @MSASetSeqAccession(%struct.msa_struct* %msa, i32 %seqidx, i8* %acc) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %seqidx.addr = alloca i32, align 4
  %acc.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %seqidx, i32* %seqidx.addr, align 4
  store i8* %acc, i8** %acc.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 14
  %1 = load i8**, i8*** %sqacc, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 40
  %3 = load i32, i32* %nseqalloc, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 310, i64 %mul)
  %4 = bitcast i8* %call to i8**
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 14
  store i8** %4, i8*** %sqacc1, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %x, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 40
  %8 = load i32, i32* %nseqalloc2, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %x, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 14
  %11 = load i8**, i8*** %sqacc5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load i8*, i8** %acc.addr, align 8
  %call6 = call i8* @sre_strdup(i8* %13, i32 -1)
  %14 = load i32, i32* %seqidx.addr, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 14
  %16 = load i8**, i8*** %sqacc8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 %idxprom7
  store i8* %call6, i8** %arrayidx9, align 8
  ret void
}

declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @MSASetSeqDescription(%struct.msa_struct* %msa, i32 %seqidx, i8* %desc) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %seqidx.addr = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %seqidx, i32* %seqidx.addr, align 4
  store i8* %desc, i8** %desc.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 15
  %1 = load i8**, i8*** %sqdesc, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 40
  %3 = load i32, i32* %nseqalloc, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 335, i64 %mul)
  %4 = bitcast i8* %call to i8**
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 15
  store i8** %4, i8*** %sqdesc1, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %x, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 40
  %8 = load i32, i32* %nseqalloc2, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %x, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 15
  %11 = load i8**, i8*** %sqdesc5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load i8*, i8** %desc.addr, align 8
  %call6 = call i8* @sre_strdup(i8* %13, i32 -1)
  %14 = load i32, i32* %seqidx.addr, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 15
  %16 = load i8**, i8*** %sqdesc8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 %idxprom7
  store i8* %call6, i8** %arrayidx9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSAAddComment(%struct.msa_struct* %msa, i8* %s) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 20
  %1 = load i8**, i8*** %comment, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 362, i64 80)
  %2 = bitcast i8* %call to i8**
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 20
  store i8** %2, i8*** %comment1, align 8
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 22
  store i32 10, i32* %alloc_ncomment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 21
  %6 = load i32, i32* %ncomment, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ncomment2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 22
  %8 = load i32, i32* %alloc_ncomment2, align 4
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ncomment5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 22
  %10 = load i32, i32* %alloc_ncomment5, align 4
  %add = add nsw i32 %10, 10
  store i32 %add, i32* %alloc_ncomment5, align 4
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 20
  %12 = load i8**, i8*** %comment6, align 8
  %13 = bitcast i8** %12 to i8*
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ncomment7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 22
  %15 = load i32, i32* %alloc_ncomment7, align 4
  %conv = sext i32 %15 to i64
  %mul = mul i64 8, %conv
  %call8 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 367, i8* %13, i64 %mul)
  %16 = bitcast i8* %call8 to i8**
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 20
  store i8** %16, i8*** %comment9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %if.end
  %18 = load i8*, i8** %s.addr, align 8
  %call11 = call i8* @sre_strdup(i8* %18, i32 -1)
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 21
  %20 = load i32, i32* %ncomment12, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %comment13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 20
  %22 = load i8**, i8*** %comment13, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  store i8* %call11, i8** %arrayidx, align 8
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ncomment14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 21
  %24 = load i32, i32* %ncomment14, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %ncomment14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSAAddGF(%struct.msa_struct* %msa, i8* %tag, i8* %value) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %tag.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 23
  %1 = load i8**, i8*** %gf_tag, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 395, i64 80)
  %2 = bitcast i8* %call to i8**
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 23
  store i8** %2, i8*** %gf_tag1, align 8
  %call2 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 396, i64 80)
  %4 = bitcast i8* %call2 to i8**
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 24
  store i8** %4, i8*** %gf, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ngf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 26
  store i32 10, i32* %alloc_ngf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 25
  %8 = load i32, i32* %ngf, align 4
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ngf3 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 26
  %10 = load i32, i32* %alloc_ngf3, align 4
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ngf6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 26
  %12 = load i32, i32* %alloc_ngf6, align 4
  %add = add nsw i32 %12, 10
  store i32 %add, i32* %alloc_ngf6, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 23
  %14 = load i8**, i8*** %gf_tag7, align 8
  %15 = bitcast i8** %14 to i8*
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ngf8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 26
  %17 = load i32, i32* %alloc_ngf8, align 4
  %conv = sext i32 %17 to i64
  %mul = mul i64 8, %conv
  %call9 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 401, i8* %15, i64 %mul)
  %18 = bitcast i8* %call9 to i8**
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 23
  store i8** %18, i8*** %gf_tag10, align 8
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 24
  %21 = load i8**, i8*** %gf11, align 8
  %22 = bitcast i8** %21 to i8*
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alloc_ngf12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 26
  %24 = load i32, i32* %alloc_ngf12, align 4
  %conv13 = sext i32 %24 to i64
  %mul14 = mul i64 8, %conv13
  %call15 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 402, i8* %22, i64 %mul14)
  %25 = bitcast i8* %call15 to i8**
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 24
  store i8** %25, i8*** %gf16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.5, %if.end
  %27 = load i8*, i8** %tag.addr, align 8
  %call18 = call i8* @sre_strdup(i8* %27, i32 -1)
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 25
  %29 = load i32, i32* %ngf19, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf_tag20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 23
  %31 = load i8**, i8*** %gf_tag20, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 %idxprom
  store i8* %call18, i8** %arrayidx, align 8
  %32 = load i8*, i8** %value.addr, align 8
  %call21 = call i8* @sre_strdup(i8* %32, i32 -1)
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 25
  %34 = load i32, i32* %ngf22, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gf24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 24
  %36 = load i8**, i8*** %gf24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %36, i64 %idxprom23
  store i8* %call21, i8** %arrayidx25, align 8
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngf26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 25
  %38 = load i32, i32* %ngf26, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %ngf26, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSAAddGS(%struct.msa_struct* %msa, i8* %tag, i32 %sqidx, i8* %value) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %tag.addr = alloca i8*, align 8
  %sqidx.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %tagidx = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 %sqidx, i32* %sqidx.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 27
  %1 = load i8**, i8*** %gs_tag, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.GKI* @GKIInit()
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 29
  store %struct.GKI* %call, %struct.GKI** %gs_idx, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_idx1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 29
  %4 = load %struct.GKI*, %struct.GKI** %gs_idx1, align 8
  %5 = load i8*, i8** %tag.addr, align 8
  %call2 = call i32 @GKIStoreKey(%struct.GKI* %4, i8* %5)
  store i32 %call2, i32* %tagidx, align 4
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 447, i64 8)
  %6 = bitcast i8* %call3 to i8**
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 27
  store i8** %6, i8*** %gs_tag4, align 8
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 448, i64 8)
  %8 = bitcast i8* %call5 to i8***
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 28
  store i8*** %8, i8**** %gs, align 8
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 40
  %11 = load i32, i32* %nseqalloc, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 8, %conv
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 449, i64 %mul)
  %12 = bitcast i8* %call6 to i8**
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 28
  %14 = load i8***, i8**** %gs7, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %14, i64 0
  store i8** %12, i8*** %arrayidx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 40
  %17 = load i32, i32* %nseqalloc8, align 4
  %cmp9 = icmp slt i32 %15, %17
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 28
  %20 = load i8***, i8**** %gs11, align 8
  %arrayidx12 = getelementptr inbounds i8**, i8*** %20, i64 0
  %21 = load i8**, i8*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  store i8* null, i8** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.55

if.else:                                          ; preds = %entry
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_idx14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 29
  %24 = load %struct.GKI*, %struct.GKI** %gs_idx14, align 8
  %25 = load i8*, i8** %tag.addr, align 8
  %call15 = call i32 @GKIKeyIndex(%struct.GKI* %24, i8* %25)
  store i32 %call15, i32* %tagidx, align 4
  %26 = load i32, i32* %tagidx, align 4
  %cmp16 = icmp slt i32 %26, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_idx19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 29
  %28 = load %struct.GKI*, %struct.GKI** %gs_idx19, align 8
  %29 = load i8*, i8** %tag.addr, align 8
  %call20 = call i32 @GKIStoreKey(%struct.GKI* %28, i8* %29)
  store i32 %call20, i32* %tagidx, align 4
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 27
  %31 = load i8**, i8*** %gs_tag21, align 8
  %32 = bitcast i8** %31 to i8*
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 30
  %34 = load i32, i32* %ngs, align 4
  %add = add nsw i32 %34, 1
  %conv22 = sext i32 %add to i64
  %mul23 = mul i64 %conv22, 8
  %call24 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 463, i8* %32, i64 %mul23)
  %35 = bitcast i8* %call24 to i8**
  %36 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 27
  store i8** %35, i8*** %gs_tag25, align 8
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 28
  %38 = load i8***, i8**** %gs26, align 8
  %39 = bitcast i8*** %38 to i8*
  %40 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 30
  %41 = load i32, i32* %ngs27, align 4
  %add28 = add nsw i32 %41, 1
  %conv29 = sext i32 %add28 to i64
  %mul30 = mul i64 %conv29, 8
  %call31 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 464, i8* %39, i64 %mul30)
  %42 = bitcast i8* %call31 to i8***
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 28
  store i8*** %42, i8**** %gs32, align 8
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 40
  %45 = load i32, i32* %nseqalloc33, align 4
  %conv34 = sext i32 %45 to i64
  %mul35 = mul i64 8, %conv34
  %call36 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 465, i64 %mul35)
  %46 = bitcast i8* %call36 to i8**
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 30
  %48 = load i32, i32* %ngs37, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 28
  %50 = load i8***, i8**** %gs39, align 8
  %arrayidx40 = getelementptr inbounds i8**, i8*** %50, i64 %idxprom38
  store i8** %46, i8*** %arrayidx40, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.52, %if.then.18
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 40
  %53 = load i32, i32* %nseqalloc42, align 4
  %cmp43 = icmp slt i32 %51, %53
  br i1 %cmp43, label %for.body.45, label %for.end.54

for.body.45:                                      ; preds = %for.cond.41
  %54 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 30
  %56 = load i32, i32* %ngs47, align 4
  %idxprom48 = sext i32 %56 to i64
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 28
  %58 = load i8***, i8**** %gs49, align 8
  %arrayidx50 = getelementptr inbounds i8**, i8*** %58, i64 %idxprom48
  %59 = load i8**, i8*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %59, i64 %idxprom46
  store i8* null, i8** %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.45
  %60 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %60, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.41

for.end.54:                                       ; preds = %for.cond.41
  br label %if.end

if.end:                                           ; preds = %for.end.54, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %for.end
  %61 = load i32, i32* %tagidx, align 4
  %62 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 30
  %63 = load i32, i32* %ngs56, align 4
  %cmp57 = icmp eq i32 %61, %63
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.end.55
  %64 = load i8*, i8** %tag.addr, align 8
  %call60 = call i8* @sre_strdup(i8* %64, i32 -1)
  %65 = load i32, i32* %tagidx, align 4
  %idxprom61 = sext i32 %65 to i64
  %66 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs_tag62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 27
  %67 = load i8**, i8*** %gs_tag62, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %67, i64 %idxprom61
  store i8* %call60, i8** %arrayidx63, align 8
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngs64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 30
  %69 = load i32, i32* %ngs64, align 4
  %inc65 = add nsw i32 %69, 1
  store i32 %inc65, i32* %ngs64, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.end.55
  %70 = load i32, i32* %sqidx.addr, align 4
  %idxprom67 = sext i32 %70 to i64
  %71 = load i32, i32* %tagidx, align 4
  %idxprom68 = sext i32 %71 to i64
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 28
  %73 = load i8***, i8**** %gs69, align 8
  %arrayidx70 = getelementptr inbounds i8**, i8*** %73, i64 %idxprom68
  %74 = load i8**, i8*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %74, i64 %idxprom67
  %75 = load i8*, i8** %arrayidx71, align 8
  %cmp72 = icmp eq i8* %75, null
  br i1 %cmp72, label %if.then.74, label %if.else.81

if.then.74:                                       ; preds = %if.end.66
  %76 = load i8*, i8** %value.addr, align 8
  %call75 = call i8* @sre_strdup(i8* %76, i32 -1)
  %77 = load i32, i32* %sqidx.addr, align 4
  %idxprom76 = sext i32 %77 to i64
  %78 = load i32, i32* %tagidx, align 4
  %idxprom77 = sext i32 %78 to i64
  %79 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 28
  %80 = load i8***, i8**** %gs78, align 8
  %arrayidx79 = getelementptr inbounds i8**, i8*** %80, i64 %idxprom77
  %81 = load i8**, i8*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %81, i64 %idxprom76
  store i8* %call75, i8** %arrayidx80, align 8
  br label %if.end.102

if.else.81:                                       ; preds = %if.end.66
  %82 = load i32, i32* %sqidx.addr, align 4
  %idxprom82 = sext i32 %82 to i64
  %83 = load i32, i32* %tagidx, align 4
  %idxprom83 = sext i32 %83 to i64
  %84 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs84 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 28
  %85 = load i8***, i8**** %gs84, align 8
  %arrayidx85 = getelementptr inbounds i8**, i8*** %85, i64 %idxprom83
  %86 = load i8**, i8*** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %86, i64 %idxprom82
  %call87 = call i32 @sre_strcat(i8** %arrayidx86, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 1)
  store i32 %call87, i32* %len, align 4
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.81
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.else.81
  %87 = load i32, i32* %sqidx.addr, align 4
  %idxprom92 = sext i32 %87 to i64
  %88 = load i32, i32* %tagidx, align 4
  %idxprom93 = sext i32 %88 to i64
  %89 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gs94 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 28
  %90 = load i8***, i8**** %gs94, align 8
  %arrayidx95 = getelementptr inbounds i8**, i8*** %90, i64 %idxprom93
  %91 = load i8**, i8*** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %91, i64 %idxprom92
  %92 = load i32, i32* %len, align 4
  %93 = load i8*, i8** %value.addr, align 8
  %call97 = call i32 @sre_strcat(i8** %arrayidx96, i32 %92, i8* %93, i32 -1)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.91
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.91
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.74
  ret void
}

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #1

declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #1

declare i32 @sre_strcat(i8**, i32, i8*, i32) #1

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @MSAAppendGC(%struct.msa_struct* %msa, i8* %tag, i8* %value) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %tag.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %tagidx = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 31
  %1 = load i8**, i8*** %gc_tag, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 517, i64 8)
  %2 = bitcast i8* %call to i8**
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 31
  store i8** %2, i8*** %gc_tag1, align 8
  %call2 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 518, i64 8)
  %4 = bitcast i8* %call2 to i8**
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 32
  store i8** %4, i8*** %gc, align 8
  %call3 = call %struct.GKI* @GKIInit()
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 33
  store %struct.GKI* %call3, %struct.GKI** %gc_idx, align 8
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 33
  %8 = load %struct.GKI*, %struct.GKI** %gc_idx4, align 8
  %9 = load i8*, i8** %tag.addr, align 8
  %call5 = call i32 @GKIStoreKey(%struct.GKI* %8, i8* %9)
  store i32 %call5, i32* %tagidx, align 4
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 32
  %11 = load i8**, i8*** %gc6, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* null, i8** %arrayidx, align 8
  br label %if.end.25

if.else:                                          ; preds = %entry
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 33
  %13 = load %struct.GKI*, %struct.GKI** %gc_idx7, align 8
  %14 = load i8*, i8** %tag.addr, align 8
  %call8 = call i32 @GKIKeyIndex(%struct.GKI* %13, i8* %14)
  store i32 %call8, i32* %tagidx, align 4
  %15 = load i32, i32* %tagidx, align 4
  %cmp9 = icmp slt i32 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 33
  %17 = load %struct.GKI*, %struct.GKI** %gc_idx11, align 8
  %18 = load i8*, i8** %tag.addr, align 8
  %call12 = call i32 @GKIStoreKey(%struct.GKI* %17, i8* %18)
  store i32 %call12, i32* %tagidx, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 31
  %20 = load i8**, i8*** %gc_tag13, align 8
  %21 = bitcast i8** %20 to i8*
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 34
  %23 = load i32, i32* %ngc, align 4
  %add = add nsw i32 %23, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call14 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 533, i8* %21, i64 %mul)
  %24 = bitcast i8* %call14 to i8**
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 31
  store i8** %24, i8*** %gc_tag15, align 8
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 32
  %27 = load i8**, i8*** %gc16, align 8
  %28 = bitcast i8** %27 to i8*
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 34
  %30 = load i32, i32* %ngc17, align 4
  %add18 = add nsw i32 %30, 1
  %conv19 = sext i32 %add18 to i64
  %mul20 = mul i64 %conv19, 8
  %call21 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 534, i8* %28, i64 %mul20)
  %31 = bitcast i8* %call21 to i8**
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 32
  store i8** %31, i8*** %gc22, align 8
  %33 = load i32, i32* %tagidx, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 32
  %35 = load i8**, i8*** %gc23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %35, i64 %idxprom
  store i8* null, i8** %arrayidx24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %36 = load i32, i32* %tagidx, align 4
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 34
  %38 = load i32, i32* %ngc26, align 4
  %cmp27 = icmp eq i32 %36, %38
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.25
  %39 = load i8*, i8** %tag.addr, align 8
  %call30 = call i8* @sre_strdup(i8* %39, i32 -1)
  %40 = load i32, i32* %tagidx, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_tag32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 31
  %42 = load i8**, i8*** %gc_tag32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %42, i64 %idxprom31
  store i8* %call30, i8** %arrayidx33, align 8
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 34
  %44 = load i32, i32* %ngc34, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %ngc34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.end.25
  %45 = load i32, i32* %tagidx, align 4
  %idxprom36 = sext i32 %45 to i64
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 32
  %47 = load i8**, i8*** %gc37, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %47, i64 %idxprom36
  %48 = load i8*, i8** %value.addr, align 8
  %call39 = call i32 @sre_strcat(i8** %arrayidx38, i32 -1, i8* %48, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @MSAGetGC(%struct.msa_struct* %msa, i8* %tag) #0 {
entry:
  %retval = alloca i8*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %tag.addr = alloca i8*, align 8
  %tagidx = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 33
  %1 = load %struct.GKI*, %struct.GKI** %gc_idx, align 8
  %cmp = icmp eq %struct.GKI* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc_idx1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 33
  %3 = load %struct.GKI*, %struct.GKI** %gc_idx1, align 8
  %4 = load i8*, i8** %tag.addr, align 8
  %call = call i32 @GKIKeyIndex(%struct.GKI* %3, i8* %4)
  store i32 %call, i32* %tagidx, align 4
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* %tagidx, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 32
  %7 = load i8**, i8*** %gc, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define void @MSAAppendGR(%struct.msa_struct* %msa, i8* %tag, i32 %sqidx, i8* %value) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %tag.addr = alloca i8*, align 8
  %sqidx.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %tagidx = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 %sqidx, i32* %sqidx.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 35
  %1 = load i8**, i8*** %gr_tag, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 601, i64 8)
  %2 = bitcast i8* %call to i8**
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 35
  store i8** %2, i8*** %gr_tag1, align 8
  %call2 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 602, i64 8)
  %4 = bitcast i8* %call2 to i8***
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 36
  store i8*** %4, i8**** %gr, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 40
  %7 = load i32, i32* %nseqalloc, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 8, %conv
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 603, i64 %mul)
  %8 = bitcast i8* %call3 to i8**
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 36
  %10 = load i8***, i8**** %gr4, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %10, i64 0
  store i8** %8, i8*** %arrayidx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 40
  %13 = load i32, i32* %nseqalloc5, align 4
  %cmp6 = icmp slt i32 %11, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 36
  %16 = load i8***, i8**** %gr8, align 8
  %arrayidx9 = getelementptr inbounds i8**, i8*** %16, i64 0
  %17 = load i8**, i8*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  store i8* null, i8** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call %struct.GKI* @GKIInit()
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_idx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 37
  store %struct.GKI* %call11, %struct.GKI** %gr_idx, align 8
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_idx12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 37
  %21 = load %struct.GKI*, %struct.GKI** %gr_idx12, align 8
  %22 = load i8*, i8** %tag.addr, align 8
  %call13 = call i32 @GKIStoreKey(%struct.GKI* %21, i8* %22)
  store i32 %call13, i32* %tagidx, align 4
  br label %if.end.55

if.else:                                          ; preds = %entry
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_idx14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 37
  %24 = load %struct.GKI*, %struct.GKI** %gr_idx14, align 8
  %25 = load i8*, i8** %tag.addr, align 8
  %call15 = call i32 @GKIKeyIndex(%struct.GKI* %24, i8* %25)
  store i32 %call15, i32* %tagidx, align 4
  %26 = load i32, i32* %tagidx, align 4
  %cmp16 = icmp slt i32 %26, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_idx19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 37
  %28 = load %struct.GKI*, %struct.GKI** %gr_idx19, align 8
  %29 = load i8*, i8** %tag.addr, align 8
  %call20 = call i32 @GKIStoreKey(%struct.GKI* %28, i8* %29)
  store i32 %call20, i32* %tagidx, align 4
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 35
  %31 = load i8**, i8*** %gr_tag21, align 8
  %32 = bitcast i8** %31 to i8*
  %33 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 38
  %34 = load i32, i32* %ngr, align 4
  %add = add nsw i32 %34, 1
  %conv22 = sext i32 %add to i64
  %mul23 = mul i64 %conv22, 8
  %call24 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 620, i8* %32, i64 %mul23)
  %35 = bitcast i8* %call24 to i8**
  %36 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 35
  store i8** %35, i8*** %gr_tag25, align 8
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 36
  %38 = load i8***, i8**** %gr26, align 8
  %39 = bitcast i8*** %38 to i8*
  %40 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 38
  %41 = load i32, i32* %ngr27, align 4
  %add28 = add nsw i32 %41, 1
  %conv29 = sext i32 %add28 to i64
  %mul30 = mul i64 %conv29, 8
  %call31 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 621, i8* %39, i64 %mul30)
  %42 = bitcast i8* %call31 to i8***
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 36
  store i8*** %42, i8**** %gr32, align 8
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 40
  %45 = load i32, i32* %nseqalloc33, align 4
  %conv34 = sext i32 %45 to i64
  %mul35 = mul i64 8, %conv34
  %call36 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 622, i64 %mul35)
  %46 = bitcast i8* %call36 to i8**
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 38
  %48 = load i32, i32* %ngr37, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 36
  %50 = load i8***, i8**** %gr39, align 8
  %arrayidx40 = getelementptr inbounds i8**, i8*** %50, i64 %idxprom38
  store i8** %46, i8*** %arrayidx40, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.52, %if.then.18
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 40
  %53 = load i32, i32* %nseqalloc42, align 4
  %cmp43 = icmp slt i32 %51, %53
  br i1 %cmp43, label %for.body.45, label %for.end.54

for.body.45:                                      ; preds = %for.cond.41
  %54 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 38
  %56 = load i32, i32* %ngr47, align 4
  %idxprom48 = sext i32 %56 to i64
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 36
  %58 = load i8***, i8**** %gr49, align 8
  %arrayidx50 = getelementptr inbounds i8**, i8*** %58, i64 %idxprom48
  %59 = load i8**, i8*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %59, i64 %idxprom46
  store i8* null, i8** %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.45
  %60 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %60, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.41

for.end.54:                                       ; preds = %for.cond.41
  br label %if.end

if.end:                                           ; preds = %for.end.54, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %for.end
  %61 = load i32, i32* %tagidx, align 4
  %62 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 38
  %63 = load i32, i32* %ngr56, align 4
  %cmp57 = icmp eq i32 %61, %63
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.end.55
  %64 = load i8*, i8** %tag.addr, align 8
  %call60 = call i8* @sre_strdup(i8* %64, i32 -1)
  %65 = load i32, i32* %tagidx, align 4
  %idxprom61 = sext i32 %65 to i64
  %66 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr_tag62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 35
  %67 = load i8**, i8*** %gr_tag62, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %67, i64 %idxprom61
  store i8* %call60, i8** %arrayidx63, align 8
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 38
  %69 = load i32, i32* %ngr64, align 4
  %inc65 = add nsw i32 %69, 1
  store i32 %inc65, i32* %ngr64, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.end.55
  %70 = load i32, i32* %sqidx.addr, align 4
  %idxprom67 = sext i32 %70 to i64
  %71 = load i32, i32* %tagidx, align 4
  %idxprom68 = sext i32 %71 to i64
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 36
  %73 = load i8***, i8**** %gr69, align 8
  %arrayidx70 = getelementptr inbounds i8**, i8*** %73, i64 %idxprom68
  %74 = load i8**, i8*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %74, i64 %idxprom67
  %75 = load i8*, i8** %value.addr, align 8
  %call72 = call i32 @sre_strcat(i8** %arrayidx71, i32 -1, i8* %75, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSAVerifyParse(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %nseq, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 7
  %3 = load i8*, i8** %name, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 7
  %5 = load i8*, i8** %name2, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 42
  %7 = load i32*, i32** %sqlen, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 3
  store i32 %8, i32* %alen, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %idx, align 4
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq3 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %nseq3, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 0
  %15 = load i8**, i8*** %aseq, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx5, align 8
  %cmp6 = icmp eq i8* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %for.body
  %17 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 1
  %19 = load i8**, i8*** %sqname, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %19, i64 %idxprom8
  %20 = load i8*, i8** %arrayidx9, align 8
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 7
  %22 = load i8*, i8** %name10, align 8
  %cmp11 = icmp ne i8* %22, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.then.7
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 7
  %24 = load i8*, i8** %name13, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.then.7
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi i8* [ %24, %cond.true.12 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.14 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %20, i8* %cond16)
  br label %if.end.17

if.end.17:                                        ; preds = %cond.end.15, %for.body
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %flags = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 5
  %26 = load i32, i32* %flags, align 4
  %and = and i32 %26, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.17
  %27 = load i32, i32* %idx, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 2
  %29 = load float*, float** %wgt, align 8
  %arrayidx19 = getelementptr inbounds float, float* %29, i64 %idxprom18
  %30 = load float, float* %arrayidx19, align 4
  %conv = fpext float %30 to double
  %cmp20 = fcmp oeq double %conv, -1.000000e+00
  br i1 %cmp20, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %idx, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 1
  %33 = load i8**, i8*** %sqname24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %33, i64 %idxprom23
  %34 = load i8*, i8** %arrayidx25, align 8
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 7
  %36 = load i8*, i8** %name26, align 8
  %cmp27 = icmp ne i8* %36, null
  br i1 %cmp27, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %if.then.22
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 7
  %38 = load i8*, i8** %name30, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.then.22
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i8* [ %38, %cond.true.29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.31 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i32 0, i32 0), i8* %34, i8* %cond33)
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.32, %land.lhs.true, %if.end.17
  %39 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 42
  %41 = load i32*, i32** %sqlen36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %41, i64 %idxprom35
  %42 = load i32, i32* %arrayidx37, align 4
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 3
  %44 = load i32, i32* %alen38, align 4
  %cmp39 = icmp ne i32 %42, %44
  br i1 %cmp39, label %if.then.41, label %if.end.57

if.then.41:                                       ; preds = %if.end.34
  %45 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 1
  %47 = load i8**, i8*** %sqname43, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %47, i64 %idxprom42
  %48 = load i8*, i8** %arrayidx44, align 8
  %49 = load i32, i32* %idx, align 4
  %idxprom45 = sext i32 %49 to i64
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen46 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 42
  %51 = load i32*, i32** %sqlen46, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %51, i64 %idxprom45
  %52 = load i32, i32* %arrayidx47, align 4
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 3
  %54 = load i32, i32* %alen48, align 4
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 7
  %56 = load i8*, i8** %name49, align 8
  %cmp50 = icmp ne i8* %56, null
  br i1 %cmp50, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %if.then.41
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 7
  %58 = load i8*, i8** %name53, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %if.then.41
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.52
  %cond56 = phi i8* [ %58, %cond.true.52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.54 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0), i8* %48, i32 %52, i32 %54, i8* %cond56)
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end.55, %if.end.34
  %59 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 16
  %60 = load i8**, i8*** %ss, align 8
  %cmp58 = icmp ne i8** %60, null
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.88

land.lhs.true.60:                                 ; preds = %if.end.57
  %61 = load i32, i32* %idx, align 4
  %idxprom61 = sext i32 %61 to i64
  %62 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 16
  %63 = load i8**, i8*** %ss62, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %63, i64 %idxprom61
  %64 = load i8*, i8** %arrayidx63, align 8
  %cmp64 = icmp ne i8* %64, null
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.88

land.lhs.true.66:                                 ; preds = %land.lhs.true.60
  %65 = load i32, i32* %idx, align 4
  %idxprom67 = sext i32 %65 to i64
  %66 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 43
  %67 = load i32*, i32** %sslen, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %67, i64 %idxprom67
  %68 = load i32, i32* %arrayidx68, align 4
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 3
  %70 = load i32, i32* %alen69, align 4
  %cmp70 = icmp ne i32 %68, %70
  br i1 %cmp70, label %if.then.72, label %if.end.88

if.then.72:                                       ; preds = %land.lhs.true.66
  %71 = load i32, i32* %idx, align 4
  %idxprom73 = sext i32 %71 to i64
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 1
  %73 = load i8**, i8*** %sqname74, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %73, i64 %idxprom73
  %74 = load i8*, i8** %arrayidx75, align 8
  %75 = load i32, i32* %idx, align 4
  %idxprom76 = sext i32 %75 to i64
  %76 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen77 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 43
  %77 = load i32*, i32** %sslen77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %77, i64 %idxprom76
  %78 = load i32, i32* %arrayidx78, align 4
  %79 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 3
  %80 = load i32, i32* %alen79, align 4
  %81 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name80 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 7
  %82 = load i8*, i8** %name80, align 8
  %cmp81 = icmp ne i8* %82, null
  br i1 %cmp81, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %if.then.72
  %83 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name84 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %83, i32 0, i32 7
  %84 = load i8*, i8** %name84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %if.then.72
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.83
  %cond87 = phi i8* [ %84, %cond.true.83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.85 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i32 0, i32 0), i8* %74, i32 %78, i32 %80, i8* %cond87)
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %land.lhs.true.66, %land.lhs.true.60, %if.end.57
  %85 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 17
  %86 = load i8**, i8*** %sa, align 8
  %cmp89 = icmp ne i8** %86, null
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.119

land.lhs.true.91:                                 ; preds = %if.end.88
  %87 = load i32, i32* %idx, align 4
  %idxprom92 = sext i32 %87 to i64
  %88 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa93 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %88, i32 0, i32 17
  %89 = load i8**, i8*** %sa93, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %89, i64 %idxprom92
  %90 = load i8*, i8** %arrayidx94, align 8
  %cmp95 = icmp ne i8* %90, null
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.119

land.lhs.true.97:                                 ; preds = %land.lhs.true.91
  %91 = load i32, i32* %idx, align 4
  %idxprom98 = sext i32 %91 to i64
  %92 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 44
  %93 = load i32*, i32** %salen, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %93, i64 %idxprom98
  %94 = load i32, i32* %arrayidx99, align 4
  %95 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen100 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 3
  %96 = load i32, i32* %alen100, align 4
  %cmp101 = icmp ne i32 %94, %96
  br i1 %cmp101, label %if.then.103, label %if.end.119

if.then.103:                                      ; preds = %land.lhs.true.97
  %97 = load i32, i32* %idx, align 4
  %idxprom104 = sext i32 %97 to i64
  %98 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname105 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %98, i32 0, i32 1
  %99 = load i8**, i8*** %sqname105, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %99, i64 %idxprom104
  %100 = load i8*, i8** %arrayidx106, align 8
  %101 = load i32, i32* %idx, align 4
  %idxprom107 = sext i32 %101 to i64
  %102 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 44
  %103 = load i32*, i32** %salen108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %103, i64 %idxprom107
  %104 = load i32, i32* %arrayidx109, align 4
  %105 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen110 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 3
  %106 = load i32, i32* %alen110, align 4
  %107 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name111 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 7
  %108 = load i8*, i8** %name111, align 8
  %cmp112 = icmp ne i8* %108, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.116

cond.true.114:                                    ; preds = %if.then.103
  %109 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name115 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %109, i32 0, i32 7
  %110 = load i8*, i8** %name115, align 8
  br label %cond.end.117

cond.false.116:                                   ; preds = %if.then.103
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.114
  %cond118 = phi i8* [ %110, %cond.true.114 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.116 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i32 0, i32 0), i8* %100, i32 %104, i32 %106, i8* %cond118)
  br label %if.end.119

if.end.119:                                       ; preds = %cond.end.117, %land.lhs.true.97, %land.lhs.true.91, %if.end.88
  br label %for.inc

for.inc:                                          ; preds = %if.end.119
  %111 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %112 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 11
  %113 = load i8*, i8** %ss_cons, align 8
  %cmp120 = icmp ne i8* %113, null
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.140

land.lhs.true.122:                                ; preds = %for.end
  %114 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons123 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 11
  %115 = load i8*, i8** %ss_cons123, align 8
  %call = call i64 @strlen(i8* %115) #5
  %116 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen124 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %116, i32 0, i32 3
  %117 = load i32, i32* %alen124, align 4
  %conv125 = sext i32 %117 to i64
  %cmp126 = icmp ne i64 %call, %conv125
  br i1 %cmp126, label %if.then.128, label %if.end.140

if.then.128:                                      ; preds = %land.lhs.true.122
  %118 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons129 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %118, i32 0, i32 11
  %119 = load i8*, i8** %ss_cons129, align 8
  %call130 = call i64 @strlen(i8* %119) #5
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen131 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 3
  %121 = load i32, i32* %alen131, align 4
  %122 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name132 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %122, i32 0, i32 7
  %123 = load i8*, i8** %name132, align 8
  %cmp133 = icmp ne i8* %123, null
  br i1 %cmp133, label %cond.true.135, label %cond.false.137

cond.true.135:                                    ; preds = %if.then.128
  %124 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name136 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %124, i32 0, i32 7
  %125 = load i8*, i8** %name136, align 8
  br label %cond.end.138

cond.false.137:                                   ; preds = %if.then.128
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.135
  %cond139 = phi i8* [ %125, %cond.true.135 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.137 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i32 0, i32 0), i64 %call130, i32 %121, i8* %cond139)
  br label %if.end.140

if.end.140:                                       ; preds = %cond.end.138, %land.lhs.true.122, %for.end
  %126 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %126, i32 0, i32 12
  %127 = load i8*, i8** %sa_cons, align 8
  %cmp141 = icmp ne i8* %127, null
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.162

land.lhs.true.143:                                ; preds = %if.end.140
  %128 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons144 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %128, i32 0, i32 12
  %129 = load i8*, i8** %sa_cons144, align 8
  %call145 = call i64 @strlen(i8* %129) #5
  %130 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen146 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 3
  %131 = load i32, i32* %alen146, align 4
  %conv147 = sext i32 %131 to i64
  %cmp148 = icmp ne i64 %call145, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.162

if.then.150:                                      ; preds = %land.lhs.true.143
  %132 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons151 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 12
  %133 = load i8*, i8** %sa_cons151, align 8
  %call152 = call i64 @strlen(i8* %133) #5
  %134 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %134, i32 0, i32 3
  %135 = load i32, i32* %alen153, align 4
  %136 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name154 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 7
  %137 = load i8*, i8** %name154, align 8
  %cmp155 = icmp ne i8* %137, null
  br i1 %cmp155, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %if.then.150
  %138 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name158 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %138, i32 0, i32 7
  %139 = load i8*, i8** %name158, align 8
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.then.150
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.157
  %cond161 = phi i8* [ %139, %cond.true.157 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.159 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i32 0, i32 0), i64 %call152, i32 %135, i8* %cond161)
  br label %if.end.162

if.end.162:                                       ; preds = %cond.end.160, %land.lhs.true.143, %if.end.140
  %140 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %140, i32 0, i32 13
  %141 = load i8*, i8** %rf, align 8
  %cmp163 = icmp ne i8* %141, null
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.184

land.lhs.true.165:                                ; preds = %if.end.162
  %142 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf166 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %142, i32 0, i32 13
  %143 = load i8*, i8** %rf166, align 8
  %call167 = call i64 @strlen(i8* %143) #5
  %144 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen168 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %144, i32 0, i32 3
  %145 = load i32, i32* %alen168, align 4
  %conv169 = sext i32 %145 to i64
  %cmp170 = icmp ne i64 %call167, %conv169
  br i1 %cmp170, label %if.then.172, label %if.end.184

if.then.172:                                      ; preds = %land.lhs.true.165
  %146 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf173 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %146, i32 0, i32 13
  %147 = load i8*, i8** %rf173, align 8
  %call174 = call i64 @strlen(i8* %147) #5
  %148 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen175 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %148, i32 0, i32 3
  %149 = load i32, i32* %alen175, align 4
  %150 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name176 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %150, i32 0, i32 7
  %151 = load i8*, i8** %name176, align 8
  %cmp177 = icmp ne i8* %151, null
  br i1 %cmp177, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %if.then.172
  %152 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name180 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 7
  %153 = load i8*, i8** %name180, align 8
  br label %cond.end.182

cond.false.181:                                   ; preds = %if.then.172
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.179
  %cond183 = phi i8* [ %153, %cond.true.179 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false.181 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i32 0, i32 0), i64 %call174, i32 %149, i8* %cond183)
  br label %if.end.184

if.end.184:                                       ; preds = %cond.end.182, %land.lhs.true.165, %if.end.162
  %154 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %flags185 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %154, i32 0, i32 5
  %155 = load i32, i32* %flags185, align 4
  %and186 = and i32 %155, 1
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.end.191, label %if.then.188

if.then.188:                                      ; preds = %if.end.184
  %156 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt189 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %156, i32 0, i32 2
  %157 = load float*, float** %wgt189, align 8
  %158 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq190 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 4
  %159 = load i32, i32* %nseq190, align 4
  call void @FSet(float* %157, i32 %159, float 1.000000e+00)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %if.end.184
  %160 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen192 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 42
  %161 = load i32*, i32** %sqlen192, align 8
  %cmp193 = icmp ne i32* %161, null
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %if.end.191
  %162 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen196 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %162, i32 0, i32 42
  %163 = load i32*, i32** %sqlen196, align 8
  %164 = bitcast i32* %163 to i8*
  call void @free(i8* %164) #4
  %165 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqlen197 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %165, i32 0, i32 42
  store i32* null, i32** %sqlen197, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %if.end.191
  %166 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen199 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %166, i32 0, i32 43
  %167 = load i32*, i32** %sslen199, align 8
  %cmp200 = icmp ne i32* %167, null
  br i1 %cmp200, label %if.then.202, label %if.end.205

if.then.202:                                      ; preds = %if.end.198
  %168 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen203 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %168, i32 0, i32 43
  %169 = load i32*, i32** %sslen203, align 8
  %170 = bitcast i32* %169 to i8*
  call void @free(i8* %170) #4
  %171 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sslen204 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %171, i32 0, i32 43
  store i32* null, i32** %sslen204, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.202, %if.end.198
  %172 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen206 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %172, i32 0, i32 44
  %173 = load i32*, i32** %salen206, align 8
  %cmp207 = icmp ne i32* %173, null
  br i1 %cmp207, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %if.end.205
  %174 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen210 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %174, i32 0, i32 44
  %175 = load i32*, i32** %salen210, align 8
  %176 = bitcast i32* %175 to i8*
  call void @free(i8* %176) #4
  %177 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %salen211 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %177, i32 0, i32 44
  store i32* null, i32** %salen211, align 8
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %if.end.205
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define %struct.msafile_struct* @MSAFileOpen(i8* %filename, i32 %format, i8* %env) #0 {
entry:
  %retval = alloca %struct.msafile_struct*, align 8
  %filename.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %env.addr = alloca i8*, align 8
  %afp = alloca %struct.msafile_struct*, align 8
  %ssifile = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %full = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i8* %env, i8** %env.addr, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 760, i64 64)
  %0 = bitcast i8* %call to %struct.msafile_struct*
  store %struct.msafile_struct* %0, %struct.msafile_struct** %afp, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %3 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %3, i32 0, i32 0
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %do_stdin = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 7
  store i32 1, i32* %do_stdin, align 4
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %do_gzip = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %5, i32 0, i32 6
  store i32 0, i32* %do_gzip, align 4
  %call2 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 -1)
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %6, i32 0, i32 1
  store i8* %call2, i8** %fname, align 8
  %7 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %ssi = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %7, i32 0, i32 5
  store %struct.ssifile_s* null, %struct.ssifile_s** %ssi, align 8
  br label %if.end.32

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %filename.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %9 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %f4 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %9, i32 0, i32 0
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f4, align 8
  %cmp5 = icmp ne %struct._IO_FILE* %call3, null
  br i1 %cmp5, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.else
  %10 = load i8*, i8** %filename.addr, align 8
  %call7 = call i64 @strlen(i8* %10) #5
  %add = add i64 %call7, 5
  %mul = mul i64 1, %add
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 806, i64 %mul)
  store i8* %call8, i8** %ssifile, align 8
  %11 = load i8*, i8** %ssifile, align 8
  %12 = load i8*, i8** %filename.addr, align 8
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %12) #4
  br label %if.end.24

if.else.10:                                       ; preds = %if.else
  %13 = load i8*, i8** %filename.addr, align 8
  %14 = load i8*, i8** %env.addr, align 8
  %call11 = call %struct._IO_FILE* @EnvFileOpen(i8* %13, i8* %14, i8** %dir)
  %15 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %f12 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %15, i32 0, i32 0
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %f12, align 8
  %cmp13 = icmp ne %struct._IO_FILE* %call11, null
  br i1 %cmp13, label %if.then.14, label %if.else.23

if.then.14:                                       ; preds = %if.else.10
  %16 = load i8*, i8** %dir, align 8
  %17 = load i8*, i8** %filename.addr, align 8
  %call15 = call i8* @FileConcat(i8* %16, i8* %17)
  store i8* %call15, i8** %full, align 8
  %18 = load i8*, i8** %full, align 8
  %call16 = call i64 @strlen(i8* %18) #5
  %19 = load i8*, i8** %filename.addr, align 8
  %call17 = call i64 @strlen(i8* %19) #5
  %add18 = add i64 %call16, %call17
  %add19 = add i64 %add18, 5
  %mul20 = mul i64 1, %add19
  %call21 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 813, i64 %mul20)
  store i8* %call21, i8** %ssifile, align 8
  %20 = load i8*, i8** %ssifile, align 8
  %21 = load i8*, i8** %full, align 8
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %21) #4
  %22 = load i8*, i8** %dir, align 8
  call void @free(i8* %22) #4
  br label %if.end

if.else.23:                                       ; preds = %if.else.10
  store %struct.msafile_struct* null, %struct.msafile_struct** %retval
  br label %return

if.end:                                           ; preds = %if.then.14
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.6
  %23 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %do_stdin25 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %23, i32 0, i32 7
  store i32 0, i32* %do_stdin25, align 4
  %24 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %do_gzip26 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %24, i32 0, i32 6
  store i32 0, i32* %do_gzip26, align 4
  %25 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @sre_strdup(i8* %25, i32 -1)
  %26 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %fname28 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %26, i32 0, i32 1
  store i8* %call27, i8** %fname28, align 8
  %27 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %ssi29 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %27, i32 0, i32 5
  store %struct.ssifile_s* null, %struct.ssifile_s** %ssi29, align 8
  %28 = load i8*, i8** %ssifile, align 8
  %29 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %ssi30 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %29, i32 0, i32 5
  %call31 = call i32 @SSIOpen(i8* %28, %struct.ssifile_s** %ssi30)
  %30 = load i8*, i8** %ssifile, align 8
  call void @free(i8* %30) #4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.24, %if.then
  %31 = load i32, i32* %format.addr, align 4
  %cmp33 = icmp eq i32 %31, 0
  br i1 %cmp33, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.end.32
  %32 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %do_stdin35 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %32, i32 0, i32 7
  %33 = load i32, i32* %do_stdin35, align 4
  %cmp36 = icmp eq i32 %33, 1
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %34 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %do_gzip37 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %34, i32 0, i32 6
  %35 = load i32, i32* %do_gzip37, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.then.34
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  %36 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %call40 = call i32 @MSAFileFormat(%struct.msafile_struct* %36)
  store i32 %call40, i32* %format.addr, align 4
  %37 = load i32, i32* %format.addr, align 4
  %cmp41 = icmp eq i32 %37, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %38 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %fname43 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %38, i32 0, i32 1
  %39 = load i8*, i8** %fname43, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0), i8* %39)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.32
  %40 = load i32, i32* %format.addr, align 4
  %41 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %format46 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %41, i32 0, i32 8
  store i32 %40, i32* %format46, align 4
  %42 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %42, i32 0, i32 2
  store i32 0, i32* %linenumber, align 4
  %43 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %buf = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %43, i32 0, i32 3
  store i8* null, i8** %buf, align 8
  %44 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %buflen = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %44, i32 0, i32 4
  store i32 0, i32* %buflen, align 4
  %45 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  store %struct.msafile_struct* %45, %struct.msafile_struct** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.else.23
  %46 = load %struct.msafile_struct*, %struct.msafile_struct** %retval
  ret %struct.msafile_struct* %46
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

declare i8* @FileConcat(i8*, i8*) #1

declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #1

; Function Attrs: nounwind uwtable
define i32 @MSAFileFormat(%struct.msafile_struct* %afp) #0 {
entry:
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %fmt = alloca i32, align 4
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @SeqfileFormat(%struct._IO_FILE* %1)
  store i32 %call, i32* %fmt, align 4
  %2 = load i32, i32* %fmt, align 4
  %cmp = icmp eq i32 %2, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 105, i32* %fmt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fmt, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %fmt, align 4
  %cmp2 = icmp sgt i32 %4, 100
  br i1 %cmp2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %5, i32 0, i32 1
  %6 = load i8*, i8** %fname, align 8
  %7 = load i32, i32* %fmt, align 4
  %call4 = call i8* @SeqfileFormat2String(i32 %7)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.21, i32 0, i32 0), i8* %6, i8* %call4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %8 = load i32, i32* %fmt, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @MSAFileRewind(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca i32, align 4
  %afp.addr = alloca %struct.msafile_struct*, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %do_gzip = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 6
  %1 = load i32, i32* %do_gzip, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %do_stdin = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %2, i32 0, i32 7
  %3 = load i32, i32* %do_stdin, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @rewind(%struct._IO_FILE* %5)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @MSAFilePositionByKey(%struct.msafile_struct* %afp, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %key.addr = alloca i8*, align 8
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %ssi = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 5
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi, align 8
  %cmp = icmp eq %struct.ssifile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %ssi1 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %2, i32 0, i32 5
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi1, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %3, i8* %4, i32* %fh, %struct.ssioffset_s* %offset)
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %5, i32 0, i32 0
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
define i32 @MSAFilePositionByIndex(%struct.msafile_struct* %afp, i32 %idx) #0 {
entry:
  %retval = alloca i32, align 4
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %idx.addr = alloca i32, align 4
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %ssi = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 5
  %1 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi, align 8
  %cmp = icmp eq %struct.ssifile_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %ssi1 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %2, i32 0, i32 5
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi1, align 8
  %4 = load i32, i32* %idx.addr, align 4
  %call = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %3, i32 %4, i32* %fh, %struct.ssioffset_s* %offset)
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %5, i32 0, i32 0
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
define %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %afp) #0 {
entry:
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  store %struct.msa_struct* null, %struct.msa_struct** %msa, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %format = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %format, align 4
  switch i32 %1, label %sw.default [
    i32 101, label %sw.bb
    i32 103, label %sw.bb.1
    i32 105, label %sw.bb.3
    i32 104, label %sw.bb.5
    i32 102, label %sw.bb.7
    i32 106, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call = call %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %2)
  store %struct.msa_struct* %call, %struct.msa_struct** %msa, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call2 = call %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %3)
  store %struct.msa_struct* %call2, %struct.msa_struct** %msa, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call4 = call %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %4)
  store %struct.msa_struct* %call4, %struct.msa_struct** %msa, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call6 = call %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %5)
  store %struct.msa_struct* %call6, %struct.msa_struct** %msa, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call8 = call %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* %6)
  store %struct.msa_struct* %call8, %struct.msa_struct** %msa, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %7 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %call10 = call %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %7)
  store %struct.msa_struct* %call10, %struct.msa_struct** %msa, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  ret %struct.msa_struct* %8
}

declare %struct.msa_struct* @ReadStockholm(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadMSF(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadA2M(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadClustal(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadSELEX(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadPhylip(%struct.msafile_struct*) #1

; Function Attrs: nounwind uwtable
define void @MSAFileClose(%struct.msafile_struct* %afp) #0 {
entry:
  %afp.addr = alloca %struct.msafile_struct*, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %do_stdin = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 7
  %1 = load i32, i32* %do_stdin, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %buf = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 3
  %5 = load i8*, i8** %buf, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %buf2 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %6, i32 0, i32 3
  %7 = load i8*, i8** %buf2, align 8
  call void @free(i8* %7) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %ssi = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %8, i32 0, i32 5
  %9 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi, align 8
  %cmp4 = icmp ne %struct.ssifile_s* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %10 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %ssi6 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %10, i32 0, i32 5
  %11 = load %struct.ssifile_s*, %struct.ssifile_s** %ssi6, align 8
  call void @SSIClose(%struct.ssifile_s* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %12 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %12, i32 0, i32 1
  %13 = load i8*, i8** %fname, align 8
  %cmp8 = icmp ne i8* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %14 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %fname10 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %14, i32 0, i32 1
  %15 = load i8*, i8** %fname10, align 8
  call void @free(i8* %15) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %16 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %17 = bitcast %struct.msafile_struct* %16 to i8*
  call void @free(i8* %17) #4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @SSIClose(%struct.ssifile_s*) #1

; Function Attrs: nounwind uwtable
define i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #0 {
entry:
  %retval = alloca i8*, align 8
  %afp.addr = alloca %struct.msafile_struct*, align 8
  %s = alloca i8*, align 8
  store %struct.msafile_struct* %afp, %struct.msafile_struct** %afp.addr, align 8
  %0 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %buf = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %0, i32 0, i32 3
  %1 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %buflen = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %1, i32 0, i32 4
  %2 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %f = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %3)
  store i8* %call, i8** %s, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %linenumber = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 2
  %5 = load i32, i32* %linenumber, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %linenumber, align 4
  %6 = load %struct.msafile_struct*, %struct.msafile_struct** %afp.addr, align 8
  %buf1 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %6, i32 0, i32 3
  %7 = load i8*, i8** %buf1, align 8
  store i8* %7, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @MSAFileWrite(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %outfmt, i32 %do_oneline) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %outfmt.addr = alloca i32, align 4
  %do_oneline.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %outfmt, i32* %outfmt.addr, align 4
  store i32 %do_oneline, i32* %do_oneline.addr, align 4
  %0 = load i32, i32* %outfmt.addr, align 4
  switch i32 %0, label %sw.default [
    i32 105, label %sw.bb
    i32 104, label %sw.bb.1
    i32 103, label %sw.bb.2
    i32 106, label %sw.bb.3
    i32 102, label %sw.bb.4
    i32 101, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WriteA2M(%struct._IO_FILE* %1, %struct.msa_struct* %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WriteClustal(%struct._IO_FILE* %3, %struct.msa_struct* %4)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WriteMSF(%struct._IO_FILE* %5, %struct.msa_struct* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WritePhylip(%struct._IO_FILE* %7, %struct.msa_struct* %8)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WriteSELEX(%struct._IO_FILE* %9, %struct.msa_struct* %10)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load i32, i32* %do_oneline.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WriteStockholmOneBlock(%struct._IO_FILE* %12, %struct.msa_struct* %13)
  br label %if.end

if.else:                                          ; preds = %sw.bb.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @WriteStockholm(%struct._IO_FILE* %14, %struct.msa_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load i32, i32* %outfmt.addr, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i32 %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare void @WriteA2M(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteClustal(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteMSF(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WritePhylip(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteSELEX(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteStockholmOneBlock(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteStockholm(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @MSAGetSeqidx(%struct.msa_struct* %msa, i8* %name, i32 %guess) #0 {
entry:
  %retval = alloca i32, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %name.addr = alloca i8*, align 8
  %guess.addr = alloca i32, align 4
  %seqidx = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %guess, i32* %guess.addr, align 4
  %0 = load i32, i32* %guess.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %guess.addr, align 4
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %nseq, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i32, i32* %guess.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 1
  %7 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %4, i8* %8) #5
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %9 = load i32, i32* %guess.addr, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 39
  %11 = load %struct.GKI*, %struct.GKI** %index, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @GKIKeyIndex(%struct.GKI* %11, i8* %12)
  store i32 %call4, i32* %seqidx, align 4
  %cmp5 = icmp sge i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %13 = load i32, i32* %seqidx, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %index8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 39
  %15 = load %struct.GKI*, %struct.GKI** %index8, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 @GKIStoreKey(%struct.GKI* %15, i8* %16)
  store i32 %call9, i32* %seqidx, align 4
  %17 = load i32, i32* %seqidx, align 4
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 40
  %19 = load i32, i32* %nseqalloc, align 4
  %cmp10 = icmp sge i32 %17, %19
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @MSAExpand(%struct.msa_struct* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %21 = load i8*, i8** %name.addr, align 8
  %call13 = call i8* @sre_strdup(i8* %21, i32 -1)
  %22 = load i32, i32* %seqidx, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 1
  %24 = load i8**, i8*** %sqname15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %24, i64 %idxprom14
  store i8* %call13, i8** %arrayidx16, align 8
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 4
  %26 = load i32, i32* %nseq17, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %nseq17, align 4
  %27 = load i32, i32* %seqidx, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.6, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @MSAFromAINFO(i8** %aseq, %struct.aliinfo_s* %ainfo) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %msa = alloca %struct.msa_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  %0 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %0, i32 0, i32 2
  %1 = load i32, i32* %nseq, align 4
  %2 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %alen = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %2, i32 0, i32 1
  %3 = load i32, i32* %alen, align 4
  %call = call %struct.msa_struct* @MSAAlloc(i32 %1, i32 %3)
  store %struct.msa_struct* %call, %struct.msa_struct** %msa, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.137, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %5, i32 0, i32 2
  %6 = load i32, i32* %nseq1, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.139

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq2 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 0
  %9 = load i8**, i8*** %aseq2, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %idxprom3
  %13 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i8* @strcpy(i8* %10, i8* %13) #4
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %wgt = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %15, i32 0, i32 3
  %16 = load float*, float** %wgt, align 8
  %arrayidx7 = getelementptr inbounds float, float* %16, i64 %idxprom6
  %17 = load float, float* %arrayidx7, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %wgt9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 2
  %20 = load float*, float** %wgt9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %20, i64 %idxprom8
  store float %17, float* %arrayidx10, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %22, i32 0, i32 6
  %23 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx12 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %23, i64 %idxprom11
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx12, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %call13 = call i8* @sre_strdup(i8* %arraydecay, i32 -1)
  %24 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 1
  %26 = load i8**, i8*** %sqname, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %26, i64 %idxprom14
  store i8* %call13, i8** %arrayidx15, align 8
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 3
  %28 = load i32, i32* %alen16, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 42
  %31 = load i32*, i32** %sqlen, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %31, i64 %idxprom17
  store i32 %28, i32* %arrayidx18, align 4
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 39
  %33 = load %struct.GKI*, %struct.GKI** %index, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 1
  %36 = load i8**, i8*** %sqname20, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %36, i64 %idxprom19
  %37 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @GKIStoreKey(%struct.GKI* %33, i8* %37)
  %38 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %38 to i64
  %39 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo24 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %39, i32 0, i32 6
  %40 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo24, align 8
  %arrayidx25 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %40, i64 %idxprom23
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx25, i32 0, i32 0
  %41 = load i32, i32* %flags, align 4
  %and = and i32 %41, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %44 to i64
  %45 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo27 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %45, i32 0, i32 6
  %46 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo27, align 8
  %arrayidx28 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %46, i64 %idxprom26
  %acc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx28, i32 0, i32 3
  %arraydecay29 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i32 0, i32 0
  call void @MSASetSeqAccession(%struct.msa_struct* %42, i32 %43, i8* %arraydecay29)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %47 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %47 to i64
  %48 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo31 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %48, i32 0, i32 6
  %49 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo31, align 8
  %arrayidx32 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %49, i64 %idxprom30
  %flags33 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx32, i32 0, i32 0
  %50 = load i32, i32* %flags33, align 4
  %and34 = and i32 %50, 8
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end
  %51 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %53 to i64
  %54 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo38 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %54, i32 0, i32 6
  %55 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo38, align 8
  %arrayidx39 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %55, i64 %idxprom37
  %desc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx39, i32 0, i32 4
  %arraydecay40 = getelementptr inbounds [128 x i8], [128 x i8]* %desc, i32 0, i32 0
  call void @MSASetSeqDescription(%struct.msa_struct* %51, i32 %52, i8* %arraydecay40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end
  %56 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo43 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %57, i32 0, i32 6
  %58 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo43, align 8
  %arrayidx44 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %58, i64 %idxprom42
  %flags45 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx44, i32 0, i32 0
  %59 = load i32, i32* %flags45, align 4
  %and46 = and i32 %59, 512
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.85

if.then.48:                                       ; preds = %if.end.41
  %60 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 16
  %61 = load i8**, i8*** %ss, align 8
  %cmp49 = icmp eq i8** %61, null
  br i1 %cmp49, label %if.then.50, label %if.end.68

if.then.50:                                       ; preds = %if.then.48
  %62 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 40
  %63 = load i32, i32* %nseqalloc, align 4
  %conv = sext i32 %63 to i64
  %mul = mul i64 8, %conv
  %call51 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1055, i64 %mul)
  %64 = bitcast i8* %call51 to i8**
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss52 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 16
  store i8** %64, i8*** %ss52, align 8
  %66 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 40
  %67 = load i32, i32* %nseqalloc53, align 4
  %conv54 = sext i32 %67 to i64
  %mul55 = mul i64 4, %conv54
  %call56 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1056, i64 %mul55)
  %68 = bitcast i8* %call56 to i32*
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sslen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 43
  store i32* %68, i32** %sslen, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc, %if.then.50
  %70 = load i32, i32* %j, align 4
  %71 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %71, i32 0, i32 40
  %72 = load i32, i32* %nseqalloc58, align 4
  %cmp59 = icmp slt i32 %70, %72
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.57
  %73 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %73 to i64
  %74 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss63 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 16
  %75 = load i8**, i8*** %ss63, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %75, i64 %idxprom62
  store i8* null, i8** %arrayidx64, align 8
  %76 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %76 to i64
  %77 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sslen66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 43
  %78 = load i32*, i32** %sslen66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %78, i64 %idxprom65
  store i32 0, i32* %arrayidx67, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.61
  %79 = load i32, i32* %j, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.57

for.end:                                          ; preds = %for.cond.57
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.then.48
  %80 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %80 to i64
  %81 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 0
  %82 = load i8**, i8*** %aseq70, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %82, i64 %idxprom69
  %83 = load i8*, i8** %arrayidx71, align 8
  %84 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen72 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 3
  %85 = load i32, i32* %alen72, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %86 to i64
  %87 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo74 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %87, i32 0, i32 6
  %88 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo74, align 8
  %arrayidx75 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %88, i64 %idxprom73
  %ss76 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx75, i32 0, i32 10
  %89 = load i8*, i8** %ss76, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %90 to i64
  %91 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 16
  %92 = load i8**, i8*** %ss78, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %92, i64 %idxprom77
  %call80 = call i32 @MakeAlignedString(i8* %83, i32 %85, i8* %89, i8** %arrayidx79)
  %93 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %93, i32 0, i32 3
  %94 = load i32, i32* %alen81, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %95 to i64
  %96 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sslen83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %96, i32 0, i32 43
  %97 = load i32*, i32** %sslen83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %97, i64 %idxprom82
  store i32 %94, i32* %arrayidx84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.68, %if.end.41
  %98 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %98 to i64
  %99 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo87 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %99, i32 0, i32 6
  %100 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo87, align 8
  %arrayidx88 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %100, i64 %idxprom86
  %flags89 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx88, i32 0, i32 0
  %101 = load i32, i32* %flags89, align 4
  %and90 = and i32 %101, 1024
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.136

if.then.92:                                       ; preds = %if.end.85
  %102 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 17
  %103 = load i8**, i8*** %sa, align 8
  %cmp93 = icmp eq i8** %103, null
  br i1 %cmp93, label %if.then.95, label %if.end.119

if.then.95:                                       ; preds = %if.then.92
  %104 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %104, i32 0, i32 40
  %105 = load i32, i32* %nseqalloc96, align 4
  %conv97 = sext i32 %105 to i64
  %mul98 = mul i64 8, %conv97
  %call99 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1068, i64 %mul98)
  %106 = bitcast i8* %call99 to i8**
  %107 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa100 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 17
  store i8** %106, i8*** %sa100, align 8
  %108 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %108, i32 0, i32 40
  %109 = load i32, i32* %nseqalloc101, align 4
  %conv102 = sext i32 %109 to i64
  %mul103 = mul i64 4, %conv102
  %call104 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1069, i64 %mul103)
  %110 = bitcast i8* %call104 to i32*
  %111 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %salen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %111, i32 0, i32 44
  store i32* %110, i32** %salen, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.116, %if.then.95
  %112 = load i32, i32* %j, align 4
  %113 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseqalloc106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 40
  %114 = load i32, i32* %nseqalloc106, align 4
  %cmp107 = icmp slt i32 %112, %114
  br i1 %cmp107, label %for.body.109, label %for.end.118

for.body.109:                                     ; preds = %for.cond.105
  %115 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %115 to i64
  %116 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa111 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %116, i32 0, i32 17
  %117 = load i8**, i8*** %sa111, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %117, i64 %idxprom110
  store i8* null, i8** %arrayidx112, align 8
  %118 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %118 to i64
  %119 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %salen114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 44
  %120 = load i32*, i32** %salen114, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %120, i64 %idxprom113
  store i32 0, i32* %arrayidx115, align 4
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.109
  %121 = load i32, i32* %j, align 4
  %inc117 = add nsw i32 %121, 1
  store i32 %inc117, i32* %j, align 4
  br label %for.cond.105

for.end.118:                                      ; preds = %for.cond.105
  br label %if.end.119

if.end.119:                                       ; preds = %for.end.118, %if.then.92
  %122 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %122 to i64
  %123 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq121 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 0
  %124 = load i8**, i8*** %aseq121, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %124, i64 %idxprom120
  %125 = load i8*, i8** %arrayidx122, align 8
  %126 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen123 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %126, i32 0, i32 3
  %127 = load i32, i32* %alen123, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %128 to i64
  %129 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo125 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %129, i32 0, i32 6
  %130 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo125, align 8
  %arrayidx126 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %130, i64 %idxprom124
  %sa127 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx126, i32 0, i32 11
  %131 = load i8*, i8** %sa127, align 8
  %132 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %132 to i64
  %133 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa129 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %133, i32 0, i32 17
  %134 = load i8**, i8*** %sa129, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %134, i64 %idxprom128
  %call131 = call i32 @MakeAlignedString(i8* %125, i32 %127, i8* %131, i8** %arrayidx130)
  %135 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen132 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %135, i32 0, i32 3
  %136 = load i32, i32* %alen132, align 4
  %137 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %137 to i64
  %138 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %salen134 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %138, i32 0, i32 44
  %139 = load i32*, i32** %salen134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %139, i64 %idxprom133
  store i32 %136, i32* %arrayidx135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.119, %if.end.85
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %140 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %140, 1
  store i32 %inc138, i32* %i, align 4
  br label %for.cond

for.end.139:                                      ; preds = %for.cond
  %141 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %name140 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %141, i32 0, i32 7
  %142 = load i8*, i8** %name140, align 8
  %call141 = call i8* @sre_strdup(i8* %142, i32 -1)
  %143 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %name142 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 7
  store i8* %call141, i8** %name142, align 8
  %144 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %desc143 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %144, i32 0, i32 8
  %145 = load i8*, i8** %desc143, align 8
  %call144 = call i8* @sre_strdup(i8* %145, i32 -1)
  %146 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %desc145 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %146, i32 0, i32 8
  store i8* %call144, i8** %desc145, align 8
  %147 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %acc146 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %147, i32 0, i32 9
  %148 = load i8*, i8** %acc146, align 8
  %call147 = call i8* @sre_strdup(i8* %148, i32 -1)
  %149 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %acc148 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %149, i32 0, i32 9
  store i8* %call147, i8** %acc148, align 8
  %150 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %au = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %150, i32 0, i32 10
  %151 = load i8*, i8** %au, align 8
  %call149 = call i8* @sre_strdup(i8* %151, i32 -1)
  %152 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %au150 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 10
  store i8* %call149, i8** %au150, align 8
  %153 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %153, i32 0, i32 4
  %154 = load i8*, i8** %cs, align 8
  %call151 = call i8* @sre_strdup(i8* %154, i32 -1)
  %155 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %155, i32 0, i32 11
  store i8* %call151, i8** %ss_cons, align 8
  %156 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %156, i32 0, i32 5
  %157 = load i8*, i8** %rf, align 8
  %call152 = call i8* @sre_strdup(i8* %157, i32 -1)
  %158 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %rf153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 13
  store i8* %call152, i8** %rf153, align 8
  %159 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %flags154 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %159, i32 0, i32 0
  %160 = load i32, i32* %flags154, align 4
  %and155 = and i32 %160, 1
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.164

if.then.157:                                      ; preds = %for.end.139
  %161 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %tc1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %161, i32 0, i32 11
  %162 = load float, float* %tc1, align 4
  %163 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 18
  %arrayidx158 = getelementptr inbounds [6 x float], [6 x float]* %cutoff, i32 0, i64 0
  store float %162, float* %arrayidx158, align 4
  %164 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 19
  %arrayidx159 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set, i32 0, i64 0
  store i32 1, i32* %arrayidx159, align 4
  %165 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %tc2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %165, i32 0, i32 12
  %166 = load float, float* %tc2, align 4
  %167 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff160 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %167, i32 0, i32 18
  %arrayidx161 = getelementptr inbounds [6 x float], [6 x float]* %cutoff160, i32 0, i64 1
  store float %166, float* %arrayidx161, align 4
  %168 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set162 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %168, i32 0, i32 19
  %arrayidx163 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set162, i32 0, i64 1
  store i32 1, i32* %arrayidx163, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.157, %for.end.139
  %169 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %flags165 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %169, i32 0, i32 0
  %170 = load i32, i32* %flags165, align 4
  %and166 = and i32 %170, 2
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.then.168, label %if.end.177

if.then.168:                                      ; preds = %if.end.164
  %171 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nc1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %171, i32 0, i32 13
  %172 = load float, float* %nc1, align 4
  %173 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %173, i32 0, i32 18
  %arrayidx170 = getelementptr inbounds [6 x float], [6 x float]* %cutoff169, i32 0, i64 4
  store float %172, float* %arrayidx170, align 4
  %174 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set171 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %174, i32 0, i32 19
  %arrayidx172 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set171, i32 0, i64 4
  store i32 1, i32* %arrayidx172, align 4
  %175 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nc2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %175, i32 0, i32 14
  %176 = load float, float* %nc2, align 4
  %177 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff173 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %177, i32 0, i32 18
  %arrayidx174 = getelementptr inbounds [6 x float], [6 x float]* %cutoff173, i32 0, i64 5
  store float %176, float* %arrayidx174, align 4
  %178 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set175 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %178, i32 0, i32 19
  %arrayidx176 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set175, i32 0, i64 5
  store i32 1, i32* %arrayidx176, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.168, %if.end.164
  %179 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %flags178 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %179, i32 0, i32 0
  %180 = load i32, i32* %flags178, align 4
  %and179 = and i32 %180, 4
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.190

if.then.181:                                      ; preds = %if.end.177
  %181 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %ga1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %181, i32 0, i32 15
  %182 = load float, float* %ga1, align 4
  %183 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff182 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %183, i32 0, i32 18
  %arrayidx183 = getelementptr inbounds [6 x float], [6 x float]* %cutoff182, i32 0, i64 2
  store float %182, float* %arrayidx183, align 4
  %184 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set184 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 19
  %arrayidx185 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set184, i32 0, i64 2
  store i32 1, i32* %arrayidx185, align 4
  %185 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %ga2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %185, i32 0, i32 16
  %186 = load float, float* %ga2, align 4
  %187 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff186 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %187, i32 0, i32 18
  %arrayidx187 = getelementptr inbounds [6 x float], [6 x float]* %cutoff186, i32 0, i64 3
  store float %186, float* %arrayidx187, align 4
  %188 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cutoff_is_set188 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %188, i32 0, i32 19
  %arrayidx189 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set188, i32 0, i64 3
  store i32 1, i32* %arrayidx189, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.181, %if.end.177
  %189 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq191 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %189, i32 0, i32 2
  %190 = load i32, i32* %nseq191, align 4
  %191 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq192 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %191, i32 0, i32 4
  store i32 %190, i32* %nseq192, align 4
  %192 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %alen193 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %192, i32 0, i32 1
  %193 = load i32, i32* %alen193, align 4
  %194 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen194 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %194, i32 0, i32 3
  store i32 %193, i32* %alen194, align 4
  %195 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  ret %struct.msa_struct* %195
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #1

declare i32 @SeqfileFormat(%struct._IO_FILE*) #1

declare i8* @SeqfileFormat2String(i32) #1

; Function Attrs: nounwind uwtable
define void @MSAMingap(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %useme = alloca i32*, align 8
  %apos = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %alen, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1157, i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %useme, align 8
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %3 = load i32, i32* %apos, align 4
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 3
  %5 = load i32, i32* %alen1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %idx, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %nseq, align 4
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 0
  %12 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.6
  %15 = load i32, i32* %apos, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i32, i32* %idx, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 0
  %18 = load i8**, i8*** %aseq14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %18, i64 %idxprom13
  %19 = load i8*, i8** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %if.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %apos, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load i32, i32* %idx, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 0
  %24 = load i8**, i8*** %aseq23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %24, i64 %idxprom22
  %25 = load i8*, i8** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  %26 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 95
  br i1 %cmp27, label %if.end, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.20
  %27 = load i32, i32* %apos, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load i32, i32* %idx, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 0
  %30 = load i8**, i8*** %aseq32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %30, i64 %idxprom31
  %31 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i64 %idxprom30
  %32 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv35, 45
  br i1 %cmp36, label %if.end, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.29
  %33 = load i32, i32* %apos, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load i32, i32* %idx, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 0
  %36 = load i8**, i8*** %aseq41, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %36, i64 %idxprom40
  %37 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %37, i64 %idxprom39
  %38 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %38 to i32
  %cmp45 = icmp eq i32 %conv44, 126
  br i1 %cmp45, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.38
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.38, %lor.lhs.false.29, %lor.lhs.false.20, %lor.lhs.false, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then, %for.cond.3
  %40 = load i32, i32* %idx, align 4
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 4
  %42 = load i32, i32* %nseq47, align 4
  %cmp48 = icmp eq i32 %40, %42
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %for.end
  %43 = load i32, i32* %apos, align 4
  %idxprom51 = sext i32 %43 to i64
  %44 = load i32*, i32** %useme, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %44, i64 %idxprom51
  store i32 0, i32* %arrayidx52, align 4
  br label %if.end.55

if.else:                                          ; preds = %for.end
  %45 = load i32, i32* %apos, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load i32*, i32** %useme, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %46, i64 %idxprom53
  store i32 1, i32* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.50
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %47 = load i32, i32* %apos, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, i32* %apos, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %49 = load i32*, i32** %useme, align 8
  call void @MSAShorterAlignment(%struct.msa_struct* %48, i32* %49)
  %50 = load i32*, i32** %useme, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* %51) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* %useme) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %useme.addr = alloca i32*, align 8
  %apos = alloca i32, align 4
  %mpos = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32* %useme, i32** %useme.addr, align 8
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %mpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %entry
  %0 = load i32, i32* %apos, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 3
  %2 = load i32, i32* %alen, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %useme.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.122

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %mpos, align 4
  %7 = load i32, i32* %apos, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.120

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %idx, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.75, %if.then.3
  %8 = load i32, i32* %idx, align 4
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 4
  %10 = load i32, i32* %nseq, align 4
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %for.body.6, label %for.end.77

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %apos, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 0
  %14 = load i8**, i8*** %aseq, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %14, i64 %idxprom8
  %15 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %idxprom7
  %16 = load i8, i8* %arrayidx10, align 1
  %17 = load i32, i32* %mpos, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 0
  %20 = load i8**, i8*** %aseq13, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %20, i64 %idxprom12
  %21 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  store i8 %16, i8* %arrayidx15, align 1
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 16
  %23 = load i8**, i8*** %ss, align 8
  %cmp16 = icmp ne i8** %23, null
  br i1 %cmp16, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body.6
  %24 = load i32, i32* %idx, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss18 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 16
  %26 = load i8**, i8*** %ss18, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %26, i64 %idxprom17
  %27 = load i8*, i8** %arrayidx19, align 8
  %cmp20 = icmp ne i8* %27, null
  br i1 %cmp20, label %if.then.21, label %if.end.32

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %apos, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i32, i32* %idx, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 16
  %31 = load i8**, i8*** %ss24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %31, i64 %idxprom23
  %32 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %32, i64 %idxprom22
  %33 = load i8, i8* %arrayidx26, align 1
  %34 = load i32, i32* %mpos, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load i32, i32* %idx, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 16
  %37 = load i8**, i8*** %ss29, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %37, i64 %idxprom28
  %38 = load i8*, i8** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %38, i64 %idxprom27
  store i8 %33, i8* %arrayidx31, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.21, %land.lhs.true, %for.body.6
  %39 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 17
  %40 = load i8**, i8*** %sa, align 8
  %cmp33 = icmp ne i8** %40, null
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.50

land.lhs.true.34:                                 ; preds = %if.end.32
  %41 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 17
  %43 = load i8**, i8*** %sa36, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %43, i64 %idxprom35
  %44 = load i8*, i8** %arrayidx37, align 8
  %cmp38 = icmp ne i8* %44, null
  br i1 %cmp38, label %if.then.39, label %if.end.50

if.then.39:                                       ; preds = %land.lhs.true.34
  %45 = load i32, i32* %apos, align 4
  %idxprom40 = sext i32 %45 to i64
  %46 = load i32, i32* %idx, align 4
  %idxprom41 = sext i32 %46 to i64
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 17
  %48 = load i8**, i8*** %sa42, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %48, i64 %idxprom41
  %49 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %49, i64 %idxprom40
  %50 = load i8, i8* %arrayidx44, align 1
  %51 = load i32, i32* %mpos, align 4
  %idxprom45 = sext i32 %51 to i64
  %52 = load i32, i32* %idx, align 4
  %idxprom46 = sext i32 %52 to i64
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 17
  %54 = load i8**, i8*** %sa47, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %54, i64 %idxprom46
  %55 = load i8*, i8** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %55, i64 %idxprom45
  store i8 %50, i8* %arrayidx49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.39, %land.lhs.true.34, %if.end.32
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.end.50
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 38
  %58 = load i32, i32* %ngr, align 4
  %cmp52 = icmp slt i32 %56, %58
  br i1 %cmp52, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.51
  %59 = load i32, i32* %idx, align 4
  %idxprom54 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %60 to i64
  %61 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 36
  %62 = load i8***, i8**** %gr, align 8
  %arrayidx56 = getelementptr inbounds i8**, i8*** %62, i64 %idxprom55
  %63 = load i8**, i8*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %63, i64 %idxprom54
  %64 = load i8*, i8** %arrayidx57, align 8
  %cmp58 = icmp ne i8* %64, null
  br i1 %cmp58, label %if.then.59, label %if.end.74

if.then.59:                                       ; preds = %for.body.53
  %65 = load i32, i32* %apos, align 4
  %idxprom60 = sext i32 %65 to i64
  %66 = load i32, i32* %idx, align 4
  %idxprom61 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %67 to i64
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr63 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 36
  %69 = load i8***, i8**** %gr63, align 8
  %arrayidx64 = getelementptr inbounds i8**, i8*** %69, i64 %idxprom62
  %70 = load i8**, i8*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %70, i64 %idxprom61
  %71 = load i8*, i8** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %71, i64 %idxprom60
  %72 = load i8, i8* %arrayidx66, align 1
  %73 = load i32, i32* %mpos, align 4
  %idxprom67 = sext i32 %73 to i64
  %74 = load i32, i32* %idx, align 4
  %idxprom68 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %75 to i64
  %76 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 36
  %77 = load i8***, i8**** %gr70, align 8
  %arrayidx71 = getelementptr inbounds i8**, i8*** %77, i64 %idxprom69
  %78 = load i8**, i8*** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %78, i64 %idxprom68
  %79 = load i8*, i8** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %79, i64 %idxprom67
  store i8 %72, i8* %arrayidx73, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.59, %for.body.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %80 = load i32, i32* %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end
  %81 = load i32, i32* %idx, align 4
  %inc76 = add nsw i32 %81, 1
  store i32 %inc76, i32* %idx, align 4
  br label %for.cond.4

for.end.77:                                       ; preds = %for.cond.4
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 11
  %83 = load i8*, i8** %ss_cons, align 8
  %cmp78 = icmp ne i8* %83, null
  br i1 %cmp78, label %if.then.79, label %if.end.86

if.then.79:                                       ; preds = %for.end.77
  %84 = load i32, i32* %apos, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 11
  %86 = load i8*, i8** %ss_cons81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %86, i64 %idxprom80
  %87 = load i8, i8* %arrayidx82, align 1
  %88 = load i32, i32* %mpos, align 4
  %idxprom83 = sext i32 %88 to i64
  %89 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons84 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 11
  %90 = load i8*, i8** %ss_cons84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %90, i64 %idxprom83
  store i8 %87, i8* %arrayidx85, align 1
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.79, %for.end.77
  %91 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 12
  %92 = load i8*, i8** %sa_cons, align 8
  %cmp87 = icmp ne i8* %92, null
  br i1 %cmp87, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.end.86
  %93 = load i32, i32* %apos, align 4
  %idxprom89 = sext i32 %93 to i64
  %94 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons90 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %94, i32 0, i32 12
  %95 = load i8*, i8** %sa_cons90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %95, i64 %idxprom89
  %96 = load i8, i8* %arrayidx91, align 1
  %97 = load i32, i32* %mpos, align 4
  %idxprom92 = sext i32 %97 to i64
  %98 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons93 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %98, i32 0, i32 12
  %99 = load i8*, i8** %sa_cons93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %99, i64 %idxprom92
  store i8 %96, i8* %arrayidx94, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.88, %if.end.86
  %100 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 13
  %101 = load i8*, i8** %rf, align 8
  %cmp96 = icmp ne i8* %101, null
  br i1 %cmp96, label %if.then.97, label %if.end.104

if.then.97:                                       ; preds = %if.end.95
  %102 = load i32, i32* %apos, align 4
  %idxprom98 = sext i32 %102 to i64
  %103 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf99 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 13
  %104 = load i8*, i8** %rf99, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %104, i64 %idxprom98
  %105 = load i8, i8* %arrayidx100, align 1
  %106 = load i32, i32* %mpos, align 4
  %idxprom101 = sext i32 %106 to i64
  %107 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 13
  %108 = load i8*, i8** %rf102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %108, i64 %idxprom101
  store i8 %105, i8* %arrayidx103, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.97, %if.end.95
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.117, %if.end.104
  %109 = load i32, i32* %i, align 4
  %110 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %110, i32 0, i32 34
  %111 = load i32, i32* %ngc, align 4
  %cmp106 = icmp slt i32 %109, %111
  br i1 %cmp106, label %for.body.107, label %for.end.119

for.body.107:                                     ; preds = %for.cond.105
  %112 = load i32, i32* %apos, align 4
  %idxprom108 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %113 to i64
  %114 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 32
  %115 = load i8**, i8*** %gc, align 8
  %arrayidx110 = getelementptr inbounds i8*, i8** %115, i64 %idxprom109
  %116 = load i8*, i8** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %116, i64 %idxprom108
  %117 = load i8, i8* %arrayidx111, align 1
  %118 = load i32, i32* %mpos, align 4
  %idxprom112 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %119 to i64
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 32
  %121 = load i8**, i8*** %gc114, align 8
  %arrayidx115 = getelementptr inbounds i8*, i8** %121, i64 %idxprom113
  %122 = load i8*, i8** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %122, i64 %idxprom112
  store i8 %117, i8* %arrayidx116, align 1
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.107
  %123 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %123, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.105

for.end.119:                                      ; preds = %for.cond.105
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %if.end
  %124 = load i32, i32* %mpos, align 4
  %inc121 = add nsw i32 %124, 1
  store i32 %inc121, i32* %mpos, align 4
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.120, %if.then
  %125 = load i32, i32* %apos, align 4
  %inc123 = add nsw i32 %125, 1
  store i32 %inc123, i32* %apos, align 4
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %126 = load i32, i32* %mpos, align 4
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen125 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 3
  store i32 %126, i32* %alen125, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.185, %for.end.124
  %128 = load i32, i32* %idx, align 4
  %129 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq127 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %129, i32 0, i32 4
  %130 = load i32, i32* %nseq127, align 4
  %cmp128 = icmp slt i32 %128, %130
  br i1 %cmp128, label %for.body.129, label %for.end.187

for.body.129:                                     ; preds = %for.cond.126
  %131 = load i32, i32* %mpos, align 4
  %idxprom130 = sext i32 %131 to i64
  %132 = load i32, i32* %idx, align 4
  %idxprom131 = sext i32 %132 to i64
  %133 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq132 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %133, i32 0, i32 0
  %134 = load i8**, i8*** %aseq132, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %134, i64 %idxprom131
  %135 = load i8*, i8** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %135, i64 %idxprom130
  store i8 0, i8* %arrayidx134, align 1
  %136 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss135 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 16
  %137 = load i8**, i8*** %ss135, align 8
  %cmp136 = icmp ne i8** %137, null
  br i1 %cmp136, label %land.lhs.true.137, label %if.end.148

land.lhs.true.137:                                ; preds = %for.body.129
  %138 = load i32, i32* %idx, align 4
  %idxprom138 = sext i32 %138 to i64
  %139 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss139 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %139, i32 0, i32 16
  %140 = load i8**, i8*** %ss139, align 8
  %arrayidx140 = getelementptr inbounds i8*, i8** %140, i64 %idxprom138
  %141 = load i8*, i8** %arrayidx140, align 8
  %cmp141 = icmp ne i8* %141, null
  br i1 %cmp141, label %if.then.142, label %if.end.148

if.then.142:                                      ; preds = %land.lhs.true.137
  %142 = load i32, i32* %mpos, align 4
  %idxprom143 = sext i32 %142 to i64
  %143 = load i32, i32* %idx, align 4
  %idxprom144 = sext i32 %143 to i64
  %144 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss145 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %144, i32 0, i32 16
  %145 = load i8**, i8*** %ss145, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %145, i64 %idxprom144
  %146 = load i8*, i8** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %146, i64 %idxprom143
  store i8 0, i8* %arrayidx147, align 1
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.142, %land.lhs.true.137, %for.body.129
  %147 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa149 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %147, i32 0, i32 17
  %148 = load i8**, i8*** %sa149, align 8
  %cmp150 = icmp ne i8** %148, null
  br i1 %cmp150, label %land.lhs.true.151, label %if.end.162

land.lhs.true.151:                                ; preds = %if.end.148
  %149 = load i32, i32* %idx, align 4
  %idxprom152 = sext i32 %149 to i64
  %150 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %150, i32 0, i32 17
  %151 = load i8**, i8*** %sa153, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %151, i64 %idxprom152
  %152 = load i8*, i8** %arrayidx154, align 8
  %cmp155 = icmp ne i8* %152, null
  br i1 %cmp155, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %land.lhs.true.151
  %153 = load i32, i32* %mpos, align 4
  %idxprom157 = sext i32 %153 to i64
  %154 = load i32, i32* %idx, align 4
  %idxprom158 = sext i32 %154 to i64
  %155 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa159 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %155, i32 0, i32 17
  %156 = load i8**, i8*** %sa159, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %156, i64 %idxprom158
  %157 = load i8*, i8** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %157, i64 %idxprom157
  store i8 0, i8* %arrayidx161, align 1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.156, %land.lhs.true.151, %if.end.148
  store i32 0, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.182, %if.end.162
  %158 = load i32, i32* %i, align 4
  %159 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngr164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %159, i32 0, i32 38
  %160 = load i32, i32* %ngr164, align 4
  %cmp165 = icmp slt i32 %158, %160
  br i1 %cmp165, label %for.body.166, label %for.end.184

for.body.166:                                     ; preds = %for.cond.163
  %161 = load i32, i32* %idx, align 4
  %idxprom167 = sext i32 %161 to i64
  %162 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %162 to i64
  %163 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 36
  %164 = load i8***, i8**** %gr169, align 8
  %arrayidx170 = getelementptr inbounds i8**, i8*** %164, i64 %idxprom168
  %165 = load i8**, i8*** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %165, i64 %idxprom167
  %166 = load i8*, i8** %arrayidx171, align 8
  %cmp172 = icmp ne i8* %166, null
  br i1 %cmp172, label %if.then.173, label %if.end.181

if.then.173:                                      ; preds = %for.body.166
  %167 = load i32, i32* %mpos, align 4
  %idxprom174 = sext i32 %167 to i64
  %168 = load i32, i32* %idx, align 4
  %idxprom175 = sext i32 %168 to i64
  %169 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %169 to i64
  %170 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gr177 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %170, i32 0, i32 36
  %171 = load i8***, i8**** %gr177, align 8
  %arrayidx178 = getelementptr inbounds i8**, i8*** %171, i64 %idxprom176
  %172 = load i8**, i8*** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %172, i64 %idxprom175
  %173 = load i8*, i8** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %173, i64 %idxprom174
  store i8 0, i8* %arrayidx180, align 1
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.173, %for.body.166
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %174 = load i32, i32* %i, align 4
  %inc183 = add nsw i32 %174, 1
  store i32 %inc183, i32* %i, align 4
  br label %for.cond.163

for.end.184:                                      ; preds = %for.cond.163
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %175 = load i32, i32* %idx, align 4
  %inc186 = add nsw i32 %175, 1
  store i32 %inc186, i32* %idx, align 4
  br label %for.cond.126

for.end.187:                                      ; preds = %for.cond.126
  %176 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons188 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %176, i32 0, i32 11
  %177 = load i8*, i8** %ss_cons188, align 8
  %cmp189 = icmp ne i8* %177, null
  br i1 %cmp189, label %if.then.190, label %if.end.194

if.then.190:                                      ; preds = %for.end.187
  %178 = load i32, i32* %mpos, align 4
  %idxprom191 = sext i32 %178 to i64
  %179 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons192 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 11
  %180 = load i8*, i8** %ss_cons192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %180, i64 %idxprom191
  store i8 0, i8* %arrayidx193, align 1
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.190, %for.end.187
  %181 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons195 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %181, i32 0, i32 12
  %182 = load i8*, i8** %sa_cons195, align 8
  %cmp196 = icmp ne i8* %182, null
  br i1 %cmp196, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %if.end.194
  %183 = load i32, i32* %mpos, align 4
  %idxprom198 = sext i32 %183 to i64
  %184 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons199 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 12
  %185 = load i8*, i8** %sa_cons199, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %185, i64 %idxprom198
  store i8 0, i8* %arrayidx200, align 1
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %if.end.194
  %186 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf202 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %186, i32 0, i32 13
  %187 = load i8*, i8** %rf202, align 8
  %cmp203 = icmp ne i8* %187, null
  br i1 %cmp203, label %if.then.204, label %if.end.208

if.then.204:                                      ; preds = %if.end.201
  %188 = load i32, i32* %mpos, align 4
  %idxprom205 = sext i32 %188 to i64
  %189 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf206 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %189, i32 0, i32 13
  %190 = load i8*, i8** %rf206, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %190, i64 %idxprom205
  store i8 0, i8* %arrayidx207, align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.204, %if.end.201
  store i32 0, i32* %i, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.218, %if.end.208
  %191 = load i32, i32* %i, align 4
  %192 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ngc210 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %192, i32 0, i32 34
  %193 = load i32, i32* %ngc210, align 4
  %cmp211 = icmp slt i32 %191, %193
  br i1 %cmp211, label %for.body.212, label %for.end.220

for.body.212:                                     ; preds = %for.cond.209
  %194 = load i32, i32* %mpos, align 4
  %idxprom213 = sext i32 %194 to i64
  %195 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %195 to i64
  %196 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %gc215 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %196, i32 0, i32 32
  %197 = load i8**, i8*** %gc215, align 8
  %arrayidx216 = getelementptr inbounds i8*, i8** %197, i64 %idxprom214
  %198 = load i8*, i8** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %198, i64 %idxprom213
  store i8 0, i8* %arrayidx217, align 1
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.body.212
  %199 = load i32, i32* %i, align 4
  %inc219 = add nsw i32 %199, 1
  store i32 %inc219, i32* %i, align 4
  br label %for.cond.209

for.end.220:                                      ; preds = %for.cond.209
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSANogap(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %useme = alloca i32*, align 8
  %apos = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %alen, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1189, i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %useme, align 8
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %3 = load i32, i32* %apos, align 4
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 3
  %5 = load i32, i32* %alen1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %idx, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %nseq, align 4
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 0
  %12 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.6
  %15 = load i32, i32* %apos, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i32, i32* %idx, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 0
  %18 = load i8**, i8*** %aseq14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %18, i64 %idxprom13
  %19 = load i8*, i8** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %apos, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load i32, i32* %idx, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 0
  %24 = load i8**, i8*** %aseq23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %24, i64 %idxprom22
  %25 = load i8*, i8** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  %26 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 95
  br i1 %cmp27, label %if.then, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.20
  %27 = load i32, i32* %apos, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load i32, i32* %idx, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 0
  %30 = load i8**, i8*** %aseq32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %30, i64 %idxprom31
  %31 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i64 %idxprom30
  %32 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv35, 45
  br i1 %cmp36, label %if.then, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.29
  %33 = load i32, i32* %apos, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load i32, i32* %idx, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 0
  %36 = load i8**, i8*** %aseq41, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %36, i64 %idxprom40
  %37 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %37, i64 %idxprom39
  %38 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %38 to i32
  %cmp45 = icmp eq i32 %conv44, 126
  br i1 %cmp45, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.38, %lor.lhs.false.29, %lor.lhs.false.20, %lor.lhs.false, %for.body.6
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.38
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then, %for.cond.3
  %40 = load i32, i32* %idx, align 4
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 4
  %42 = load i32, i32* %nseq47, align 4
  %cmp48 = icmp eq i32 %40, %42
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %for.end
  %43 = load i32, i32* %apos, align 4
  %idxprom51 = sext i32 %43 to i64
  %44 = load i32*, i32** %useme, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %44, i64 %idxprom51
  store i32 1, i32* %arrayidx52, align 4
  br label %if.end.55

if.else:                                          ; preds = %for.end
  %45 = load i32, i32* %apos, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load i32*, i32** %useme, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %46, i64 %idxprom53
  store i32 0, i32* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.50
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %47 = load i32, i32* %apos, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, i32* %apos, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %49 = load i32*, i32** %useme, align 8
  call void @MSAShorterAlignment(%struct.msa_struct* %48, i32* %49)
  %50 = load i32*, i32** %useme, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* %51) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %useme, %struct.msa_struct** %ret_new) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %useme.addr = alloca i32*, align 8
  %ret_new.addr = alloca %struct.msa_struct**, align 8
  %new = alloca %struct.msa_struct*, align 8
  %nnew = alloca i32, align 4
  %oidx = alloca i32, align 4
  %nidx = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32* %useme, i32** %useme.addr, align 8
  store %struct.msa_struct** %ret_new, %struct.msa_struct*** %ret_new.addr, align 8
  store i32 0, i32* %nnew, align 4
  store i32 0, i32* %oidx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %oidx, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %oidx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %useme.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %nnew, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nnew, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %oidx, align 4
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, i32* %oidx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %nnew, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  %9 = load %struct.msa_struct**, %struct.msa_struct*** %ret_new.addr, align 8
  store %struct.msa_struct* null, %struct.msa_struct** %9, align 8
  br label %return

if.end.4:                                         ; preds = %for.end
  %10 = load i32, i32* %nnew, align 4
  %call = call %struct.msa_struct* @MSAAlloc(i32 %10, i32 0)
  store %struct.msa_struct* %call, %struct.msa_struct** %new, align 8
  store i32 0, i32* %nidx, align 4
  store i32 0, i32* %oidx, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.97, %if.end.4
  %11 = load i32, i32* %oidx, align 4
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %nseq6, align 4
  %cmp7 = icmp slt i32 %11, %13
  br i1 %cmp7, label %for.body.8, label %for.end.99

for.body.8:                                       ; preds = %for.cond.5
  %14 = load i32, i32* %oidx, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i32*, i32** %useme.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.96

if.then.12:                                       ; preds = %for.body.8
  %17 = load i32, i32* %oidx, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 0
  %19 = load i8**, i8*** %aseq, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %19, i64 %idxprom13
  %20 = load i8*, i8** %arrayidx14, align 8
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 3
  %22 = load i32, i32* %alen, align 4
  %call15 = call i8* @sre_strdup(i8* %20, i32 %22)
  %23 = load i32, i32* %nidx, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %aseq17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 0
  %25 = load i8**, i8*** %aseq17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %25, i64 %idxprom16
  store i8* %call15, i8** %arrayidx18, align 8
  %26 = load i32, i32* %oidx, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 1
  %28 = load i8**, i8*** %sqname, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %28, i64 %idxprom19
  %29 = load i8*, i8** %arrayidx20, align 8
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 3
  %31 = load i32, i32* %alen21, align 4
  %call22 = call i8* @sre_strdup(i8* %29, i32 %31)
  %32 = load i32, i32* %nidx, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %sqname24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 1
  %34 = load i8**, i8*** %sqname24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %34, i64 %idxprom23
  store i8* %call22, i8** %arrayidx25, align 8
  %35 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %index = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 39
  %36 = load %struct.GKI*, %struct.GKI** %index, align 8
  %37 = load i32, i32* %oidx, align 4
  %idxprom26 = sext i32 %37 to i64
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 1
  %39 = load i8**, i8*** %sqname27, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %39, i64 %idxprom26
  %40 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 @GKIStoreKey(%struct.GKI* %36, i8* %40)
  %41 = load i32, i32* %oidx, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 2
  %43 = load float*, float** %wgt, align 8
  %arrayidx31 = getelementptr inbounds float, float* %43, i64 %idxprom30
  %44 = load float, float* %arrayidx31, align 4
  %45 = load i32, i32* %nidx, align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %wgt33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 2
  %47 = load float*, float** %wgt33, align 8
  %arrayidx34 = getelementptr inbounds float, float* %47, i64 %idxprom32
  store float %44, float* %arrayidx34, align 4
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 14
  %49 = load i8**, i8*** %sqacc, align 8
  %cmp35 = icmp ne i8** %49, null
  br i1 %cmp35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.then.12
  %50 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %51 = load i32, i32* %nidx, align 4
  %52 = load i32, i32* %oidx, align 4
  %idxprom37 = sext i32 %52 to i64
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 14
  %54 = load i8**, i8*** %sqacc38, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %54, i64 %idxprom37
  %55 = load i8*, i8** %arrayidx39, align 8
  call void @MSASetSeqAccession(%struct.msa_struct* %50, i32 %51, i8* %55)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.then.12
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 15
  %57 = load i8**, i8*** %sqdesc, align 8
  %cmp41 = icmp ne i8** %57, null
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.40
  %58 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %59 = load i32, i32* %nidx, align 4
  %60 = load i32, i32* %oidx, align 4
  %idxprom43 = sext i32 %60 to i64
  %61 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc44 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 15
  %62 = load i8**, i8*** %sqdesc44, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %62, i64 %idxprom43
  %63 = load i8*, i8** %arrayidx45, align 8
  call void @MSASetSeqDescription(%struct.msa_struct* %58, i32 %59, i8* %63)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.40
  %64 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 16
  %65 = load i8**, i8*** %ss, align 8
  %cmp47 = icmp ne i8** %65, null
  br i1 %cmp47, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.end.46
  %66 = load i32, i32* %oidx, align 4
  %idxprom48 = sext i32 %66 to i64
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 16
  %68 = load i8**, i8*** %ss49, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %68, i64 %idxprom48
  %69 = load i8*, i8** %arrayidx50, align 8
  %cmp51 = icmp ne i8* %69, null
  br i1 %cmp51, label %if.then.52, label %if.end.67

if.then.52:                                       ; preds = %land.lhs.true
  %70 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %ss53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 16
  %71 = load i8**, i8*** %ss53, align 8
  %cmp54 = icmp eq i8** %71, null
  br i1 %cmp54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.then.52
  %72 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %nseq56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 4
  %73 = load i32, i32* %nseq56, align 4
  %conv = sext i32 %73 to i64
  %mul = mul i64 8, %conv
  %call57 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1333, i64 %mul)
  %74 = bitcast i8* %call57 to i8**
  %75 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %ss58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 16
  store i8** %74, i8*** %ss58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.then.52
  %76 = load i32, i32* %oidx, align 4
  %idxprom60 = sext i32 %76 to i64
  %77 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 16
  %78 = load i8**, i8*** %ss61, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %78, i64 %idxprom60
  %79 = load i8*, i8** %arrayidx62, align 8
  %call63 = call i8* @sre_strdup(i8* %79, i32 -1)
  %80 = load i32, i32* %nidx, align 4
  %idxprom64 = sext i32 %80 to i64
  %81 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %ss65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 16
  %82 = load i8**, i8*** %ss65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %82, i64 %idxprom64
  store i8* %call63, i8** %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.59, %land.lhs.true, %if.end.46
  %83 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %83, i32 0, i32 17
  %84 = load i8**, i8*** %sa, align 8
  %cmp68 = icmp ne i8** %84, null
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.94

land.lhs.true.70:                                 ; preds = %if.end.67
  %85 = load i32, i32* %oidx, align 4
  %idxprom71 = sext i32 %85 to i64
  %86 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa72 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %86, i32 0, i32 17
  %87 = load i8**, i8*** %sa72, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %87, i64 %idxprom71
  %88 = load i8*, i8** %arrayidx73, align 8
  %cmp74 = icmp ne i8* %88, null
  br i1 %cmp74, label %if.then.76, label %if.end.94

if.then.76:                                       ; preds = %land.lhs.true.70
  %89 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %sa77 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 17
  %90 = load i8**, i8*** %sa77, align 8
  %cmp78 = icmp eq i8** %90, null
  br i1 %cmp78, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %if.then.76
  %91 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %nseq81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 4
  %92 = load i32, i32* %nseq81, align 4
  %conv82 = sext i32 %92 to i64
  %mul83 = mul i64 8, %conv82
  %call84 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1338, i64 %mul83)
  %93 = bitcast i8* %call84 to i8**
  %94 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %sa85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %94, i32 0, i32 17
  store i8** %93, i8*** %sa85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %if.then.76
  %95 = load i32, i32* %oidx, align 4
  %idxprom87 = sext i32 %95 to i64
  %96 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa88 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %96, i32 0, i32 17
  %97 = load i8**, i8*** %sa88, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %97, i64 %idxprom87
  %98 = load i8*, i8** %arrayidx89, align 8
  %call90 = call i8* @sre_strdup(i8* %98, i32 -1)
  %99 = load i32, i32* %nidx, align 4
  %idxprom91 = sext i32 %99 to i64
  %100 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %sa92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 17
  %101 = load i8**, i8*** %sa92, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %101, i64 %idxprom91
  store i8* %call90, i8** %arrayidx93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.86, %land.lhs.true.70, %if.end.67
  %102 = load i32, i32* %nidx, align 4
  %inc95 = add nsw i32 %102, 1
  store i32 %inc95, i32* %nidx, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94, %for.body.8
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %103 = load i32, i32* %oidx, align 4
  %inc98 = add nsw i32 %103, 1
  store i32 %inc98, i32* %oidx, align 4
  br label %for.cond.5

for.end.99:                                       ; preds = %for.cond.5
  %104 = load i32, i32* %nnew, align 4
  %105 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %nseq100 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 4
  store i32 %104, i32* %nseq100, align 4
  %106 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %106, i32 0, i32 3
  %107 = load i32, i32* %alen101, align 4
  %108 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %alen102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %108, i32 0, i32 3
  store i32 %107, i32* %alen102, align 4
  %109 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %flags = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %109, i32 0, i32 5
  %110 = load i32, i32* %flags, align 4
  %111 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %flags103 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %111, i32 0, i32 5
  store i32 %110, i32* %flags103, align 4
  %112 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %type = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 6
  %113 = load i32, i32* %type, align 4
  %114 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %type104 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 6
  store i32 %113, i32* %type104, align 4
  %115 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %name = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %115, i32 0, i32 7
  %116 = load i8*, i8** %name, align 8
  %call105 = call i8* @sre_strdup(i8* %116, i32 -1)
  %117 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %name106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 7
  store i8* %call105, i8** %name106, align 8
  %118 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %desc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %118, i32 0, i32 8
  %119 = load i8*, i8** %desc, align 8
  %call107 = call i8* @sre_strdup(i8* %119, i32 -1)
  %120 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %desc108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 8
  store i8* %call107, i8** %desc108, align 8
  %121 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %acc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %121, i32 0, i32 9
  %122 = load i8*, i8** %acc, align 8
  %call109 = call i8* @sre_strdup(i8* %122, i32 -1)
  %123 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %acc110 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 9
  store i8* %call109, i8** %acc110, align 8
  %124 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %124, i32 0, i32 10
  %125 = load i8*, i8** %au, align 8
  %call111 = call i8* @sre_strdup(i8* %125, i32 -1)
  %126 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %au112 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %126, i32 0, i32 10
  store i8* %call111, i8** %au112, align 8
  %127 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 11
  %128 = load i8*, i8** %ss_cons, align 8
  %call113 = call i8* @sre_strdup(i8* %128, i32 -1)
  %129 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %ss_cons114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %129, i32 0, i32 11
  store i8* %call113, i8** %ss_cons114, align 8
  %130 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 12
  %131 = load i8*, i8** %sa_cons, align 8
  %call115 = call i8* @sre_strdup(i8* %131, i32 -1)
  %132 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %sa_cons116 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 12
  store i8* %call115, i8** %sa_cons116, align 8
  %133 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %133, i32 0, i32 13
  %134 = load i8*, i8** %rf, align 8
  %call117 = call i8* @sre_strdup(i8* %134, i32 -1)
  %135 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %rf118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %135, i32 0, i32 13
  store i8* %call117, i8** %rf118, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.133, %for.end.99
  %136 = load i32, i32* %i, align 4
  %cmp120 = icmp slt i32 %136, 6
  br i1 %cmp120, label %for.body.122, label %for.end.135

for.body.122:                                     ; preds = %for.cond.119
  %137 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %137 to i64
  %138 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %138, i32 0, i32 18
  %arrayidx124 = getelementptr inbounds [6 x float], [6 x float]* %cutoff, i32 0, i64 %idxprom123
  %139 = load float, float* %arrayidx124, align 4
  %140 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %140 to i64
  %141 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %cutoff126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %141, i32 0, i32 18
  %arrayidx127 = getelementptr inbounds [6 x float], [6 x float]* %cutoff126, i32 0, i64 %idxprom125
  store float %139, float* %arrayidx127, align 4
  %142 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %142 to i64
  %143 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %cutoff_is_set = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 19
  %arrayidx129 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set, i32 0, i64 %idxprom128
  %144 = load i32, i32* %arrayidx129, align 4
  %145 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %145 to i64
  %146 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %cutoff_is_set131 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %146, i32 0, i32 19
  %arrayidx132 = getelementptr inbounds [6 x i32], [6 x i32]* %cutoff_is_set131, i32 0, i64 %idxprom130
  store i32 %144, i32* %arrayidx132, align 4
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.122
  %147 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %147, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.119

for.end.135:                                      ; preds = %for.cond.119
  %148 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %sqlen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %148, i32 0, i32 42
  %149 = load i32*, i32** %sqlen, align 8
  %150 = bitcast i32* %149 to i8*
  call void @free(i8* %150) #4
  %151 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  call void @MSAMingap(%struct.msa_struct* %151)
  %152 = load %struct.msa_struct*, %struct.msa_struct** %new, align 8
  %153 = load %struct.msa_struct**, %struct.msa_struct*** %ret_new.addr, align 8
  store %struct.msa_struct* %152, %struct.msa_struct** %153, align 8
  br label %return

return:                                           ; preds = %for.end.135, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @MSAGetSeqAccession(%struct.msa_struct* %msa, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 14
  %1 = load i8**, i8*** %sqacc, align 8
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 14
  %4 = load i8**, i8*** %sqacc1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %idx.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqacc4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 14
  %8 = load i8**, i8*** %sqacc4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i8* @MSAGetSeqDescription(%struct.msa_struct* %msa, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 15
  %1 = load i8**, i8*** %sqdesc, align 8
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 15
  %4 = load i8**, i8*** %sqdesc1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %idx.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqdesc4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 15
  %8 = load i8**, i8*** %sqdesc4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i8* @MSAGetSeqSS(%struct.msa_struct* %msa, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 16
  %1 = load i8**, i8*** %ss, align 8
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 16
  %4 = load i8**, i8*** %ss1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %idx.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 16
  %8 = load i8**, i8*** %ss4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i8* @MSAGetSeqSA(%struct.msa_struct* %msa, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 17
  %1 = load i8**, i8*** %sa, align 8
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 17
  %4 = load i8**, i8*** %sa1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %idx.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 17
  %8 = load i8**, i8*** %sa4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define float @MSAAverageSequenceLength(%struct.msa_struct* %msa) #0 {
entry:
  %retval = alloca float, align 4
  %msa.addr = alloca %struct.msa_struct*, align 8
  %i = alloca i32, align 4
  %avg = alloca float, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store float 0.000000e+00, float* %avg, align 4
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
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 0
  %5 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @DealignedLength(i8* %6)
  %conv = sitofp i32 %call to float
  %7 = load float, float* %avg, align 4
  %add = fadd float %7, %conv
  store float %add, float* %avg, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 4
  %10 = load i32, i32* %nseq1, align 4
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store float 0.000000e+00, float* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %11 = load float, float* %avg, align 4
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %nseq4, align 4
  %conv5 = sitofp i32 %13 to float
  %div = fdiv float %11, %conv5
  store float %div, float* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load float, float* %retval
  ret float %14
}

declare i32 @DealignedLength(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
