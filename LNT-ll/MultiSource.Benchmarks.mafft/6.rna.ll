; ModuleID = './MultiSource.Benchmarks.mafft/6.rna.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._RNApair = type { i32, float, i32, float, i32, float }

@rnaalifoldcall.order = internal global i32* null, align 8
@rnaalifoldcall.name = internal global i8** null, align 8
@rnaalifoldcall.pid = internal global i32 0, align 4
@rnaalifoldcall.fnamein = internal global [100 x i8] zeroinitializer, align 16
@rnaalifoldcall.cmd = internal global [1000 x i8] zeroinitializer, align 16
@rnaalifoldcall.pairnum = internal global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"/tmp/_rnaalifoldin.%d\00", align 1
@njob = external global i32, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"seq%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot open /tmp/_rnaalifoldin\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"RNAalifold -p %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"alifold.out\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%d %d %d %f\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%d-%d, %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rm -f %s\00", align 1
@foldrna.useq1 = internal global i8** null, align 8
@foldrna.useq2 = internal global i8** null, align 8
@foldrna.oseq1 = internal global i8** null, align 8
@foldrna.oseq2 = internal global i8** null, align 8
@foldrna.oseq1r = internal global i8** null, align 8
@foldrna.oseq2r = internal global i8** null, align 8
@foldrna.odir1 = internal global i8* null, align 8
@foldrna.odir2 = internal global i8* null, align 8
@foldrna.pairprob1 = internal global %struct._RNApair** null, align 8
@foldrna.pairprob2 = internal global %struct._RNApair** null, align 8
@foldrna.pairpt1 = internal global %struct._RNApair* null, align 8
@foldrna.pairpt2 = internal global %struct._RNApair* null, align 8
@foldrna.impmtx2 = internal global float** null, align 8
@foldrna.map = internal global float** null, align 8
@rnaprediction = external global i8, align 1
@RNAscoremtx = external global i8, align 1
@consweight_multi = external global float, align 4
@consweight_rna = external global float, align 4
@mccaskillextract.pairnum = internal global i32* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"okashii!\0A\00", align 1
@amino_n = external global [128 x i32], align 16
@n_dis = external global [26 x [26 x i32]], align 16
@ribosumdis = external global [37 x [37 x i32]], align 16

; Function Attrs: nounwind uwtable
define void @rnaalifoldcall(i8** %seq, i32 %nseq, %struct._RNApair** %pairprob) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %pairprob.addr = alloca %struct._RNApair**, align 8
  %lgth = alloca i32, align 4
  %i = alloca i32, align 4
  %gett = alloca [1000 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %dumm = alloca i32, align 4
  %prob = alloca float, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store %struct._RNApair** %pairprob, %struct._RNApair*** %pairprob.addr, align 8
  %0 = load i8**, i8*** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth, align 4
  %2 = load i32*, i32** @rnaalifoldcall.order, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @getpid() #6
  store i32 %call2, i32* @rnaalifoldcall.pid, align 4
  %3 = load i32, i32* @rnaalifoldcall.pid, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rnaalifoldcall.fnamein, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %3) #6
  %4 = load i32, i32* @njob, align 4
  %call4 = call i32* @AllocateIntVec(i32 %4)
  store i32* %call4, i32** @rnaalifoldcall.order, align 8
  %5 = load i32, i32* @njob, align 4
  %call5 = call i8** @AllocateCharMtx(i32 %5, i32 10)
  store i8** %call5, i8*** @rnaalifoldcall.name, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @njob, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** @rnaalifoldcall.order, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 %8, i32* %arrayidx8, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** @rnaalifoldcall.name, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %14 = load i32, i32* %i, align 4
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %14) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %16 = load i32, i32* %lgth, align 4
  %conv12 = sext i32 %16 to i64
  %call13 = call noalias i8* @calloc(i64 %conv12, i64 4) #6
  %17 = bitcast i8* %call13 to i32*
  store i32* %17, i32** @rnaalifoldcall.pairnum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %if.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %lgth, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %21, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %22 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  %call23 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rnaalifoldcall.fnamein, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call23, %struct._IO_FILE** %fp, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %for.end.22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.26:                                        ; preds = %for.end.22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %26 = load i32, i32* %nseq.addr, align 4
  %27 = load i32, i32* %lgth, align 4
  %28 = load i8**, i8*** %seq.addr, align 8
  %29 = load i8**, i8*** @rnaalifoldcall.name, align 8
  %30 = load i32*, i32** @rnaalifoldcall.order, align 8
  call void @clustalout_pointer(%struct._IO_FILE* %25, i32 %26, i32 %27, i8** %28, i8** %29, i8* null, i8* null, i32* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* %31)
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rnaalifoldcall.cmd, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rnaalifoldcall.fnamein, i32 0, i32 0)) #6
  %call29 = call i32 @system(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rnaalifoldcall.cmd, i32 0, i32 0))
  %call30 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call30, %struct._IO_FILE** %fp, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool31 = icmp ne %struct._IO_FILE* %32, null
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %if.end.26
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.34:                                        ; preds = %if.end.26
  br label %while.body

while.body:                                       ; preds = %if.end.34, %if.then.64, %if.end.160
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i8* @fgets(i8* %arraydecay, i32 999, %struct._IO_FILE* %34)
  %arrayidx36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i64 0
  %35 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %35 to i32
  %cmp38 = icmp eq i32 %conv37, 40
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body
  br label %while.end

if.end.41:                                        ; preds = %while.body
  %arrayidx42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i64 0
  %36 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %36 to i32
  %cmp44 = icmp eq i32 %conv43, 123
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.41
  br label %while.end

if.end.47:                                        ; preds = %if.end.41
  %arrayidx48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i64 0
  %37 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %37 to i32
  %cmp50 = icmp eq i32 %conv49, 46
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  br label %while.end

if.end.53:                                        ; preds = %if.end.47
  %arrayidx54 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i64 0
  %38 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %38 to i32
  %cmp56 = icmp eq i32 %conv55, 44
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  br label %while.end

if.end.59:                                        ; preds = %if.end.53
  %arrayidx60 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i64 0
  %39 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %39 to i32
  %cmp62 = icmp ne i32 %conv61, 32
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.59
  br label %while.body

if.end.65:                                        ; preds = %if.end.59
  %arraydecay66 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32* %left, i32* %right, i32* %dumm, float* %prob) #6
  %40 = load i32, i32* %left, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %left, align 4
  %41 = load i32, i32* %right, align 4
  %dec68 = add nsw i32 %41, -1
  store i32 %dec68, i32* %right, align 4
  %42 = load float, float* %prob, align 4
  %conv69 = fpext float %42 to double
  %cmp70 = fcmp ogt double %conv69, 0.000000e+00
  br i1 %cmp70, label %if.then.72, label %if.end.160

if.then.72:                                       ; preds = %if.end.65
  %43 = load i32, i32* %left, align 4
  %idxprom73 = sext i32 %43 to i64
  %44 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %44, i64 %idxprom73
  %45 = load %struct._RNApair*, %struct._RNApair** %arrayidx74, align 8
  %46 = bitcast %struct._RNApair* %45 to i8*
  %47 = load i32, i32* %left, align 4
  %idxprom75 = sext i32 %47 to i64
  %48 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %48, i64 %idxprom75
  %49 = load i32, i32* %arrayidx76, align 4
  %add = add nsw i32 %49, 2
  %conv77 = sext i32 %add to i64
  %mul = mul i64 %conv77, 24
  %call78 = call i8* @realloc(i8* %46, i64 %mul) #6
  %50 = bitcast i8* %call78 to %struct._RNApair*
  %51 = load i32, i32* %left, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %52, i64 %idxprom79
  store %struct._RNApair* %50, %struct._RNApair** %arrayidx80, align 8
  %53 = load float, float* %prob, align 4
  %conv81 = fpext float %53 to double
  %div = fdiv double %conv81, 1.000000e+02
  %conv82 = fptrunc double %div to float
  %54 = load i32, i32* %left, align 4
  %idxprom83 = sext i32 %54 to i64
  %55 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %55, i64 %idxprom83
  %56 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %56 to i64
  %57 = load i32, i32* %left, align 4
  %idxprom86 = sext i32 %57 to i64
  %58 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %58, i64 %idxprom86
  %59 = load %struct._RNApair*, %struct._RNApair** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %59, i64 %idxprom85
  %bestscore = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx88, i32 0, i32 5
  store float %conv82, float* %bestscore, align 4
  %60 = load i32, i32* %right, align 4
  %61 = load i32, i32* %left, align 4
  %idxprom89 = sext i32 %61 to i64
  %62 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %62, i64 %idxprom89
  %63 = load i32, i32* %arrayidx90, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load i32, i32* %left, align 4
  %idxprom92 = sext i32 %64 to i64
  %65 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %65, i64 %idxprom92
  %66 = load %struct._RNApair*, %struct._RNApair** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %66, i64 %idxprom91
  %bestpos = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx94, i32 0, i32 4
  store i32 %60, i32* %bestpos, align 4
  %67 = load i32, i32* %left, align 4
  %idxprom95 = sext i32 %67 to i64
  %68 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %68, i64 %idxprom95
  %69 = load i32, i32* %arrayidx96, align 4
  %inc97 = add nsw i32 %69, 1
  store i32 %inc97, i32* %arrayidx96, align 4
  %70 = load i32, i32* %left, align 4
  %idxprom98 = sext i32 %70 to i64
  %71 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %71, i64 %idxprom98
  %72 = load i32, i32* %arrayidx99, align 4
  %idxprom100 = sext i32 %72 to i64
  %73 = load i32, i32* %left, align 4
  %idxprom101 = sext i32 %73 to i64
  %74 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %74, i64 %idxprom101
  %75 = load %struct._RNApair*, %struct._RNApair** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %75, i64 %idxprom100
  %bestscore104 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx103, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore104, align 4
  %76 = load i32, i32* %left, align 4
  %idxprom105 = sext i32 %76 to i64
  %77 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %77, i64 %idxprom105
  %78 = load i32, i32* %arrayidx106, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load i32, i32* %left, align 4
  %idxprom108 = sext i32 %79 to i64
  %80 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %80, i64 %idxprom108
  %81 = load %struct._RNApair*, %struct._RNApair** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %81, i64 %idxprom107
  %bestpos111 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx110, i32 0, i32 4
  store i32 -1, i32* %bestpos111, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = load i32, i32* %left, align 4
  %84 = load i32, i32* %right, align 4
  %85 = load float, float* %prob, align 4
  %conv112 = fpext float %85 to double
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %83, i32 %84, double %conv112)
  %86 = load i32, i32* %right, align 4
  %idxprom114 = sext i32 %86 to i64
  %87 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %87, i64 %idxprom114
  %88 = load %struct._RNApair*, %struct._RNApair** %arrayidx115, align 8
  %89 = bitcast %struct._RNApair* %88 to i8*
  %90 = load i32, i32* %right, align 4
  %idxprom116 = sext i32 %90 to i64
  %91 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %91, i64 %idxprom116
  %92 = load i32, i32* %arrayidx117, align 4
  %add118 = add nsw i32 %92, 2
  %conv119 = sext i32 %add118 to i64
  %mul120 = mul i64 %conv119, 24
  %call121 = call i8* @realloc(i8* %89, i64 %mul120) #6
  %93 = bitcast i8* %call121 to %struct._RNApair*
  %94 = load i32, i32* %right, align 4
  %idxprom122 = sext i32 %94 to i64
  %95 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %95, i64 %idxprom122
  store %struct._RNApair* %93, %struct._RNApair** %arrayidx123, align 8
  %96 = load float, float* %prob, align 4
  %conv124 = fpext float %96 to double
  %div125 = fdiv double %conv124, 1.000000e+02
  %conv126 = fptrunc double %div125 to float
  %97 = load i32, i32* %right, align 4
  %idxprom127 = sext i32 %97 to i64
  %98 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %98, i64 %idxprom127
  %99 = load i32, i32* %arrayidx128, align 4
  %idxprom129 = sext i32 %99 to i64
  %100 = load i32, i32* %right, align 4
  %idxprom130 = sext i32 %100 to i64
  %101 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %101, i64 %idxprom130
  %102 = load %struct._RNApair*, %struct._RNApair** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %102, i64 %idxprom129
  %bestscore133 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx132, i32 0, i32 5
  store float %conv126, float* %bestscore133, align 4
  %103 = load i32, i32* %left, align 4
  %104 = load i32, i32* %right, align 4
  %idxprom134 = sext i32 %104 to i64
  %105 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %105, i64 %idxprom134
  %106 = load i32, i32* %arrayidx135, align 4
  %idxprom136 = sext i32 %106 to i64
  %107 = load i32, i32* %right, align 4
  %idxprom137 = sext i32 %107 to i64
  %108 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %108, i64 %idxprom137
  %109 = load %struct._RNApair*, %struct._RNApair** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %109, i64 %idxprom136
  %bestpos140 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx139, i32 0, i32 4
  store i32 %103, i32* %bestpos140, align 4
  %110 = load i32, i32* %right, align 4
  %idxprom141 = sext i32 %110 to i64
  %111 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %111, i64 %idxprom141
  %112 = load i32, i32* %arrayidx142, align 4
  %inc143 = add nsw i32 %112, 1
  store i32 %inc143, i32* %arrayidx142, align 4
  %113 = load i32, i32* %right, align 4
  %idxprom144 = sext i32 %113 to i64
  %114 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %114, i64 %idxprom144
  %115 = load i32, i32* %arrayidx145, align 4
  %idxprom146 = sext i32 %115 to i64
  %116 = load i32, i32* %right, align 4
  %idxprom147 = sext i32 %116 to i64
  %117 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx148 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %117, i64 %idxprom147
  %118 = load %struct._RNApair*, %struct._RNApair** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %118, i64 %idxprom146
  %bestscore150 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx149, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore150, align 4
  %119 = load i32, i32* %right, align 4
  %idxprom151 = sext i32 %119 to i64
  %120 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %120, i64 %idxprom151
  %121 = load i32, i32* %arrayidx152, align 4
  %idxprom153 = sext i32 %121 to i64
  %122 = load i32, i32* %right, align 4
  %idxprom154 = sext i32 %122 to i64
  %123 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %123, i64 %idxprom154
  %124 = load %struct._RNApair*, %struct._RNApair** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %124, i64 %idxprom153
  %bestpos157 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx156, i32 0, i32 4
  store i32 -1, i32* %bestpos157, align 4
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = load i32, i32* %left, align 4
  %127 = load i32, i32* %right, align 4
  %128 = load float, float* %prob, align 4
  %conv158 = fpext float %128 to double
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %126, i32 %127, double %conv158)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.72, %if.end.65
  br label %while.body

