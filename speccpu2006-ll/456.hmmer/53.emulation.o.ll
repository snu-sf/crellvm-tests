; ModuleID = 'emulation.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [81 x i8] c"Profile %s will have more than 1000 positions. GCG won't read it; Compugen will.\00", align 1
@Alphabet_type = external global i32, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"!!AA_PROFILE 1.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"!!NA_PROFILE 1.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"No support for profiles with non-biological alphabets\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"(Peptide) \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"(Nucleotide) \00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"HMMCONVERT v%s Length: %d %s|%s|%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"   Profile converted from a profile HMM using HMMER v%s emulation.\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"   Compugen XSW extended profile format.\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"   Use -model=xsw.model -nonor -noave -gapop=10 -gapext=1 -qgapop=10 -qgapext=1\0A\00", align 1
@.str.12 = private unnamed_addr constant [89 x i8] c"      with om on the Compugen BIC to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"   WARNING: There is a loss of information in this conversion.\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"      Neither the scores nor even the rank order of hits will be precisely\0A\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"      preserved in a comparison of HMMER hmmsearch to GCG profilesearch.\0A\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"      The profile score is an approximation of the (single-hit) HMMER score.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"   Use -nonor -noave -gap=10 -len=1 with profilesearch and friends\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"      to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Cons\00", align 1
@Alphabet_iupac = external global i32, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"    %c \00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.21 = private unnamed_addr constant [28 x i8] c"  Gap   Len  QGap  Qlen ..\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"  Gap   Len ..\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"! %d\0A\00", align 1
@Alphabet_size = external global i32, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c" %c  \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"%5d %5d %5d %5d\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%5d %5d\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" *  \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @WriteProfile(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm, i32 %do_xsw) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %do_xsw.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %sc = alloca i32, align 4
  %nx = alloca float, align 4
  %gap = alloca i32, align 4
  %len = alloca i32, align 4
  %qgap = alloca i32, align 4
  %qlen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %do_xsw, i32* %do_xsw.addr, align 4
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @P7Logoddsify(%struct.plan7_s* %0, i32 1)
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %cmp = icmp sgt i32 %2, 1000
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %do_xsw.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* @Alphabet_type, align 4
  %cmp1 = icmp eq i32 %6, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* @Alphabet_type, align 4
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %10 = load i32, i32* @Alphabet_type, align 4
  %cmp9 = icmp eq i32 %10, 3
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.17

if.else.12:                                       ; preds = %if.end.8
  %12 = load i32, i32* @Alphabet_type, align 4
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else.12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 20
  %16 = load i32, i32* %M18, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %name19, align 8
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 47
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, 512
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %acc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 47
  %24 = load i32, i32* %flags21, align 4
  %and22 = and i32 %24, 2
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 2
  %26 = load i8*, i8** %desc, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i8* [ %26, %cond.true.24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false.25 ]
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %16, i8* %18, i8* %cond, i8* %cond27)
  %27 = load i32, i32* %do_xsw.addr, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %if.then.30, label %if.else.39

if.then.30:                                       ; preds = %cond.end.26
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.12, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.47

if.else.39:                                       ; preds = %cond.end.26
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.39, %if.then.30
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* @Alphabet_iupac, align 4
  %cmp49 = icmp slt i32 %44, %45
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %47 = load i32, i32* %x, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom
  %48 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %48 to i32
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %x, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %do_xsw.addr, align 4
  %tobool51 = icmp ne i32 %50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %for.end
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.56

if.else.54:                                       ; preds = %for.end
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.52
  store i32 1, i32* %k, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.201, %if.end.56
  %53 = load i32, i32* %k, align 4
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 20
  %55 = load i32, i32* %M58, align 4
  %cmp59 = icmp sle i32 %53, %55
  br i1 %cmp59, label %for.body.61, label %for.end.203

for.body.61:                                      ; preds = %for.cond.57
  %56 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %56, 1
  %rem = srem i32 %sub, 10
  %cmp62 = icmp eq i32 %rem, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %for.body.61
  %57 = load i32, i32* %k, align 4
  %cmp65 = icmp sgt i32 %57, 10
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %land.lhs.true.64
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %59 = load i32, i32* %k, align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %59)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %land.lhs.true.64, %for.body.61
  %60 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %60 to i64
  %61 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 22
  %62 = load float**, float*** %mat, align 8
  %arrayidx71 = getelementptr inbounds float*, float** %62, i64 %idxprom70
  %63 = load float*, float** %arrayidx71, align 8
  %64 = load i32, i32* @Alphabet_size, align 4
  %call72 = call i32 @FArgMax(float* %63, i32 %64)
  store i32 %call72, i32* %x, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %66 = load i32, i32* %x, align 4
  %idxprom73 = sext i32 %66 to i64
  %arrayidx74 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom73
  %67 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %67 to i32
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %conv75)
  store i32 0, i32* %x, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.96, %if.end.69
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* @Alphabet_iupac, align 4
  %cmp78 = icmp slt i32 %68, %69
  br i1 %cmp78, label %for.body.80, label %for.end.98

for.body.80:                                      ; preds = %for.cond.77
  %70 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %70 to i64
  %71 = load i32, i32* %x, align 4
  %idxprom82 = sext i32 %71 to i64
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 31
  %73 = load i32**, i32*** %msc, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %73, i64 %idxprom82
  %74 = load i32*, i32** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %74, i64 %idxprom81
  %75 = load i32, i32* %arrayidx84, align 4
  store i32 %75, i32* %sc, align 4
  %76 = load i32, i32* %k, align 4
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 20
  %78 = load i32, i32* %M85, align 4
  %cmp86 = icmp slt i32 %76, %78
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %for.body.80
  %79 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 30
  %81 = load i32**, i32*** %tsc, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %81, i64 0
  %82 = load i32*, i32** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %82, i64 %idxprom89
  %83 = load i32, i32* %arrayidx91, align 4
  %84 = load i32, i32* %sc, align 4
  %add = add nsw i32 %84, %83
  store i32 %add, i32* %sc, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %for.body.80
  %85 = load i32, i32* %sc, align 4
  %mul = mul nsw i32 %85, 100
  %conv93 = sitofp i32 %mul to double
  %div = fdiv double %conv93, 1.000000e+03
  %conv94 = fptosi double %div to i32
  store i32 %conv94, i32* %sc, align 4
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %87 = load i32, i32* %sc, align 4
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %87)
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.92
  %88 = load i32, i32* %x, align 4
  %inc97 = add nsw i32 %88, 1
  store i32 %inc97, i32* %x, align 4
  br label %for.cond.77

for.end.98:                                       ; preds = %for.cond.77
  %89 = load i32, i32* %k, align 4
  %cmp99 = icmp sgt i32 %89, 1
  br i1 %cmp99, label %if.then.101, label %if.else.130

if.then.101:                                      ; preds = %for.end.98
  %90 = load i32, i32* %k, align 4
  %sub102 = sub nsw i32 %90, 1
  %idxprom103 = sext i32 %sub102 to i64
  %91 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc104 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 30
  %92 = load i32**, i32*** %tsc104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %92, i64 1
  %93 = load i32*, i32** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %93, i64 %idxprom103
  %94 = load i32, i32* %arrayidx106, align 4
  %95 = load i32, i32* %k, align 4
  %sub107 = sub nsw i32 %95, 1
  %idxprom108 = sext i32 %sub107 to i64
  %96 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc109 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 30
  %97 = load i32**, i32*** %tsc109, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %97, i64 3
  %98 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %98, i64 %idxprom108
  %99 = load i32, i32* %arrayidx111, align 4
  %add112 = add nsw i32 %94, %99
  %100 = load i32, i32* %k, align 4
  %sub113 = sub nsw i32 %100, 1
  %idxprom114 = sext i32 %sub113 to i64
  %101 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %101, i32 0, i32 30
  %102 = load i32**, i32*** %tsc115, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %102, i64 0
  %103 = load i32*, i32** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %103, i64 %idxprom114
  %104 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %add112, %104
  %105 = load i32, i32* %k, align 4
  %sub119 = sub nsw i32 %105, 1
  %idxprom120 = sext i32 %sub119 to i64
  %106 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc121 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 30
  %107 = load i32**, i32*** %tsc121, align 8
  %arrayidx122 = getelementptr inbounds i32*, i32** %107, i64 4
  %108 = load i32*, i32** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %108, i64 %idxprom120
  %109 = load i32, i32* %arrayidx123, align 4
  %sub124 = sub nsw i32 %sub118, %109
  %mul125 = mul nsw i32 -1, %sub124
  store i32 %mul125, i32* %gap, align 4
  %110 = load i32, i32* %gap, align 4
  %mul126 = mul nsw i32 %110, 100
  %conv127 = sitofp i32 %mul126 to double
  %div128 = fdiv double %conv127, 1.000000e+04
  %conv129 = fptosi double %div128 to i32
  store i32 %conv129, i32* %gap, align 4
  br label %if.end.131