while.end:                                        ; preds = %if.then.58, %if.then.52, %if.then.46, %if.then.40
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call161 = call i32 @fclose(%struct._IO_FILE* %129)
  %call162 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rnaalifoldcall.cmd, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rnaalifoldcall.fnamein, i32 0, i32 0)) #6
  %call163 = call i32 @system(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rnaalifoldcall.cmd, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.188, %while.end
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %lgth, align 4
  %cmp165 = icmp slt i32 %130, %131
  br i1 %cmp165, label %for.body.167, label %for.end.190

for.body.167:                                     ; preds = %for.cond.164
  %132 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %132 to i64
  %133 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx169 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %133, i64 %idxprom168
  %134 = load %struct._RNApair*, %struct._RNApair** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %134, i64 0
  %bestpos171 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx170, i32 0, i32 4
  %135 = load i32, i32* %bestpos171, align 4
  store i32 %135, i32* %right, align 4
  %cmp172 = icmp sgt i32 %135, -1
  br i1 %cmp172, label %if.then.174, label %if.end.187

if.then.174:                                      ; preds = %for.body.167
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* %right, align 4
  %idxprom175 = sext i32 %137 to i64
  %138 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx176 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %138, i64 %idxprom175
  %139 = load %struct._RNApair*, %struct._RNApair** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %139, i64 0
  %bestpos178 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx177, i32 0, i32 4
  store i32 %136, i32* %bestpos178, align 4
  %140 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %140 to i64
  %141 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %141, i64 %idxprom179
  %142 = load %struct._RNApair*, %struct._RNApair** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %142, i64 0
  %bestscore182 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx181, i32 0, i32 5
  %143 = load float, float* %bestscore182, align 4
  %144 = load i32, i32* %right, align 4
  %idxprom183 = sext i32 %144 to i64
  %145 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx184 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %145, i64 %idxprom183
  %146 = load %struct._RNApair*, %struct._RNApair** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %146, i64 0
  %bestscore186 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx185, i32 0, i32 5
  store float %143, float* %bestscore186, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.174, %for.body.167
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %147 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %147, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond.164

for.end.190:                                      ; preds = %for.cond.164
  %148 = load i32*, i32** @rnaalifoldcall.pairnum, align 8
  %149 = bitcast i32* %148 to i8*
  call void @free(i8* %149) #6
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32* @AllocateIntVec(i32) #3

declare i8** @AllocateCharMtx(i32, i32) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @clustalout_pointer(%struct._IO_FILE*, i32, i32, i8**, i8**, i8*, i8*, i32*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @system(i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @foldrna(i32 %nseq1, i32 %nseq2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._RNApair*** %grouprna1, %struct._RNApair*** %grouprna2, float** %impmtx, i32* %gapmap1, i32* %gapmap2, %struct._RNApair* %additionalpair) #0 {
entry:
  %nseq1.addr = alloca i32, align 4
  %nseq2.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %grouprna1.addr = alloca %struct._RNApair***, align 8
  %grouprna2.addr = alloca %struct._RNApair***, align 8
  %impmtx.addr = alloca float**, align 8
  %gapmap1.addr = alloca i32*, align 8
  %gapmap2.addr = alloca i32*, align 8
  %additionalpair.addr = alloca %struct._RNApair*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %uido = alloca i32, align 4
  %ujdo = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %prob = alloca float, align 4
  %sgapmap1 = alloca i32**, align 8
  %sgapmap2 = alloca i32**, align 8
  %nogapdum = alloca i8*, align 8
  %tbppmtx = alloca float**, align 8
  store i32 %nseq1, i32* %nseq1.addr, align 4
  store i32 %nseq2, i32* %nseq2.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store %struct._RNApair*** %grouprna1, %struct._RNApair**** %grouprna1.addr, align 8
  store %struct._RNApair*** %grouprna2, %struct._RNApair**** %grouprna2.addr, align 8
  store float** %impmtx, float*** %impmtx.addr, align 8
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  store %struct._RNApair* %additionalpair, %struct._RNApair** %additionalpair.addr, align 8
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %lgth2, align 4
  %4 = load i32, i32* %nseq1.addr, align 4
  %5 = load i32, i32* %lgth1, align 4
  %add = add nsw i32 %5, 10
  %call4 = call i8** @AllocateCharMtx(i32 %4, i32 %add)
  store i8** %call4, i8*** @foldrna.useq1, align 8
  %6 = load i32, i32* %nseq2.addr, align 4
  %7 = load i32, i32* %lgth2, align 4
  %add5 = add nsw i32 %7, 10
  %call6 = call i8** @AllocateCharMtx(i32 %6, i32 %add5)
  store i8** %call6, i8*** @foldrna.useq2, align 8
  %8 = load i32, i32* %nseq1.addr, align 4
  %9 = load i32, i32* %lgth1, align 4
  %add7 = add nsw i32 %9, 10
  %call8 = call i8** @AllocateCharMtx(i32 %8, i32 %add7)
  store i8** %call8, i8*** @foldrna.oseq1, align 8
  %10 = load i32, i32* %nseq2.addr, align 4
  %11 = load i32, i32* %lgth2, align 4
  %add9 = add nsw i32 %11, 10
  %call10 = call i8** @AllocateCharMtx(i32 %10, i32 %add9)
  store i8** %call10, i8*** @foldrna.oseq2, align 8
  %12 = load i32, i32* %nseq1.addr, align 4
  %13 = load i32, i32* %lgth1, align 4
  %add11 = add nsw i32 %13, 10
  %call12 = call i8** @AllocateCharMtx(i32 %12, i32 %add11)
  store i8** %call12, i8*** @foldrna.oseq1r, align 8
  %14 = load i32, i32* %nseq2.addr, align 4
  %15 = load i32, i32* %lgth2, align 4
  %add13 = add nsw i32 %15, 10
  %call14 = call i8** @AllocateCharMtx(i32 %14, i32 %add13)
  store i8** %call14, i8*** @foldrna.oseq2r, align 8
  %16 = load i32, i32* %lgth1, align 4
  %add15 = add nsw i32 %16, 10
  %call16 = call i8* @AllocateCharVec(i32 %add15)
  store i8* %call16, i8** @foldrna.odir1, align 8
  %17 = load i32, i32* %lgth2, align 4
  %add17 = add nsw i32 %17, 10
  %call18 = call i8* @AllocateCharVec(i32 %add17)
  store i8* %call18, i8** @foldrna.odir2, align 8
  %18 = load i32, i32* %nseq1.addr, align 4
  %19 = load i32, i32* %lgth1, align 4
  %add19 = add nsw i32 %19, 1
  %call20 = call i32** @AllocateIntMtx(i32 %18, i32 %add19)
  store i32** %call20, i32*** %sgapmap1, align 8
  %20 = load i32, i32* %nseq2.addr, align 4
  %21 = load i32, i32* %lgth2, align 4
  %add21 = add nsw i32 %21, 1
  %call22 = call i32** @AllocateIntMtx(i32 %20, i32 %add21)
  store i32** %call22, i32*** %sgapmap2, align 8
  %22 = load i32, i32* %lgth1, align 4
  %23 = load i32, i32* %lgth2, align 4
  %cmp = icmp sgt i32 %22, %23
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %24 = load i32, i32* %lgth1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %25 = load i32, i32* %lgth2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  %call24 = call i8* @AllocateCharVec(i32 %cond)
  store i8* %call24, i8** %nogapdum, align 8
  %26 = load i32, i32* %lgth1, align 4
  %conv25 = sext i32 %26 to i64
  %call26 = call noalias i8* @calloc(i64 %conv25, i64 8) #6
  %27 = bitcast i8* %call26 to %struct._RNApair**
  store %struct._RNApair** %27, %struct._RNApair*** @foldrna.pairprob1, align 8
  %28 = load i32, i32* %lgth2, align 4
  %conv27 = sext i32 %28 to i64
  %call28 = call noalias i8* @calloc(i64 %conv27, i64 8) #6
  %29 = bitcast i8* %call28 to %struct._RNApair**
  store %struct._RNApair** %29, %struct._RNApair*** @foldrna.pairprob2, align 8
  %30 = load i32, i32* %lgth1, align 4
  %31 = load i32, i32* %lgth2, align 4
  %call29 = call float** @AllocateFloatMtx(i32 %30, i32 %31)
  store float** %call29, float*** @foldrna.map, align 8
  %32 = load i32, i32* %lgth1, align 4
  %33 = load i32, i32* %lgth2, align 4
  %call30 = call float** @AllocateFloatMtx(i32 %32, i32 %33)
  store float** %call30, float*** @foldrna.impmtx2, align 8
  %34 = load i32, i32* %lgth1, align 4
  %35 = load i32, i32* %lgth2, align 4
  %call31 = call float** @AllocateFloatMtx(i32 %34, i32 %35)
  store float** %call31, float*** %tbppmtx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %nseq1.addr, align 4
  %cmp32 = icmp slt i32 %36, %37
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i8**, i8*** @foldrna.useq1, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %39, i64 %idxprom
  %40 = load i8*, i8** %arrayidx34, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %42, i64 %idxprom35
  %43 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i8* @strcpy(i8* %40, i8* %43) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %for.end
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %nseq2.addr, align 4
  %cmp39 = icmp slt i32 %45, %46
  br i1 %cmp39, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %47 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %47 to i64
  %48 = load i8**, i8*** @foldrna.useq2, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %48, i64 %idxprom42
  %49 = load i8*, i8** %arrayidx43, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %51, i64 %idxprom44
  %52 = load i8*, i8** %arrayidx45, align 8
  %call46 = call i8* @strcpy(i8* %49, i8* %52) #6
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.41
  %53 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %53, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.59, %for.end.49
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %nseq1.addr, align 4
  %cmp51 = icmp slt i32 %54, %55
  br i1 %cmp51, label %for.body.53, label %for.end.61

for.body.53:                                      ; preds = %for.cond.50
  %56 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %56 to i64
  %57 = load i8**, i8*** @foldrna.oseq1, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %57, i64 %idxprom54
  %58 = load i8*, i8** %arrayidx55, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %59 to i64
  %60 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %60, i64 %idxprom56
  %61 = load i8*, i8** %arrayidx57, align 8
  %call58 = call i8* @strcpy(i8* %58, i8* %61) #6
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.53
  %62 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.50

for.end.61:                                       ; preds = %for.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.71, %for.end.61
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %nseq2.addr, align 4
  %cmp63 = icmp slt i32 %63, %64
  br i1 %cmp63, label %for.body.65, label %for.end.73

for.body.65:                                      ; preds = %for.cond.62
  %65 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %65 to i64
  %66 = load i8**, i8*** @foldrna.oseq2, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %66, i64 %idxprom66
  %67 = load i8*, i8** %arrayidx67, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %68 to i64
  %69 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %69, i64 %idxprom68
  %70 = load i8*, i8** %arrayidx69, align 8
  %call70 = call i8* @strcpy(i8* %67, i8* %70) #6
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.65
  %71 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %71, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.62

for.end.73:                                       ; preds = %for.cond.62
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.80, %for.end.73
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %nseq1.addr, align 4
  %cmp75 = icmp slt i32 %72, %73
  br i1 %cmp75, label %for.body.77, label %for.end.82

for.body.77:                                      ; preds = %for.cond.74
  %74 = load i8**, i8*** @foldrna.useq1, align 8
  %75 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %75 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %74, i64 %idx.ext
  %76 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %76 to i64
  %77 = load i32**, i32*** %sgapmap1, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %77, i64 %idxprom78
  %78 = load i32*, i32** %arrayidx79, align 8
  call void @commongappick_record(i32 1, i8** %add.ptr, i32* %78)
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.77
  %79 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %79, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.74

for.end.82:                                       ; preds = %for.cond.74
  store i32 0, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.91, %for.end.82
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %nseq2.addr, align 4
  %cmp84 = icmp slt i32 %80, %81
  br i1 %cmp84, label %for.body.86, label %for.end.93

for.body.86:                                      ; preds = %for.cond.83
  %82 = load i8**, i8*** @foldrna.useq2, align 8
  %83 = load i32, i32* %i, align 4
  %idx.ext87 = sext i32 %83 to i64
  %add.ptr88 = getelementptr inbounds i8*, i8** %82, i64 %idx.ext87
  %84 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %84 to i64
  %85 = load i32**, i32*** %sgapmap2, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %85, i64 %idxprom89
  %86 = load i32*, i32** %arrayidx90, align 8
  call void @commongappick_record(i32 1, i8** %add.ptr88, i32* %86)
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.86
  %87 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %87, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.83

for.end.93:                                       ; preds = %for.cond.83
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.107, %for.end.93
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %lgth1, align 4
  %cmp95 = icmp slt i32 %88, %89
  br i1 %cmp95, label %for.body.97, label %for.end.109

for.body.97:                                      ; preds = %for.cond.94
  %call98 = call noalias i8* @calloc(i64 1, i64 24) #6
  %90 = bitcast i8* %call98 to %struct._RNApair*
  %91 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %91 to i64
  %92 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %arrayidx100 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %92, i64 %idxprom99
  store %struct._RNApair* %90, %struct._RNApair** %arrayidx100, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %93 to i64
  %94 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %arrayidx102 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %94, i64 %idxprom101
  %95 = load %struct._RNApair*, %struct._RNApair** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %95, i64 0
  %bestpos = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx103, i32 0, i32 4
  store i32 -1, i32* %bestpos, align 4
  %96 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %96 to i64
  %97 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %arrayidx105 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %97, i64 %idxprom104
  %98 = load %struct._RNApair*, %struct._RNApair** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %98, i64 0
  %bestscore = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx106, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore, align 4
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.97
  %99 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %99, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond.94

for.end.109:                                      ; preds = %for.cond.94
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.125, %for.end.109
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %lgth2, align 4
  %cmp111 = icmp slt i32 %100, %101
  br i1 %cmp111, label %for.body.113, label %for.end.127

for.body.113:                                     ; preds = %for.cond.110
  %call114 = call noalias i8* @calloc(i64 1, i64 24) #6
  %102 = bitcast i8* %call114 to %struct._RNApair*
  %103 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %103 to i64
  %104 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %arrayidx116 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %104, i64 %idxprom115
  store %struct._RNApair* %102, %struct._RNApair** %arrayidx116, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %105 to i64
  %106 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %arrayidx118 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %106, i64 %idxprom117
  %107 = load %struct._RNApair*, %struct._RNApair** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %107, i64 0
  %bestpos120 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx119, i32 0, i32 4
  store i32 -1, i32* %bestpos120, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %108 to i64
  %109 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %arrayidx122 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %109, i64 %idxprom121
  %110 = load %struct._RNApair*, %struct._RNApair** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %110, i64 0
  %bestscore124 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx123, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore124, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.113
  %111 = load i32, i32* %i, align 4
  %inc126 = add nsw i32 %111, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond.110

for.end.127:                                      ; preds = %for.cond.110
  %112 = load i32, i32* %nseq1.addr, align 4
  %113 = load i32, i32* %lgth1, align 4
  %114 = load i8**, i8*** @foldrna.oseq1, align 8
  call void @utot(i32 %112, i32 %113, i8** %114)
  %115 = load i32, i32* %nseq2.addr, align 4
  %116 = load i32, i32* %lgth2, align 4
  %117 = load i8**, i8*** @foldrna.oseq2, align 8
  call void @utot(i32 %115, i32 %116, i8** %117)
  %118 = load i8, i8* @rnaprediction, align 1
  %conv128 = sext i8 %118 to i32
  %cmp129 = icmp eq i32 %conv128, 114
  br i1 %cmp129, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.127
  %119 = load i8**, i8*** @foldrna.oseq1, align 8
  %120 = load i32, i32* %nseq1.addr, align 4
  %121 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  call void @rnaalifoldcall(i8** %119, i32 %120, %struct._RNApair** %121)
  br label %if.end

if.else:                                          ; preds = %for.end.127
  %122 = load i8**, i8*** @foldrna.oseq1, align 8
  %123 = load i8**, i8*** @foldrna.useq1, align 8
  %124 = load i32, i32* %nseq1.addr, align 4
  %125 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %126 = load %struct._RNApair***, %struct._RNApair**** %grouprna1.addr, align 8
  %127 = load i32**, i32*** %sgapmap1, align 8
  %128 = load double*, double** %eff1.addr, align 8
  call void @mccaskillextract(i8** %122, i8** %123, i32 %124, %struct._RNApair** %125, %struct._RNApair*** %126, i32** %127, double* %128)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %129 = load i8, i8* @rnaprediction, align 1
  %conv131 = sext i8 %129 to i32
  %cmp132 = icmp eq i32 %conv131, 114
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %if.end
  %130 = load i8**, i8*** @foldrna.oseq2, align 8
  %131 = load i32, i32* %nseq2.addr, align 4
  %132 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  call void @rnaalifoldcall(i8** %130, i32 %131, %struct._RNApair** %132)
  br label %if.end.136

if.else.135:                                      ; preds = %if.end
  %133 = load i8**, i8*** @foldrna.oseq2, align 8
  %134 = load i8**, i8*** @foldrna.useq2, align 8
  %135 = load i32, i32* %nseq2.addr, align 4
  %136 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %137 = load %struct._RNApair***, %struct._RNApair**** %grouprna2.addr, align 8
  %138 = load i32**, i32*** %sgapmap2, align 8
  %139 = load double*, double** %eff2.addr, align 8
  call void @mccaskillextract(i8** %133, i8** %134, i32 %135, %struct._RNApair** %136, %struct._RNApair*** %137, i32** %138, double* %139)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.134
  %140 = load i8**, i8*** @foldrna.oseq1, align 8
  %141 = load i8**, i8*** @foldrna.oseq2, align 8
  %142 = load double*, double** %eff1.addr, align 8
  %143 = load double*, double** %eff2.addr, align 8
  %144 = load i32, i32* %nseq1.addr, align 4
  %145 = load i32, i32* %nseq2.addr, align 4
  %146 = load float**, float*** @foldrna.map, align 8
  %call137 = call float @Lalignmm_hmout(i8** %140, i8** %141, double* %142, double* %143, i32 %144, i32 %145, i32 10000, i8* null, i8* null, i8* null, i8* null, float** %146)
  %147 = load i8, i8* @RNAscoremtx, align 1
  %conv138 = sext i8 %147 to i32
  %cmp139 = icmp eq i32 %conv138, 110
  br i1 %cmp139, label %if.then.141, label %if.else.160

if.then.141:                                      ; preds = %if.end.136
  store i32 0, i32* %i, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.157, %if.then.141
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %lgth1, align 4
  %cmp143 = icmp slt i32 %148, %149
  br i1 %cmp143, label %for.body.145, label %for.end.159

for.body.145:                                     ; preds = %for.cond.142
  store i32 0, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.154, %for.body.145
  %150 = load i32, i32* %j, align 4
  %151 = load i32, i32* %lgth2, align 4
  %cmp147 = icmp slt i32 %150, %151
  br i1 %cmp147, label %for.body.149, label %for.end.156

for.body.149:                                     ; preds = %for.cond.146
  %152 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %152 to i64
  %153 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %153 to i64
  %154 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx152 = getelementptr inbounds float*, float** %154, i64 %idxprom151
  %155 = load float*, float** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds float, float* %155, i64 %idxprom150
  store float 0.000000e+00, float* %arrayidx153, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.149
  %156 = load i32, i32* %j, align 4
  %inc155 = add nsw i32 %156, 1
  store i32 %inc155, i32* %j, align 4
  br label %for.cond.146

for.end.156:                                      ; preds = %for.cond.146
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.156
  %157 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %157, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.142

for.end.159:                                      ; preds = %for.cond.142
  br label %if.end.297

if.else.160:                                      ; preds = %if.end.136
  %158 = load i8, i8* @RNAscoremtx, align 1
  %conv161 = sext i8 %158 to i32
  %cmp162 = icmp eq i32 %conv161, 114
  br i1 %cmp162, label %if.then.164, label %if.end.296

if.then.164:                                      ; preds = %if.else.160
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.184, %if.then.164
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %lgth1, align 4
  %cmp166 = icmp slt i32 %159, %160
  br i1 %cmp166, label %for.body.168, label %for.end.186

for.body.168:                                     ; preds = %for.cond.165
  store i32 0, i32* %j, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.181, %for.body.168
  %161 = load i32, i32* %j, align 4
  %162 = load i32, i32* %lgth2, align 4
  %cmp170 = icmp slt i32 %161, %162
  br i1 %cmp170, label %for.body.172, label %for.end.183

for.body.172:                                     ; preds = %for.cond.169
  %163 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %164 to i64
  %165 = load float**, float*** %tbppmtx, align 8
  %arrayidx175 = getelementptr inbounds float*, float** %165, i64 %idxprom174
  %166 = load float*, float** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds float, float* %166, i64 %idxprom173
  store float 1.000000e+00, float* %arrayidx176, align 4
  %167 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %167 to i64
  %168 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %168 to i64
  %169 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx179 = getelementptr inbounds float*, float** %169, i64 %idxprom178
  %170 = load float*, float** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds float, float* %170, i64 %idxprom177
  store float 0.000000e+00, float* %arrayidx180, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.172
  %171 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %171, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.169

for.end.183:                                      ; preds = %for.cond.169
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %172 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %172, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond.165

for.end.186:                                      ; preds = %for.cond.165
  store i32 0, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.267, %for.end.186
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* %lgth1, align 4
  %cmp188 = icmp slt i32 %173, %174
  br i1 %cmp188, label %for.body.190, label %for.end.269

for.body.190:                                     ; preds = %for.cond.187
  %175 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %175 to i64
  %176 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %arrayidx192 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %176, i64 %idxprom191
  %177 = load %struct._RNApair*, %struct._RNApair** %arrayidx192, align 8
  store %struct._RNApair* %177, %struct._RNApair** @foldrna.pairpt1, align 8
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.264, %for.body.190
  %178 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %bestpos194 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %178, i32 0, i32 4
  %179 = load i32, i32* %bestpos194, align 4
  %cmp195 = icmp ne i32 %179, -1
  br i1 %cmp195, label %for.body.197, label %for.end.266

for.body.197:                                     ; preds = %for.cond.193
  store i32 0, i32* %j, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.261, %for.body.197
  %180 = load i32, i32* %j, align 4
  %181 = load i32, i32* %lgth2, align 4
  %cmp199 = icmp slt i32 %180, %181
  br i1 %cmp199, label %for.body.201, label %for.end.263

for.body.201:                                     ; preds = %for.cond.198
  %182 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %182 to i64
  %183 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %arrayidx203 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %183, i64 %idxprom202
  %184 = load %struct._RNApair*, %struct._RNApair** %arrayidx203, align 8
  store %struct._RNApair* %184, %struct._RNApair** @foldrna.pairpt2, align 8
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.259, %for.body.201
  %185 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %bestpos205 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %185, i32 0, i32 4
  %186 = load i32, i32* %bestpos205, align 4
  %cmp206 = icmp ne i32 %186, -1
  br i1 %cmp206, label %for.body.208, label %for.end.260

for.body.208:                                     ; preds = %for.cond.204
  %187 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %bestpos209 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %187, i32 0, i32 4
  %188 = load i32, i32* %bestpos209, align 4
  store i32 %188, i32* %uido, align 4
  %189 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %bestpos210 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %189, i32 0, i32 4
  %190 = load i32, i32* %bestpos210, align 4
  store i32 %190, i32* %ujdo, align 4
  %191 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %bestscore211 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %191, i32 0, i32 5
  %192 = load float, float* %bestscore211, align 4
  %193 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %bestscore212 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %193, i32 0, i32 5
  %194 = load float, float* %bestscore212, align 4
  %mul = fmul float %192, %194
  store float %mul, float* %prob, align 4
  %195 = load i32, i32* %uido, align 4
  %cmp213 = icmp sgt i32 %195, -1
  br i1 %cmp213, label %land.lhs.true, label %if.end.258

land.lhs.true:                                    ; preds = %for.body.208
  %196 = load i32, i32* %ujdo, align 4
  %cmp215 = icmp sgt i32 %196, -1
  br i1 %cmp215, label %if.then.217, label %if.end.258

if.then.217:                                      ; preds = %land.lhs.true
  %197 = load i32, i32* %uido, align 4
  %198 = load i32, i32* %i, align 4
  %cmp218 = icmp sgt i32 %197, %198
  br i1 %cmp218, label %land.lhs.true.220, label %if.else.236

land.lhs.true.220:                                ; preds = %if.then.217
  %199 = load i32, i32* %j, align 4
  %200 = load i32, i32* %ujdo, align 4
  %cmp221 = icmp sgt i32 %199, %200
  br i1 %cmp221, label %if.then.223, label %if.else.236

if.then.223:                                      ; preds = %land.lhs.true.220
  %201 = load float, float* %prob, align 4
  %202 = load i32, i32* %nseq1.addr, align 4
  %203 = load i32, i32* %nseq2.addr, align 4
  %204 = load i8**, i8*** @foldrna.oseq1, align 8
  %205 = load i8**, i8*** @foldrna.oseq2, align 8
  %206 = load double*, double** %eff1.addr, align 8
  %207 = load double*, double** %eff2.addr, align 8
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %j, align 4
  %210 = load i32, i32* %uido, align 4
  %211 = load i32, i32* %ujdo, align 4
  %call224 = call float @pairedribosumscore53(i32 %202, i32 %203, i8** %204, i8** %205, double* %206, double* %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %mul225 = fmul float %201, %call224
  %212 = load float, float* @consweight_multi, align 4
  %mul226 = fmul float %mul225, %212
  %213 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %213 to i64
  %214 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %214 to i64
  %215 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx229 = getelementptr inbounds float*, float** %215, i64 %idxprom228
  %216 = load float*, float** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds float, float* %216, i64 %idxprom227
  %217 = load float, float* %arrayidx230, align 4
  %add231 = fadd float %217, %mul226
  store float %add231, float* %arrayidx230, align 4
  %218 = load float, float* %prob, align 4
  %219 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %219 to i64
  %220 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %220 to i64
  %221 = load float**, float*** %tbppmtx, align 8
  %arrayidx234 = getelementptr inbounds float*, float** %221, i64 %idxprom233
  %222 = load float*, float** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds float, float* %222, i64 %idxprom232
  %223 = load float, float* %arrayidx235, align 4
  %sub = fsub float %223, %218
  store float %sub, float* %arrayidx235, align 4
  br label %if.end.257

if.else.236:                                      ; preds = %land.lhs.true.220, %if.then.217
  %224 = load i32, i32* %i, align 4
  %225 = load i32, i32* %uido, align 4
  %cmp237 = icmp slt i32 %224, %225
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.256

land.lhs.true.239:                                ; preds = %if.else.236
  %226 = load i32, i32* %j, align 4
  %227 = load i32, i32* %ujdo, align 4
  %cmp240 = icmp slt i32 %226, %227
  br i1 %cmp240, label %if.then.242, label %if.end.256

if.then.242:                                      ; preds = %land.lhs.true.239
  %228 = load float, float* %prob, align 4
  %229 = load i32, i32* %nseq1.addr, align 4
  %230 = load i32, i32* %nseq2.addr, align 4
  %231 = load i8**, i8*** @foldrna.oseq1, align 8
  %232 = load i8**, i8*** @foldrna.oseq2, align 8
  %233 = load double*, double** %eff1.addr, align 8
  %234 = load double*, double** %eff2.addr, align 8
  %235 = load i32, i32* %i, align 4
  %236 = load i32, i32* %j, align 4
  %237 = load i32, i32* %uido, align 4
  %238 = load i32, i32* %ujdo, align 4
  %call243 = call float @pairedribosumscore35(i32 %229, i32 %230, i8** %231, i8** %232, double* %233, double* %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %mul244 = fmul float %228, %call243
  %239 = load float, float* @consweight_multi, align 4
  %mul245 = fmul float %mul244, %239
  %240 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %240 to i64
  %241 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %241 to i64
  %242 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx248 = getelementptr inbounds float*, float** %242, i64 %idxprom247
  %243 = load float*, float** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds float, float* %243, i64 %idxprom246
  %244 = load float, float* %arrayidx249, align 4
  %add250 = fadd float %244, %mul245
  store float %add250, float* %arrayidx249, align 4
  %245 = load float, float* %prob, align 4
  %246 = load i32, i32* %j, align 4
  %idxprom251 = sext i32 %246 to i64
  %247 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %247 to i64
  %248 = load float**, float*** %tbppmtx, align 8
  %arrayidx253 = getelementptr inbounds float*, float** %248, i64 %idxprom252
  %249 = load float*, float** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds float, float* %249, i64 %idxprom251
  %250 = load float, float* %arrayidx254, align 4
  %sub255 = fsub float %250, %245
  store float %sub255, float* %arrayidx254, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.242, %land.lhs.true.239, %if.else.236
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.then.223
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %land.lhs.true, %for.body.208
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %251 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %incdec.ptr = getelementptr inbounds %struct._RNApair, %struct._RNApair* %251, i32 1
  store %struct._RNApair* %incdec.ptr, %struct._RNApair** @foldrna.pairpt2, align 8
  br label %for.cond.204

for.end.260:                                      ; preds = %for.cond.204
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.end.260
  %252 = load i32, i32* %j, align 4
  %inc262 = add nsw i32 %252, 1
  store i32 %inc262, i32* %j, align 4
  br label %for.cond.198

for.end.263:                                      ; preds = %for.cond.198
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.end.263
  %253 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %incdec.ptr265 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %253, i32 1
  store %struct._RNApair* %incdec.ptr265, %struct._RNApair** @foldrna.pairpt1, align 8
  br label %for.cond.193

for.end.266:                                      ; preds = %for.cond.193
  br label %for.inc.267

for.inc.267:                                      ; preds = %for.end.266
  %254 = load i32, i32* %i, align 4
  %inc268 = add nsw i32 %254, 1
  store i32 %inc268, i32* %i, align 4
  br label %for.cond.187

for.end.269:                                      ; preds = %for.cond.187
  store i32 0, i32* %i, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.293, %for.end.269
  %255 = load i32, i32* %i, align 4
  %256 = load i32, i32* %lgth1, align 4
  %cmp271 = icmp slt i32 %255, %256
  br i1 %cmp271, label %for.body.273, label %for.end.295

for.body.273:                                     ; preds = %for.cond.270
  store i32 0, i32* %j, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.290, %for.body.273
  %257 = load i32, i32* %j, align 4
  %258 = load i32, i32* %lgth2, align 4
  %cmp275 = icmp slt i32 %257, %258
  br i1 %cmp275, label %for.body.277, label %for.end.292

for.body.277:                                     ; preds = %for.cond.274
  %259 = load i32, i32* %j, align 4
  %idxprom278 = sext i32 %259 to i64
  %260 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %260 to i64
  %261 = load float**, float*** %tbppmtx, align 8
  %arrayidx280 = getelementptr inbounds float*, float** %261, i64 %idxprom279
  %262 = load float*, float** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds float, float* %262, i64 %idxprom278
  %263 = load float, float* %arrayidx281, align 4
  %264 = load i32, i32* %nseq1.addr, align 4
  %265 = load i32, i32* %nseq2.addr, align 4
  %266 = load i8**, i8*** @foldrna.oseq1, align 8
  %267 = load i8**, i8*** @foldrna.oseq2, align 8
  %268 = load double*, double** %eff1.addr, align 8
  %269 = load double*, double** %eff2.addr, align 8
  %270 = load i32, i32* %i, align 4
  %271 = load i32, i32* %j, align 4
  %call282 = call float @singleribosumscore(i32 %264, i32 %265, i8** %266, i8** %267, double* %268, double* %269, i32 %270, i32 %271)
  %mul283 = fmul float %263, %call282
  %272 = load float, float* @consweight_multi, align 4
  %mul284 = fmul float %mul283, %272
  %273 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %273 to i64
  %274 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %274 to i64
  %275 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx287 = getelementptr inbounds float*, float** %275, i64 %idxprom286
  %276 = load float*, float** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds float, float* %276, i64 %idxprom285
  %277 = load float, float* %arrayidx288, align 4
  %add289 = fadd float %277, %mul284
  store float %add289, float* %arrayidx288, align 4
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.body.277
  %278 = load i32, i32* %j, align 4
  %inc291 = add nsw i32 %278, 1
  store i32 %inc291, i32* %j, align 4
  br label %for.cond.274

for.end.292:                                      ; preds = %for.cond.274
  br label %for.inc.293

for.inc.293:                                      ; preds = %for.end.292
  %279 = load i32, i32* %i, align 4
  %inc294 = add nsw i32 %279, 1
  store i32 %inc294, i32* %i, align 4
  br label %for.cond.270

for.end.295:                                      ; preds = %for.cond.270
  br label %if.end.296

if.end.296:                                       ; preds = %for.end.295, %if.else.160
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %for.end.159
  store i32 0, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.374, %if.end.297
  %280 = load i32, i32* %i, align 4
  %281 = load i32, i32* %lgth1, align 4
  %cmp299 = icmp slt i32 %280, %281
  br i1 %cmp299, label %for.body.301, label %for.end.376

for.body.301:                                     ; preds = %for.cond.298
  %282 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %282 to i64
  %283 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %arrayidx303 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %283, i64 %idxprom302
  %284 = load %struct._RNApair*, %struct._RNApair** %arrayidx303, align 8
  store %struct._RNApair* %284, %struct._RNApair** @foldrna.pairpt1, align 8
  br label %for.cond.304

for.cond.304:                                     ; preds = %for.inc.371, %for.body.301
  %285 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %bestpos305 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %285, i32 0, i32 4
  %286 = load i32, i32* %bestpos305, align 4
  %cmp306 = icmp ne i32 %286, -1
  br i1 %cmp306, label %for.body.308, label %for.end.373

for.body.308:                                     ; preds = %for.cond.304
  store i32 0, i32* %j, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.368, %for.body.308
  %287 = load i32, i32* %j, align 4
  %288 = load i32, i32* %lgth2, align 4
  %cmp310 = icmp slt i32 %287, %288
  br i1 %cmp310, label %for.body.312, label %for.end.370

for.body.312:                                     ; preds = %for.cond.309
  %289 = load i32, i32* %j, align 4
  %idxprom313 = sext i32 %289 to i64
  %290 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %arrayidx314 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %290, i64 %idxprom313
  %291 = load %struct._RNApair*, %struct._RNApair** %arrayidx314, align 8
  store %struct._RNApair* %291, %struct._RNApair** @foldrna.pairpt2, align 8
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.365, %for.body.312
  %292 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %bestpos316 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %292, i32 0, i32 4
  %293 = load i32, i32* %bestpos316, align 4
  %cmp317 = icmp ne i32 %293, -1
  br i1 %cmp317, label %for.body.319, label %for.end.367

for.body.319:                                     ; preds = %for.cond.315
  %294 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %bestpos320 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %294, i32 0, i32 4
  %295 = load i32, i32* %bestpos320, align 4
  store i32 %295, i32* %uido, align 4
  %296 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %bestpos321 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %296, i32 0, i32 4
  %297 = load i32, i32* %bestpos321, align 4
  store i32 %297, i32* %ujdo, align 4
  %298 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %bestscore322 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %298, i32 0, i32 5
  %299 = load float, float* %bestscore322, align 4
  %300 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %bestscore323 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %300, i32 0, i32 5
  %301 = load float, float* %bestscore323, align 4
  %mul324 = fmul float %299, %301
  store float %mul324, float* %prob, align 4
  %302 = load i32, i32* %uido, align 4
  %cmp325 = icmp sgt i32 %302, -1
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.364

land.lhs.true.327:                                ; preds = %for.body.319
  %303 = load i32, i32* %ujdo, align 4
  %cmp328 = icmp sgt i32 %303, -1
  br i1 %cmp328, label %land.lhs.true.330, label %if.end.364

land.lhs.true.330:                                ; preds = %land.lhs.true.327
  %304 = load i32, i32* %i, align 4
  %305 = load i32, i32* %uido, align 4
  %cmp331 = icmp sgt i32 %304, %305
  br i1 %cmp331, label %land.lhs.true.333, label %lor.lhs.false

land.lhs.true.333:                                ; preds = %land.lhs.true.330
  %306 = load i32, i32* %j, align 4
  %307 = load i32, i32* %ujdo, align 4
  %cmp334 = icmp sgt i32 %306, %307
  br i1 %cmp334, label %if.then.341, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.333, %land.lhs.true.330
  %308 = load i32, i32* %i, align 4
  %309 = load i32, i32* %uido, align 4
  %cmp336 = icmp slt i32 %308, %309
  br i1 %cmp336, label %land.lhs.true.338, label %if.end.364

land.lhs.true.338:                                ; preds = %lor.lhs.false
  %310 = load i32, i32* %j, align 4
  %311 = load i32, i32* %ujdo, align 4
  %cmp339 = icmp slt i32 %310, %311
  br i1 %cmp339, label %if.then.341, label %if.end.364

if.then.341:                                      ; preds = %land.lhs.true.338, %land.lhs.true.333
  %312 = load i32, i32* %ujdo, align 4
  %idxprom342 = sext i32 %312 to i64
  %313 = load i32, i32* %uido, align 4
  %idxprom343 = sext i32 %313 to i64
  %314 = load float**, float*** @foldrna.map, align 8
  %arrayidx344 = getelementptr inbounds float*, float** %314, i64 %idxprom343
  %315 = load float*, float** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds float, float* %315, i64 %idxprom342
  %316 = load float, float* %arrayidx345, align 4
  %cmp346 = fcmp ogt float 0.000000e+00, %316
  br i1 %cmp346, label %cond.true.348, label %cond.false.349

cond.true.348:                                    ; preds = %if.then.341
  br label %cond.end.354

cond.false.349:                                   ; preds = %if.then.341
  %317 = load i32, i32* %ujdo, align 4
  %idxprom350 = sext i32 %317 to i64
  %318 = load i32, i32* %uido, align 4
  %idxprom351 = sext i32 %318 to i64
  %319 = load float**, float*** @foldrna.map, align 8
  %arrayidx352 = getelementptr inbounds float*, float** %319, i64 %idxprom351
  %320 = load float*, float** %arrayidx352, align 8
  %arrayidx353 = getelementptr inbounds float, float* %320, i64 %idxprom350
  %321 = load float, float* %arrayidx353, align 4
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.349, %cond.true.348
  %cond355 = phi float [ 0.000000e+00, %cond.true.348 ], [ %321, %cond.false.349 ]
  %322 = load float, float* @consweight_rna, align 4
  %mul356 = fmul float %cond355, %322
  %mul357 = fmul float %mul356, 6.000000e+02
  %323 = load float, float* %prob, align 4
  %mul358 = fmul float %mul357, %323
  %324 = load i32, i32* %j, align 4
  %idxprom359 = sext i32 %324 to i64
  %325 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %325 to i64
  %326 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx361 = getelementptr inbounds float*, float** %326, i64 %idxprom360
  %327 = load float*, float** %arrayidx361, align 8
  %arrayidx362 = getelementptr inbounds float, float* %327, i64 %idxprom359
  %328 = load float, float* %arrayidx362, align 4
  %add363 = fadd float %328, %mul358
  store float %add363, float* %arrayidx362, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %cond.end.354, %land.lhs.true.338, %lor.lhs.false, %land.lhs.true.327, %for.body.319
  br label %for.inc.365

for.inc.365:                                      ; preds = %if.end.364
  %329 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt2, align 8
  %incdec.ptr366 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %329, i32 1
  store %struct._RNApair* %incdec.ptr366, %struct._RNApair** @foldrna.pairpt2, align 8
  br label %for.cond.315

for.end.367:                                      ; preds = %for.cond.315
  br label %for.inc.368

for.inc.368:                                      ; preds = %for.end.367
  %330 = load i32, i32* %j, align 4
  %inc369 = add nsw i32 %330, 1
  store i32 %inc369, i32* %j, align 4
  br label %for.cond.309

for.end.370:                                      ; preds = %for.cond.309
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.end.370
  %331 = load %struct._RNApair*, %struct._RNApair** @foldrna.pairpt1, align 8
  %incdec.ptr372 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %331, i32 1
  store %struct._RNApair* %incdec.ptr372, %struct._RNApair** @foldrna.pairpt1, align 8
  br label %for.cond.304

for.end.373:                                      ; preds = %for.cond.304
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.end.373
  %332 = load i32, i32* %i, align 4
  %inc375 = add nsw i32 %332, 1
  store i32 %inc375, i32* %i, align 4
  br label %for.cond.298

for.end.376:                                      ; preds = %for.cond.298
  store i32 0, i32* %i, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.397, %for.end.376
  %333 = load i32, i32* %i, align 4
  %334 = load i32, i32* %lgth1, align 4
  %cmp378 = icmp slt i32 %333, %334
  br i1 %cmp378, label %for.body.380, label %for.end.399

for.body.380:                                     ; preds = %for.cond.377
  store i32 0, i32* %j, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.394, %for.body.380
  %335 = load i32, i32* %j, align 4
  %336 = load i32, i32* %lgth2, align 4
  %cmp382 = icmp slt i32 %335, %336
  br i1 %cmp382, label %for.body.384, label %for.end.396

for.body.384:                                     ; preds = %for.cond.381
  %337 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %337 to i64
  %338 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %338 to i64
  %339 = load float**, float*** @foldrna.impmtx2, align 8
  %arrayidx387 = getelementptr inbounds float*, float** %339, i64 %idxprom386
  %340 = load float*, float** %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds float, float* %340, i64 %idxprom385
  %341 = load float, float* %arrayidx388, align 4
  %342 = load i32, i32* %j, align 4
  %idxprom389 = sext i32 %342 to i64
  %343 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %343 to i64
  %344 = load float**, float*** %impmtx.addr, align 8
  %arrayidx391 = getelementptr inbounds float*, float** %344, i64 %idxprom390
  %345 = load float*, float** %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds float, float* %345, i64 %idxprom389
  %346 = load float, float* %arrayidx392, align 4
  %add393 = fadd float %346, %341
  store float %add393, float* %arrayidx392, align 4
  br label %for.inc.394

for.inc.394:                                      ; preds = %for.body.384
  %347 = load i32, i32* %j, align 4
  %inc395 = add nsw i32 %347, 1
  store i32 %inc395, i32* %j, align 4
  br label %for.cond.381

for.end.396:                                      ; preds = %for.cond.381
  br label %for.inc.397

for.inc.397:                                      ; preds = %for.end.396
  %348 = load i32, i32* %i, align 4
  %inc398 = add nsw i32 %348, 1
  store i32 %inc398, i32* %i, align 4
  br label %for.cond.377

for.end.399:                                      ; preds = %for.cond.377
  %349 = load i8**, i8*** @foldrna.useq1, align 8
  call void @FreeCharMtx(i8** %349)
  %350 = load i8**, i8*** @foldrna.useq2, align 8
  call void @FreeCharMtx(i8** %350)
  %351 = load i8**, i8*** @foldrna.oseq1, align 8
  call void @FreeCharMtx(i8** %351)
  %352 = load i8**, i8*** @foldrna.oseq2, align 8
  call void @FreeCharMtx(i8** %352)
  %353 = load i8**, i8*** @foldrna.oseq1r, align 8
  call void @FreeCharMtx(i8** %353)
  %354 = load i8**, i8*** @foldrna.oseq2r, align 8
  call void @FreeCharMtx(i8** %354)
  %355 = load i8*, i8** @foldrna.odir1, align 8
  call void @free(i8* %355) #6
  %356 = load i8*, i8** @foldrna.odir2, align 8
  call void @free(i8* %356) #6
  %357 = load float**, float*** @foldrna.impmtx2, align 8
  call void @FreeFloatMtx(float** %357)
  %358 = load float**, float*** @foldrna.map, align 8
  call void @FreeFloatMtx(float** %358)
  %359 = load i32**, i32*** %sgapmap1, align 8
  call void @FreeIntMtx(i32** %359)
  %360 = load i32**, i32*** %sgapmap2, align 8
  call void @FreeIntMtx(i32** %360)
  %361 = load float**, float*** %tbppmtx, align 8
  call void @FreeFloatMtx(float** %361)
  store i32 0, i32* %i, align 4
  br label %for.cond.400

for.cond.400:                                     ; preds = %for.inc.406, %for.end.399
  %362 = load i32, i32* %i, align 4
  %363 = load i32, i32* %lgth1, align 4
  %cmp401 = icmp slt i32 %362, %363
  br i1 %cmp401, label %for.body.403, label %for.end.408

for.body.403:                                     ; preds = %for.cond.400
  %364 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %364 to i64
  %365 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %arrayidx405 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %365, i64 %idxprom404
  %366 = load %struct._RNApair*, %struct._RNApair** %arrayidx405, align 8
  %367 = bitcast %struct._RNApair* %366 to i8*
  call void @free(i8* %367) #6
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.body.403
  %368 = load i32, i32* %i, align 4
  %inc407 = add nsw i32 %368, 1
  store i32 %inc407, i32* %i, align 4
  br label %for.cond.400

for.end.408:                                      ; preds = %for.cond.400
  store i32 0, i32* %i, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.415, %for.end.408
  %369 = load i32, i32* %i, align 4
  %370 = load i32, i32* %lgth2, align 4
  %cmp410 = icmp slt i32 %369, %370
  br i1 %cmp410, label %for.body.412, label %for.end.417

for.body.412:                                     ; preds = %for.cond.409
  %371 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %371 to i64
  %372 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %arrayidx414 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %372, i64 %idxprom413
  %373 = load %struct._RNApair*, %struct._RNApair** %arrayidx414, align 8
  %374 = bitcast %struct._RNApair* %373 to i8*
  call void @free(i8* %374) #6
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.412
  %375 = load i32, i32* %i, align 4
  %inc416 = add nsw i32 %375, 1
  store i32 %inc416, i32* %i, align 4
  br label %for.cond.409

for.end.417:                                      ; preds = %for.cond.409
  %376 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob1, align 8
  %377 = bitcast %struct._RNApair** %376 to i8*
  call void @free(i8* %377) #6
  %378 = load %struct._RNApair**, %struct._RNApair*** @foldrna.pairprob2, align 8
  %379 = bitcast %struct._RNApair** %378 to i8*
  call void @free(i8* %379) #6
  ret void
}

declare i8* @AllocateCharVec(i32) #3

declare i32** @AllocateIntMtx(i32, i32) #3

declare float** @AllocateFloatMtx(i32, i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @commongappick_record(i32, i8**, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @utot(i32 %n, i32 %l, i8** %s) #0 {
entry:
  %n.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %s.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i8** %s, i8*** %s.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 97
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8**, i8*** %s.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom9
  %12 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  store i8 97, i8* %arrayidx11, align 1
  br label %if.end.85

if.else:                                          ; preds = %for.body.3
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load i8**, i8*** %s.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %15, i64 %idxprom13
  %16 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 116
  br i1 %cmp17, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.else
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i8**, i8*** %s.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %20, i64 %idxprom21
  %21 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 %idxprom20
  store i8 116, i8* %arrayidx23, align 1
  br label %if.end.84

if.else.24:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load i8**, i8*** %s.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %24, i64 %idxprom26
  %25 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom25
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 117
  br i1 %cmp30, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.else.24
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load i8**, i8*** %s.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %29, i64 %idxprom34
  %30 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %30, i64 %idxprom33
  store i8 116, i8* %arrayidx36, align 1
  br label %if.end.83

if.else.37:                                       ; preds = %if.else.24
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load i8**, i8*** %s.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %33, i64 %idxprom39
  %34 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %34, i64 %idxprom38
  %35 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %35 to i32
  %cmp43 = icmp eq i32 %conv42, 103
  br i1 %cmp43, label %if.then.45, label %if.else.50

if.then.45:                                       ; preds = %if.else.37
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load i8**, i8*** %s.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %38, i64 %idxprom47
  %39 = load i8*, i8** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %39, i64 %idxprom46
  store i8 103, i8* %arrayidx49, align 1
  br label %if.end.82

if.else.50:                                       ; preds = %if.else.37
  %40 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %41 to i64
  %42 = load i8**, i8*** %s.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %42, i64 %idxprom52
  %43 = load i8*, i8** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %43, i64 %idxprom51
  %44 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %44 to i32
  %cmp56 = icmp eq i32 %conv55, 99
  br i1 %cmp56, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %if.else.50
  %45 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %45 to i64
  %46 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %46 to i64
  %47 = load i8**, i8*** %s.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %47, i64 %idxprom60
  %48 = load i8*, i8** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  store i8 99, i8* %arrayidx62, align 1
  br label %if.end.81

if.else.63:                                       ; preds = %if.else.50
  %49 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %50 to i64
  %51 = load i8**, i8*** %s.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %51, i64 %idxprom65
  %52 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %52, i64 %idxprom64
  %53 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %53 to i32
  %cmp69 = icmp eq i32 %conv68, 45
  br i1 %cmp69, label %if.then.71, label %if.else.76

if.then.71:                                       ; preds = %if.else.63
  %54 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %55 to i64
  %56 = load i8**, i8*** %s.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %56, i64 %idxprom73
  %57 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %57, i64 %idxprom72
  store i8 45, i8* %arrayidx75, align 1
  br label %if.end

if.else.76:                                       ; preds = %if.else.63
  %58 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %58 to i64
  %59 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %59 to i64
  %60 = load i8**, i8*** %s.addr, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %60, i64 %idxprom78
  %61 = load i8*, i8** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %61, i64 %idxprom77
  store i8 110, i8* %arrayidx80, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.76, %if.then.71
  br label %if.end.81

if.end.81:                                        ; preds = %if.end, %if.then.58
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.45
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.32
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.19
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %62 = load i32, i32* %j, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end
  %63 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %63, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mccaskillextract(i8** %seq, i8** %nogap, i32 %nseq, %struct._RNApair** %pairprob, %struct._RNApair*** %single, i32** %sgapmap, double* %eff) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %nogap.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %pairprob.addr = alloca %struct._RNApair**, align 8
  %single.addr = alloca %struct._RNApair***, align 8
  %sgapmap.addr = alloca i32**, align 8
  %eff.addr = alloca double*, align 8
  %lgth = alloca i32, align 4
  %nogaplgth = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %adpos = alloca i32, align 4
  %prob = alloca float, align 4
  %pt = alloca %struct._RNApair*, align 8
  %pt2 = alloca %struct._RNApair*, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %nogap, i8*** %nogap.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store %struct._RNApair** %pairprob, %struct._RNApair*** %pairprob.addr, align 8
  store %struct._RNApair*** %single, %struct._RNApair**** %single.addr, align 8
  store i32** %sgapmap, i32*** %sgapmap.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  %0 = load i8**, i8*** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth, align 4
  %2 = load i32, i32* %lgth, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 4) #6
  %3 = bitcast i8* %call2 to i32*
  store i32* %3, i32** @mccaskillextract.pairnum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %lgth, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** @mccaskillextract.pairnum, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 0, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.111, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body.8, label %for.end.113

for.body.8:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** %nogap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %13) #5
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %nogaplgth, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.108, %for.body.8
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %nogaplgth, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body.16, label %for.end.110

for.body.16:                                      ; preds = %for.cond.13
  %16 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct._RNApair***, %struct._RNApair**** %single.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._RNApair**, %struct._RNApair*** %18, i64 %idxprom18
  %19 = load %struct._RNApair**, %struct._RNApair*** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %19, i64 %idxprom17
  %20 = load %struct._RNApair*, %struct._RNApair** %arrayidx20, align 8
  store %struct._RNApair* %20, %struct._RNApair** %pt, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.105, %for.body.16
  %21 = load %struct._RNApair*, %struct._RNApair** %pt, align 8
  %bestpos = getelementptr inbounds %struct._RNApair, %struct._RNApair* %21, i32 0, i32 4
  %22 = load i32, i32* %bestpos, align 4
  %cmp22 = icmp ne i32 %22, -1
  br i1 %cmp22, label %for.body.24, label %for.end.107

for.body.24:                                      ; preds = %for.cond.21
  %23 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load i32**, i32*** %sgapmap.addr, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %25, i64 %idxprom26
  %26 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %26, i64 %idxprom25
  %27 = load i32, i32* %arrayidx28, align 4
  store i32 %27, i32* %left, align 4
  %28 = load %struct._RNApair*, %struct._RNApair** %pt, align 8
  %bestpos29 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %28, i32 0, i32 4
  %29 = load i32, i32* %bestpos29, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i32**, i32*** %sgapmap.addr, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %31, i64 %idxprom31
  %32 = load i32*, i32** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %32, i64 %idxprom30
  %33 = load i32, i32* %arrayidx33, align 4
  store i32 %33, i32* %right, align 4
  %34 = load %struct._RNApair*, %struct._RNApair** %pt, align 8
  %bestscore = getelementptr inbounds %struct._RNApair, %struct._RNApair* %34, i32 0, i32 5
  %35 = load float, float* %bestscore, align 4
  store float %35, float* %prob, align 4
  %36 = load i32, i32* %left, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %37, i64 %idxprom34
  %38 = load %struct._RNApair*, %struct._RNApair** %arrayidx35, align 8
  store %struct._RNApair* %38, %struct._RNApair** %pt2, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.44, %for.body.24
  %39 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %bestpos37 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %39, i32 0, i32 4
  %40 = load i32, i32* %bestpos37, align 4
  %cmp38 = icmp ne i32 %40, -1
  br i1 %cmp38, label %for.body.40, label %for.end.45

for.body.40:                                      ; preds = %for.cond.36
  %41 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %bestpos41 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %41, i32 0, i32 4
  %42 = load i32, i32* %bestpos41, align 4
  %43 = load i32, i32* %right, align 4
  %cmp42 = icmp eq i32 %42, %43
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.40
  br label %for.end.45

if.end:                                           ; preds = %for.body.40
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end
  %44 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %incdec.ptr = getelementptr inbounds %struct._RNApair, %struct._RNApair* %44, i32 1
  store %struct._RNApair* %incdec.ptr, %struct._RNApair** %pt2, align 8
  br label %for.cond.36

for.end.45:                                       ; preds = %if.then, %for.cond.36
  %45 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %bestpos46 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %45, i32 0, i32 4
  %46 = load i32, i32* %bestpos46, align 4
  %cmp47 = icmp eq i32 %46, -1
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %for.end.45
  %47 = load i32, i32* %left, align 4
  %idxprom50 = sext i32 %47 to i64
  %48 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %48, i64 %idxprom50
  %49 = load %struct._RNApair*, %struct._RNApair** %arrayidx51, align 8
  %50 = bitcast %struct._RNApair* %49 to i8*
  %51 = load i32, i32* %left, align 4
  %idxprom52 = sext i32 %51 to i64
  %52 = load i32*, i32** @mccaskillextract.pairnum, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %52, i64 %idxprom52
  %53 = load i32, i32* %arrayidx53, align 4
  %add = add nsw i32 %53, 2
  %conv54 = sext i32 %add to i64
  %mul = mul i64 %conv54, 24
  %call55 = call i8* @realloc(i8* %50, i64 %mul) #6
  %54 = bitcast i8* %call55 to %struct._RNApair*
  %55 = load i32, i32* %left, align 4
  %idxprom56 = sext i32 %55 to i64
  %56 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %56, i64 %idxprom56
  store %struct._RNApair* %54, %struct._RNApair** %arrayidx57, align 8
  %57 = load i32, i32* %left, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load i32*, i32** @mccaskillextract.pairnum, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %58, i64 %idxprom58
  %59 = load i32, i32* %arrayidx59, align 4
  store i32 %59, i32* %adpos, align 4
  %60 = load i32, i32* %left, align 4
  %idxprom60 = sext i32 %60 to i64
  %61 = load i32*, i32** @mccaskillextract.pairnum, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %61, i64 %idxprom60
  %62 = load i32, i32* %arrayidx61, align 4
  %inc62 = add nsw i32 %62, 1
  store i32 %inc62, i32* %arrayidx61, align 4
  %63 = load i32, i32* %adpos, align 4
  %idxprom63 = sext i32 %63 to i64
  %64 = load i32, i32* %left, align 4
  %idxprom64 = sext i32 %64 to i64
  %65 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %65, i64 %idxprom64
  %66 = load %struct._RNApair*, %struct._RNApair** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %66, i64 %idxprom63
  %bestscore67 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx66, i32 0, i32 5
  store float 0.000000e+00, float* %bestscore67, align 4
  %67 = load i32, i32* %right, align 4
  %68 = load i32, i32* %adpos, align 4
  %idxprom68 = sext i32 %68 to i64
  %69 = load i32, i32* %left, align 4
  %idxprom69 = sext i32 %69 to i64
  %70 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %70, i64 %idxprom69
  %71 = load %struct._RNApair*, %struct._RNApair** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %71, i64 %idxprom68
  %bestpos72 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx71, i32 0, i32 4
  store i32 %67, i32* %bestpos72, align 4
  %72 = load i32, i32* %adpos, align 4
  %add73 = add nsw i32 %72, 1
  %idxprom74 = sext i32 %add73 to i64
  %73 = load i32, i32* %left, align 4
  %idxprom75 = sext i32 %73 to i64
  %74 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %74, i64 %idxprom75
  %75 = load %struct._RNApair*, %struct._RNApair** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %75, i64 %idxprom74
  %bestscore78 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx77, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore78, align 4
  %76 = load i32, i32* %adpos, align 4
  %add79 = add nsw i32 %76, 1
  %idxprom80 = sext i32 %add79 to i64
  %77 = load i32, i32* %left, align 4
  %idxprom81 = sext i32 %77 to i64
  %78 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %78, i64 %idxprom81
  %79 = load %struct._RNApair*, %struct._RNApair** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %79, i64 %idxprom80
  %bestpos84 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx83, i32 0, i32 4
  store i32 -1, i32* %bestpos84, align 4
  %80 = load i32, i32* %left, align 4
  %idxprom85 = sext i32 %80 to i64
  %81 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %81, i64 %idxprom85
  %82 = load %struct._RNApair*, %struct._RNApair** %arrayidx86, align 8
  %83 = load i32, i32* %adpos, align 4
  %idx.ext = sext i32 %83 to i64
  %add.ptr = getelementptr inbounds %struct._RNApair, %struct._RNApair* %82, i64 %idx.ext
  store %struct._RNApair* %add.ptr, %struct._RNApair** %pt2, align 8
  br label %if.end.90

if.else:                                          ; preds = %for.end.45
  %84 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %85 = load i32, i32* %left, align 4
  %idxprom87 = sext i32 %85 to i64
  %86 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %86, i64 %idxprom87
  %87 = load %struct._RNApair*, %struct._RNApair** %arrayidx88, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct._RNApair* %84 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct._RNApair* %87 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv89 = trunc i64 %sub.ptr.div to i32
  store i32 %conv89, i32* %adpos, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.49
  %88 = load float, float* %prob, align 4
  %conv91 = fpext float %88 to double
  %89 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %89 to i64
  %90 = load double*, double** %eff.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %90, i64 %idxprom92
  %91 = load double, double* %arrayidx93, align 8
  %mul94 = fmul double %conv91, %91
  %92 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %bestscore95 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %92, i32 0, i32 5
  %93 = load float, float* %bestscore95, align 4
  %conv96 = fpext float %93 to double
  %add97 = fadd double %conv96, %mul94
  %conv98 = fptrunc double %add97 to float
  store float %conv98, float* %bestscore95, align 4
  %94 = load %struct._RNApair*, %struct._RNApair** %pt2, align 8
  %bestpos99 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %94, i32 0, i32 4
  %95 = load i32, i32* %bestpos99, align 4
  %96 = load i32, i32* %right, align 4
  %cmp100 = icmp ne i32 %95, %96
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.90
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.104:                                       ; preds = %if.end.90
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %98 = load %struct._RNApair*, %struct._RNApair** %pt, align 8
  %incdec.ptr106 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %98, i32 1
  store %struct._RNApair* %incdec.ptr106, %struct._RNApair** %pt, align 8
  br label %for.cond.21

for.end.107:                                      ; preds = %for.cond.21
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %99 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %99, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.13

for.end.110:                                      ; preds = %for.cond.13
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %100 = load i32, i32* %i, align 4
  %inc112 = add nsw i32 %100, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.5

for.end.113:                                      ; preds = %for.cond.5
  store i32 0, i32* %i, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.136, %for.end.113
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %lgth, align 4
  %cmp115 = icmp slt i32 %101, %102
  br i1 %cmp115, label %for.body.117, label %for.end.138

for.body.117:                                     ; preds = %for.cond.114
  store i32 0, i32* %j, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.133, %for.body.117
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %104 to i64
  %105 = load i32*, i32** @mccaskillextract.pairnum, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %105, i64 %idxprom119
  %106 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp slt i32 %103, %106
  br i1 %cmp121, label %for.body.123, label %for.end.135

for.body.123:                                     ; preds = %for.cond.118
  %107 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %108 to i64
  %109 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx126 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %109, i64 %idxprom125
  %110 = load %struct._RNApair*, %struct._RNApair** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %110, i64 %idxprom124
  %bestpos128 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx127, i32 0, i32 4
  %111 = load i32, i32* %bestpos128, align 4
  %cmp129 = icmp sgt i32 %111, -1
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %for.body.123
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %for.body.123
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %112 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %112, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond.118

for.end.135:                                      ; preds = %for.cond.118
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %113 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %113, 1
  store i32 %inc137, i32* %i, align 4
  br label %for.cond.114

for.end.138:                                      ; preds = %for.cond.114
  %114 = load i32*, i32** @mccaskillextract.pairnum, align 8
  %115 = bitcast i32* %114 to i8*
  call void @free(i8* %115) #6
  ret void
}

declare float @Lalignmm_hmout(i8**, i8**, double*, double*, i32, i32, i32, i8*, i8*, i8*, i8*, float**) #3

; Function Attrs: nounwind uwtable
define internal float @pairedribosumscore53(i32 %n1, i32 %n2, i8** %s1, i8** %s2, double* %eff1, double* %eff2, i32 %p1, i32 %p2, i32 %c1, i32 %c2) #0 {
entry:
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %val = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code1o = alloca i32, align 4
  %code1u = alloca i32, align 4
  %code2o = alloca i32, align 4
  %code2u = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  store i8** %s1, i8*** %s1.addr, align 8
  store i8** %s2, i8*** %s2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  store float 0.000000e+00, float* %val, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n2.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %p1.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  store i32 %9, i32* %code1o, align 4
  %10 = load i32, i32* %c1.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** %s1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %idxprom13 = sext i32 %conv12 to i64
  %arrayidx14 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  store i32 %15, i32* %code1u, align 4
  %16 = load i32, i32* %code1o, align 4
  %cmp15 = icmp sgt i32 %16, 3
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  store i32 36, i32* %code1o, align 4
  store i32 36, i32* %code1, align 4
  br label %if.end.22

if.else:                                          ; preds = %for.body.3
  %17 = load i32, i32* %code1u, align 4
  %cmp17 = icmp sgt i32 %17, 3
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i32 36, i32* %code1, align 4
  br label %if.end

if.else.20:                                       ; preds = %if.else
  %18 = load i32, i32* %code1o, align 4
  %mul = mul nsw i32 %18, 4
  %add = add nsw i32 4, %mul
  %19 = load i32, i32* %code1u, align 4
  %add21 = add nsw i32 %add, %19
  store i32 %add21, i32* %code1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %p2.addr, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load i8**, i8*** %s2.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %22, i64 %idxprom24
  %23 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 %idxprom23
  %24 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %24 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %arrayidx29 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  store i32 %25, i32* %code2o, align 4
  %26 = load i32, i32* %c2.addr, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i8**, i8*** %s2.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %28, i64 %idxprom31
  %29 = load i8*, i8** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %30 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom35
  %31 = load i32, i32* %arrayidx36, align 4
  store i32 %31, i32* %code2u, align 4
  %32 = load i32, i32* %code2o, align 4
  %cmp37 = icmp sgt i32 %32, 3
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.end.22
  store i32 36, i32* %code1o, align 4
  store i32 36, i32* %code2, align 4
  br label %if.end.49

if.else.40:                                       ; preds = %if.end.22
  %33 = load i32, i32* %code2u, align 4
  %cmp41 = icmp sgt i32 %33, 3
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 36, i32* %code2, align 4
  br label %if.end.48

if.else.44:                                       ; preds = %if.else.40
  %34 = load i32, i32* %code2o, align 4
  %mul45 = mul nsw i32 %34, 4
  %add46 = add nsw i32 4, %mul45
  %35 = load i32, i32* %code2u, align 4
  %add47 = add nsw i32 %add46, %35
  store i32 %add47, i32* %code2, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.39
  %36 = load i32, i32* %code1, align 4
  %cmp50 = icmp eq i32 %36, 36
  br i1 %cmp50, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.49
  %37 = load i32, i32* %code2, align 4
  %cmp52 = icmp eq i32 %37, 36
  br i1 %cmp52, label %if.then.54, label %if.else.70

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.49
  %38 = load i32, i32* %code2o, align 4
  %idxprom55 = sext i32 %38 to i64
  %39 = load i32, i32* %code1o, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx57, i32 0, i64 %idxprom55
  %40 = load i32, i32* %arrayidx58, align 4
  %conv59 = sitofp i32 %40 to float
  %conv60 = fpext float %conv59 to double
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load double*, double** %eff1.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %42, i64 %idxprom61
  %43 = load double, double* %arrayidx62, align 8
  %mul63 = fmul double %conv60, %43
  %44 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %44 to i64
  %45 = load double*, double** %eff2.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %45, i64 %idxprom64
  %46 = load double, double* %arrayidx65, align 8
  %mul66 = fmul double %mul63, %46
  %47 = load float, float* %val, align 4
  %conv67 = fpext float %47 to double
  %add68 = fadd double %conv67, %mul66
  %conv69 = fptrunc double %add68 to float
  store float %conv69, float* %val, align 4
  br label %if.end.86

if.else.70:                                       ; preds = %lor.lhs.false
  %48 = load i32, i32* %code2, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load i32, i32* %code1, align 4
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx73, i32 0, i64 %idxprom71
  %50 = load i32, i32* %arrayidx74, align 4
  %conv75 = sitofp i32 %50 to float
  %conv76 = fpext float %conv75 to double
  %51 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %51 to i64
  %52 = load double*, double** %eff1.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %52, i64 %idxprom77
  %53 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %conv76, %53
  %54 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load double*, double** %eff2.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %55, i64 %idxprom80
  %56 = load double, double* %arrayidx81, align 8
  %mul82 = fmul double %mul79, %56
  %57 = load float, float* %val, align 4
  %conv83 = fpext float %57 to double
  %add84 = fadd double %conv83, %mul82
  %conv85 = fptrunc double %add84 to float
  store float %conv85, float* %val, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.70, %if.then.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %58 = load i32, i32* %j, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end
  %59 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %59, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  %60 = load float, float* %val, align 4
  ret float %60
}

; Function Attrs: nounwind uwtable
define internal float @pairedribosumscore35(i32 %n1, i32 %n2, i8** %s1, i8** %s2, double* %eff1, double* %eff2, i32 %p1, i32 %p2, i32 %c1, i32 %c2) #0 {
entry:
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %val = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code1o = alloca i32, align 4
  %code1u = alloca i32, align 4
  %code2o = alloca i32, align 4
  %code2u = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  store i8** %s1, i8*** %s1.addr, align 8
  store i8** %s2, i8*** %s2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  store float 0.000000e+00, float* %val, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n2.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %p1.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  store i32 %9, i32* %code1o, align 4
  %10 = load i32, i32* %c1.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** %s1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %idxprom13 = sext i32 %conv12 to i64
  %arrayidx14 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  store i32 %15, i32* %code1u, align 4
  %16 = load i32, i32* %code1o, align 4
  %cmp15 = icmp sgt i32 %16, 3
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  store i32 36, i32* %code1o, align 4
  store i32 36, i32* %code1, align 4
  br label %if.end.22

if.else:                                          ; preds = %for.body.3
  %17 = load i32, i32* %code1u, align 4
  %cmp17 = icmp sgt i32 %17, 3
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i32 36, i32* %code1, align 4
  br label %if.end

if.else.20:                                       ; preds = %if.else
  %18 = load i32, i32* %code1u, align 4
  %mul = mul nsw i32 %18, 4
  %add = add nsw i32 4, %mul
  %19 = load i32, i32* %code1o, align 4
  %add21 = add nsw i32 %add, %19
  store i32 %add21, i32* %code1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %p2.addr, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load i8**, i8*** %s2.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %22, i64 %idxprom24
  %23 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 %idxprom23
  %24 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %24 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %arrayidx29 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  store i32 %25, i32* %code2o, align 4
  %26 = load i32, i32* %c2.addr, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i8**, i8*** %s2.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %28, i64 %idxprom31
  %29 = load i8*, i8** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %30 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom35
  %31 = load i32, i32* %arrayidx36, align 4
  store i32 %31, i32* %code2u, align 4
  %32 = load i32, i32* %code2o, align 4
  %cmp37 = icmp sgt i32 %32, 3
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.end.22
  store i32 36, i32* %code1o, align 4
  store i32 36, i32* %code2, align 4
  br label %if.end.49

if.else.40:                                       ; preds = %if.end.22
  %33 = load i32, i32* %code2u, align 4
  %cmp41 = icmp sgt i32 %33, 3
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 36, i32* %code2, align 4
  br label %if.end.48

if.else.44:                                       ; preds = %if.else.40
  %34 = load i32, i32* %code2u, align 4
  %mul45 = mul nsw i32 %34, 4
  %add46 = add nsw i32 4, %mul45
  %35 = load i32, i32* %code2o, align 4
  %add47 = add nsw i32 %add46, %35
  store i32 %add47, i32* %code2, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.39
  %36 = load i32, i32* %code1, align 4
  %cmp50 = icmp eq i32 %36, 36
  br i1 %cmp50, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.49
  %37 = load i32, i32* %code2, align 4
  %cmp52 = icmp eq i32 %37, 36
  br i1 %cmp52, label %if.then.54, label %if.else.70

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.49
  %38 = load i32, i32* %code2o, align 4
  %idxprom55 = sext i32 %38 to i64
  %39 = load i32, i32* %code1o, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx57, i32 0, i64 %idxprom55
  %40 = load i32, i32* %arrayidx58, align 4
  %conv59 = sitofp i32 %40 to float
  %conv60 = fpext float %conv59 to double
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load double*, double** %eff1.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %42, i64 %idxprom61
  %43 = load double, double* %arrayidx62, align 8
  %mul63 = fmul double %conv60, %43
  %44 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %44 to i64
  %45 = load double*, double** %eff2.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %45, i64 %idxprom64
  %46 = load double, double* %arrayidx65, align 8
  %mul66 = fmul double %mul63, %46
  %47 = load float, float* %val, align 4
  %conv67 = fpext float %47 to double
  %add68 = fadd double %conv67, %mul66
  %conv69 = fptrunc double %add68 to float
  store float %conv69, float* %val, align 4
  br label %if.end.86

if.else.70:                                       ; preds = %lor.lhs.false
  %48 = load i32, i32* %code2, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load i32, i32* %code1, align 4
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx73, i32 0, i64 %idxprom71
  %50 = load i32, i32* %arrayidx74, align 4
  %conv75 = sitofp i32 %50 to float
  %conv76 = fpext float %conv75 to double
  %51 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %51 to i64
  %52 = load double*, double** %eff1.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %52, i64 %idxprom77
  %53 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %conv76, %53
  %54 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load double*, double** %eff2.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %55, i64 %idxprom80
  %56 = load double, double* %arrayidx81, align 8
  %mul82 = fmul double %mul79, %56
  %57 = load float, float* %val, align 4
  %conv83 = fpext float %57 to double
  %add84 = fadd double %conv83, %mul82
  %conv85 = fptrunc double %add84 to float
  store float %conv85, float* %val, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.70, %if.then.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %58 = load i32, i32* %j, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end
  %59 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %59, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  %60 = load float, float* %val, align 4
  ret float %60
}

; Function Attrs: nounwind uwtable
define internal float @singleribosumscore(i32 %n1, i32 %n2, i8** %s1, i8** %s2, double* %eff1, double* %eff2, i32 %p1, i32 %p2) #0 {
entry:
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %val = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  store i8** %s1, i8*** %s1.addr, align 8
  store i8** %s2, i8*** %s2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store float 0.000000e+00, float* %val, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n2.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %p1.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  store i32 %9, i32* %code1, align 4
  %10 = load i32, i32* %code1, align 4
  %cmp8 = icmp sgt i32 %10, 3
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 36, i32* %code1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %11 = load i32, i32* %p2.addr, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i8**, i8*** %s2.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %13, i64 %idxprom11
  %14 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %15 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  store i32 %16, i32* %code2, align 4
  %17 = load i32, i32* %code2, align 4
  %cmp17 = icmp sgt i32 %17, 3
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  store i32 36, i32* %code2, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  %18 = load i32, i32* %code2, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load i32, i32* %code1, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx23, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx24, align 4
  %conv25 = sitofp i32 %20 to float
  %conv26 = fpext float %conv25 to double
  %21 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load double*, double** %eff1.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %22, i64 %idxprom27
  %23 = load double, double* %arrayidx28, align 8
  %mul = fmul double %conv26, %23
  %24 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load double*, double** %eff2.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %25, i64 %idxprom29
  %26 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %mul, %26
  %27 = load float, float* %val, align 4
  %conv32 = fpext float %27 to double
  %add = fadd double %conv32, %mul31
  %conv33 = fptrunc double %add to float
  store float %conv33, float* %val, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %30 = load float, float* %val, align 4
  ret float %30
}

declare void @FreeCharMtx(i8**) #3

declare void @FreeFloatMtx(float**) #3

declare void @FreeIntMtx(i32**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