if.else.130:                                      ; preds = %for.end.98
  store i32 100, i32* %gap, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %if.then.101
  %111 = load i32, i32* %k, align 4
  %cmp132 = icmp sgt i32 %111, 1
  br i1 %cmp132, label %if.then.134, label %if.else.145

if.then.134:                                      ; preds = %if.end.131
  %112 = load i32, i32* %k, align 4
  %sub135 = sub nsw i32 %112, 1
  %idxprom136 = sext i32 %sub135 to i64
  %113 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc137 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %113, i32 0, i32 30
  %114 = load i32**, i32*** %tsc137, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %114, i64 4
  %115 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %115, i64 %idxprom136
  %116 = load i32, i32* %arrayidx139, align 4
  %mul140 = mul nsw i32 -1, %116
  store i32 %mul140, i32* %len, align 4
  %117 = load i32, i32* %len, align 4
  %mul141 = mul nsw i32 %117, 100
  %conv142 = sitofp i32 %mul141 to double
  %div143 = fdiv double %conv142, 1.000000e+03
  %conv144 = fptosi double %div143 to i32
  store i32 %conv144, i32* %len, align 4
  br label %if.end.146

if.else.145:                                      ; preds = %if.end.131
  store i32 100, i32* %len, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.134
  %118 = load i32, i32* %k, align 4
  %cmp147 = icmp sgt i32 %118, 1
  br i1 %cmp147, label %if.then.149, label %if.else.178

if.then.149:                                      ; preds = %if.end.146
  %119 = load i32, i32* %k, align 4
  %sub150 = sub nsw i32 %119, 1
  %idxprom151 = sext i32 %sub150 to i64
  %120 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc152 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %120, i32 0, i32 30
  %121 = load i32**, i32*** %tsc152, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %121, i64 5
  %122 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %122, i64 %idxprom151
  %123 = load i32, i32* %arrayidx154, align 4
  %124 = load i32, i32* %k, align 4
  %sub155 = sub nsw i32 %124, 1
  %idxprom156 = sext i32 %sub155 to i64
  %125 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc157 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %125, i32 0, i32 30
  %126 = load i32**, i32*** %tsc157, align 8
  %arrayidx158 = getelementptr inbounds i32*, i32** %126, i64 2
  %127 = load i32*, i32** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %127, i64 %idxprom156
  %128 = load i32, i32* %arrayidx159, align 4
  %add160 = add nsw i32 %123, %128
  %129 = load i32, i32* %k, align 4
  %sub161 = sub nsw i32 %129, 1
  %idxprom162 = sext i32 %sub161 to i64
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc163 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 30
  %131 = load i32**, i32*** %tsc163, align 8
  %arrayidx164 = getelementptr inbounds i32*, i32** %131, i64 0
  %132 = load i32*, i32** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %132, i64 %idxprom162
  %133 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %add160, %133
  %134 = load i32, i32* %k, align 4
  %sub167 = sub nsw i32 %134, 1
  %idxprom168 = sext i32 %sub167 to i64
  %135 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc169 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 30
  %136 = load i32**, i32*** %tsc169, align 8
  %arrayidx170 = getelementptr inbounds i32*, i32** %136, i64 6
  %137 = load i32*, i32** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %137, i64 %idxprom168
  %138 = load i32, i32* %arrayidx171, align 4
  %sub172 = sub nsw i32 %sub166, %138
  %mul173 = mul nsw i32 -1, %sub172
  store i32 %mul173, i32* %qgap, align 4
  %139 = load i32, i32* %qgap, align 4
  %mul174 = mul nsw i32 %139, 100
  %conv175 = sitofp i32 %mul174 to double
  %div176 = fdiv double %conv175, 1.000000e+04
  %conv177 = fptosi double %div176 to i32
  store i32 %conv177, i32* %qgap, align 4
  br label %if.end.179

if.else.178:                                      ; preds = %if.end.146
  store i32 100, i32* %qgap, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.then.149
  %140 = load i32, i32* %k, align 4
  %cmp180 = icmp sgt i32 %140, 1
  br i1 %cmp180, label %if.then.182, label %if.else.193

if.then.182:                                      ; preds = %if.end.179
  %141 = load i32, i32* %k, align 4
  %sub183 = sub nsw i32 %141, 1
  %idxprom184 = sext i32 %sub183 to i64
  %142 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc185 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 30
  %143 = load i32**, i32*** %tsc185, align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %143, i64 6
  %144 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %144, i64 %idxprom184
  %145 = load i32, i32* %arrayidx187, align 4
  %mul188 = mul nsw i32 -1, %145
  store i32 %mul188, i32* %qlen, align 4
  %146 = load i32, i32* %qlen, align 4
  %mul189 = mul nsw i32 %146, 100
  %conv190 = sitofp i32 %mul189 to double
  %div191 = fdiv double %conv190, 1.000000e+03
  %conv192 = fptosi double %div191 to i32
  store i32 %conv192, i32* %qlen, align 4
  br label %if.end.194

if.else.193:                                      ; preds = %if.end.179
  store i32 100, i32* %qlen, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.182
  %147 = load i32, i32* %do_xsw.addr, align 4
  %tobool195 = icmp ne i32 %147, 0
  br i1 %tobool195, label %if.then.196, label %if.else.198

if.then.196:                                      ; preds = %if.end.194
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %149 = load i32, i32* %gap, align 4
  %150 = load i32, i32* %len, align 4
  %151 = load i32, i32* %qgap, align 4
  %152 = load i32, i32* %qlen, align 4
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i32 %149, i32 %150, i32 %151, i32 %152)
  br label %if.end.200

if.else.198:                                      ; preds = %if.end.194
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %154 = load i32, i32* %gap, align 4
  %155 = load i32, i32* %len, align 4
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %154, i32 %155)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.198, %if.then.196
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %156 = load i32, i32* %k, align 4
  %inc202 = add nsw i32 %156, 1
  store i32 %inc202, i32* %k, align 4
  br label %for.cond.57

for.end.203:                                      ; preds = %for.cond.57
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %x, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.227, %for.end.203
  %158 = load i32, i32* %x, align 4
  %159 = load i32, i32* @Alphabet_size, align 4
  %cmp206 = icmp slt i32 %158, %159
  br i1 %cmp206, label %for.body.208, label %for.end.229

for.body.208:                                     ; preds = %for.cond.205
  store float 0.000000e+00, float* %nx, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.220, %for.body.208
  %160 = load i32, i32* %k, align 4
  %161 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M210 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %161, i32 0, i32 20
  %162 = load i32, i32* %M210, align 4
  %cmp211 = icmp sle i32 %160, %162
  br i1 %cmp211, label %for.body.213, label %for.end.222

for.body.213:                                     ; preds = %for.cond.209
  %163 = load i32, i32* %x, align 4
  %idxprom214 = sext i32 %163 to i64
  %164 = load i32, i32* %k, align 4
  %idxprom215 = sext i32 %164 to i64
  %165 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat216 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 22
  %166 = load float**, float*** %mat216, align 8
  %arrayidx217 = getelementptr inbounds float*, float** %166, i64 %idxprom215
  %167 = load float*, float** %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds float, float* %167, i64 %idxprom214
  %168 = load float, float* %arrayidx218, align 4
  %169 = load float, float* %nx, align 4
  %add219 = fadd float %169, %168
  store float %add219, float* %nx, align 4
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.213
  %170 = load i32, i32* %k, align 4
  %inc221 = add nsw i32 %170, 1
  store i32 %inc221, i32* %k, align 4
  br label %for.cond.209

for.end.222:                                      ; preds = %for.cond.209
  %171 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %171, i32 0, i32 7
  %172 = load i32, i32* %nseq, align 4
  %conv223 = sitofp i32 %172 to float
  %173 = load float, float* %nx, align 4
  %mul224 = fmul float %173, %conv223
  store float %mul224, float* %nx, align 4
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %175 = load float, float* %nx, align 4
  %conv225 = fptosi float %175 to i32
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %conv225)
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.end.222
  %176 = load i32, i32* %x, align 4
  %inc228 = add nsw i32 %176, 1
  store i32 %inc228, i32* %x, align 4
  br label %for.cond.205

for.end.229:                                      ; preds = %for.cond.205
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.235, %for.end.229
  %177 = load i32, i32* %x, align 4
  %178 = load i32, i32* @Alphabet_iupac, align 4
  %cmp231 = icmp slt i32 %177, %178
  br i1 %cmp231, label %for.body.233, label %for.end.237

for.body.233:                                     ; preds = %for.cond.230
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0)
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.233
  %180 = load i32, i32* %x, align 4
  %inc236 = add nsw i32 %180, 1
  store i32 %inc236, i32* %x, align 4
  br label %for.cond.230

for.end.237:                                      ; preds = %for.cond.230
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare void @P7Logoddsify(%struct.plan7_s*, i32) #1

declare void @Warn(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @Die(i8*, ...) #1

declare i32 @FArgMax(float*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
