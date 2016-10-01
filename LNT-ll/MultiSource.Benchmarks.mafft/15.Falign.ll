; ModuleID = './MultiSource.Benchmarks.mafft/15.Falign.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Fukusosuu = type { double, double }
%struct._Segment = type { i32, i32, i32, double, i32, i32, %struct._Segment*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@Fgetlag.crossscoresize = internal global i32 0, align 4
@Fgetlag.tmpseq1 = internal global i8** null, align 8
@Fgetlag.tmpseq2 = internal global i8** null, align 8
@Fgetlag.tmpptr1 = internal global i8** null, align 8
@Fgetlag.tmpptr2 = internal global i8** null, align 8
@Fgetlag.tmpres1 = internal global i8** null, align 8
@Fgetlag.tmpres2 = internal global i8** null, align 8
@Fgetlag.result1 = internal global i8** null, align 8
@Fgetlag.result2 = internal global i8** null, align 8
@Fgetlag.seqVector1 = internal global %struct._Fukusosuu** null, align 8
@Fgetlag.seqVector2 = internal global %struct._Fukusosuu** null, align 8
@Fgetlag.naiseki = internal global %struct._Fukusosuu** null, align 8
@Fgetlag.naisekiNoWa = internal global %struct._Fukusosuu* null, align 8
@Fgetlag.soukan = internal global double* null, align 8
@Fgetlag.crossscore = internal global double** null, align 8
@Fgetlag.kouho = internal global i32* null, align 8
@Fgetlag.segment = internal global %struct._Segment* null, align 8
@Fgetlag.segment1 = internal global %struct._Segment* null, align 8
@Fgetlag.segment2 = internal global %struct._Segment* null, align 8
@Fgetlag.sortedseg1 = internal global %struct._Segment** null, align 8
@Fgetlag.sortedseg2 = internal global %struct._Segment** null, align 8
@Fgetlag.cut1 = internal global i32* null, align 8
@Fgetlag.cut2 = internal global i32* null, align 8
@Fgetlag.localalloclen = internal global i32 0, align 4
@njob = external global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Allocation error\0A\00", align 1
@scoremtx = external global i32, align 4
@n20or4or2 = internal global i32 0, align 4
@fftscore = external global i32, align 4
@fftkeika = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" FFT ... \00", align 1
@polarity = external global [20 x double], align 16
@volume = external global [20 x double], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"TOO MANY SEGMENTS.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"done. (%d anchors)\0D\00", align 1
@fftNoAnchStop = external global i32, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Cannot detect anchor!\00", align 1
@.str.5 = private unnamed_addr constant [166 x i8] c"####################################################################################################################################allocating crossscore, size = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"REPEAT!? \0A\00", align 1
@fftRepeatStop = external global i32, align 4
@alg = external global i8, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"alg = %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ERROR IN SOURCE FILE Falign.c\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"LENGTH OVER in Falign\0A \00", align 1
@Falign.prevalloclen = internal global i32 0, align 4
@Falign.crossscoresize = internal global i32 0, align 4
@Falign.tmpseq1 = internal global i8** null, align 8
@Falign.tmpseq2 = internal global i8** null, align 8
@Falign.tmpptr1 = internal global i8** null, align 8
@Falign.tmpptr2 = internal global i8** null, align 8
@Falign.tmpres1 = internal global i8** null, align 8
@Falign.tmpres2 = internal global i8** null, align 8
@Falign.result1 = internal global i8** null, align 8
@Falign.result2 = internal global i8** null, align 8
@Falign.seqVector1 = internal global %struct._Fukusosuu** null, align 8
@Falign.seqVector2 = internal global %struct._Fukusosuu** null, align 8
@Falign.naiseki = internal global %struct._Fukusosuu** null, align 8
@Falign.naisekiNoWa = internal global %struct._Fukusosuu* null, align 8
@Falign.soukan = internal global double* null, align 8
@Falign.crossscore = internal global double** null, align 8
@Falign.kouho = internal global i32* null, align 8
@Falign.segment = internal global %struct._Segment* null, align 8
@Falign.segment1 = internal global %struct._Segment* null, align 8
@Falign.segment2 = internal global %struct._Segment* null, align 8
@Falign.sortedseg1 = internal global %struct._Segment** null, align 8
@Falign.sortedseg2 = internal global %struct._Segment** null, align 8
@Falign.cut1 = internal global i32* null, align 8
@Falign.cut2 = internal global i32* null, align 8
@Falign.sgap1 = internal global i8* null, align 8
@Falign.egap1 = internal global i8* null, align 8
@Falign.sgap2 = internal global i8* null, align 8
@Falign.egap2 = internal global i8* null, align 8
@Falign.localalloclen = internal global i32 0, align 4
@kobetsubunkatsu = external global i32, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"######allocating crossscore, size = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%d anchors found\0A\00", align 1
@constraint = external global i32, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"totallen=%d +  nlen=%d > alloclen = %d\0A\00", align 1
@Falign_noudp.prevalloclen = internal global i32 0, align 4
@Falign_noudp.tmpseq1 = internal global i8** null, align 8
@Falign_noudp.tmpseq2 = internal global i8** null, align 8
@Falign_noudp.tmpptr1 = internal global i8** null, align 8
@Falign_noudp.tmpptr2 = internal global i8** null, align 8
@Falign_noudp.tmpres1 = internal global i8** null, align 8
@Falign_noudp.tmpres2 = internal global i8** null, align 8
@Falign_noudp.result1 = internal global i8** null, align 8
@Falign_noudp.result2 = internal global i8** null, align 8
@Falign_noudp.seqVector1 = internal global %struct._Fukusosuu** null, align 8
@Falign_noudp.seqVector2 = internal global %struct._Fukusosuu** null, align 8
@Falign_noudp.naiseki = internal global %struct._Fukusosuu** null, align 8
@Falign_noudp.naisekiNoWa = internal global %struct._Fukusosuu* null, align 8
@Falign_noudp.soukan = internal global double* null, align 8
@Falign_noudp.kouho = internal global i32* null, align 8
@Falign_noudp.segment = internal global %struct._Segment* null, align 8
@Falign_noudp.segment1 = internal global %struct._Segment* null, align 8
@Falign_noudp.segment2 = internal global %struct._Segment* null, align 8
@Falign_noudp.sortedseg1 = internal global %struct._Segment** null, align 8
@Falign_noudp.sortedseg2 = internal global %struct._Segment** null, align 8
@Falign_noudp.cut1 = internal global i32* null, align 8
@Falign_noudp.cut2 = internal global i32* null, align 8
@Falign_noudp.sgap1 = internal global i8* null, align 8
@Falign_noudp.egap1 = internal global i8* null, align 8
@Falign_noudp.sgap2 = internal global i8* null, align 8
@Falign_noudp.egap2 = internal global i8* null, align 8
@Falign_noudp.localalloclen = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"done. (%d anchors) \00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"DP %05d / %05d \08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"### cut2[i+1]=%d, cut2[i]=%d\0A\00", align 1
@Falign_udpari_long.prevalloclen = internal global i32 0, align 4
@Falign_udpari_long.crossscoresize = internal global i32 0, align 4
@Falign_udpari_long.tmpseq1 = internal global i8** null, align 8
@Falign_udpari_long.tmpseq2 = internal global i8** null, align 8
@Falign_udpari_long.tmpptr1 = internal global i8** null, align 8
@Falign_udpari_long.tmpptr2 = internal global i8** null, align 8
@Falign_udpari_long.tmpres1 = internal global i8** null, align 8
@Falign_udpari_long.tmpres2 = internal global i8** null, align 8
@Falign_udpari_long.result1 = internal global i8** null, align 8
@Falign_udpari_long.result2 = internal global i8** null, align 8
@Falign_udpari_long.seqVector1 = internal global %struct._Fukusosuu** null, align 8
@Falign_udpari_long.seqVector2 = internal global %struct._Fukusosuu** null, align 8
@Falign_udpari_long.naiseki = internal global %struct._Fukusosuu** null, align 8
@Falign_udpari_long.naisekiNoWa = internal global %struct._Fukusosuu* null, align 8
@Falign_udpari_long.soukan = internal global double* null, align 8
@Falign_udpari_long.crossscore = internal global double** null, align 8
@Falign_udpari_long.kouho = internal global i32* null, align 8
@Falign_udpari_long.segment = internal global %struct._Segment* null, align 8
@Falign_udpari_long.segment1 = internal global %struct._Segment* null, align 8
@Falign_udpari_long.segment2 = internal global %struct._Segment* null, align 8
@Falign_udpari_long.sortedseg1 = internal global %struct._Segment** null, align 8
@Falign_udpari_long.sortedseg2 = internal global %struct._Segment** null, align 8
@Falign_udpari_long.cut1 = internal global i32* null, align 8
@Falign_udpari_long.cut2 = internal global i32* null, align 8
@Falign_udpari_long.sgap1 = internal global i8* null, align 8
@Falign_udpari_long.egap1 = internal global i8* null, align 8
@Falign_udpari_long.sgap2 = internal global i8* null, align 8
@Falign_udpari_long.egap2 = internal global i8* null, align 8
@Falign_udpari_long.localalloclen = internal global i32 0, align 4
@seq_vec_2.n = internal global i32 0, align 4
@amino_n = external global [128 x i32], align 16
@mymergesort.i = internal global i32 0, align 4
@mymergesort.j = internal global i32 0, align 4
@mymergesort.k = internal global i32 0, align 4
@mymergesort.p = internal global i32 0, align 4
@mymergesort.allo = internal global i32 0, align 4
@mymergesort.work = internal global %struct._Segment** null, align 8

; Function Attrs: nounwind uwtable
define double @Fgetlag(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %clus1, i32 %clus2, i32 %alloclen) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %nlen = alloca i32, align 4
  %nlen2 = alloca i32, align 4
  %nlen4 = alloca i32, align 4
  %nlentmp = alloca i32, align 4
  %lag = alloca i32, align 4
  %tmpint = alloca i32, align 4
  %count = alloca i32, align 4
  %count0 = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %totallen = alloca i32, align 4
  %dumfl = alloca float, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store float 0.000000e+00, float* %dumfl, align 4
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %5 = load i32, i32* %len2, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %len1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %len2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %nlentmp, align 4
  store i32 1, i32* %nlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %8 = load i32, i32* %nlentmp, align 4
  %9 = load i32, i32* %nlen, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %nlen, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %nlen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %nlen, align 4
  %div = sdiv i32 %11, 2
  store i32 %div, i32* %nlen2, align 4
  %12 = load i32, i32* %nlen2, align 4
  %div7 = sdiv i32 %12, 2
  store i32 %div7, i32* %nlen4, align 4
  %13 = load i32, i32* @Fgetlag.localalloclen, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.40, label %if.then

if.then:                                          ; preds = %while.end
  %call8 = call i32* @AllocateIntVec(i32 20)
  store i32* %call8, i32** @Fgetlag.kouho, align 8
  %call9 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call9, i32** @Fgetlag.cut1, align 8
  %call10 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call10, i32** @Fgetlag.cut2, align 8
  %14 = load i32, i32* @njob, align 4
  %call11 = call i8** @AllocateCharMtx(i32 %14, i32 0)
  store i8** %call11, i8*** @Fgetlag.tmpptr1, align 8
  %15 = load i32, i32* @njob, align 4
  %call12 = call i8** @AllocateCharMtx(i32 %15, i32 0)
  store i8** %call12, i8*** @Fgetlag.tmpptr2, align 8
  %16 = load i32, i32* @njob, align 4
  %17 = load i32, i32* %alloclen.addr, align 4
  %call13 = call i8** @AllocateCharMtx(i32 %16, i32 %17)
  store i8** %call13, i8*** @Fgetlag.result1, align 8
  %18 = load i32, i32* @njob, align 4
  %19 = load i32, i32* %alloclen.addr, align 4
  %call14 = call i8** @AllocateCharMtx(i32 %18, i32 %19)
  store i8** %call14, i8*** @Fgetlag.result2, align 8
  %20 = load i32, i32* @njob, align 4
  %21 = load i32, i32* %alloclen.addr, align 4
  %call15 = call i8** @AllocateCharMtx(i32 %20, i32 %21)
  store i8** %call15, i8*** @Fgetlag.tmpres1, align 8
  %22 = load i32, i32* @njob, align 4
  %23 = load i32, i32* %alloclen.addr, align 4
  %call16 = call i8** @AllocateCharMtx(i32 %22, i32 %23)
  store i8** %call16, i8*** @Fgetlag.tmpres2, align 8
  %call17 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %24 = bitcast i8* %call17 to %struct._Segment*
  store %struct._Segment* %24, %struct._Segment** @Fgetlag.segment, align 8
  %call18 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %25 = bitcast i8* %call18 to %struct._Segment*
  store %struct._Segment* %25, %struct._Segment** @Fgetlag.segment1, align 8
  %call19 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %26 = bitcast i8* %call19 to %struct._Segment*
  store %struct._Segment* %26, %struct._Segment** @Fgetlag.segment2, align 8
  %call20 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %27 = bitcast i8* %call20 to %struct._Segment**
  store %struct._Segment** %27, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  %call21 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %28 = bitcast i8* %call21 to %struct._Segment**
  store %struct._Segment** %28, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  %29 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %tobool22 = icmp ne %struct._Segment* %29, null
  br i1 %tobool22, label %land.lhs.true, label %if.then.30

land.lhs.true:                                    ; preds = %if.then
  %30 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %tobool23 = icmp ne %struct._Segment* %30, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.then.30

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %31 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %tobool25 = icmp ne %struct._Segment* %31, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.then.30

land.lhs.true.26:                                 ; preds = %land.lhs.true.24
  %32 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  %tobool27 = icmp ne %struct._Segment** %32, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.then.30

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %33 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  %tobool29 = icmp ne %struct._Segment** %33, null
  br i1 %tobool29, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28, %land.lhs.true.26, %land.lhs.true.24, %land.lhs.true, %if.then
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true.28
  %34 = load i32, i32* @scoremtx, align 4
  %cmp31 = icmp eq i32 %34, -1
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end
  store i32 4, i32* @n20or4or2, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end
  %35 = load i32, i32* @fftscore, align 4
  %cmp34 = icmp eq i32 %35, 1
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else
  store i32 2, i32* @n20or4or2, align 4
  br label %if.end.38

if.else.37:                                       ; preds = %if.else
  store i32 20, i32* @n20or4or2, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %while.end
  %36 = load i32, i32* @Fgetlag.localalloclen, align 4
  %37 = load i32, i32* %nlen, align 4
  %cmp41 = icmp slt i32 %36, %37
  br i1 %cmp41, label %if.then.43, label %if.end.58

if.then.43:                                       ; preds = %if.end.40
  %38 = load i32, i32* @Fgetlag.localalloclen, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.43
  %39 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %39)
  %40 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %40)
  %41 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  call void @FreeFukusosuuVec(%struct._Fukusosuu* %41)
  %42 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.naiseki, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %42)
  %43 = load double*, double** @Fgetlag.soukan, align 8
  call void @FreeDoubleVec(double* %43)
  %44 = load i8**, i8*** @Fgetlag.tmpseq1, align 8
  call void @FreeCharMtx(i8** %44)
  %45 = load i8**, i8*** @Fgetlag.tmpseq2, align 8
  call void @FreeCharMtx(i8** %45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.43
  %46 = load i32, i32* @njob, align 4
  %47 = load i32, i32* %nlen, align 4
  %call47 = call i8** @AllocateCharMtx(i32 %46, i32 %47)
  store i8** %call47, i8*** @Fgetlag.tmpseq1, align 8
  %48 = load i32, i32* @njob, align 4
  %49 = load i32, i32* %nlen, align 4
  %call48 = call i8** @AllocateCharMtx(i32 %48, i32 %49)
  store i8** %call48, i8*** @Fgetlag.tmpseq2, align 8
  %50 = load i32, i32* %nlen, align 4
  %call49 = call %struct._Fukusosuu* @AllocateFukusosuuVec(i32 %50)
  store %struct._Fukusosuu* %call49, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %51 = load i32, i32* @n20or4or2, align 4
  %52 = load i32, i32* %nlen, align 4
  %call50 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %51, i32 %52)
  store %struct._Fukusosuu** %call50, %struct._Fukusosuu*** @Fgetlag.naiseki, align 8
  %53 = load i32, i32* @n20or4or2, align 4
  %add = add nsw i32 %53, 1
  %54 = load i32, i32* %nlen, align 4
  %add51 = add nsw i32 %54, 1
  %call52 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %add, i32 %add51)
  store %struct._Fukusosuu** %call52, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %55 = load i32, i32* @n20or4or2, align 4
  %add53 = add nsw i32 %55, 1
  %56 = load i32, i32* %nlen, align 4
  %add54 = add nsw i32 %56, 1
  %call55 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %add53, i32 %add54)
  store %struct._Fukusosuu** %call55, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %57 = load i32, i32* %nlen, align 4
  %add56 = add nsw i32 %57, 1
  %call57 = call double* @AllocateDoubleVec(i32 %add56)
  store double* %call57, double** @Fgetlag.soukan, align 8
  %58 = load i32, i32* %nlen, align 4
  store i32 %58, i32* @Fgetlag.localalloclen, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.46, %if.end.40
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.58
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %clus1.addr, align 4
  %cmp59 = icmp slt i32 %59, %60
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %j, align 4
  %idxprom = sext i32 %61 to i64
  %62 = load i8**, i8*** @Fgetlag.tmpseq1, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %62, i64 %idxprom
  %63 = load i8*, i8** %arrayidx61, align 8
  %64 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %64 to i64
  %65 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %65, i64 %idxprom62
  %66 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i8* @strcpy(i8* %63, i8* %66) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.74, %for.end
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %clus2.addr, align 4
  %cmp66 = icmp slt i32 %68, %69
  br i1 %cmp66, label %for.body.68, label %for.end.76

for.body.68:                                      ; preds = %for.cond.65
  %70 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %70 to i64
  %71 = load i8**, i8*** @Fgetlag.tmpseq2, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %71, i64 %idxprom69
  %72 = load i8*, i8** %arrayidx70, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %73 to i64
  %74 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %74, i64 %idxprom71
  %75 = load i8*, i8** %arrayidx72, align 8
  %call73 = call i8* @strcpy(i8* %72, i8* %75) #6
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.68
  %76 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %76, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.65

for.end.76:                                       ; preds = %for.cond.65
  %77 = load i32, i32* @fftkeika, align 4
  %tobool77 = icmp ne i32 %77, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %for.end.76
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %for.end.76
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.87, %if.end.80
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* @n20or4or2, align 4
  %cmp82 = icmp slt i32 %79, %80
  br i1 %cmp82, label %for.body.84, label %for.end.89

for.body.84:                                      ; preds = %for.cond.81
  %81 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %81 to i64
  %82 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %arrayidx86 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %82, i64 %idxprom85
  %83 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx86, align 8
  %84 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %83, i32 %84)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.84
  %85 = load i32, i32* %j, align 4
  %inc88 = add nsw i32 %85, 1
  store i32 %inc88, i32* %j, align 4
  br label %for.cond.81

for.end.89:                                       ; preds = %for.cond.81
  %86 = load i32, i32* @fftscore, align 4
  %tobool90 = icmp ne i32 %86, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.else.112

land.lhs.true.91:                                 ; preds = %for.end.89
  %87 = load i32, i32* @scoremtx, align 4
  %cmp92 = icmp ne i32 %87, -1
  br i1 %cmp92, label %if.then.94, label %if.else.112

if.then.94:                                       ; preds = %land.lhs.true.91
  store i32 0, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.109, %if.then.94
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %clus1.addr, align 4
  %cmp96 = icmp slt i32 %88, %89
  br i1 %cmp96, label %for.body.98, label %for.end.111

for.body.98:                                      ; preds = %for.cond.95
  %90 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %arrayidx99 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %90, i64 0
  %91 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx99, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %92 to i64
  %93 = load double*, double** %eff1.addr, align 8
  %arrayidx101 = getelementptr inbounds double, double* %93, i64 %idxprom100
  %94 = load double, double* %arrayidx101, align 8
  %95 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %95 to i64
  %96 = load i8**, i8*** @Fgetlag.tmpseq1, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %96, i64 %idxprom102
  %97 = load i8*, i8** %arrayidx103, align 8
  call void @seq_vec_2(%struct._Fukusosuu* %91, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double %94, i8* %97)
  %98 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %arrayidx104 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %98, i64 1
  %99 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx104, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %100 to i64
  %101 = load double*, double** %eff1.addr, align 8
  %arrayidx106 = getelementptr inbounds double, double* %101, i64 %idxprom105
  %102 = load double, double* %arrayidx106, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %103 to i64
  %104 = load i8**, i8*** @Fgetlag.tmpseq1, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %104, i64 %idxprom107
  %105 = load i8*, i8** %arrayidx108, align 8
  call void @seq_vec_2(%struct._Fukusosuu* %99, double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %102, i8* %105)
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.98
  %106 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %106, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.95

for.end.111:                                      ; preds = %for.cond.95
  br label %if.end.124

if.else.112:                                      ; preds = %land.lhs.true.91, %for.end.89
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.121, %if.else.112
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %clus1.addr, align 4
  %cmp114 = icmp slt i32 %107, %108
  br i1 %cmp114, label %for.body.116, label %for.end.123

for.body.116:                                     ; preds = %for.cond.113
  %109 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %110 to i64
  %111 = load double*, double** %eff1.addr, align 8
  %arrayidx118 = getelementptr inbounds double, double* %111, i64 %idxprom117
  %112 = load double, double* %arrayidx118, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %113 to i64
  %114 = load i8**, i8*** @Fgetlag.tmpseq1, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %114, i64 %idxprom119
  %115 = load i8*, i8** %arrayidx120, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %109, double %112, i8* %115)
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.116
  %116 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %116, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.113

for.end.123:                                      ; preds = %for.cond.113
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %for.end.111
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.131, %if.end.124
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* @n20or4or2, align 4
  %cmp126 = icmp slt i32 %117, %118
  br i1 %cmp126, label %for.body.128, label %for.end.133

for.body.128:                                     ; preds = %for.cond.125
  %119 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %119 to i64
  %120 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %arrayidx130 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %120, i64 %idxprom129
  %121 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx130, align 8
  %122 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %121, i32 %122)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.128
  %123 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %123, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.125

for.end.133:                                      ; preds = %for.cond.125
  %124 = load i32, i32* @fftscore, align 4
  %tobool134 = icmp ne i32 %124, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.else.156

land.lhs.true.135:                                ; preds = %for.end.133
  %125 = load i32, i32* @scoremtx, align 4
  %cmp136 = icmp ne i32 %125, -1
  br i1 %cmp136, label %if.then.138, label %if.else.156

if.then.138:                                      ; preds = %land.lhs.true.135
  store i32 0, i32* %i, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.153, %if.then.138
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %clus2.addr, align 4
  %cmp140 = icmp slt i32 %126, %127
  br i1 %cmp140, label %for.body.142, label %for.end.155

for.body.142:                                     ; preds = %for.cond.139
  %128 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %arrayidx143 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %128, i64 0
  %129 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx143, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %130 to i64
  %131 = load double*, double** %eff2.addr, align 8
  %arrayidx145 = getelementptr inbounds double, double* %131, i64 %idxprom144
  %132 = load double, double* %arrayidx145, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %133 to i64
  %134 = load i8**, i8*** @Fgetlag.tmpseq2, align 8
  %arrayidx147 = getelementptr inbounds i8*, i8** %134, i64 %idxprom146
  %135 = load i8*, i8** %arrayidx147, align 8
  call void @seq_vec_2(%struct._Fukusosuu* %129, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double %132, i8* %135)
  %136 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %arrayidx148 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %136, i64 1
  %137 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx148, align 8
  %138 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %138 to i64
  %139 = load double*, double** %eff2.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %139, i64 %idxprom149
  %140 = load double, double* %arrayidx150, align 8
  %141 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %141 to i64
  %142 = load i8**, i8*** @Fgetlag.tmpseq2, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %142, i64 %idxprom151
  %143 = load i8*, i8** %arrayidx152, align 8
  call void @seq_vec_2(%struct._Fukusosuu* %137, double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %140, i8* %143)
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.142
  %144 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %144, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.139

for.end.155:                                      ; preds = %for.cond.139
  br label %if.end.168

if.else.156:                                      ; preds = %land.lhs.true.135, %for.end.133
  store i32 0, i32* %i, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.165, %if.else.156
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %clus2.addr, align 4
  %cmp158 = icmp slt i32 %145, %146
  br i1 %cmp158, label %for.body.160, label %for.end.167

for.body.160:                                     ; preds = %for.cond.157
  %147 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %148 to i64
  %149 = load double*, double** %eff2.addr, align 8
  %arrayidx162 = getelementptr inbounds double, double* %149, i64 %idxprom161
  %150 = load double, double* %arrayidx162, align 8
  %151 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %151 to i64
  %152 = load i8**, i8*** @Fgetlag.tmpseq2, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %152, i64 %idxprom163
  %153 = load i8*, i8** %arrayidx164, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %147, double %150, i8* %153)
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.160
  %154 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %154, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.157

for.end.167:                                      ; preds = %for.cond.157
  br label %if.end.168

if.end.168:                                       ; preds = %for.end.167, %for.end.155
  store i32 0, i32* %j, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.181, %if.end.168
  %155 = load i32, i32* %j, align 4
  %156 = load i32, i32* @n20or4or2, align 4
  %cmp170 = icmp slt i32 %155, %156
  br i1 %cmp170, label %for.body.172, label %for.end.183

for.body.172:                                     ; preds = %for.cond.169
  %157 = load i32, i32* %nlen, align 4
  %158 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %158 to i64
  %159 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %arrayidx174 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %159, i64 %idxprom173
  %160 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx174, align 8
  %161 = load i32, i32* %j, align 4
  %cmp175 = icmp eq i32 %161, 0
  %conv176 = zext i1 %cmp175 to i32
  %call177 = call i32 @fft(i32 %157, %struct._Fukusosuu* %160, i32 %conv176)
  %162 = load i32, i32* %nlen, align 4
  %163 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %163 to i64
  %164 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %arrayidx179 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %164, i64 %idxprom178
  %165 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx179, align 8
  %call180 = call i32 @fft(i32 %162, %struct._Fukusosuu* %165, i32 0)
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.172
  %166 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %166, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.169

for.end.183:                                      ; preds = %for.cond.169
  store i32 0, i32* %k, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.205, %for.end.183
  %167 = load i32, i32* %k, align 4
  %168 = load i32, i32* @n20or4or2, align 4
  %cmp185 = icmp slt i32 %167, %168
  br i1 %cmp185, label %for.body.187, label %for.end.207

for.body.187:                                     ; preds = %for.cond.184
  store i32 0, i32* %l, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.202, %for.body.187
  %169 = load i32, i32* %l, align 4
  %170 = load i32, i32* %nlen, align 4
  %cmp189 = icmp slt i32 %169, %170
  br i1 %cmp189, label %for.body.191, label %for.end.204

for.body.191:                                     ; preds = %for.cond.188
  %171 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %171 to i64
  %172 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.naiseki, align 8
  %arrayidx193 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %172, i64 %idxprom192
  %173 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx193, align 8
  %174 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %174 to i64
  %add.ptr = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %173, i64 %idx.ext
  %175 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %175 to i64
  %176 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector1, align 8
  %arrayidx195 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %176, i64 %idxprom194
  %177 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx195, align 8
  %178 = load i32, i32* %l, align 4
  %idx.ext196 = sext i32 %178 to i64
  %add.ptr197 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %177, i64 %idx.ext196
  %179 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %179 to i64
  %180 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.seqVector2, align 8
  %arrayidx199 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %180, i64 %idxprom198
  %181 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx199, align 8
  %182 = load i32, i32* %l, align 4
  %idx.ext200 = sext i32 %182 to i64
  %add.ptr201 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %181, i64 %idx.ext200
  call void @calcNaiseki(%struct._Fukusosuu* %add.ptr, %struct._Fukusosuu* %add.ptr197, %struct._Fukusosuu* %add.ptr201)
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.191
  %183 = load i32, i32* %l, align 4
  %inc203 = add nsw i32 %183, 1
  store i32 %inc203, i32* %l, align 4
  br label %for.cond.188

for.end.204:                                      ; preds = %for.cond.188
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.end.204
  %184 = load i32, i32* %k, align 4
  %inc206 = add nsw i32 %184, 1
  store i32 %inc206, i32* %k, align 4
  br label %for.cond.184

for.end.207:                                      ; preds = %for.cond.184
  store i32 0, i32* %l, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.241, %for.end.207
  %185 = load i32, i32* %l, align 4
  %186 = load i32, i32* %nlen, align 4
  %cmp209 = icmp slt i32 %185, %186
  br i1 %cmp209, label %for.body.211, label %for.end.243

for.body.211:                                     ; preds = %for.cond.208
  %187 = load i32, i32* %l, align 4
  %idxprom212 = sext i32 %187 to i64
  %188 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %arrayidx213 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %188, i64 %idxprom212
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx213, i32 0, i32 0
  store double 0.000000e+00, double* %R, align 8
  %189 = load i32, i32* %l, align 4
  %idxprom214 = sext i32 %189 to i64
  %190 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %arrayidx215 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %190, i64 %idxprom214
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx215, i32 0, i32 1
  store double 0.000000e+00, double* %I, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.238, %for.body.211
  %191 = load i32, i32* %k, align 4
  %192 = load i32, i32* @n20or4or2, align 4
  %cmp217 = icmp slt i32 %191, %192
  br i1 %cmp217, label %for.body.219, label %for.end.240

for.body.219:                                     ; preds = %for.cond.216
  %193 = load i32, i32* %l, align 4
  %idxprom220 = sext i32 %193 to i64
  %194 = load i32, i32* %k, align 4
  %idxprom221 = sext i32 %194 to i64
  %195 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.naiseki, align 8
  %arrayidx222 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %195, i64 %idxprom221
  %196 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %196, i64 %idxprom220
  %R224 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx223, i32 0, i32 0
  %197 = load double, double* %R224, align 8
  %198 = load i32, i32* %l, align 4
  %idxprom225 = sext i32 %198 to i64
  %199 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %arrayidx226 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %199, i64 %idxprom225
  %R227 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx226, i32 0, i32 0
  %200 = load double, double* %R227, align 8
  %add228 = fadd double %200, %197
  store double %add228, double* %R227, align 8
  %201 = load i32, i32* %l, align 4
  %idxprom229 = sext i32 %201 to i64
  %202 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %202 to i64
  %203 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Fgetlag.naiseki, align 8
  %arrayidx231 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %203, i64 %idxprom230
  %204 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %204, i64 %idxprom229
  %I233 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx232, i32 0, i32 1
  %205 = load double, double* %I233, align 8
  %206 = load i32, i32* %l, align 4
  %idxprom234 = sext i32 %206 to i64
  %207 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %arrayidx235 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %207, i64 %idxprom234
  %I236 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx235, i32 0, i32 1
  %208 = load double, double* %I236, align 8
  %add237 = fadd double %208, %205
  store double %add237, double* %I236, align 8
  br label %for.inc.238

for.inc.238:                                      ; preds = %for.body.219
  %209 = load i32, i32* %k, align 4
  %inc239 = add nsw i32 %209, 1
  store i32 %inc239, i32* %k, align 4
  br label %for.cond.216

for.end.240:                                      ; preds = %for.cond.216
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.end.240
  %210 = load i32, i32* %l, align 4
  %inc242 = add nsw i32 %210, 1
  store i32 %inc242, i32* %l, align 4
  br label %for.cond.208

for.end.243:                                      ; preds = %for.cond.208
  %211 = load i32, i32* %nlen, align 4
  %sub = sub nsw i32 0, %211
  %212 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %call244 = call i32 @fft(i32 %sub, %struct._Fukusosuu* %212, i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.255, %for.end.243
  %213 = load i32, i32* %m, align 4
  %214 = load i32, i32* %nlen2, align 4
  %cmp246 = icmp sle i32 %213, %214
  br i1 %cmp246, label %for.body.248, label %for.end.257

for.body.248:                                     ; preds = %for.cond.245
  %215 = load i32, i32* %nlen2, align 4
  %216 = load i32, i32* %m, align 4
  %sub249 = sub nsw i32 %215, %216
  %idxprom250 = sext i32 %sub249 to i64
  %217 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %arrayidx251 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %217, i64 %idxprom250
  %R252 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx251, i32 0, i32 0
  %218 = load double, double* %R252, align 8
  %219 = load i32, i32* %m, align 4
  %idxprom253 = sext i32 %219 to i64
  %220 = load double*, double** @Fgetlag.soukan, align 8
  %arrayidx254 = getelementptr inbounds double, double* %220, i64 %idxprom253
  store double %218, double* %arrayidx254, align 8
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.248
  %221 = load i32, i32* %m, align 4
  %inc256 = add nsw i32 %221, 1
  store i32 %inc256, i32* %m, align 4
  br label %for.cond.245

for.end.257:                                      ; preds = %for.cond.245
  %222 = load i32, i32* %nlen2, align 4
  %add258 = add nsw i32 %222, 1
  store i32 %add258, i32* %m, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.270, %for.end.257
  %223 = load i32, i32* %m, align 4
  %224 = load i32, i32* %nlen, align 4
  %cmp260 = icmp slt i32 %223, %224
  br i1 %cmp260, label %for.body.262, label %for.end.272

for.body.262:                                     ; preds = %for.cond.259
  %225 = load i32, i32* %nlen, align 4
  %226 = load i32, i32* %nlen2, align 4
  %add263 = add nsw i32 %225, %226
  %227 = load i32, i32* %m, align 4
  %sub264 = sub nsw i32 %add263, %227
  %idxprom265 = sext i32 %sub264 to i64
  %228 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Fgetlag.naisekiNoWa, align 8
  %arrayidx266 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %228, i64 %idxprom265
  %R267 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx266, i32 0, i32 0
  %229 = load double, double* %R267, align 8
  %230 = load i32, i32* %m, align 4
  %idxprom268 = sext i32 %230 to i64
  %231 = load double*, double** @Fgetlag.soukan, align 8
  %arrayidx269 = getelementptr inbounds double, double* %231, i64 %idxprom268
  store double %229, double* %arrayidx269, align 8
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.262
  %232 = load i32, i32* %m, align 4
  %inc271 = add nsw i32 %232, 1
  store i32 %inc271, i32* %m, align 4
  br label %for.cond.259

for.end.272:                                      ; preds = %for.cond.259
  %233 = load i32*, i32** @Fgetlag.kouho, align 8
  %234 = load double*, double** @Fgetlag.soukan, align 8
  %235 = load i32, i32* %nlen, align 4
  %call273 = call i32 @getKouho(i32* %233, i32 20, double* %234, i32 %235)
  store i32 0, i32* %count, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.410, %for.end.272
  %236 = load i32, i32* %k, align 4
  %cmp275 = icmp slt i32 %236, 20
  br i1 %cmp275, label %for.body.277, label %for.end.412

for.body.277:                                     ; preds = %for.cond.274
  %237 = load i32, i32* %k, align 4
  %idxprom278 = sext i32 %237 to i64
  %238 = load i32*, i32** @Fgetlag.kouho, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %238, i64 %idxprom278
  %239 = load i32, i32* %arrayidx279, align 4
  store i32 %239, i32* %lag, align 4
  %240 = load i32, i32* %lag, align 4
  %241 = load i32, i32* %clus1.addr, align 4
  %242 = load i32, i32* %clus2.addr, align 4
  %243 = load i8**, i8*** %seq1.addr, align 8
  %244 = load i8**, i8*** %seq2.addr, align 8
  %245 = load i8**, i8*** @Fgetlag.tmpptr1, align 8
  %246 = load i8**, i8*** @Fgetlag.tmpptr2, align 8
  call void @zurasu2(i32 %240, i32 %241, i32 %242, i8** %243, i8** %244, i8** %245, i8** %246)
  %247 = load i32, i32* %clus1.addr, align 4
  %248 = load i32, i32* %clus2.addr, align 4
  %249 = load i8**, i8*** @Fgetlag.tmpptr1, align 8
  %250 = load i8**, i8*** @Fgetlag.tmpptr2, align 8
  %251 = load double*, double** %eff1.addr, align 8
  %252 = load double*, double** %eff2.addr, align 8
  %253 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %254 = load i32, i32* %count, align 4
  %idx.ext280 = sext i32 %254 to i64
  %add.ptr281 = getelementptr inbounds %struct._Segment, %struct._Segment* %253, i64 %idx.ext280
  %call282 = call i32 @alignableReagion(i32 %247, i32 %248, i8** %249, i8** %250, double* %251, double* %252, %struct._Segment* %add.ptr281)
  store i32 %call282, i32* %tmpint, align 4
  %255 = load i32, i32* %count, align 4
  %256 = load i32, i32* %tmpint, align 4
  %add283 = add nsw i32 %255, %256
  %cmp284 = icmp sgt i32 %add283, 99997
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %for.body.277
  call void @ErrorExit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %for.body.277
  %257 = load i32, i32* %tmpint, align 4
  %cmp288 = icmp eq i32 %257, 0
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.287
  br label %for.end.412

if.end.291:                                       ; preds = %if.end.287
  br label %while.cond.292

while.cond.292:                                   ; preds = %if.end.398, %if.end.291
  %258 = load i32, i32* %tmpint, align 4
  %dec = add nsw i32 %258, -1
  store i32 %dec, i32* %tmpint, align 4
  %cmp293 = icmp sgt i32 %258, 0
  br i1 %cmp293, label %while.body.295, label %while.end.409

while.body.295:                                   ; preds = %while.cond.292
  %259 = load i32, i32* %lag, align 4
  %cmp296 = icmp sgt i32 %259, 0
  br i1 %cmp296, label %if.then.298, label %if.else.346

if.then.298:                                      ; preds = %while.body.295
  %260 = load i32, i32* %count, align 4
  %idxprom299 = sext i32 %260 to i64
  %261 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx300 = getelementptr inbounds %struct._Segment, %struct._Segment* %261, i64 %idxprom299
  %start = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx300, i32 0, i32 0
  %262 = load i32, i32* %start, align 4
  %263 = load i32, i32* %count, align 4
  %idxprom301 = sext i32 %263 to i64
  %264 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx302 = getelementptr inbounds %struct._Segment, %struct._Segment* %264, i64 %idxprom301
  %start303 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx302, i32 0, i32 0
  store i32 %262, i32* %start303, align 4
  %265 = load i32, i32* %count, align 4
  %idxprom304 = sext i32 %265 to i64
  %266 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx305 = getelementptr inbounds %struct._Segment, %struct._Segment* %266, i64 %idxprom304
  %end = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx305, i32 0, i32 1
  %267 = load i32, i32* %end, align 4
  %268 = load i32, i32* %count, align 4
  %idxprom306 = sext i32 %268 to i64
  %269 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx307 = getelementptr inbounds %struct._Segment, %struct._Segment* %269, i64 %idxprom306
  %end308 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx307, i32 0, i32 1
  store i32 %267, i32* %end308, align 4
  %270 = load i32, i32* %count, align 4
  %idxprom309 = sext i32 %270 to i64
  %271 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx310 = getelementptr inbounds %struct._Segment, %struct._Segment* %271, i64 %idxprom309
  %center = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx310, i32 0, i32 2
  %272 = load i32, i32* %center, align 4
  %273 = load i32, i32* %count, align 4
  %idxprom311 = sext i32 %273 to i64
  %274 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx312 = getelementptr inbounds %struct._Segment, %struct._Segment* %274, i64 %idxprom311
  %center313 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx312, i32 0, i32 2
  store i32 %272, i32* %center313, align 4
  %275 = load i32, i32* %count, align 4
  %idxprom314 = sext i32 %275 to i64
  %276 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx315 = getelementptr inbounds %struct._Segment, %struct._Segment* %276, i64 %idxprom314
  %score = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx315, i32 0, i32 3
  %277 = load double, double* %score, align 8
  %278 = load i32, i32* %count, align 4
  %idxprom316 = sext i32 %278 to i64
  %279 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx317 = getelementptr inbounds %struct._Segment, %struct._Segment* %279, i64 %idxprom316
  %score318 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx317, i32 0, i32 3
  store double %277, double* %score318, align 8
  %280 = load i32, i32* %count, align 4
  %idxprom319 = sext i32 %280 to i64
  %281 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx320 = getelementptr inbounds %struct._Segment, %struct._Segment* %281, i64 %idxprom319
  %start321 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx320, i32 0, i32 0
  %282 = load i32, i32* %start321, align 4
  %283 = load i32, i32* %lag, align 4
  %add322 = add nsw i32 %282, %283
  %284 = load i32, i32* %count, align 4
  %idxprom323 = sext i32 %284 to i64
  %285 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx324 = getelementptr inbounds %struct._Segment, %struct._Segment* %285, i64 %idxprom323
  %start325 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx324, i32 0, i32 0
  store i32 %add322, i32* %start325, align 4
  %286 = load i32, i32* %count, align 4
  %idxprom326 = sext i32 %286 to i64
  %287 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx327 = getelementptr inbounds %struct._Segment, %struct._Segment* %287, i64 %idxprom326
  %end328 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx327, i32 0, i32 1
  %288 = load i32, i32* %end328, align 4
  %289 = load i32, i32* %lag, align 4
  %add329 = add nsw i32 %288, %289
  %290 = load i32, i32* %count, align 4
  %idxprom330 = sext i32 %290 to i64
  %291 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx331 = getelementptr inbounds %struct._Segment, %struct._Segment* %291, i64 %idxprom330
  %end332 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx331, i32 0, i32 1
  store i32 %add329, i32* %end332, align 4
  %292 = load i32, i32* %count, align 4
  %idxprom333 = sext i32 %292 to i64
  %293 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx334 = getelementptr inbounds %struct._Segment, %struct._Segment* %293, i64 %idxprom333
  %center335 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx334, i32 0, i32 2
  %294 = load i32, i32* %center335, align 4
  %295 = load i32, i32* %lag, align 4
  %add336 = add nsw i32 %294, %295
  %296 = load i32, i32* %count, align 4
  %idxprom337 = sext i32 %296 to i64
  %297 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx338 = getelementptr inbounds %struct._Segment, %struct._Segment* %297, i64 %idxprom337
  %center339 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx338, i32 0, i32 2
  store i32 %add336, i32* %center339, align 4
  %298 = load i32, i32* %count, align 4
  %idxprom340 = sext i32 %298 to i64
  %299 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx341 = getelementptr inbounds %struct._Segment, %struct._Segment* %299, i64 %idxprom340
  %score342 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx341, i32 0, i32 3
  %300 = load double, double* %score342, align 8
  %301 = load i32, i32* %count, align 4
  %idxprom343 = sext i32 %301 to i64
  %302 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx344 = getelementptr inbounds %struct._Segment, %struct._Segment* %302, i64 %idxprom343
  %score345 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx344, i32 0, i32 3
  store double %300, double* %score345, align 8
  br label %if.end.398

if.else.346:                                      ; preds = %while.body.295
  %303 = load i32, i32* %count, align 4
  %idxprom347 = sext i32 %303 to i64
  %304 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx348 = getelementptr inbounds %struct._Segment, %struct._Segment* %304, i64 %idxprom347
  %start349 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx348, i32 0, i32 0
  %305 = load i32, i32* %start349, align 4
  %306 = load i32, i32* %lag, align 4
  %sub350 = sub nsw i32 %305, %306
  %307 = load i32, i32* %count, align 4
  %idxprom351 = sext i32 %307 to i64
  %308 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx352 = getelementptr inbounds %struct._Segment, %struct._Segment* %308, i64 %idxprom351
  %start353 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx352, i32 0, i32 0
  store i32 %sub350, i32* %start353, align 4
  %309 = load i32, i32* %count, align 4
  %idxprom354 = sext i32 %309 to i64
  %310 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx355 = getelementptr inbounds %struct._Segment, %struct._Segment* %310, i64 %idxprom354
  %end356 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx355, i32 0, i32 1
  %311 = load i32, i32* %end356, align 4
  %312 = load i32, i32* %lag, align 4
  %sub357 = sub nsw i32 %311, %312
  %313 = load i32, i32* %count, align 4
  %idxprom358 = sext i32 %313 to i64
  %314 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx359 = getelementptr inbounds %struct._Segment, %struct._Segment* %314, i64 %idxprom358
  %end360 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx359, i32 0, i32 1
  store i32 %sub357, i32* %end360, align 4
  %315 = load i32, i32* %count, align 4
  %idxprom361 = sext i32 %315 to i64
  %316 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx362 = getelementptr inbounds %struct._Segment, %struct._Segment* %316, i64 %idxprom361
  %center363 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx362, i32 0, i32 2
  %317 = load i32, i32* %center363, align 4
  %318 = load i32, i32* %lag, align 4
  %sub364 = sub nsw i32 %317, %318
  %319 = load i32, i32* %count, align 4
  %idxprom365 = sext i32 %319 to i64
  %320 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx366 = getelementptr inbounds %struct._Segment, %struct._Segment* %320, i64 %idxprom365
  %center367 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx366, i32 0, i32 2
  store i32 %sub364, i32* %center367, align 4
  %321 = load i32, i32* %count, align 4
  %idxprom368 = sext i32 %321 to i64
  %322 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx369 = getelementptr inbounds %struct._Segment, %struct._Segment* %322, i64 %idxprom368
  %score370 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx369, i32 0, i32 3
  %323 = load double, double* %score370, align 8
  %324 = load i32, i32* %count, align 4
  %idxprom371 = sext i32 %324 to i64
  %325 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx372 = getelementptr inbounds %struct._Segment, %struct._Segment* %325, i64 %idxprom371
  %score373 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx372, i32 0, i32 3
  store double %323, double* %score373, align 8
  %326 = load i32, i32* %count, align 4
  %idxprom374 = sext i32 %326 to i64
  %327 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx375 = getelementptr inbounds %struct._Segment, %struct._Segment* %327, i64 %idxprom374
  %start376 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx375, i32 0, i32 0
  %328 = load i32, i32* %start376, align 4
  %329 = load i32, i32* %count, align 4
  %idxprom377 = sext i32 %329 to i64
  %330 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx378 = getelementptr inbounds %struct._Segment, %struct._Segment* %330, i64 %idxprom377
  %start379 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx378, i32 0, i32 0
  store i32 %328, i32* %start379, align 4
  %331 = load i32, i32* %count, align 4
  %idxprom380 = sext i32 %331 to i64
  %332 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx381 = getelementptr inbounds %struct._Segment, %struct._Segment* %332, i64 %idxprom380
  %end382 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx381, i32 0, i32 1
  %333 = load i32, i32* %end382, align 4
  %334 = load i32, i32* %count, align 4
  %idxprom383 = sext i32 %334 to i64
  %335 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx384 = getelementptr inbounds %struct._Segment, %struct._Segment* %335, i64 %idxprom383
  %end385 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx384, i32 0, i32 1
  store i32 %333, i32* %end385, align 4
  %336 = load i32, i32* %count, align 4
  %idxprom386 = sext i32 %336 to i64
  %337 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx387 = getelementptr inbounds %struct._Segment, %struct._Segment* %337, i64 %idxprom386
  %center388 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx387, i32 0, i32 2
  %338 = load i32, i32* %center388, align 4
  %339 = load i32, i32* %count, align 4
  %idxprom389 = sext i32 %339 to i64
  %340 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx390 = getelementptr inbounds %struct._Segment, %struct._Segment* %340, i64 %idxprom389
  %center391 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx390, i32 0, i32 2
  store i32 %338, i32* %center391, align 4
  %341 = load i32, i32* %count, align 4
  %idxprom392 = sext i32 %341 to i64
  %342 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment, align 8
  %arrayidx393 = getelementptr inbounds %struct._Segment, %struct._Segment* %342, i64 %idxprom392
  %score394 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx393, i32 0, i32 3
  %343 = load double, double* %score394, align 8
  %344 = load i32, i32* %count, align 4
  %idxprom395 = sext i32 %344 to i64
  %345 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx396 = getelementptr inbounds %struct._Segment, %struct._Segment* %345, i64 %idxprom395
  %score397 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx396, i32 0, i32 3
  store double %343, double* %score397, align 8
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.346, %if.then.298
  %346 = load i32, i32* %count, align 4
  %idxprom399 = sext i32 %346 to i64
  %347 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx400 = getelementptr inbounds %struct._Segment, %struct._Segment* %347, i64 %idxprom399
  %348 = load i32, i32* %count, align 4
  %idxprom401 = sext i32 %348 to i64
  %349 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx402 = getelementptr inbounds %struct._Segment, %struct._Segment* %349, i64 %idxprom401
  %pair = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx402, i32 0, i32 6
  store %struct._Segment* %arrayidx400, %struct._Segment** %pair, align 8
  %350 = load i32, i32* %count, align 4
  %idxprom403 = sext i32 %350 to i64
  %351 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx404 = getelementptr inbounds %struct._Segment, %struct._Segment* %351, i64 %idxprom403
  %352 = load i32, i32* %count, align 4
  %idxprom405 = sext i32 %352 to i64
  %353 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx406 = getelementptr inbounds %struct._Segment, %struct._Segment* %353, i64 %idxprom405
  %pair407 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx406, i32 0, i32 6
  store %struct._Segment* %arrayidx404, %struct._Segment** %pair407, align 8
  %354 = load i32, i32* %count, align 4
  %inc408 = add nsw i32 %354, 1
  store i32 %inc408, i32* %count, align 4
  br label %while.cond.292

while.end.409:                                    ; preds = %while.cond.292
  br label %for.inc.410

for.inc.410:                                      ; preds = %while.end.409
  %355 = load i32, i32* %k, align 4
  %inc411 = add nsw i32 %355, 1
  store i32 %inc411, i32* %k, align 4
  br label %for.cond.274

for.end.412:                                      ; preds = %if.then.290, %for.cond.274
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %357 = load i32, i32* %count, align 4
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %356, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %357)
  %358 = load i32, i32* %count, align 4
  %tobool414 = icmp ne i32 %358, 0
  br i1 %tobool414, label %if.end.418, label %land.lhs.true.415

land.lhs.true.415:                                ; preds = %for.end.412
  %359 = load i32, i32* @fftNoAnchStop, align 4
  %tobool416 = icmp ne i32 %359, 0
  br i1 %tobool416, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %land.lhs.true.415
  call void @ErrorExit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.417, %land.lhs.true.415, %for.end.412
  store i32 0, i32* %i, align 4
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.431, %if.end.418
  %360 = load i32, i32* %i, align 4
  %361 = load i32, i32* %count, align 4
  %cmp420 = icmp slt i32 %360, %361
  br i1 %cmp420, label %for.body.422, label %for.end.433

for.body.422:                                     ; preds = %for.cond.419
  %362 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %362 to i64
  %363 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx424 = getelementptr inbounds %struct._Segment, %struct._Segment* %363, i64 %idxprom423
  %364 = load i32, i32* %i, align 4
  %idxprom425 = sext i32 %364 to i64
  %365 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  %arrayidx426 = getelementptr inbounds %struct._Segment*, %struct._Segment** %365, i64 %idxprom425
  store %struct._Segment* %arrayidx424, %struct._Segment** %arrayidx426, align 8
  %366 = load i32, i32* %i, align 4
  %idxprom427 = sext i32 %366 to i64
  %367 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment2, align 8
  %arrayidx428 = getelementptr inbounds %struct._Segment, %struct._Segment* %367, i64 %idxprom427
  %368 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %368 to i64
  %369 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  %arrayidx430 = getelementptr inbounds %struct._Segment*, %struct._Segment** %369, i64 %idxprom429
  store %struct._Segment* %arrayidx428, %struct._Segment** %arrayidx430, align 8
  br label %for.inc.431

for.inc.431:                                      ; preds = %for.body.422
  %370 = load i32, i32* %i, align 4
  %inc432 = add nsw i32 %370, 1
  store i32 %inc432, i32* %i, align 4
  br label %for.cond.419

for.end.433:                                      ; preds = %for.cond.419
  %371 = load i32, i32* %count, align 4
  %sub434 = sub nsw i32 %371, 1
  %372 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  call void @mymergesort(i32 0, i32 %sub434, %struct._Segment** %372)
  %373 = load i32, i32* %count, align 4
  %sub435 = sub nsw i32 %373, 1
  %374 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  call void @mymergesort(i32 0, i32 %sub435, %struct._Segment** %374)
  store i32 0, i32* %i, align 4
  br label %for.cond.436

for.cond.436:                                     ; preds = %for.inc.442, %for.end.433
  %375 = load i32, i32* %i, align 4
  %376 = load i32, i32* %count, align 4
  %cmp437 = icmp slt i32 %375, %376
  br i1 %cmp437, label %for.body.439, label %for.end.444

for.body.439:                                     ; preds = %for.cond.436
  %377 = load i32, i32* %i, align 4
  %378 = load i32, i32* %i, align 4
  %idxprom440 = sext i32 %378 to i64
  %379 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  %arrayidx441 = getelementptr inbounds %struct._Segment*, %struct._Segment** %379, i64 %idxprom440
  %380 = load %struct._Segment*, %struct._Segment** %arrayidx441, align 8
  %number = getelementptr inbounds %struct._Segment, %struct._Segment* %380, i32 0, i32 7
  store i32 %377, i32* %number, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.439
  %381 = load i32, i32* %i, align 4
  %inc443 = add nsw i32 %381, 1
  store i32 %inc443, i32* %i, align 4
  br label %for.cond.436

for.end.444:                                      ; preds = %for.cond.436
  store i32 0, i32* %i, align 4
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.452, %for.end.444
  %382 = load i32, i32* %i, align 4
  %383 = load i32, i32* %count, align 4
  %cmp446 = icmp slt i32 %382, %383
  br i1 %cmp446, label %for.body.448, label %for.end.454

for.body.448:                                     ; preds = %for.cond.445
  %384 = load i32, i32* %i, align 4
  %385 = load i32, i32* %i, align 4
  %idxprom449 = sext i32 %385 to i64
  %386 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  %arrayidx450 = getelementptr inbounds %struct._Segment*, %struct._Segment** %386, i64 %idxprom449
  %387 = load %struct._Segment*, %struct._Segment** %arrayidx450, align 8
  %number451 = getelementptr inbounds %struct._Segment, %struct._Segment* %387, i32 0, i32 7
  store i32 %384, i32* %number451, align 4
  br label %for.inc.452

for.inc.452:                                      ; preds = %for.body.448
  %388 = load i32, i32* %i, align 4
  %inc453 = add nsw i32 %388, 1
  store i32 %inc453, i32* %i, align 4
  br label %for.cond.445

for.end.454:                                      ; preds = %for.cond.445
  %389 = load i32, i32* @Fgetlag.crossscoresize, align 4
  %390 = load i32, i32* %count, align 4
  %add455 = add nsw i32 %390, 2
  %cmp456 = icmp slt i32 %389, %add455
  br i1 %cmp456, label %if.then.458, label %if.end.465

if.then.458:                                      ; preds = %for.end.454
  %391 = load i32, i32* %count, align 4
  %add459 = add nsw i32 %391, 2
  store i32 %add459, i32* @Fgetlag.crossscoresize, align 4
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %393 = load i32, i32* @Fgetlag.crossscoresize, align 4
  %call460 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %392, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.5, i32 0, i32 0), i32 %393)
  %394 = load double**, double*** @Fgetlag.crossscore, align 8
  %tobool461 = icmp ne double** %394, null
  br i1 %tobool461, label %if.then.462, label %if.end.463

if.then.462:                                      ; preds = %if.then.458
  %395 = load double**, double*** @Fgetlag.crossscore, align 8
  call void @FreeDoubleMtx(double** %395)
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.462, %if.then.458
  %396 = load i32, i32* @Fgetlag.crossscoresize, align 4
  %397 = load i32, i32* @Fgetlag.crossscoresize, align 4
  %call464 = call double** @AllocateDoubleMtx(i32 %396, i32 %397)
  store double** %call464, double*** @Fgetlag.crossscore, align 8
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.463, %for.end.454
  store i32 0, i32* %i, align 4
  br label %for.cond.466

for.cond.466:                                     ; preds = %for.inc.483, %if.end.465
  %398 = load i32, i32* %i, align 4
  %399 = load i32, i32* %count, align 4
  %add467 = add nsw i32 %399, 2
  %cmp468 = icmp slt i32 %398, %add467
  br i1 %cmp468, label %for.body.470, label %for.end.485

for.body.470:                                     ; preds = %for.cond.466
  store i32 0, i32* %j, align 4
  br label %for.cond.471

for.cond.471:                                     ; preds = %for.inc.480, %for.body.470
  %400 = load i32, i32* %j, align 4
  %401 = load i32, i32* %count, align 4
  %add472 = add nsw i32 %401, 2
  %cmp473 = icmp slt i32 %400, %add472
  br i1 %cmp473, label %for.body.475, label %for.end.482

for.body.475:                                     ; preds = %for.cond.471
  %402 = load i32, i32* %j, align 4
  %idxprom476 = sext i32 %402 to i64
  %403 = load i32, i32* %i, align 4
  %idxprom477 = sext i32 %403 to i64
  %404 = load double**, double*** @Fgetlag.crossscore, align 8
  %arrayidx478 = getelementptr inbounds double*, double** %404, i64 %idxprom477
  %405 = load double*, double** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds double, double* %405, i64 %idxprom476
  store double 0.000000e+00, double* %arrayidx479, align 8
  br label %for.inc.480

for.inc.480:                                      ; preds = %for.body.475
  %406 = load i32, i32* %j, align 4
  %inc481 = add nsw i32 %406, 1
  store i32 %inc481, i32* %j, align 4
  br label %for.cond.471

for.end.482:                                      ; preds = %for.cond.471
  br label %for.inc.483

for.inc.483:                                      ; preds = %for.end.482
  %407 = load i32, i32* %i, align 4
  %inc484 = add nsw i32 %407, 1
  store i32 %inc484, i32* %i, align 4
  br label %for.cond.466

for.end.485:                                      ; preds = %for.cond.466
  store i32 0, i32* %i, align 4
  br label %for.cond.486

for.cond.486:                                     ; preds = %for.inc.518, %for.end.485
  %408 = load i32, i32* %i, align 4
  %409 = load i32, i32* %count, align 4
  %cmp487 = icmp slt i32 %408, %409
  br i1 %cmp487, label %for.body.489, label %for.end.520

for.body.489:                                     ; preds = %for.cond.486
  %410 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %410 to i64
  %411 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx491 = getelementptr inbounds %struct._Segment, %struct._Segment* %411, i64 %idxprom490
  %score492 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx491, i32 0, i32 3
  %412 = load double, double* %score492, align 8
  %413 = load i32, i32* %i, align 4
  %idxprom493 = sext i32 %413 to i64
  %414 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx494 = getelementptr inbounds %struct._Segment, %struct._Segment* %414, i64 %idxprom493
  %pair495 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx494, i32 0, i32 6
  %415 = load %struct._Segment*, %struct._Segment** %pair495, align 8
  %number496 = getelementptr inbounds %struct._Segment, %struct._Segment* %415, i32 0, i32 7
  %416 = load i32, i32* %number496, align 4
  %add497 = add nsw i32 %416, 1
  %idxprom498 = sext i32 %add497 to i64
  %417 = load i32, i32* %i, align 4
  %idxprom499 = sext i32 %417 to i64
  %418 = load %struct._Segment*, %struct._Segment** @Fgetlag.segment1, align 8
  %arrayidx500 = getelementptr inbounds %struct._Segment, %struct._Segment* %418, i64 %idxprom499
  %number501 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx500, i32 0, i32 7
  %419 = load i32, i32* %number501, align 4
  %add502 = add nsw i32 %419, 1
  %idxprom503 = sext i32 %add502 to i64
  %420 = load double**, double*** @Fgetlag.crossscore, align 8
  %arrayidx504 = getelementptr inbounds double*, double** %420, i64 %idxprom503
  %421 = load double*, double** %arrayidx504, align 8
  %arrayidx505 = getelementptr inbounds double, double* %421, i64 %idxprom498
  store double %412, double* %arrayidx505, align 8
  %422 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %422 to i64
  %423 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  %arrayidx507 = getelementptr inbounds %struct._Segment*, %struct._Segment** %423, i64 %idxprom506
  %424 = load %struct._Segment*, %struct._Segment** %arrayidx507, align 8
  %center508 = getelementptr inbounds %struct._Segment, %struct._Segment* %424, i32 0, i32 2
  %425 = load i32, i32* %center508, align 4
  %426 = load i32, i32* %i, align 4
  %add509 = add nsw i32 %426, 1
  %idxprom510 = sext i32 %add509 to i64
  %427 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %427, i64 %idxprom510
  store i32 %425, i32* %arrayidx511, align 4
  %428 = load i32, i32* %i, align 4
  %idxprom512 = sext i32 %428 to i64
  %429 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  %arrayidx513 = getelementptr inbounds %struct._Segment*, %struct._Segment** %429, i64 %idxprom512
  %430 = load %struct._Segment*, %struct._Segment** %arrayidx513, align 8
  %center514 = getelementptr inbounds %struct._Segment, %struct._Segment* %430, i32 0, i32 2
  %431 = load i32, i32* %center514, align 4
  %432 = load i32, i32* %i, align 4
  %add515 = add nsw i32 %432, 1
  %idxprom516 = sext i32 %add515 to i64
  %433 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx517 = getelementptr inbounds i32, i32* %433, i64 %idxprom516
  store i32 %431, i32* %arrayidx517, align 4
  br label %for.inc.518

for.inc.518:                                      ; preds = %for.body.489
  %434 = load i32, i32* %i, align 4
  %inc519 = add nsw i32 %434, 1
  store i32 %inc519, i32* %i, align 4
  br label %for.cond.486

for.end.520:                                      ; preds = %for.cond.486
  %435 = load double**, double*** @Fgetlag.crossscore, align 8
  %arrayidx521 = getelementptr inbounds double*, double** %435, i64 0
  %436 = load double*, double** %arrayidx521, align 8
  %arrayidx522 = getelementptr inbounds double, double* %436, i64 0
  store double 1.000000e+07, double* %arrayidx522, align 8
  %437 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %437, i64 0
  store i32 0, i32* %arrayidx523, align 4
  %438 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx524 = getelementptr inbounds i32, i32* %438, i64 0
  store i32 0, i32* %arrayidx524, align 4
  %439 = load i32, i32* %count, align 4
  %add525 = add nsw i32 %439, 1
  %idxprom526 = sext i32 %add525 to i64
  %440 = load i32, i32* %count, align 4
  %add527 = add nsw i32 %440, 1
  %idxprom528 = sext i32 %add527 to i64
  %441 = load double**, double*** @Fgetlag.crossscore, align 8
  %arrayidx529 = getelementptr inbounds double*, double** %441, i64 %idxprom528
  %442 = load double*, double** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds double, double* %442, i64 %idxprom526
  store double 1.000000e+07, double* %arrayidx530, align 8
  %443 = load i32, i32* %len1, align 4
  %444 = load i32, i32* %count, align 4
  %add531 = add nsw i32 %444, 1
  %idxprom532 = sext i32 %add531 to i64
  %445 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %445, i64 %idxprom532
  store i32 %443, i32* %arrayidx533, align 4
  %446 = load i32, i32* %len2, align 4
  %447 = load i32, i32* %count, align 4
  %add534 = add nsw i32 %447, 1
  %idxprom535 = sext i32 %add534 to i64
  %448 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx536 = getelementptr inbounds i32, i32* %448, i64 %idxprom535
  store i32 %446, i32* %arrayidx536, align 4
  %449 = load i32, i32* %count, align 4
  %add537 = add nsw i32 %449, 2
  store i32 %add537, i32* %count, align 4
  %450 = load i32, i32* %count, align 4
  store i32 %450, i32* %count0, align 4
  %451 = load i32*, i32** @Fgetlag.cut1, align 8
  %452 = load i32*, i32** @Fgetlag.cut2, align 8
  %453 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg1, align 8
  %454 = load %struct._Segment**, %struct._Segment*** @Fgetlag.sortedseg2, align 8
  %455 = load double**, double*** @Fgetlag.crossscore, align 8
  call void @blockAlign2(i32* %451, i32* %452, %struct._Segment** %453, %struct._Segment** %454, double** %455, i32* %count)
  %456 = load i32, i32* @fftkeika, align 4
  %tobool538 = icmp ne i32 %456, 0
  br i1 %tobool538, label %if.then.539, label %if.end.548

if.then.539:                                      ; preds = %for.end.520
  %457 = load i32, i32* %count0, align 4
  %458 = load i32, i32* %count, align 4
  %cmp540 = icmp sgt i32 %457, %458
  br i1 %cmp540, label %if.then.542, label %if.end.547

if.then.542:                                      ; preds = %if.then.539
  %459 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call543 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %459, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %460 = load i32, i32* @fftRepeatStop, align 4
  %tobool544 = icmp ne i32 %460, 0
  br i1 %tobool544, label %if.then.545, label %if.end.546

if.then.545:                                      ; preds = %if.then.542
  call void @exit(i32 1) #7
  unreachable

if.end.546:                                       ; preds = %if.then.542
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %if.then.539
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %for.end.520
  store i32 0, i32* %totallen, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.556, %if.end.548
  %461 = load i32, i32* %j, align 4
  %462 = load i32, i32* %clus1.addr, align 4
  %cmp550 = icmp slt i32 %461, %462
  br i1 %cmp550, label %for.body.552, label %for.end.558

for.body.552:                                     ; preds = %for.cond.549
  %463 = load i32, i32* %j, align 4
  %idxprom553 = sext i32 %463 to i64
  %464 = load i8**, i8*** @Fgetlag.result1, align 8
  %arrayidx554 = getelementptr inbounds i8*, i8** %464, i64 %idxprom553
  %465 = load i8*, i8** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i8, i8* %465, i64 0
  store i8 0, i8* %arrayidx555, align 1
  br label %for.inc.556

for.inc.556:                                      ; preds = %for.body.552
  %466 = load i32, i32* %j, align 4
  %inc557 = add nsw i32 %466, 1
  store i32 %inc557, i32* %j, align 4
  br label %for.cond.549

for.end.558:                                      ; preds = %for.cond.549
  store i32 0, i32* %j, align 4
  br label %for.cond.559

for.cond.559:                                     ; preds = %for.inc.566, %for.end.558
  %467 = load i32, i32* %j, align 4
  %468 = load i32, i32* %clus2.addr, align 4
  %cmp560 = icmp slt i32 %467, %468
  br i1 %cmp560, label %for.body.562, label %for.end.568

for.body.562:                                     ; preds = %for.cond.559
  %469 = load i32, i32* %j, align 4
  %idxprom563 = sext i32 %469 to i64
  %470 = load i8**, i8*** @Fgetlag.result2, align 8
  %arrayidx564 = getelementptr inbounds i8*, i8** %470, i64 %idxprom563
  %471 = load i8*, i8** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i8, i8* %471, i64 0
  store i8 0, i8* %arrayidx565, align 1
  br label %for.inc.566

for.inc.566:                                      ; preds = %for.body.562
  %472 = load i32, i32* %j, align 4
  %inc567 = add nsw i32 %472, 1
  store i32 %inc567, i32* %j, align 4
  br label %for.cond.559

for.end.568:                                      ; preds = %for.cond.559
  store i32 0, i32* %i, align 4
  br label %for.cond.569

for.cond.569:                                     ; preds = %for.inc.712, %for.end.568
  %473 = load i32, i32* %i, align 4
  %474 = load i32, i32* %count, align 4
  %sub570 = sub nsw i32 %474, 1
  %cmp571 = icmp slt i32 %473, %sub570
  br i1 %cmp571, label %for.body.573, label %for.end.714

for.body.573:                                     ; preds = %for.cond.569
  store i32 0, i32* %j, align 4
  br label %for.cond.574

for.cond.574:                                     ; preds = %for.inc.604, %for.body.573
  %475 = load i32, i32* %j, align 4
  %476 = load i32, i32* %clus1.addr, align 4
  %cmp575 = icmp slt i32 %475, %476
  br i1 %cmp575, label %for.body.577, label %for.end.606

for.body.577:                                     ; preds = %for.cond.574
  %477 = load i32, i32* %j, align 4
  %idxprom578 = sext i32 %477 to i64
  %478 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %arrayidx579 = getelementptr inbounds i8*, i8** %478, i64 %idxprom578
  %479 = load i8*, i8** %arrayidx579, align 8
  %480 = load i32, i32* %j, align 4
  %idxprom580 = sext i32 %480 to i64
  %481 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx581 = getelementptr inbounds i8*, i8** %481, i64 %idxprom580
  %482 = load i8*, i8** %arrayidx581, align 8
  %483 = load i32, i32* %i, align 4
  %idxprom582 = sext i32 %483 to i64
  %484 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %484, i64 %idxprom582
  %485 = load i32, i32* %arrayidx583, align 4
  %idx.ext584 = sext i32 %485 to i64
  %add.ptr585 = getelementptr inbounds i8, i8* %482, i64 %idx.ext584
  %486 = load i32, i32* %i, align 4
  %add586 = add nsw i32 %486, 1
  %idxprom587 = sext i32 %add586 to i64
  %487 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx588 = getelementptr inbounds i32, i32* %487, i64 %idxprom587
  %488 = load i32, i32* %arrayidx588, align 4
  %489 = load i32, i32* %i, align 4
  %idxprom589 = sext i32 %489 to i64
  %490 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx590 = getelementptr inbounds i32, i32* %490, i64 %idxprom589
  %491 = load i32, i32* %arrayidx590, align 4
  %sub591 = sub nsw i32 %488, %491
  %conv592 = sext i32 %sub591 to i64
  %call593 = call i8* @strncpy(i8* %479, i8* %add.ptr585, i64 %conv592) #6
  %492 = load i32, i32* %i, align 4
  %add594 = add nsw i32 %492, 1
  %idxprom595 = sext i32 %add594 to i64
  %493 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx596 = getelementptr inbounds i32, i32* %493, i64 %idxprom595
  %494 = load i32, i32* %arrayidx596, align 4
  %495 = load i32, i32* %i, align 4
  %idxprom597 = sext i32 %495 to i64
  %496 = load i32*, i32** @Fgetlag.cut1, align 8
  %arrayidx598 = getelementptr inbounds i32, i32* %496, i64 %idxprom597
  %497 = load i32, i32* %arrayidx598, align 4
  %sub599 = sub nsw i32 %494, %497
  %idxprom600 = sext i32 %sub599 to i64
  %498 = load i32, i32* %j, align 4
  %idxprom601 = sext i32 %498 to i64
  %499 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %arrayidx602 = getelementptr inbounds i8*, i8** %499, i64 %idxprom601
  %500 = load i8*, i8** %arrayidx602, align 8
  %arrayidx603 = getelementptr inbounds i8, i8* %500, i64 %idxprom600
  store i8 0, i8* %arrayidx603, align 1
  br label %for.inc.604

for.inc.604:                                      ; preds = %for.body.577
  %501 = load i32, i32* %j, align 4
  %inc605 = add nsw i32 %501, 1
  store i32 %inc605, i32* %j, align 4
  br label %for.cond.574

for.end.606:                                      ; preds = %for.cond.574
  store i32 0, i32* %j, align 4
  br label %for.cond.607

for.cond.607:                                     ; preds = %for.inc.637, %for.end.606
  %502 = load i32, i32* %j, align 4
  %503 = load i32, i32* %clus2.addr, align 4
  %cmp608 = icmp slt i32 %502, %503
  br i1 %cmp608, label %for.body.610, label %for.end.639

for.body.610:                                     ; preds = %for.cond.607
  %504 = load i32, i32* %j, align 4
  %idxprom611 = sext i32 %504 to i64
  %505 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %arrayidx612 = getelementptr inbounds i8*, i8** %505, i64 %idxprom611
  %506 = load i8*, i8** %arrayidx612, align 8
  %507 = load i32, i32* %j, align 4
  %idxprom613 = sext i32 %507 to i64
  %508 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx614 = getelementptr inbounds i8*, i8** %508, i64 %idxprom613
  %509 = load i8*, i8** %arrayidx614, align 8
  %510 = load i32, i32* %i, align 4
  %idxprom615 = sext i32 %510 to i64
  %511 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx616 = getelementptr inbounds i32, i32* %511, i64 %idxprom615
  %512 = load i32, i32* %arrayidx616, align 4
  %idx.ext617 = sext i32 %512 to i64
  %add.ptr618 = getelementptr inbounds i8, i8* %509, i64 %idx.ext617
  %513 = load i32, i32* %i, align 4
  %add619 = add nsw i32 %513, 1
  %idxprom620 = sext i32 %add619 to i64
  %514 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx621 = getelementptr inbounds i32, i32* %514, i64 %idxprom620
  %515 = load i32, i32* %arrayidx621, align 4
  %516 = load i32, i32* %i, align 4
  %idxprom622 = sext i32 %516 to i64
  %517 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx623 = getelementptr inbounds i32, i32* %517, i64 %idxprom622
  %518 = load i32, i32* %arrayidx623, align 4
  %sub624 = sub nsw i32 %515, %518
  %conv625 = sext i32 %sub624 to i64
  %call626 = call i8* @strncpy(i8* %506, i8* %add.ptr618, i64 %conv625) #6
  %519 = load i32, i32* %i, align 4
  %add627 = add nsw i32 %519, 1
  %idxprom628 = sext i32 %add627 to i64
  %520 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx629 = getelementptr inbounds i32, i32* %520, i64 %idxprom628
  %521 = load i32, i32* %arrayidx629, align 4
  %522 = load i32, i32* %i, align 4
  %idxprom630 = sext i32 %522 to i64
  %523 = load i32*, i32** @Fgetlag.cut2, align 8
  %arrayidx631 = getelementptr inbounds i32, i32* %523, i64 %idxprom630
  %524 = load i32, i32* %arrayidx631, align 4
  %sub632 = sub nsw i32 %521, %524
  %idxprom633 = sext i32 %sub632 to i64
  %525 = load i32, i32* %j, align 4
  %idxprom634 = sext i32 %525 to i64
  %526 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %arrayidx635 = getelementptr inbounds i8*, i8** %526, i64 %idxprom634
  %527 = load i8*, i8** %arrayidx635, align 8
  %arrayidx636 = getelementptr inbounds i8, i8* %527, i64 %idxprom633
  store i8 0, i8* %arrayidx636, align 1
  br label %for.inc.637

for.inc.637:                                      ; preds = %for.body.610
  %528 = load i32, i32* %j, align 4
  %inc638 = add nsw i32 %528, 1
  store i32 %inc638, i32* %j, align 4
  br label %for.cond.607

for.end.639:                                      ; preds = %for.cond.607
  %529 = load i8, i8* @alg, align 1
  %conv640 = sext i8 %529 to i32
  switch i32 %conv640, label %sw.default [
    i32 97, label %sw.bb
    i32 77, label %sw.bb.642
    i32 65, label %sw.bb.644
    i32 72, label %sw.bb.655
    i32 81, label %sw.bb.666
  ]

sw.bb:                                            ; preds = %for.end.639
  %530 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %531 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %532 = load double*, double** %eff1.addr, align 8
  %533 = load double*, double** %eff2.addr, align 8
  %534 = load i32, i32* %clus1.addr, align 4
  %535 = load i32, i32* %clus2.addr, align 4
  %536 = load i32, i32* %alloclen.addr, align 4
  %call641 = call float (i8**, i8**, double*, double*, i32, i32, i32, ...) bitcast (float (...)* @Aalign to float (i8**, i8**, double*, double*, i32, i32, i32, ...)*)(i8** %530, i8** %531, double* %532, double* %533, i32 %534, i32 %535, i32 %536)
  br label %sw.epilog

sw.bb.642:                                        ; preds = %for.end.639
  %537 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %538 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %539 = load double*, double** %eff1.addr, align 8
  %540 = load double*, double** %eff2.addr, align 8
  %541 = load i32, i32* %clus1.addr, align 4
  %542 = load i32, i32* %clus2.addr, align 4
  %543 = load i32, i32* %alloclen.addr, align 4
  %call643 = call float @MSalignmm(i8** %537, i8** %538, double* %539, double* %540, i32 %541, i32 %542, i32 %543, i8* null, i8* null, i8* null, i8* null)
  br label %sw.epilog

sw.bb.644:                                        ; preds = %for.end.639
  %544 = load i32, i32* %clus1.addr, align 4
  %cmp645 = icmp eq i32 %544, 1
  br i1 %cmp645, label %land.lhs.true.647, label %if.else.652

land.lhs.true.647:                                ; preds = %sw.bb.644
  %545 = load i32, i32* %clus2.addr, align 4
  %cmp648 = icmp eq i32 %545, 1
  br i1 %cmp648, label %if.then.650, label %if.else.652

if.then.650:                                      ; preds = %land.lhs.true.647
  %546 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %547 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %548 = load i32, i32* %alloclen.addr, align 4
  %call651 = call float @G__align11(i8** %546, i8** %547, i32 %548)
  br label %if.end.654

if.else.652:                                      ; preds = %land.lhs.true.647, %sw.bb.644
  %549 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %550 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %551 = load double*, double** %eff1.addr, align 8
  %552 = load double*, double** %eff2.addr, align 8
  %553 = load i32, i32* %clus1.addr, align 4
  %554 = load i32, i32* %clus2.addr, align 4
  %555 = load i32, i32* %alloclen.addr, align 4
  %call653 = call float @A__align(i8** %549, i8** %550, double* %551, double* %552, i32 %553, i32 %554, i32 %555, %struct._LocalHom*** null, float* %dumfl, i8* null, i8* null, i8* null, i8* null)
  br label %if.end.654

if.end.654:                                       ; preds = %if.else.652, %if.then.650
  br label %sw.epilog

sw.bb.655:                                        ; preds = %for.end.639
  %556 = load i32, i32* %clus1.addr, align 4
  %cmp656 = icmp eq i32 %556, 1
  br i1 %cmp656, label %land.lhs.true.658, label %if.else.663

land.lhs.true.658:                                ; preds = %sw.bb.655
  %557 = load i32, i32* %clus2.addr, align 4
  %cmp659 = icmp eq i32 %557, 1
  br i1 %cmp659, label %if.then.661, label %if.else.663

if.then.661:                                      ; preds = %land.lhs.true.658
  %558 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %559 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %560 = load i32, i32* %alloclen.addr, align 4
  %call662 = call float @G__align11(i8** %558, i8** %559, i32 %560)
  br label %if.end.665

if.else.663:                                      ; preds = %land.lhs.true.658, %sw.bb.655
  %561 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %562 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %563 = load double*, double** %eff1.addr, align 8
  %564 = load double*, double** %eff2.addr, align 8
  %565 = load i32, i32* %clus1.addr, align 4
  %566 = load i32, i32* %clus2.addr, align 4
  %567 = load i32, i32* %alloclen.addr, align 4
  %call664 = call float @H__align(i8** %561, i8** %562, double* %563, double* %564, i32 %565, i32 %566, i32 %567, %struct._LocalHom*** null, float* %dumfl, i8* null, i8* null, i8* null, i8* null)
  br label %if.end.665

if.end.665:                                       ; preds = %if.else.663, %if.then.661
  br label %sw.epilog

sw.bb.666:                                        ; preds = %for.end.639
  %568 = load i32, i32* %clus1.addr, align 4
  %cmp667 = icmp eq i32 %568, 1
  br i1 %cmp667, label %land.lhs.true.669, label %if.else.674

land.lhs.true.669:                                ; preds = %sw.bb.666
  %569 = load i32, i32* %clus2.addr, align 4
  %cmp670 = icmp eq i32 %569, 1
  br i1 %cmp670, label %if.then.672, label %if.else.674

if.then.672:                                      ; preds = %land.lhs.true.669
  %570 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %571 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %572 = load i32, i32* %alloclen.addr, align 4
  %call673 = call float @G__align11(i8** %570, i8** %571, i32 %572)
  br label %if.end.676

if.else.674:                                      ; preds = %land.lhs.true.669, %sw.bb.666
  %573 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %574 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %575 = load double*, double** %eff1.addr, align 8
  %576 = load double*, double** %eff2.addr, align 8
  %577 = load i32, i32* %clus1.addr, align 4
  %578 = load i32, i32* %clus2.addr, align 4
  %579 = load i32, i32* %alloclen.addr, align 4
  %call675 = call float @Q__align(i8** %573, i8** %574, double* %575, double* %576, i32 %577, i32 %578, i32 %579, %struct._LocalHom*** null, float* %dumfl, i8* null, i8* null, i8* null, i8* null)
  br label %if.end.676

if.end.676:                                       ; preds = %if.else.674, %if.then.672
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.639
  %580 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %581 = load i8, i8* @alg, align 1
  %conv677 = sext i8 %581 to i32
  %call678 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %580, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %conv677)
  call void @ErrorExit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.676, %if.end.665, %if.end.654, %sw.bb.642, %sw.bb
  %582 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %arrayidx679 = getelementptr inbounds i8*, i8** %582, i64 0
  %583 = load i8*, i8** %arrayidx679, align 8
  %call680 = call i64 @strlen(i8* %583) #5
  %conv681 = trunc i64 %call680 to i32
  store i32 %conv681, i32* %nlen, align 4
  %584 = load i32, i32* %totallen, align 4
  %585 = load i32, i32* %nlen, align 4
  %add682 = add nsw i32 %584, %585
  %586 = load i32, i32* %alloclen.addr, align 4
  %cmp683 = icmp sgt i32 %add682, %586
  br i1 %cmp683, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %sw.epilog
  call void @ErrorExit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.685, %sw.epilog
  store i32 0, i32* %j, align 4
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.696, %if.end.686
  %587 = load i32, i32* %j, align 4
  %588 = load i32, i32* %clus1.addr, align 4
  %cmp688 = icmp slt i32 %587, %588
  br i1 %cmp688, label %for.body.690, label %for.end.698

for.body.690:                                     ; preds = %for.cond.687
  %589 = load i32, i32* %j, align 4
  %idxprom691 = sext i32 %589 to i64
  %590 = load i8**, i8*** @Fgetlag.result1, align 8
  %arrayidx692 = getelementptr inbounds i8*, i8** %590, i64 %idxprom691
  %591 = load i8*, i8** %arrayidx692, align 8
  %592 = load i32, i32* %j, align 4
  %idxprom693 = sext i32 %592 to i64
  %593 = load i8**, i8*** @Fgetlag.tmpres1, align 8
  %arrayidx694 = getelementptr inbounds i8*, i8** %593, i64 %idxprom693
  %594 = load i8*, i8** %arrayidx694, align 8
  %call695 = call i8* @strcat(i8* %591, i8* %594) #6
  br label %for.inc.696

for.inc.696:                                      ; preds = %for.body.690
  %595 = load i32, i32* %j, align 4
  %inc697 = add nsw i32 %595, 1
  store i32 %inc697, i32* %j, align 4
  br label %for.cond.687

for.end.698:                                      ; preds = %for.cond.687
  store i32 0, i32* %j, align 4
  br label %for.cond.699

for.cond.699:                                     ; preds = %for.inc.708, %for.end.698
  %596 = load i32, i32* %j, align 4
  %597 = load i32, i32* %clus2.addr, align 4
  %cmp700 = icmp slt i32 %596, %597
  br i1 %cmp700, label %for.body.702, label %for.end.710

for.body.702:                                     ; preds = %for.cond.699
  %598 = load i32, i32* %j, align 4
  %idxprom703 = sext i32 %598 to i64
  %599 = load i8**, i8*** @Fgetlag.result2, align 8
  %arrayidx704 = getelementptr inbounds i8*, i8** %599, i64 %idxprom703
  %600 = load i8*, i8** %arrayidx704, align 8
  %601 = load i32, i32* %j, align 4
  %idxprom705 = sext i32 %601 to i64
  %602 = load i8**, i8*** @Fgetlag.tmpres2, align 8
  %arrayidx706 = getelementptr inbounds i8*, i8** %602, i64 %idxprom705
  %603 = load i8*, i8** %arrayidx706, align 8
  %call707 = call i8* @strcat(i8* %600, i8* %603) #6
  br label %for.inc.708

for.inc.708:                                      ; preds = %for.body.702
  %604 = load i32, i32* %j, align 4
  %inc709 = add nsw i32 %604, 1
  store i32 %inc709, i32* %j, align 4
  br label %for.cond.699

for.end.710:                                      ; preds = %for.cond.699
  %605 = load i32, i32* %nlen, align 4
  %606 = load i32, i32* %totallen, align 4
  %add711 = add nsw i32 %606, %605
  store i32 %add711, i32* %totallen, align 4
  br label %for.inc.712

for.inc.712:                                      ; preds = %for.end.710
  %607 = load i32, i32* %i, align 4
  %inc713 = add nsw i32 %607, 1
  store i32 %inc713, i32* %i, align 4
  br label %for.cond.569

for.end.714:                                      ; preds = %for.cond.569
  store i32 0, i32* %j, align 4
  br label %for.cond.715

for.cond.715:                                     ; preds = %for.inc.724, %for.end.714
  %608 = load i32, i32* %j, align 4
  %609 = load i32, i32* %clus1.addr, align 4
  %cmp716 = icmp slt i32 %608, %609
  br i1 %cmp716, label %for.body.718, label %for.end.726

for.body.718:                                     ; preds = %for.cond.715
  %610 = load i32, i32* %j, align 4
  %idxprom719 = sext i32 %610 to i64
  %611 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx720 = getelementptr inbounds i8*, i8** %611, i64 %idxprom719
  %612 = load i8*, i8** %arrayidx720, align 8
  %613 = load i32, i32* %j, align 4
  %idxprom721 = sext i32 %613 to i64
  %614 = load i8**, i8*** @Fgetlag.result1, align 8
  %arrayidx722 = getelementptr inbounds i8*, i8** %614, i64 %idxprom721
  %615 = load i8*, i8** %arrayidx722, align 8
  %call723 = call i8* @strcpy(i8* %612, i8* %615) #6
  br label %for.inc.724

for.inc.724:                                      ; preds = %for.body.718
  %616 = load i32, i32* %j, align 4
  %inc725 = add nsw i32 %616, 1
  store i32 %inc725, i32* %j, align 4
  br label %for.cond.715

for.end.726:                                      ; preds = %for.cond.715
  store i32 0, i32* %j, align 4
  br label %for.cond.727

for.cond.727:                                     ; preds = %for.inc.736, %for.end.726
  %617 = load i32, i32* %j, align 4
  %618 = load i32, i32* %clus2.addr, align 4
  %cmp728 = icmp slt i32 %617, %618
  br i1 %cmp728, label %for.body.730, label %for.end.738

for.body.730:                                     ; preds = %for.cond.727
  %619 = load i32, i32* %j, align 4
  %idxprom731 = sext i32 %619 to i64
  %620 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx732 = getelementptr inbounds i8*, i8** %620, i64 %idxprom731
  %621 = load i8*, i8** %arrayidx732, align 8
  %622 = load i32, i32* %j, align 4
  %idxprom733 = sext i32 %622 to i64
  %623 = load i8**, i8*** @Fgetlag.result2, align 8
  %arrayidx734 = getelementptr inbounds i8*, i8** %623, i64 %idxprom733
  %624 = load i8*, i8** %arrayidx734, align 8
  %call735 = call i8* @strcpy(i8* %621, i8* %624) #6
  br label %for.inc.736

for.inc.736:                                      ; preds = %for.body.730
  %625 = load i32, i32* %j, align 4
  %inc737 = add nsw i32 %625, 1
  store i32 %inc737, i32* %j, align 4
  br label %for.cond.727

for.end.738:                                      ; preds = %for.cond.727
  ret double 0.000000e+00
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32* @AllocateIntVec(i32) #2

declare i8** @AllocateCharMtx(i32, i32) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare void @ErrorExit(i8*) #2

declare void @FreeFukusosuuMtx(%struct._Fukusosuu**) #2

declare void @FreeFukusosuuVec(%struct._Fukusosuu*) #2

declare void @FreeDoubleVec(double*) #2

declare void @FreeCharMtx(i8**) #2

declare %struct._Fukusosuu* @AllocateFukusosuuVec(i32) #2

declare %struct._Fukusosuu** @AllocateFukusosuuMtx(i32, i32) #2

declare double* @AllocateDoubleVec(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @vec_init(%struct._Fukusosuu* %result, i32 %nlen) #0 {
entry:
  %result.addr = alloca %struct._Fukusosuu*, align 8
  %nlen.addr = alloca i32, align 4
  store %struct._Fukusosuu* %result, %struct._Fukusosuu** %result.addr, align 8
  store i32 %nlen, i32* %nlen.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %nlen.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %nlen.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %1, i32 0, i32 1
  store double 0.000000e+00, double* %I, align 8
  %2 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %2, i32 0, i32 0
  store double 0.000000e+00, double* %R, align 8
  %3 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %3, i32 1
  store %struct._Fukusosuu* %incdec.ptr, %struct._Fukusosuu** %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @seq_vec_2(%struct._Fukusosuu* %result, double* %score, double %incr, i8* %seq) #0 {
entry:
  %result.addr = alloca %struct._Fukusosuu*, align 8
  %score.addr = alloca double*, align 8
  %incr.addr = alloca double, align 8
  %seq.addr = alloca i8*, align 8
  store %struct._Fukusosuu* %result, %struct._Fukusosuu** %result.addr, align 8
  store double* %score, double** %score.addr, align 8
  store double %incr, double* %incr.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* @seq_vec_2.n, align 4
  %5 = load i32, i32* @seq_vec_2.n, align 4
  %cmp = icmp slt i32 %5, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* @seq_vec_2.n, align 4
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load double, double* %incr.addr, align 8
  %8 = load i32, i32* @seq_vec_2.n, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %score.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  %10 = load double, double* %arrayidx5, align 8
  %mul = fmul double %7, %10
  %11 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %11, i32 0, i32 0
  %12 = load double, double* %R, align 8
  %add = fadd double %12, %mul
  store double %add, double* %R, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %13, i32 1
  store %struct._Fukusosuu* %incdec.ptr6, %struct._Fukusosuu** %result.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @seq_vec_3(%struct._Fukusosuu** %result, double %incr, i8* %seq) #0 {
entry:
  %result.addr = alloca %struct._Fukusosuu**, align 8
  %incr.addr = alloca double, align 8
  %seq.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._Fukusosuu** %result, %struct._Fukusosuu*** %result.addr, align 8
  store double %incr, double* %incr.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %n, align 4
  %5 = load i32, i32* %n, align 4
  %6 = load i32, i32* @n20or4or2, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %n, align 4
  %cmp2 = icmp sge i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load double, double* %incr.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32, i32* %n, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %result.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %11, i64 %idxprom5
  %12 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %12, i64 %idxprom4
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx7, i32 0, i32 0
  %13 = load double, double* %R, align 8
  %add = fadd double %13, %8
  store double %add, double* %R, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fft(i32, %struct._Fukusosuu*, i32) #2

declare void @calcNaiseki(%struct._Fukusosuu*, %struct._Fukusosuu*, %struct._Fukusosuu*) #2

declare i32 @getKouho(i32*, i32, double*, i32) #2

declare void @zurasu2(i32, i32, i32, i8**, i8**, i8**, i8**) #2

declare i32 @alignableReagion(i32, i32, i8**, i8**, double*, double*, %struct._Segment*) #2

; Function Attrs: nounwind uwtable
define internal void @mymergesort(i32 %first, i32 %last, %struct._Segment** %seg) #0 {
entry:
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %seg.addr = alloca %struct._Segment**, align 8
  %middle = alloca i32, align 4
  store i32 %first, i32* %first.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  store %struct._Segment** %seg, %struct._Segment*** %seg.addr, align 8
  %0 = load i32, i32* %last.addr, align 4
  %1 = load i32, i32* @mymergesort.allo, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %last.addr, align 4
  store i32 %2, i32* @mymergesort.allo, align 4
  %3 = load %struct._Segment**, %struct._Segment*** @mymergesort.work, align 8
  %tobool = icmp ne %struct._Segment** %3, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._Segment**, %struct._Segment*** @mymergesort.work, align 8
  %5 = bitcast %struct._Segment** %4 to i8*
  call void @free(i8* %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %6 = load i32, i32* @mymergesort.allo, align 4
  %div = sdiv i32 %6, 2
  %add = add nsw i32 %div, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #6
  %7 = bitcast i8* %call to %struct._Segment**
  store %struct._Segment** %7, %struct._Segment*** @mymergesort.work, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* %first.addr, align 4
  %9 = load i32, i32* %last.addr, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %if.then.5, label %if.end.51

if.then.5:                                        ; preds = %if.end.2
  %10 = load i32, i32* %first.addr, align 4
  %11 = load i32, i32* %last.addr, align 4
  %add6 = add nsw i32 %10, %11
  %div7 = sdiv i32 %add6, 2
  store i32 %div7, i32* %middle, align 4
  %12 = load i32, i32* %first.addr, align 4
  %13 = load i32, i32* %middle, align 4
  %14 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  call void @mymergesort(i32 %12, i32 %13, %struct._Segment** %14)
  %15 = load i32, i32* %middle, align 4
  %add8 = add nsw i32 %15, 1
  %16 = load i32, i32* %last.addr, align 4
  %17 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  call void @mymergesort(i32 %add8, i32 %16, %struct._Segment** %17)
  store i32 0, i32* @mymergesort.p, align 4
  %18 = load i32, i32* %first.addr, align 4
  store i32 %18, i32* @mymergesort.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %19 = load i32, i32* @mymergesort.i, align 4
  %20 = load i32, i32* %middle, align 4
  %cmp9 = icmp sle i32 %19, %20
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* @mymergesort.i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  %arrayidx = getelementptr inbounds %struct._Segment*, %struct._Segment** %22, i64 %idxprom
  %23 = load %struct._Segment*, %struct._Segment** %arrayidx, align 8
  %24 = load i32, i32* @mymergesort.p, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @mymergesort.p, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct._Segment**, %struct._Segment*** @mymergesort.work, align 8
  %arrayidx12 = getelementptr inbounds %struct._Segment*, %struct._Segment** %25, i64 %idxprom11
  store %struct._Segment* %23, %struct._Segment** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* @mymergesort.i, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* @mymergesort.i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %middle, align 4
  %add14 = add nsw i32 %27, 1
  store i32 %add14, i32* @mymergesort.i, align 4
  store i32 0, i32* @mymergesort.j, align 4
  %28 = load i32, i32* %first.addr, align 4
  store i32 %28, i32* @mymergesort.k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %for.end
  %29 = load i32, i32* @mymergesort.i, align 4
  %30 = load i32, i32* %last.addr, align 4
  %cmp15 = icmp sle i32 %29, %30
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %31 = load i32, i32* @mymergesort.j, align 4
  %32 = load i32, i32* @mymergesort.p, align 4
  %cmp17 = icmp slt i32 %31, %32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i32, i32* @mymergesort.j, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load %struct._Segment**, %struct._Segment*** @mymergesort.work, align 8
  %arrayidx20 = getelementptr inbounds %struct._Segment*, %struct._Segment** %35, i64 %idxprom19
  %36 = load %struct._Segment*, %struct._Segment** %arrayidx20, align 8
  %center = getelementptr inbounds %struct._Segment, %struct._Segment* %36, i32 0, i32 2
  %37 = load i32, i32* %center, align 4
  %38 = load i32, i32* @mymergesort.i, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._Segment*, %struct._Segment** %39, i64 %idxprom21
  %40 = load %struct._Segment*, %struct._Segment** %arrayidx22, align 8
  %center23 = getelementptr inbounds %struct._Segment, %struct._Segment* %40, i32 0, i32 2
  %41 = load i32, i32* %center23, align 4
  %cmp24 = icmp sle i32 %37, %41
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %while.body
  %42 = load i32, i32* @mymergesort.j, align 4
  %inc27 = add nsw i32 %42, 1
  store i32 %inc27, i32* @mymergesort.j, align 4
  %idxprom28 = sext i32 %42 to i64
  %43 = load %struct._Segment**, %struct._Segment*** @mymergesort.work, align 8
  %arrayidx29 = getelementptr inbounds %struct._Segment*, %struct._Segment** %43, i64 %idxprom28
  %44 = load %struct._Segment*, %struct._Segment** %arrayidx29, align 8
  %45 = load i32, i32* @mymergesort.k, align 4
  %inc30 = add nsw i32 %45, 1
  store i32 %inc30, i32* @mymergesort.k, align 4
  %idxprom31 = sext i32 %45 to i64
  %46 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._Segment*, %struct._Segment** %46, i64 %idxprom31
  store %struct._Segment* %44, %struct._Segment** %arrayidx32, align 8
  br label %if.end.39

if.else:                                          ; preds = %while.body
  %47 = load i32, i32* @mymergesort.i, align 4
  %inc33 = add nsw i32 %47, 1
  store i32 %inc33, i32* @mymergesort.i, align 4
  %idxprom34 = sext i32 %47 to i64
  %48 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._Segment*, %struct._Segment** %48, i64 %idxprom34
  %49 = load %struct._Segment*, %struct._Segment** %arrayidx35, align 8
  %50 = load i32, i32* @mymergesort.k, align 4
  %inc36 = add nsw i32 %50, 1
  store i32 %inc36, i32* @mymergesort.k, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._Segment*, %struct._Segment** %51, i64 %idxprom37
  store %struct._Segment* %49, %struct._Segment** %arrayidx38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.26
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %while.end
  %52 = load i32, i32* @mymergesort.j, align 4
  %53 = load i32, i32* @mymergesort.p, align 4
  %cmp41 = icmp slt i32 %52, %53
  br i1 %cmp41, label %while.body.43, label %while.end.50

while.body.43:                                    ; preds = %while.cond.40
  %54 = load i32, i32* @mymergesort.j, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* @mymergesort.j, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load %struct._Segment**, %struct._Segment*** @mymergesort.work, align 8
  %arrayidx46 = getelementptr inbounds %struct._Segment*, %struct._Segment** %55, i64 %idxprom45
  %56 = load %struct._Segment*, %struct._Segment** %arrayidx46, align 8
  %57 = load i32, i32* @mymergesort.k, align 4
  %inc47 = add nsw i32 %57, 1
  store i32 %inc47, i32* @mymergesort.k, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load %struct._Segment**, %struct._Segment*** %seg.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._Segment*, %struct._Segment** %58, i64 %idxprom48
  store %struct._Segment* %56, %struct._Segment** %arrayidx49, align 8
  br label %while.cond.40

while.end.50:                                     ; preds = %while.cond.40
  br label %if.end.51

if.end.51:                                        ; preds = %while.end.50, %if.end.2
  ret void
}

declare void @FreeDoubleMtx(double**) #2

declare double** @AllocateDoubleMtx(i32, i32) #2

declare void @blockAlign2(i32*, i32*, %struct._Segment**, %struct._Segment**, double**, i32*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare float @Aalign(...) #2

declare float @MSalignmm(i8**, i8**, double*, double*, i32, i32, i32, i8*, i8*, i8*, i8*) #2

declare float @G__align11(i8**, i8**, i32) #2

declare float @A__align(i8**, i8**, double*, double*, i32, i32, i32, %struct._LocalHom***, float*, i8*, i8*, i8*, i8*) #2

declare float @H__align(i8**, i8**, double*, double*, i32, i32, i32, %struct._LocalHom***, float*, i8*, i8*, i8*, i8*) #2

declare float @Q__align(i8**, i8**, double*, double*, i32, i32, i32, %struct._LocalHom***, float*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define float @Falign(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %clus1, i32 %clus2, i32 %alloclen, i32* %fftlog) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %fftlog.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %maxk = alloca i32, align 4
  %nlen = alloca i32, align 4
  %nlen2 = alloca i32, align 4
  %nlen4 = alloca i32, align 4
  %nlentmp = alloca i32, align 4
  %lag = alloca i32, align 4
  %tmpint = alloca i32, align 4
  %count = alloca i32, align 4
  %count0 = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %totallen = alloca i32, align 4
  %totalscore = alloca float, align 4
  %dumfl = alloca float, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32* %fftlog, i32** %fftlog.addr, align 8
  store float 0.000000e+00, float* %dumfl, align 4
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %5 = load i32, i32* %len2, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %len1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %len2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %nlentmp, align 4
  store i32 1, i32* %nlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %8 = load i32, i32* %nlentmp, align 4
  %9 = load i32, i32* %nlen, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %nlen, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %nlen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %nlen, align 4
  %div = sdiv i32 %11, 2
  store i32 %div, i32* %nlen2, align 4
  %12 = load i32, i32* %nlen2, align 4
  %div7 = sdiv i32 %12, 2
  store i32 %div7, i32* %nlen4, align 4
  %13 = load i32, i32* @Falign.prevalloclen, align 4
  %14 = load i32, i32* %alloclen.addr, align 4
  %cmp8 = icmp ne i32 %13, %14
  br i1 %cmp8, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.end
  %15 = load i32, i32* @Falign.prevalloclen, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %16 = load i8**, i8*** @Falign.result1, align 8
  call void @FreeCharMtx(i8** %16)
  %17 = load i8**, i8*** @Falign.result2, align 8
  call void @FreeCharMtx(i8** %17)
  %18 = load i8**, i8*** @Falign.tmpres1, align 8
  call void @FreeCharMtx(i8** %18)
  %19 = load i8**, i8*** @Falign.tmpres2, align 8
  call void @FreeCharMtx(i8** %19)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %20 = load i32, i32* @njob, align 4
  %21 = load i32, i32* %alloclen.addr, align 4
  %call11 = call i8** @AllocateCharMtx(i32 %20, i32 %21)
  store i8** %call11, i8*** @Falign.result1, align 8
  %22 = load i32, i32* @njob, align 4
  %23 = load i32, i32* %alloclen.addr, align 4
  %call12 = call i8** @AllocateCharMtx(i32 %22, i32 %23)
  store i8** %call12, i8*** @Falign.result2, align 8
  %24 = load i32, i32* @njob, align 4
  %25 = load i32, i32* %alloclen.addr, align 4
  %call13 = call i8** @AllocateCharMtx(i32 %24, i32 %25)
  store i8** %call13, i8*** @Falign.tmpres1, align 8
  %26 = load i32, i32* @njob, align 4
  %27 = load i32, i32* %alloclen.addr, align 4
  %call14 = call i8** @AllocateCharMtx(i32 %26, i32 %27)
  store i8** %call14, i8*** @Falign.tmpres2, align 8
  %28 = load i32, i32* %alloclen.addr, align 4
  store i32 %28, i32* @Falign.prevalloclen, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %while.end
  %29 = load i32, i32* @Falign.localalloclen, align 4
  %tobool16 = icmp ne i32 %29, 0
  br i1 %tobool16, label %if.end.50, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %30 = load i32, i32* @njob, align 4
  %call18 = call i8* @AllocateCharVec(i32 %30)
  store i8* %call18, i8** @Falign.sgap1, align 8
  %31 = load i32, i32* @njob, align 4
  %call19 = call i8* @AllocateCharVec(i32 %31)
  store i8* %call19, i8** @Falign.egap1, align 8
  %32 = load i32, i32* @njob, align 4
  %call20 = call i8* @AllocateCharVec(i32 %32)
  store i8* %call20, i8** @Falign.sgap2, align 8
  %33 = load i32, i32* @njob, align 4
  %call21 = call i8* @AllocateCharVec(i32 %33)
  store i8* %call21, i8** @Falign.egap2, align 8
  %call22 = call i32* @AllocateIntVec(i32 20)
  store i32* %call22, i32** @Falign.kouho, align 8
  %call23 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call23, i32** @Falign.cut1, align 8
  %call24 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call24, i32** @Falign.cut2, align 8
  %34 = load i32, i32* @njob, align 4
  %call25 = call i8** @AllocateCharMtx(i32 %34, i32 0)
  store i8** %call25, i8*** @Falign.tmpptr1, align 8
  %35 = load i32, i32* @njob, align 4
  %call26 = call i8** @AllocateCharMtx(i32 %35, i32 0)
  store i8** %call26, i8*** @Falign.tmpptr2, align 8
  %call27 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %36 = bitcast i8* %call27 to %struct._Segment*
  store %struct._Segment* %36, %struct._Segment** @Falign.segment, align 8
  %call28 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %37 = bitcast i8* %call28 to %struct._Segment*
  store %struct._Segment* %37, %struct._Segment** @Falign.segment1, align 8
  %call29 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %38 = bitcast i8* %call29 to %struct._Segment*
  store %struct._Segment* %38, %struct._Segment** @Falign.segment2, align 8
  %call30 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %39 = bitcast i8* %call30 to %struct._Segment**
  store %struct._Segment** %39, %struct._Segment*** @Falign.sortedseg1, align 8
  %call31 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %40 = bitcast i8* %call31 to %struct._Segment**
  store %struct._Segment** %40, %struct._Segment*** @Falign.sortedseg2, align 8
  %41 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %tobool32 = icmp ne %struct._Segment* %41, null
  br i1 %tobool32, label %land.lhs.true, label %if.then.40

land.lhs.true:                                    ; preds = %if.then.17
  %42 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %tobool33 = icmp ne %struct._Segment* %42, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.then.40

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %43 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %tobool35 = icmp ne %struct._Segment* %43, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.then.40

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %44 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  %tobool37 = icmp ne %struct._Segment** %44, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.then.40

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %45 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  %tobool39 = icmp ne %struct._Segment** %45, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38, %land.lhs.true.36, %land.lhs.true.34, %land.lhs.true, %if.then.17
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.38
  %46 = load i32, i32* @scoremtx, align 4
  %cmp42 = icmp eq i32 %46, -1
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.41
  store i32 1, i32* @n20or4or2, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.41
  %47 = load i32, i32* @fftscore, align 4
  %tobool45 = icmp ne i32 %47, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else
  store i32 1, i32* @n20or4or2, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %if.else
  store i32 20, i32* @n20or4or2, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.15
  %48 = load i32, i32* @Falign.localalloclen, align 4
  %49 = load i32, i32* %nlen, align 4
  %cmp51 = icmp slt i32 %48, %49
  br i1 %cmp51, label %if.then.53, label %if.end.74

if.then.53:                                       ; preds = %if.end.50
  %50 = load i32, i32* @Falign.localalloclen, align 4
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.then.53
  %51 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool56 = icmp ne i32 %51, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.55
  %52 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %52)
  %53 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %53)
  %54 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  call void @FreeFukusosuuVec(%struct._Fukusosuu* %54)
  %55 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.naiseki, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %55)
  %56 = load double*, double** @Falign.soukan, align 8
  call void @FreeDoubleVec(double* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.55
  %57 = load i8**, i8*** @Falign.tmpseq1, align 8
  call void @FreeCharMtx(i8** %57)
  %58 = load i8**, i8*** @Falign.tmpseq2, align 8
  call void @FreeCharMtx(i8** %58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.53
  %59 = load i32, i32* @njob, align 4
  %60 = load i32, i32* %nlen, align 4
  %call60 = call i8** @AllocateCharMtx(i32 %59, i32 %60)
  store i8** %call60, i8*** @Falign.tmpseq1, align 8
  %61 = load i32, i32* @njob, align 4
  %62 = load i32, i32* %nlen, align 4
  %call61 = call i8** @AllocateCharMtx(i32 %61, i32 %62)
  store i8** %call61, i8*** @Falign.tmpseq2, align 8
  %63 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool62 = icmp ne i32 %63, 0
  br i1 %tobool62, label %if.end.73, label %if.then.63

if.then.63:                                       ; preds = %if.end.59
  %64 = load i32, i32* %nlen, align 4
  %call64 = call %struct._Fukusosuu* @AllocateFukusosuuVec(i32 %64)
  store %struct._Fukusosuu* %call64, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %65 = load i32, i32* @n20or4or2, align 4
  %66 = load i32, i32* %nlen, align 4
  %call65 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %65, i32 %66)
  store %struct._Fukusosuu** %call65, %struct._Fukusosuu*** @Falign.naiseki, align 8
  %67 = load i32, i32* @n20or4or2, align 4
  %add = add nsw i32 %67, 1
  %68 = load i32, i32* %nlen, align 4
  %add66 = add nsw i32 %68, 1
  %call67 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %add, i32 %add66)
  store %struct._Fukusosuu** %call67, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  %69 = load i32, i32* @n20or4or2, align 4
  %add68 = add nsw i32 %69, 1
  %70 = load i32, i32* %nlen, align 4
  %add69 = add nsw i32 %70, 1
  %call70 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %add68, i32 %add69)
  store %struct._Fukusosuu** %call70, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  %71 = load i32, i32* %nlen, align 4
  %add71 = add nsw i32 %71, 1
  %call72 = call double* @AllocateDoubleVec(i32 %add71)
  store double* %call72, double** @Falign.soukan, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.63, %if.end.59
  %72 = load i32, i32* %nlen, align 4
  store i32 %72, i32* @Falign.localalloclen, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.50
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.74
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %clus1.addr, align 4
  %cmp75 = icmp slt i32 %73, %74
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %j, align 4
  %idxprom = sext i32 %75 to i64
  %76 = load i8**, i8*** @Falign.tmpseq1, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %76, i64 %idxprom
  %77 = load i8*, i8** %arrayidx77, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %78 to i64
  %79 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %79, i64 %idxprom78
  %80 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i8* @strcpy(i8* %77, i8* %80) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %j, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.90, %for.end
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %clus2.addr, align 4
  %cmp82 = icmp slt i32 %82, %83
  br i1 %cmp82, label %for.body.84, label %for.end.92

for.body.84:                                      ; preds = %for.cond.81
  %84 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %84 to i64
  %85 = load i8**, i8*** @Falign.tmpseq2, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %85, i64 %idxprom85
  %86 = load i8*, i8** %arrayidx86, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %87 to i64
  %88 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %88, i64 %idxprom87
  %89 = load i8*, i8** %arrayidx88, align 8
  %call89 = call i8* @strcpy(i8* %86, i8* %89) #6
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.84
  %90 = load i32, i32* %j, align 4
  %inc91 = add nsw i32 %90, 1
  store i32 %inc91, i32* %j, align 4
  br label %for.cond.81

for.end.92:                                       ; preds = %for.cond.81
  %91 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool93 = icmp ne i32 %91, 0
  br i1 %tobool93, label %if.end.282, label %if.then.94

if.then.94:                                       ; preds = %for.end.92
  %92 = load i32, i32* @fftkeika, align 4
  %tobool95 = icmp ne i32 %92, 0
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.then.94
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.then.94
  store i32 0, i32* %j, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.105, %if.end.98
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* @n20or4or2, align 4
  %cmp100 = icmp slt i32 %94, %95
  br i1 %cmp100, label %for.body.102, label %for.end.107

for.body.102:                                     ; preds = %for.cond.99
  %96 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %96 to i64
  %97 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  %arrayidx104 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %97, i64 %idxprom103
  %98 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx104, align 8
  %99 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %98, i32 %99)
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.102
  %100 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %100, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.99

for.end.107:                                      ; preds = %for.cond.99
  %101 = load i32, i32* @fftscore, align 4
  %tobool108 = icmp ne i32 %101, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.else.125

land.lhs.true.109:                                ; preds = %for.end.107
  %102 = load i32, i32* @scoremtx, align 4
  %cmp110 = icmp ne i32 %102, -1
  br i1 %cmp110, label %if.then.112, label %if.else.125

if.then.112:                                      ; preds = %land.lhs.true.109
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.122, %if.then.112
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %clus1.addr, align 4
  %cmp114 = icmp slt i32 %103, %104
  br i1 %cmp114, label %for.body.116, label %for.end.124

for.body.116:                                     ; preds = %for.cond.113
  %105 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  %arrayidx117 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %105, i64 0
  %106 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx117, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %107 to i64
  %108 = load double*, double** %eff1.addr, align 8
  %arrayidx119 = getelementptr inbounds double, double* %108, i64 %idxprom118
  %109 = load double, double* %arrayidx119, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %110 to i64
  %111 = load i8**, i8*** @Falign.tmpseq1, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %111, i64 %idxprom120
  %112 = load i8*, i8** %arrayidx121, align 8
  call void @seq_vec_5(%struct._Fukusosuu* %106, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %109, i8* %112)
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.116
  %113 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %113, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.113

for.end.124:                                      ; preds = %for.cond.113
  br label %if.end.137

if.else.125:                                      ; preds = %land.lhs.true.109, %for.end.107
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.134, %if.else.125
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %clus1.addr, align 4
  %cmp127 = icmp slt i32 %114, %115
  br i1 %cmp127, label %for.body.129, label %for.end.136

for.body.129:                                     ; preds = %for.cond.126
  %116 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %117 to i64
  %118 = load double*, double** %eff1.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %118, i64 %idxprom130
  %119 = load double, double* %arrayidx131, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %120 to i64
  %121 = load i8**, i8*** @Falign.tmpseq1, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %121, i64 %idxprom132
  %122 = load i8*, i8** %arrayidx133, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %116, double %119, i8* %122)
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.129
  %123 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %123, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.126

for.end.136:                                      ; preds = %for.cond.126
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %for.end.124
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.144, %if.end.137
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* @n20or4or2, align 4
  %cmp139 = icmp slt i32 %124, %125
  br i1 %cmp139, label %for.body.141, label %for.end.146

for.body.141:                                     ; preds = %for.cond.138
  %126 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %126 to i64
  %127 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  %arrayidx143 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %127, i64 %idxprom142
  %128 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx143, align 8
  %129 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %128, i32 %129)
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.141
  %130 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %130, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.138

for.end.146:                                      ; preds = %for.cond.138
  %131 = load i32, i32* @fftscore, align 4
  %tobool147 = icmp ne i32 %131, 0
  br i1 %tobool147, label %land.lhs.true.148, label %if.else.164

land.lhs.true.148:                                ; preds = %for.end.146
  %132 = load i32, i32* @scoremtx, align 4
  %cmp149 = icmp ne i32 %132, -1
  br i1 %cmp149, label %if.then.151, label %if.else.164

if.then.151:                                      ; preds = %land.lhs.true.148
  store i32 0, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.161, %if.then.151
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %clus2.addr, align 4
  %cmp153 = icmp slt i32 %133, %134
  br i1 %cmp153, label %for.body.155, label %for.end.163

for.body.155:                                     ; preds = %for.cond.152
  %135 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  %arrayidx156 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %135, i64 0
  %136 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx156, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %137 to i64
  %138 = load double*, double** %eff2.addr, align 8
  %arrayidx158 = getelementptr inbounds double, double* %138, i64 %idxprom157
  %139 = load double, double* %arrayidx158, align 8
  %140 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %140 to i64
  %141 = load i8**, i8*** @Falign.tmpseq2, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %141, i64 %idxprom159
  %142 = load i8*, i8** %arrayidx160, align 8
  call void @seq_vec_5(%struct._Fukusosuu* %136, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %139, i8* %142)
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.155
  %143 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %143, 1
  store i32 %inc162, i32* %i, align 4
  br label %for.cond.152

for.end.163:                                      ; preds = %for.cond.152
  br label %if.end.176

if.else.164:                                      ; preds = %land.lhs.true.148, %for.end.146
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.173, %if.else.164
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %clus2.addr, align 4
  %cmp166 = icmp slt i32 %144, %145
  br i1 %cmp166, label %for.body.168, label %for.end.175

for.body.168:                                     ; preds = %for.cond.165
  %146 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  %147 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %147 to i64
  %148 = load double*, double** %eff2.addr, align 8
  %arrayidx170 = getelementptr inbounds double, double* %148, i64 %idxprom169
  %149 = load double, double* %arrayidx170, align 8
  %150 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %150 to i64
  %151 = load i8**, i8*** @Falign.tmpseq2, align 8
  %arrayidx172 = getelementptr inbounds i8*, i8** %151, i64 %idxprom171
  %152 = load i8*, i8** %arrayidx172, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %146, double %149, i8* %152)
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.body.168
  %153 = load i32, i32* %i, align 4
  %inc174 = add nsw i32 %153, 1
  store i32 %inc174, i32* %i, align 4
  br label %for.cond.165

for.end.175:                                      ; preds = %for.cond.165
  br label %if.end.176

if.end.176:                                       ; preds = %for.end.175, %for.end.163
  store i32 0, i32* %j, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.189, %if.end.176
  %154 = load i32, i32* %j, align 4
  %155 = load i32, i32* @n20or4or2, align 4
  %cmp178 = icmp slt i32 %154, %155
  br i1 %cmp178, label %for.body.180, label %for.end.191

for.body.180:                                     ; preds = %for.cond.177
  %156 = load i32, i32* %nlen, align 4
  %157 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %157 to i64
  %158 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  %arrayidx182 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %158, i64 %idxprom181
  %159 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx182, align 8
  %160 = load i32, i32* %j, align 4
  %cmp183 = icmp eq i32 %160, 0
  %conv184 = zext i1 %cmp183 to i32
  %call185 = call i32 @fft(i32 %156, %struct._Fukusosuu* %159, i32 %conv184)
  %161 = load i32, i32* %nlen, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %162 to i64
  %163 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  %arrayidx187 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %163, i64 %idxprom186
  %164 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx187, align 8
  %call188 = call i32 @fft(i32 %161, %struct._Fukusosuu* %164, i32 0)
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.body.180
  %165 = load i32, i32* %j, align 4
  %inc190 = add nsw i32 %165, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.177

for.end.191:                                      ; preds = %for.cond.177
  store i32 0, i32* %k, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.213, %for.end.191
  %166 = load i32, i32* %k, align 4
  %167 = load i32, i32* @n20or4or2, align 4
  %cmp193 = icmp slt i32 %166, %167
  br i1 %cmp193, label %for.body.195, label %for.end.215

for.body.195:                                     ; preds = %for.cond.192
  store i32 0, i32* %l, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.210, %for.body.195
  %168 = load i32, i32* %l, align 4
  %169 = load i32, i32* %nlen, align 4
  %cmp197 = icmp slt i32 %168, %169
  br i1 %cmp197, label %for.body.199, label %for.end.212

for.body.199:                                     ; preds = %for.cond.196
  %170 = load i32, i32* %k, align 4
  %idxprom200 = sext i32 %170 to i64
  %171 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.naiseki, align 8
  %arrayidx201 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %171, i64 %idxprom200
  %172 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx201, align 8
  %173 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %173 to i64
  %add.ptr = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %172, i64 %idx.ext
  %174 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %174 to i64
  %175 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector1, align 8
  %arrayidx203 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %175, i64 %idxprom202
  %176 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx203, align 8
  %177 = load i32, i32* %l, align 4
  %idx.ext204 = sext i32 %177 to i64
  %add.ptr205 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %176, i64 %idx.ext204
  %178 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %178 to i64
  %179 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.seqVector2, align 8
  %arrayidx207 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %179, i64 %idxprom206
  %180 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx207, align 8
  %181 = load i32, i32* %l, align 4
  %idx.ext208 = sext i32 %181 to i64
  %add.ptr209 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %180, i64 %idx.ext208
  call void @calcNaiseki(%struct._Fukusosuu* %add.ptr, %struct._Fukusosuu* %add.ptr205, %struct._Fukusosuu* %add.ptr209)
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.199
  %182 = load i32, i32* %l, align 4
  %inc211 = add nsw i32 %182, 1
  store i32 %inc211, i32* %l, align 4
  br label %for.cond.196

for.end.212:                                      ; preds = %for.cond.196
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.212
  %183 = load i32, i32* %k, align 4
  %inc214 = add nsw i32 %183, 1
  store i32 %inc214, i32* %k, align 4
  br label %for.cond.192

for.end.215:                                      ; preds = %for.cond.192
  store i32 0, i32* %l, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.249, %for.end.215
  %184 = load i32, i32* %l, align 4
  %185 = load i32, i32* %nlen, align 4
  %cmp217 = icmp slt i32 %184, %185
  br i1 %cmp217, label %for.body.219, label %for.end.251

for.body.219:                                     ; preds = %for.cond.216
  %186 = load i32, i32* %l, align 4
  %idxprom220 = sext i32 %186 to i64
  %187 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %arrayidx221 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %187, i64 %idxprom220
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx221, i32 0, i32 0
  store double 0.000000e+00, double* %R, align 8
  %188 = load i32, i32* %l, align 4
  %idxprom222 = sext i32 %188 to i64
  %189 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %arrayidx223 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %189, i64 %idxprom222
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx223, i32 0, i32 1
  store double 0.000000e+00, double* %I, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.246, %for.body.219
  %190 = load i32, i32* %k, align 4
  %191 = load i32, i32* @n20or4or2, align 4
  %cmp225 = icmp slt i32 %190, %191
  br i1 %cmp225, label %for.body.227, label %for.end.248

for.body.227:                                     ; preds = %for.cond.224
  %192 = load i32, i32* %l, align 4
  %idxprom228 = sext i32 %192 to i64
  %193 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %193 to i64
  %194 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.naiseki, align 8
  %arrayidx230 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %194, i64 %idxprom229
  %195 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %195, i64 %idxprom228
  %R232 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx231, i32 0, i32 0
  %196 = load double, double* %R232, align 8
  %197 = load i32, i32* %l, align 4
  %idxprom233 = sext i32 %197 to i64
  %198 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %arrayidx234 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %198, i64 %idxprom233
  %R235 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx234, i32 0, i32 0
  %199 = load double, double* %R235, align 8
  %add236 = fadd double %199, %196
  store double %add236, double* %R235, align 8
  %200 = load i32, i32* %l, align 4
  %idxprom237 = sext i32 %200 to i64
  %201 = load i32, i32* %k, align 4
  %idxprom238 = sext i32 %201 to i64
  %202 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign.naiseki, align 8
  %arrayidx239 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %202, i64 %idxprom238
  %203 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %203, i64 %idxprom237
  %I241 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx240, i32 0, i32 1
  %204 = load double, double* %I241, align 8
  %205 = load i32, i32* %l, align 4
  %idxprom242 = sext i32 %205 to i64
  %206 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %arrayidx243 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %206, i64 %idxprom242
  %I244 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx243, i32 0, i32 1
  %207 = load double, double* %I244, align 8
  %add245 = fadd double %207, %204
  store double %add245, double* %I244, align 8
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.227
  %208 = load i32, i32* %k, align 4
  %inc247 = add nsw i32 %208, 1
  store i32 %inc247, i32* %k, align 4
  br label %for.cond.224

for.end.248:                                      ; preds = %for.cond.224
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.248
  %209 = load i32, i32* %l, align 4
  %inc250 = add nsw i32 %209, 1
  store i32 %inc250, i32* %l, align 4
  br label %for.cond.216

for.end.251:                                      ; preds = %for.cond.216
  %210 = load i32, i32* %nlen, align 4
  %sub = sub nsw i32 0, %210
  %211 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %call252 = call i32 @fft(i32 %sub, %struct._Fukusosuu* %211, i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.263, %for.end.251
  %212 = load i32, i32* %m, align 4
  %213 = load i32, i32* %nlen2, align 4
  %cmp254 = icmp sle i32 %212, %213
  br i1 %cmp254, label %for.body.256, label %for.end.265

for.body.256:                                     ; preds = %for.cond.253
  %214 = load i32, i32* %nlen2, align 4
  %215 = load i32, i32* %m, align 4
  %sub257 = sub nsw i32 %214, %215
  %idxprom258 = sext i32 %sub257 to i64
  %216 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %arrayidx259 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %216, i64 %idxprom258
  %R260 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx259, i32 0, i32 0
  %217 = load double, double* %R260, align 8
  %218 = load i32, i32* %m, align 4
  %idxprom261 = sext i32 %218 to i64
  %219 = load double*, double** @Falign.soukan, align 8
  %arrayidx262 = getelementptr inbounds double, double* %219, i64 %idxprom261
  store double %217, double* %arrayidx262, align 8
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.body.256
  %220 = load i32, i32* %m, align 4
  %inc264 = add nsw i32 %220, 1
  store i32 %inc264, i32* %m, align 4
  br label %for.cond.253

for.end.265:                                      ; preds = %for.cond.253
  %221 = load i32, i32* %nlen2, align 4
  %add266 = add nsw i32 %221, 1
  store i32 %add266, i32* %m, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.278, %for.end.265
  %222 = load i32, i32* %m, align 4
  %223 = load i32, i32* %nlen, align 4
  %cmp268 = icmp slt i32 %222, %223
  br i1 %cmp268, label %for.body.270, label %for.end.280

for.body.270:                                     ; preds = %for.cond.267
  %224 = load i32, i32* %nlen, align 4
  %225 = load i32, i32* %nlen2, align 4
  %add271 = add nsw i32 %224, %225
  %226 = load i32, i32* %m, align 4
  %sub272 = sub nsw i32 %add271, %226
  %idxprom273 = sext i32 %sub272 to i64
  %227 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign.naisekiNoWa, align 8
  %arrayidx274 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %227, i64 %idxprom273
  %R275 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx274, i32 0, i32 0
  %228 = load double, double* %R275, align 8
  %229 = load i32, i32* %m, align 4
  %idxprom276 = sext i32 %229 to i64
  %230 = load double*, double** @Falign.soukan, align 8
  %arrayidx277 = getelementptr inbounds double, double* %230, i64 %idxprom276
  store double %228, double* %arrayidx277, align 8
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.body.270
  %231 = load i32, i32* %m, align 4
  %inc279 = add nsw i32 %231, 1
  store i32 %inc279, i32* %m, align 4
  br label %for.cond.267

for.end.280:                                      ; preds = %for.cond.267
  %232 = load i32*, i32** @Falign.kouho, align 8
  %233 = load double*, double** @Falign.soukan, align 8
  %234 = load i32, i32* %nlen, align 4
  %call281 = call i32 @getKouho(i32* %232, i32 20, double* %233, i32 %234)
  br label %if.end.282

if.end.282:                                       ; preds = %for.end.280, %for.end.92
  store i32 0, i32* %count, align 4
  %235 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool283 = icmp ne i32 %235, 0
  br i1 %tobool283, label %if.then.284, label %if.else.286

if.then.284:                                      ; preds = %if.end.282
  store i32 1, i32* %maxk, align 4
  %236 = load i32*, i32** @Falign.kouho, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 0, i32* %arrayidx285, align 4
  br label %if.end.287

if.else.286:                                      ; preds = %if.end.282
  store i32 20, i32* %maxk, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.286, %if.then.284
  store i32 0, i32* %k, align 4
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.431, %if.end.287
  %237 = load i32, i32* %k, align 4
  %238 = load i32, i32* %maxk, align 4
  %cmp289 = icmp slt i32 %237, %238
  br i1 %cmp289, label %for.body.291, label %for.end.433

for.body.291:                                     ; preds = %for.cond.288
  %239 = load i32, i32* %k, align 4
  %idxprom292 = sext i32 %239 to i64
  %240 = load i32*, i32** @Falign.kouho, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %240, i64 %idxprom292
  %241 = load i32, i32* %arrayidx293, align 4
  store i32 %241, i32* %lag, align 4
  %242 = load i32, i32* %lag, align 4
  %243 = load i32, i32* %len1, align 4
  %sub294 = sub nsw i32 0, %243
  %cmp295 = icmp sle i32 %242, %sub294
  br i1 %cmp295, label %if.then.299, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.291
  %244 = load i32, i32* %len2, align 4
  %245 = load i32, i32* %lag, align 4
  %cmp297 = icmp sle i32 %244, %245
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %lor.lhs.false, %for.body.291
  br label %for.inc.431

if.end.300:                                       ; preds = %lor.lhs.false
  %246 = load i32, i32* %lag, align 4
  %247 = load i32, i32* %clus1.addr, align 4
  %248 = load i32, i32* %clus2.addr, align 4
  %249 = load i8**, i8*** %seq1.addr, align 8
  %250 = load i8**, i8*** %seq2.addr, align 8
  %251 = load i8**, i8*** @Falign.tmpptr1, align 8
  %252 = load i8**, i8*** @Falign.tmpptr2, align 8
  call void @zurasu2(i32 %246, i32 %247, i32 %248, i8** %249, i8** %250, i8** %251, i8** %252)
  %253 = load i32, i32* %clus1.addr, align 4
  %254 = load i32, i32* %clus2.addr, align 4
  %255 = load i8**, i8*** @Falign.tmpptr1, align 8
  %256 = load i8**, i8*** @Falign.tmpptr2, align 8
  %257 = load double*, double** %eff1.addr, align 8
  %258 = load double*, double** %eff2.addr, align 8
  %259 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %260 = load i32, i32* %count, align 4
  %idx.ext301 = sext i32 %260 to i64
  %add.ptr302 = getelementptr inbounds %struct._Segment, %struct._Segment* %259, i64 %idx.ext301
  %call303 = call i32 @alignableReagion(i32 %253, i32 %254, i8** %255, i8** %256, double* %257, double* %258, %struct._Segment* %add.ptr302)
  store i32 %call303, i32* %tmpint, align 4
  %261 = load i32, i32* %count, align 4
  %262 = load i32, i32* %tmpint, align 4
  %add304 = add nsw i32 %261, %262
  %cmp305 = icmp sgt i32 %add304, 99997
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.300
  call void @ErrorExit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %if.end.300
  %263 = load i32, i32* %tmpint, align 4
  %cmp309 = icmp eq i32 %263, 0
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.end.308
  br label %for.end.433

if.end.312:                                       ; preds = %if.end.308
  br label %while.cond.313

while.cond.313:                                   ; preds = %if.end.419, %if.end.312
  %264 = load i32, i32* %tmpint, align 4
  %dec = add nsw i32 %264, -1
  store i32 %dec, i32* %tmpint, align 4
  %cmp314 = icmp sgt i32 %264, 0
  br i1 %cmp314, label %while.body.316, label %while.end.430

while.body.316:                                   ; preds = %while.cond.313
  %265 = load i32, i32* %lag, align 4
  %cmp317 = icmp sgt i32 %265, 0
  br i1 %cmp317, label %if.then.319, label %if.else.367

if.then.319:                                      ; preds = %while.body.316
  %266 = load i32, i32* %count, align 4
  %idxprom320 = sext i32 %266 to i64
  %267 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx321 = getelementptr inbounds %struct._Segment, %struct._Segment* %267, i64 %idxprom320
  %start = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx321, i32 0, i32 0
  %268 = load i32, i32* %start, align 4
  %269 = load i32, i32* %count, align 4
  %idxprom322 = sext i32 %269 to i64
  %270 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx323 = getelementptr inbounds %struct._Segment, %struct._Segment* %270, i64 %idxprom322
  %start324 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx323, i32 0, i32 0
  store i32 %268, i32* %start324, align 4
  %271 = load i32, i32* %count, align 4
  %idxprom325 = sext i32 %271 to i64
  %272 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx326 = getelementptr inbounds %struct._Segment, %struct._Segment* %272, i64 %idxprom325
  %end = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx326, i32 0, i32 1
  %273 = load i32, i32* %end, align 4
  %274 = load i32, i32* %count, align 4
  %idxprom327 = sext i32 %274 to i64
  %275 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx328 = getelementptr inbounds %struct._Segment, %struct._Segment* %275, i64 %idxprom327
  %end329 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx328, i32 0, i32 1
  store i32 %273, i32* %end329, align 4
  %276 = load i32, i32* %count, align 4
  %idxprom330 = sext i32 %276 to i64
  %277 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx331 = getelementptr inbounds %struct._Segment, %struct._Segment* %277, i64 %idxprom330
  %center = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx331, i32 0, i32 2
  %278 = load i32, i32* %center, align 4
  %279 = load i32, i32* %count, align 4
  %idxprom332 = sext i32 %279 to i64
  %280 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx333 = getelementptr inbounds %struct._Segment, %struct._Segment* %280, i64 %idxprom332
  %center334 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx333, i32 0, i32 2
  store i32 %278, i32* %center334, align 4
  %281 = load i32, i32* %count, align 4
  %idxprom335 = sext i32 %281 to i64
  %282 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx336 = getelementptr inbounds %struct._Segment, %struct._Segment* %282, i64 %idxprom335
  %score = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx336, i32 0, i32 3
  %283 = load double, double* %score, align 8
  %284 = load i32, i32* %count, align 4
  %idxprom337 = sext i32 %284 to i64
  %285 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx338 = getelementptr inbounds %struct._Segment, %struct._Segment* %285, i64 %idxprom337
  %score339 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx338, i32 0, i32 3
  store double %283, double* %score339, align 8
  %286 = load i32, i32* %count, align 4
  %idxprom340 = sext i32 %286 to i64
  %287 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx341 = getelementptr inbounds %struct._Segment, %struct._Segment* %287, i64 %idxprom340
  %start342 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx341, i32 0, i32 0
  %288 = load i32, i32* %start342, align 4
  %289 = load i32, i32* %lag, align 4
  %add343 = add nsw i32 %288, %289
  %290 = load i32, i32* %count, align 4
  %idxprom344 = sext i32 %290 to i64
  %291 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx345 = getelementptr inbounds %struct._Segment, %struct._Segment* %291, i64 %idxprom344
  %start346 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx345, i32 0, i32 0
  store i32 %add343, i32* %start346, align 4
  %292 = load i32, i32* %count, align 4
  %idxprom347 = sext i32 %292 to i64
  %293 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx348 = getelementptr inbounds %struct._Segment, %struct._Segment* %293, i64 %idxprom347
  %end349 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx348, i32 0, i32 1
  %294 = load i32, i32* %end349, align 4
  %295 = load i32, i32* %lag, align 4
  %add350 = add nsw i32 %294, %295
  %296 = load i32, i32* %count, align 4
  %idxprom351 = sext i32 %296 to i64
  %297 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx352 = getelementptr inbounds %struct._Segment, %struct._Segment* %297, i64 %idxprom351
  %end353 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx352, i32 0, i32 1
  store i32 %add350, i32* %end353, align 4
  %298 = load i32, i32* %count, align 4
  %idxprom354 = sext i32 %298 to i64
  %299 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx355 = getelementptr inbounds %struct._Segment, %struct._Segment* %299, i64 %idxprom354
  %center356 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx355, i32 0, i32 2
  %300 = load i32, i32* %center356, align 4
  %301 = load i32, i32* %lag, align 4
  %add357 = add nsw i32 %300, %301
  %302 = load i32, i32* %count, align 4
  %idxprom358 = sext i32 %302 to i64
  %303 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx359 = getelementptr inbounds %struct._Segment, %struct._Segment* %303, i64 %idxprom358
  %center360 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx359, i32 0, i32 2
  store i32 %add357, i32* %center360, align 4
  %304 = load i32, i32* %count, align 4
  %idxprom361 = sext i32 %304 to i64
  %305 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx362 = getelementptr inbounds %struct._Segment, %struct._Segment* %305, i64 %idxprom361
  %score363 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx362, i32 0, i32 3
  %306 = load double, double* %score363, align 8
  %307 = load i32, i32* %count, align 4
  %idxprom364 = sext i32 %307 to i64
  %308 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx365 = getelementptr inbounds %struct._Segment, %struct._Segment* %308, i64 %idxprom364
  %score366 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx365, i32 0, i32 3
  store double %306, double* %score366, align 8
  br label %if.end.419

if.else.367:                                      ; preds = %while.body.316
  %309 = load i32, i32* %count, align 4
  %idxprom368 = sext i32 %309 to i64
  %310 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx369 = getelementptr inbounds %struct._Segment, %struct._Segment* %310, i64 %idxprom368
  %start370 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx369, i32 0, i32 0
  %311 = load i32, i32* %start370, align 4
  %312 = load i32, i32* %lag, align 4
  %sub371 = sub nsw i32 %311, %312
  %313 = load i32, i32* %count, align 4
  %idxprom372 = sext i32 %313 to i64
  %314 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx373 = getelementptr inbounds %struct._Segment, %struct._Segment* %314, i64 %idxprom372
  %start374 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx373, i32 0, i32 0
  store i32 %sub371, i32* %start374, align 4
  %315 = load i32, i32* %count, align 4
  %idxprom375 = sext i32 %315 to i64
  %316 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx376 = getelementptr inbounds %struct._Segment, %struct._Segment* %316, i64 %idxprom375
  %end377 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx376, i32 0, i32 1
  %317 = load i32, i32* %end377, align 4
  %318 = load i32, i32* %lag, align 4
  %sub378 = sub nsw i32 %317, %318
  %319 = load i32, i32* %count, align 4
  %idxprom379 = sext i32 %319 to i64
  %320 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx380 = getelementptr inbounds %struct._Segment, %struct._Segment* %320, i64 %idxprom379
  %end381 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx380, i32 0, i32 1
  store i32 %sub378, i32* %end381, align 4
  %321 = load i32, i32* %count, align 4
  %idxprom382 = sext i32 %321 to i64
  %322 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx383 = getelementptr inbounds %struct._Segment, %struct._Segment* %322, i64 %idxprom382
  %center384 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx383, i32 0, i32 2
  %323 = load i32, i32* %center384, align 4
  %324 = load i32, i32* %lag, align 4
  %sub385 = sub nsw i32 %323, %324
  %325 = load i32, i32* %count, align 4
  %idxprom386 = sext i32 %325 to i64
  %326 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx387 = getelementptr inbounds %struct._Segment, %struct._Segment* %326, i64 %idxprom386
  %center388 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx387, i32 0, i32 2
  store i32 %sub385, i32* %center388, align 4
  %327 = load i32, i32* %count, align 4
  %idxprom389 = sext i32 %327 to i64
  %328 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx390 = getelementptr inbounds %struct._Segment, %struct._Segment* %328, i64 %idxprom389
  %score391 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx390, i32 0, i32 3
  %329 = load double, double* %score391, align 8
  %330 = load i32, i32* %count, align 4
  %idxprom392 = sext i32 %330 to i64
  %331 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx393 = getelementptr inbounds %struct._Segment, %struct._Segment* %331, i64 %idxprom392
  %score394 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx393, i32 0, i32 3
  store double %329, double* %score394, align 8
  %332 = load i32, i32* %count, align 4
  %idxprom395 = sext i32 %332 to i64
  %333 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx396 = getelementptr inbounds %struct._Segment, %struct._Segment* %333, i64 %idxprom395
  %start397 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx396, i32 0, i32 0
  %334 = load i32, i32* %start397, align 4
  %335 = load i32, i32* %count, align 4
  %idxprom398 = sext i32 %335 to i64
  %336 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx399 = getelementptr inbounds %struct._Segment, %struct._Segment* %336, i64 %idxprom398
  %start400 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx399, i32 0, i32 0
  store i32 %334, i32* %start400, align 4
  %337 = load i32, i32* %count, align 4
  %idxprom401 = sext i32 %337 to i64
  %338 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx402 = getelementptr inbounds %struct._Segment, %struct._Segment* %338, i64 %idxprom401
  %end403 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx402, i32 0, i32 1
  %339 = load i32, i32* %end403, align 4
  %340 = load i32, i32* %count, align 4
  %idxprom404 = sext i32 %340 to i64
  %341 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx405 = getelementptr inbounds %struct._Segment, %struct._Segment* %341, i64 %idxprom404
  %end406 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx405, i32 0, i32 1
  store i32 %339, i32* %end406, align 4
  %342 = load i32, i32* %count, align 4
  %idxprom407 = sext i32 %342 to i64
  %343 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx408 = getelementptr inbounds %struct._Segment, %struct._Segment* %343, i64 %idxprom407
  %center409 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx408, i32 0, i32 2
  %344 = load i32, i32* %center409, align 4
  %345 = load i32, i32* %count, align 4
  %idxprom410 = sext i32 %345 to i64
  %346 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx411 = getelementptr inbounds %struct._Segment, %struct._Segment* %346, i64 %idxprom410
  %center412 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx411, i32 0, i32 2
  store i32 %344, i32* %center412, align 4
  %347 = load i32, i32* %count, align 4
  %idxprom413 = sext i32 %347 to i64
  %348 = load %struct._Segment*, %struct._Segment** @Falign.segment, align 8
  %arrayidx414 = getelementptr inbounds %struct._Segment, %struct._Segment* %348, i64 %idxprom413
  %score415 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx414, i32 0, i32 3
  %349 = load double, double* %score415, align 8
  %350 = load i32, i32* %count, align 4
  %idxprom416 = sext i32 %350 to i64
  %351 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx417 = getelementptr inbounds %struct._Segment, %struct._Segment* %351, i64 %idxprom416
  %score418 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx417, i32 0, i32 3
  store double %349, double* %score418, align 8
  br label %if.end.419

if.end.419:                                       ; preds = %if.else.367, %if.then.319
  %352 = load i32, i32* %count, align 4
  %idxprom420 = sext i32 %352 to i64
  %353 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx421 = getelementptr inbounds %struct._Segment, %struct._Segment* %353, i64 %idxprom420
  %354 = load i32, i32* %count, align 4
  %idxprom422 = sext i32 %354 to i64
  %355 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx423 = getelementptr inbounds %struct._Segment, %struct._Segment* %355, i64 %idxprom422
  %pair = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx423, i32 0, i32 6
  store %struct._Segment* %arrayidx421, %struct._Segment** %pair, align 8
  %356 = load i32, i32* %count, align 4
  %idxprom424 = sext i32 %356 to i64
  %357 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx425 = getelementptr inbounds %struct._Segment, %struct._Segment* %357, i64 %idxprom424
  %358 = load i32, i32* %count, align 4
  %idxprom426 = sext i32 %358 to i64
  %359 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx427 = getelementptr inbounds %struct._Segment, %struct._Segment* %359, i64 %idxprom426
  %pair428 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx427, i32 0, i32 6
  store %struct._Segment* %arrayidx425, %struct._Segment** %pair428, align 8
  %360 = load i32, i32* %count, align 4
  %inc429 = add nsw i32 %360, 1
  store i32 %inc429, i32* %count, align 4
  br label %while.cond.313

while.end.430:                                    ; preds = %while.cond.313
  br label %for.inc.431

for.inc.431:                                      ; preds = %while.end.430, %if.then.299
  %361 = load i32, i32* %k, align 4
  %inc432 = add nsw i32 %361, 1
  store i32 %inc432, i32* %k, align 4
  br label %for.cond.288

for.end.433:                                      ; preds = %if.then.311, %for.cond.288
  %362 = load i32, i32* %count, align 4
  %tobool434 = icmp ne i32 %362, 0
  br i1 %tobool434, label %if.end.438, label %land.lhs.true.435

land.lhs.true.435:                                ; preds = %for.end.433
  %363 = load i32, i32* @fftNoAnchStop, align 4
  %tobool436 = icmp ne i32 %363, 0
  br i1 %tobool436, label %if.then.437, label %if.end.438

if.then.437:                                      ; preds = %land.lhs.true.435
  call void @ErrorExit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.437, %land.lhs.true.435, %for.end.433
  store i32 0, i32* %i, align 4
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.451, %if.end.438
  %364 = load i32, i32* %i, align 4
  %365 = load i32, i32* %count, align 4
  %cmp440 = icmp slt i32 %364, %365
  br i1 %cmp440, label %for.body.442, label %for.end.453

for.body.442:                                     ; preds = %for.cond.439
  %366 = load i32, i32* %i, align 4
  %idxprom443 = sext i32 %366 to i64
  %367 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx444 = getelementptr inbounds %struct._Segment, %struct._Segment* %367, i64 %idxprom443
  %368 = load i32, i32* %i, align 4
  %idxprom445 = sext i32 %368 to i64
  %369 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  %arrayidx446 = getelementptr inbounds %struct._Segment*, %struct._Segment** %369, i64 %idxprom445
  store %struct._Segment* %arrayidx444, %struct._Segment** %arrayidx446, align 8
  %370 = load i32, i32* %i, align 4
  %idxprom447 = sext i32 %370 to i64
  %371 = load %struct._Segment*, %struct._Segment** @Falign.segment2, align 8
  %arrayidx448 = getelementptr inbounds %struct._Segment, %struct._Segment* %371, i64 %idxprom447
  %372 = load i32, i32* %i, align 4
  %idxprom449 = sext i32 %372 to i64
  %373 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  %arrayidx450 = getelementptr inbounds %struct._Segment*, %struct._Segment** %373, i64 %idxprom449
  store %struct._Segment* %arrayidx448, %struct._Segment** %arrayidx450, align 8
  br label %for.inc.451

for.inc.451:                                      ; preds = %for.body.442
  %374 = load i32, i32* %i, align 4
  %inc452 = add nsw i32 %374, 1
  store i32 %inc452, i32* %i, align 4
  br label %for.cond.439

for.end.453:                                      ; preds = %for.cond.439
  %375 = load i32, i32* %count, align 4
  %sub454 = sub nsw i32 %375, 1
  %376 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  call void @mymergesort(i32 0, i32 %sub454, %struct._Segment** %376)
  %377 = load i32, i32* %count, align 4
  %sub455 = sub nsw i32 %377, 1
  %378 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  call void @mymergesort(i32 0, i32 %sub455, %struct._Segment** %378)
  store i32 0, i32* %i, align 4
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.462, %for.end.453
  %379 = load i32, i32* %i, align 4
  %380 = load i32, i32* %count, align 4
  %cmp457 = icmp slt i32 %379, %380
  br i1 %cmp457, label %for.body.459, label %for.end.464

for.body.459:                                     ; preds = %for.cond.456
  %381 = load i32, i32* %i, align 4
  %382 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %382 to i64
  %383 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  %arrayidx461 = getelementptr inbounds %struct._Segment*, %struct._Segment** %383, i64 %idxprom460
  %384 = load %struct._Segment*, %struct._Segment** %arrayidx461, align 8
  %number = getelementptr inbounds %struct._Segment, %struct._Segment* %384, i32 0, i32 7
  store i32 %381, i32* %number, align 4
  br label %for.inc.462

for.inc.462:                                      ; preds = %for.body.459
  %385 = load i32, i32* %i, align 4
  %inc463 = add nsw i32 %385, 1
  store i32 %inc463, i32* %i, align 4
  br label %for.cond.456

for.end.464:                                      ; preds = %for.cond.456
  store i32 0, i32* %i, align 4
  br label %for.cond.465

for.cond.465:                                     ; preds = %for.inc.472, %for.end.464
  %386 = load i32, i32* %i, align 4
  %387 = load i32, i32* %count, align 4
  %cmp466 = icmp slt i32 %386, %387
  br i1 %cmp466, label %for.body.468, label %for.end.474

for.body.468:                                     ; preds = %for.cond.465
  %388 = load i32, i32* %i, align 4
  %389 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %389 to i64
  %390 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  %arrayidx470 = getelementptr inbounds %struct._Segment*, %struct._Segment** %390, i64 %idxprom469
  %391 = load %struct._Segment*, %struct._Segment** %arrayidx470, align 8
  %number471 = getelementptr inbounds %struct._Segment, %struct._Segment* %391, i32 0, i32 7
  store i32 %388, i32* %number471, align 4
  br label %for.inc.472

for.inc.472:                                      ; preds = %for.body.468
  %392 = load i32, i32* %i, align 4
  %inc473 = add nsw i32 %392, 1
  store i32 %inc473, i32* %i, align 4
  br label %for.cond.465

for.end.474:                                      ; preds = %for.cond.465
  %393 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool475 = icmp ne i32 %393, 0
  br i1 %tobool475, label %if.then.476, label %if.else.505

if.then.476:                                      ; preds = %for.end.474
  store i32 0, i32* %i, align 4
  br label %for.cond.477

for.cond.477:                                     ; preds = %for.inc.493, %if.then.476
  %394 = load i32, i32* %i, align 4
  %395 = load i32, i32* %count, align 4
  %cmp478 = icmp slt i32 %394, %395
  br i1 %cmp478, label %for.body.480, label %for.end.495

for.body.480:                                     ; preds = %for.cond.477
  %396 = load i32, i32* %i, align 4
  %idxprom481 = sext i32 %396 to i64
  %397 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  %arrayidx482 = getelementptr inbounds %struct._Segment*, %struct._Segment** %397, i64 %idxprom481
  %398 = load %struct._Segment*, %struct._Segment** %arrayidx482, align 8
  %center483 = getelementptr inbounds %struct._Segment, %struct._Segment* %398, i32 0, i32 2
  %399 = load i32, i32* %center483, align 4
  %400 = load i32, i32* %i, align 4
  %add484 = add nsw i32 %400, 1
  %idxprom485 = sext i32 %add484 to i64
  %401 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %401, i64 %idxprom485
  store i32 %399, i32* %arrayidx486, align 4
  %402 = load i32, i32* %i, align 4
  %idxprom487 = sext i32 %402 to i64
  %403 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  %arrayidx488 = getelementptr inbounds %struct._Segment*, %struct._Segment** %403, i64 %idxprom487
  %404 = load %struct._Segment*, %struct._Segment** %arrayidx488, align 8
  %center489 = getelementptr inbounds %struct._Segment, %struct._Segment* %404, i32 0, i32 2
  %405 = load i32, i32* %center489, align 4
  %406 = load i32, i32* %i, align 4
  %add490 = add nsw i32 %406, 1
  %idxprom491 = sext i32 %add490 to i64
  %407 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %407, i64 %idxprom491
  store i32 %405, i32* %arrayidx492, align 4
  br label %for.inc.493

for.inc.493:                                      ; preds = %for.body.480
  %408 = load i32, i32* %i, align 4
  %inc494 = add nsw i32 %408, 1
  store i32 %inc494, i32* %i, align 4
  br label %for.cond.477

for.end.495:                                      ; preds = %for.cond.477
  %409 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx496 = getelementptr inbounds i32, i32* %409, i64 0
  store i32 0, i32* %arrayidx496, align 4
  %410 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %410, i64 0
  store i32 0, i32* %arrayidx497, align 4
  %411 = load i32, i32* %len1, align 4
  %412 = load i32, i32* %count, align 4
  %add498 = add nsw i32 %412, 1
  %idxprom499 = sext i32 %add498 to i64
  %413 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx500 = getelementptr inbounds i32, i32* %413, i64 %idxprom499
  store i32 %411, i32* %arrayidx500, align 4
  %414 = load i32, i32* %len2, align 4
  %415 = load i32, i32* %count, align 4
  %add501 = add nsw i32 %415, 1
  %idxprom502 = sext i32 %add501 to i64
  %416 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %416, i64 %idxprom502
  store i32 %414, i32* %arrayidx503, align 4
  %417 = load i32, i32* %count, align 4
  %add504 = add nsw i32 %417, 2
  store i32 %add504, i32* %count, align 4
  br label %if.end.609

if.else.505:                                      ; preds = %for.end.474
  %418 = load i32, i32* @Falign.crossscoresize, align 4
  %419 = load i32, i32* %count, align 4
  %add506 = add nsw i32 %419, 2
  %cmp507 = icmp slt i32 %418, %add506
  br i1 %cmp507, label %if.then.509, label %if.end.519

if.then.509:                                      ; preds = %if.else.505
  %420 = load i32, i32* %count, align 4
  %add510 = add nsw i32 %420, 2
  store i32 %add510, i32* @Falign.crossscoresize, align 4
  %421 = load i32, i32* @fftkeika, align 4
  %tobool511 = icmp ne i32 %421, 0
  br i1 %tobool511, label %if.then.512, label %if.end.514

if.then.512:                                      ; preds = %if.then.509
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %423 = load i32, i32* @Falign.crossscoresize, align 4
  %call513 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %422, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %423)
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.512, %if.then.509
  %424 = load double**, double*** @Falign.crossscore, align 8
  %tobool515 = icmp ne double** %424, null
  br i1 %tobool515, label %if.then.516, label %if.end.517

if.then.516:                                      ; preds = %if.end.514
  %425 = load double**, double*** @Falign.crossscore, align 8
  call void @FreeDoubleMtx(double** %425)
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.516, %if.end.514
  %426 = load i32, i32* @Falign.crossscoresize, align 4
  %427 = load i32, i32* @Falign.crossscoresize, align 4
  %call518 = call double** @AllocateDoubleMtx(i32 %426, i32 %427)
  store double** %call518, double*** @Falign.crossscore, align 8
  br label %if.end.519

if.end.519:                                       ; preds = %if.end.517, %if.else.505
  store i32 0, i32* %i, align 4
  br label %for.cond.520

for.cond.520:                                     ; preds = %for.inc.537, %if.end.519
  %428 = load i32, i32* %i, align 4
  %429 = load i32, i32* %count, align 4
  %add521 = add nsw i32 %429, 2
  %cmp522 = icmp slt i32 %428, %add521
  br i1 %cmp522, label %for.body.524, label %for.end.539

for.body.524:                                     ; preds = %for.cond.520
  store i32 0, i32* %j, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.534, %for.body.524
  %430 = load i32, i32* %j, align 4
  %431 = load i32, i32* %count, align 4
  %add526 = add nsw i32 %431, 2
  %cmp527 = icmp slt i32 %430, %add526
  br i1 %cmp527, label %for.body.529, label %for.end.536

for.body.529:                                     ; preds = %for.cond.525
  %432 = load i32, i32* %j, align 4
  %idxprom530 = sext i32 %432 to i64
  %433 = load i32, i32* %i, align 4
  %idxprom531 = sext i32 %433 to i64
  %434 = load double**, double*** @Falign.crossscore, align 8
  %arrayidx532 = getelementptr inbounds double*, double** %434, i64 %idxprom531
  %435 = load double*, double** %arrayidx532, align 8
  %arrayidx533 = getelementptr inbounds double, double* %435, i64 %idxprom530
  store double 0.000000e+00, double* %arrayidx533, align 8
  br label %for.inc.534

for.inc.534:                                      ; preds = %for.body.529
  %436 = load i32, i32* %j, align 4
  %inc535 = add nsw i32 %436, 1
  store i32 %inc535, i32* %j, align 4
  br label %for.cond.525

for.end.536:                                      ; preds = %for.cond.525
  br label %for.inc.537

for.inc.537:                                      ; preds = %for.end.536
  %437 = load i32, i32* %i, align 4
  %inc538 = add nsw i32 %437, 1
  store i32 %inc538, i32* %i, align 4
  br label %for.cond.520

for.end.539:                                      ; preds = %for.cond.520
  store i32 0, i32* %i, align 4
  br label %for.cond.540

for.cond.540:                                     ; preds = %for.inc.572, %for.end.539
  %438 = load i32, i32* %i, align 4
  %439 = load i32, i32* %count, align 4
  %cmp541 = icmp slt i32 %438, %439
  br i1 %cmp541, label %for.body.543, label %for.end.574

for.body.543:                                     ; preds = %for.cond.540
  %440 = load i32, i32* %i, align 4
  %idxprom544 = sext i32 %440 to i64
  %441 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx545 = getelementptr inbounds %struct._Segment, %struct._Segment* %441, i64 %idxprom544
  %score546 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx545, i32 0, i32 3
  %442 = load double, double* %score546, align 8
  %443 = load i32, i32* %i, align 4
  %idxprom547 = sext i32 %443 to i64
  %444 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx548 = getelementptr inbounds %struct._Segment, %struct._Segment* %444, i64 %idxprom547
  %pair549 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx548, i32 0, i32 6
  %445 = load %struct._Segment*, %struct._Segment** %pair549, align 8
  %number550 = getelementptr inbounds %struct._Segment, %struct._Segment* %445, i32 0, i32 7
  %446 = load i32, i32* %number550, align 4
  %add551 = add nsw i32 %446, 1
  %idxprom552 = sext i32 %add551 to i64
  %447 = load i32, i32* %i, align 4
  %idxprom553 = sext i32 %447 to i64
  %448 = load %struct._Segment*, %struct._Segment** @Falign.segment1, align 8
  %arrayidx554 = getelementptr inbounds %struct._Segment, %struct._Segment* %448, i64 %idxprom553
  %number555 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx554, i32 0, i32 7
  %449 = load i32, i32* %number555, align 4
  %add556 = add nsw i32 %449, 1
  %idxprom557 = sext i32 %add556 to i64
  %450 = load double**, double*** @Falign.crossscore, align 8
  %arrayidx558 = getelementptr inbounds double*, double** %450, i64 %idxprom557
  %451 = load double*, double** %arrayidx558, align 8
  %arrayidx559 = getelementptr inbounds double, double* %451, i64 %idxprom552
  store double %442, double* %arrayidx559, align 8
  %452 = load i32, i32* %i, align 4
  %idxprom560 = sext i32 %452 to i64
  %453 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  %arrayidx561 = getelementptr inbounds %struct._Segment*, %struct._Segment** %453, i64 %idxprom560
  %454 = load %struct._Segment*, %struct._Segment** %arrayidx561, align 8
  %center562 = getelementptr inbounds %struct._Segment, %struct._Segment* %454, i32 0, i32 2
  %455 = load i32, i32* %center562, align 4
  %456 = load i32, i32* %i, align 4
  %add563 = add nsw i32 %456, 1
  %idxprom564 = sext i32 %add563 to i64
  %457 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %457, i64 %idxprom564
  store i32 %455, i32* %arrayidx565, align 4
  %458 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %458 to i64
  %459 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  %arrayidx567 = getelementptr inbounds %struct._Segment*, %struct._Segment** %459, i64 %idxprom566
  %460 = load %struct._Segment*, %struct._Segment** %arrayidx567, align 8
  %center568 = getelementptr inbounds %struct._Segment, %struct._Segment* %460, i32 0, i32 2
  %461 = load i32, i32* %center568, align 4
  %462 = load i32, i32* %i, align 4
  %add569 = add nsw i32 %462, 1
  %idxprom570 = sext i32 %add569 to i64
  %463 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx571 = getelementptr inbounds i32, i32* %463, i64 %idxprom570
  store i32 %461, i32* %arrayidx571, align 4
  br label %for.inc.572

for.inc.572:                                      ; preds = %for.body.543
  %464 = load i32, i32* %i, align 4
  %inc573 = add nsw i32 %464, 1
  store i32 %inc573, i32* %i, align 4
  br label %for.cond.540

for.end.574:                                      ; preds = %for.cond.540
  %465 = load double**, double*** @Falign.crossscore, align 8
  %arrayidx575 = getelementptr inbounds double*, double** %465, i64 0
  %466 = load double*, double** %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds double, double* %466, i64 0
  store double 1.000000e+07, double* %arrayidx576, align 8
  %467 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx577 = getelementptr inbounds i32, i32* %467, i64 0
  store i32 0, i32* %arrayidx577, align 4
  %468 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx578 = getelementptr inbounds i32, i32* %468, i64 0
  store i32 0, i32* %arrayidx578, align 4
  %469 = load i32, i32* %count, align 4
  %add579 = add nsw i32 %469, 1
  %idxprom580 = sext i32 %add579 to i64
  %470 = load i32, i32* %count, align 4
  %add581 = add nsw i32 %470, 1
  %idxprom582 = sext i32 %add581 to i64
  %471 = load double**, double*** @Falign.crossscore, align 8
  %arrayidx583 = getelementptr inbounds double*, double** %471, i64 %idxprom582
  %472 = load double*, double** %arrayidx583, align 8
  %arrayidx584 = getelementptr inbounds double, double* %472, i64 %idxprom580
  store double 1.000000e+07, double* %arrayidx584, align 8
  %473 = load i32, i32* %len1, align 4
  %474 = load i32, i32* %count, align 4
  %add585 = add nsw i32 %474, 1
  %idxprom586 = sext i32 %add585 to i64
  %475 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx587 = getelementptr inbounds i32, i32* %475, i64 %idxprom586
  store i32 %473, i32* %arrayidx587, align 4
  %476 = load i32, i32* %len2, align 4
  %477 = load i32, i32* %count, align 4
  %add588 = add nsw i32 %477, 1
  %idxprom589 = sext i32 %add588 to i64
  %478 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx590 = getelementptr inbounds i32, i32* %478, i64 %idxprom589
  store i32 %476, i32* %arrayidx590, align 4
  %479 = load i32, i32* %count, align 4
  %add591 = add nsw i32 %479, 2
  store i32 %add591, i32* %count, align 4
  %480 = load i32, i32* %count, align 4
  store i32 %480, i32* %count0, align 4
  %481 = load i32*, i32** @Falign.cut1, align 8
  %482 = load i32*, i32** @Falign.cut2, align 8
  %483 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg1, align 8
  %484 = load %struct._Segment**, %struct._Segment*** @Falign.sortedseg2, align 8
  %485 = load double**, double*** @Falign.crossscore, align 8
  call void @blockAlign2(i32* %481, i32* %482, %struct._Segment** %483, %struct._Segment** %484, double** %485, i32* %count)
  %486 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool592 = icmp ne i32 %486, 0
  br i1 %tobool592, label %if.end.597, label %land.lhs.true.593

land.lhs.true.593:                                ; preds = %for.end.574
  %487 = load i32, i32* @fftkeika, align 4
  %tobool594 = icmp ne i32 %487, 0
  br i1 %tobool594, label %if.then.595, label %if.end.597

if.then.595:                                      ; preds = %land.lhs.true.593
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %489 = load i32, i32* %count, align 4
  %call596 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %489)
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.595, %land.lhs.true.593, %for.end.574
  %490 = load i32, i32* @fftkeika, align 4
  %tobool598 = icmp ne i32 %490, 0
  br i1 %tobool598, label %if.then.599, label %if.end.608

if.then.599:                                      ; preds = %if.end.597
  %491 = load i32, i32* %count0, align 4
  %492 = load i32, i32* %count, align 4
  %cmp600 = icmp sgt i32 %491, %492
  br i1 %cmp600, label %if.then.602, label %if.end.607

if.then.602:                                      ; preds = %if.then.599
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call603 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %493, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %494 = load i32, i32* @fftRepeatStop, align 4
  %tobool604 = icmp ne i32 %494, 0
  br i1 %tobool604, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %if.then.602
  call void @exit(i32 1) #7
  unreachable

if.end.606:                                       ; preds = %if.then.602
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %if.then.599
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %if.end.597
  br label %if.end.609

if.end.609:                                       ; preds = %if.end.608, %for.end.495
  store i32 0, i32* %totallen, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.610

for.cond.610:                                     ; preds = %for.inc.617, %if.end.609
  %495 = load i32, i32* %j, align 4
  %496 = load i32, i32* %clus1.addr, align 4
  %cmp611 = icmp slt i32 %495, %496
  br i1 %cmp611, label %for.body.613, label %for.end.619

for.body.613:                                     ; preds = %for.cond.610
  %497 = load i32, i32* %j, align 4
  %idxprom614 = sext i32 %497 to i64
  %498 = load i8**, i8*** @Falign.result1, align 8
  %arrayidx615 = getelementptr inbounds i8*, i8** %498, i64 %idxprom614
  %499 = load i8*, i8** %arrayidx615, align 8
  %arrayidx616 = getelementptr inbounds i8, i8* %499, i64 0
  store i8 0, i8* %arrayidx616, align 1
  br label %for.inc.617

for.inc.617:                                      ; preds = %for.body.613
  %500 = load i32, i32* %j, align 4
  %inc618 = add nsw i32 %500, 1
  store i32 %inc618, i32* %j, align 4
  br label %for.cond.610

for.end.619:                                      ; preds = %for.cond.610
  store i32 0, i32* %j, align 4
  br label %for.cond.620

for.cond.620:                                     ; preds = %for.inc.627, %for.end.619
  %501 = load i32, i32* %j, align 4
  %502 = load i32, i32* %clus2.addr, align 4
  %cmp621 = icmp slt i32 %501, %502
  br i1 %cmp621, label %for.body.623, label %for.end.629

for.body.623:                                     ; preds = %for.cond.620
  %503 = load i32, i32* %j, align 4
  %idxprom624 = sext i32 %503 to i64
  %504 = load i8**, i8*** @Falign.result2, align 8
  %arrayidx625 = getelementptr inbounds i8*, i8** %504, i64 %idxprom624
  %505 = load i8*, i8** %arrayidx625, align 8
  %arrayidx626 = getelementptr inbounds i8, i8* %505, i64 0
  store i8 0, i8* %arrayidx626, align 1
  br label %for.inc.627

for.inc.627:                                      ; preds = %for.body.623
  %506 = load i32, i32* %j, align 4
  %inc628 = add nsw i32 %506, 1
  store i32 %inc628, i32* %j, align 4
  br label %for.cond.620

for.end.629:                                      ; preds = %for.cond.620
  store float 0.000000e+00, float* %totalscore, align 4
  %507 = load i32*, i32** %fftlog.addr, align 8
  store i32 -1, i32* %507, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.630

for.cond.630:                                     ; preds = %for.inc.855, %for.end.629
  %508 = load i32, i32* %i, align 4
  %509 = load i32, i32* %count, align 4
  %sub631 = sub nsw i32 %509, 1
  %cmp632 = icmp slt i32 %508, %sub631
  br i1 %cmp632, label %for.body.634, label %for.end.857

for.body.634:                                     ; preds = %for.cond.630
  %510 = load i32*, i32** %fftlog.addr, align 8
  %511 = load i32, i32* %510, align 4
  %add635 = add nsw i32 %511, 1
  store i32 %add635, i32* %510, align 4
  %512 = load i32, i32* %i, align 4
  %idxprom636 = sext i32 %512 to i64
  %513 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx637 = getelementptr inbounds i32, i32* %513, i64 %idxprom636
  %514 = load i32, i32* %arrayidx637, align 4
  %tobool638 = icmp ne i32 %514, 0
  br i1 %tobool638, label %if.then.639, label %if.else.642

if.then.639:                                      ; preds = %for.body.634
  %515 = load i8*, i8** @Falign.sgap1, align 8
  %516 = load i8**, i8*** @Falign.tmpres1, align 8
  %517 = load i32, i32* %nlen, align 4
  %sub640 = sub nsw i32 %517, 1
  %518 = load i32, i32* %clus1.addr, align 4
  call void @getkyokaigap(i8* %515, i8** %516, i32 %sub640, i32 %518)
  %519 = load i8*, i8** @Falign.sgap2, align 8
  %520 = load i8**, i8*** @Falign.tmpres2, align 8
  %521 = load i32, i32* %nlen, align 4
  %sub641 = sub nsw i32 %521, 1
  %522 = load i32, i32* %clus2.addr, align 4
  call void @getkyokaigap(i8* %519, i8** %520, i32 %sub641, i32 %522)
  br label %if.end.661

if.else.642:                                      ; preds = %for.body.634
  store i32 0, i32* %j, align 4
  br label %for.cond.643

for.cond.643:                                     ; preds = %for.inc.649, %if.else.642
  %523 = load i32, i32* %j, align 4
  %524 = load i32, i32* %clus1.addr, align 4
  %cmp644 = icmp slt i32 %523, %524
  br i1 %cmp644, label %for.body.646, label %for.end.651

for.body.646:                                     ; preds = %for.cond.643
  %525 = load i32, i32* %j, align 4
  %idxprom647 = sext i32 %525 to i64
  %526 = load i8*, i8** @Falign.sgap1, align 8
  %arrayidx648 = getelementptr inbounds i8, i8* %526, i64 %idxprom647
  store i8 111, i8* %arrayidx648, align 1
  br label %for.inc.649

for.inc.649:                                      ; preds = %for.body.646
  %527 = load i32, i32* %j, align 4
  %inc650 = add nsw i32 %527, 1
  store i32 %inc650, i32* %j, align 4
  br label %for.cond.643

for.end.651:                                      ; preds = %for.cond.643
  store i32 0, i32* %j, align 4
  br label %for.cond.652

for.cond.652:                                     ; preds = %for.inc.658, %for.end.651
  %528 = load i32, i32* %j, align 4
  %529 = load i32, i32* %clus2.addr, align 4
  %cmp653 = icmp slt i32 %528, %529
  br i1 %cmp653, label %for.body.655, label %for.end.660

for.body.655:                                     ; preds = %for.cond.652
  %530 = load i32, i32* %j, align 4
  %idxprom656 = sext i32 %530 to i64
  %531 = load i8*, i8** @Falign.sgap2, align 8
  %arrayidx657 = getelementptr inbounds i8, i8* %531, i64 %idxprom656
  store i8 111, i8* %arrayidx657, align 1
  br label %for.inc.658

for.inc.658:                                      ; preds = %for.body.655
  %532 = load i32, i32* %j, align 4
  %inc659 = add nsw i32 %532, 1
  store i32 %inc659, i32* %j, align 4
  br label %for.cond.652

for.end.660:                                      ; preds = %for.cond.652
  br label %if.end.661

if.end.661:                                       ; preds = %for.end.660, %if.then.639
  %533 = load i32, i32* %i, align 4
  %add662 = add nsw i32 %533, 1
  %idxprom663 = sext i32 %add662 to i64
  %534 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx664 = getelementptr inbounds i32, i32* %534, i64 %idxprom663
  %535 = load i32, i32* %arrayidx664, align 4
  %536 = load i32, i32* %len1, align 4
  %cmp665 = icmp ne i32 %535, %536
  br i1 %cmp665, label %if.then.667, label %if.else.674

if.then.667:                                      ; preds = %if.end.661
  %537 = load i8*, i8** @Falign.egap1, align 8
  %538 = load i8**, i8*** %seq1.addr, align 8
  %539 = load i32, i32* %i, align 4
  %add668 = add nsw i32 %539, 1
  %idxprom669 = sext i32 %add668 to i64
  %540 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx670 = getelementptr inbounds i32, i32* %540, i64 %idxprom669
  %541 = load i32, i32* %arrayidx670, align 4
  %542 = load i32, i32* %clus1.addr, align 4
  call void @getkyokaigap(i8* %537, i8** %538, i32 %541, i32 %542)
  %543 = load i8*, i8** @Falign.egap2, align 8
  %544 = load i8**, i8*** %seq2.addr, align 8
  %545 = load i32, i32* %i, align 4
  %add671 = add nsw i32 %545, 1
  %idxprom672 = sext i32 %add671 to i64
  %546 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx673 = getelementptr inbounds i32, i32* %546, i64 %idxprom672
  %547 = load i32, i32* %arrayidx673, align 4
  %548 = load i32, i32* %clus2.addr, align 4
  call void @getkyokaigap(i8* %543, i8** %544, i32 %547, i32 %548)
  br label %if.end.693

if.else.674:                                      ; preds = %if.end.661
  store i32 0, i32* %j, align 4
  br label %for.cond.675

for.cond.675:                                     ; preds = %for.inc.681, %if.else.674
  %549 = load i32, i32* %j, align 4
  %550 = load i32, i32* %clus1.addr, align 4
  %cmp676 = icmp slt i32 %549, %550
  br i1 %cmp676, label %for.body.678, label %for.end.683

for.body.678:                                     ; preds = %for.cond.675
  %551 = load i32, i32* %j, align 4
  %idxprom679 = sext i32 %551 to i64
  %552 = load i8*, i8** @Falign.egap1, align 8
  %arrayidx680 = getelementptr inbounds i8, i8* %552, i64 %idxprom679
  store i8 111, i8* %arrayidx680, align 1
  br label %for.inc.681

for.inc.681:                                      ; preds = %for.body.678
  %553 = load i32, i32* %j, align 4
  %inc682 = add nsw i32 %553, 1
  store i32 %inc682, i32* %j, align 4
  br label %for.cond.675

for.end.683:                                      ; preds = %for.cond.675
  store i32 0, i32* %j, align 4
  br label %for.cond.684

for.cond.684:                                     ; preds = %for.inc.690, %for.end.683
  %554 = load i32, i32* %j, align 4
  %555 = load i32, i32* %clus2.addr, align 4
  %cmp685 = icmp slt i32 %554, %555
  br i1 %cmp685, label %for.body.687, label %for.end.692

for.body.687:                                     ; preds = %for.cond.684
  %556 = load i32, i32* %j, align 4
  %idxprom688 = sext i32 %556 to i64
  %557 = load i8*, i8** @Falign.egap2, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %557, i64 %idxprom688
  store i8 111, i8* %arrayidx689, align 1
  br label %for.inc.690

for.inc.690:                                      ; preds = %for.body.687
  %558 = load i32, i32* %j, align 4
  %inc691 = add nsw i32 %558, 1
  store i32 %inc691, i32* %j, align 4
  br label %for.cond.684

for.end.692:                                      ; preds = %for.cond.684
  br label %if.end.693

if.end.693:                                       ; preds = %for.end.692, %if.then.667
  store i32 0, i32* %j, align 4
  br label %for.cond.694

for.cond.694:                                     ; preds = %for.inc.724, %if.end.693
  %559 = load i32, i32* %j, align 4
  %560 = load i32, i32* %clus1.addr, align 4
  %cmp695 = icmp slt i32 %559, %560
  br i1 %cmp695, label %for.body.697, label %for.end.726

for.body.697:                                     ; preds = %for.cond.694
  %561 = load i32, i32* %j, align 4
  %idxprom698 = sext i32 %561 to i64
  %562 = load i8**, i8*** @Falign.tmpres1, align 8
  %arrayidx699 = getelementptr inbounds i8*, i8** %562, i64 %idxprom698
  %563 = load i8*, i8** %arrayidx699, align 8
  %564 = load i32, i32* %j, align 4
  %idxprom700 = sext i32 %564 to i64
  %565 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx701 = getelementptr inbounds i8*, i8** %565, i64 %idxprom700
  %566 = load i8*, i8** %arrayidx701, align 8
  %567 = load i32, i32* %i, align 4
  %idxprom702 = sext i32 %567 to i64
  %568 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx703 = getelementptr inbounds i32, i32* %568, i64 %idxprom702
  %569 = load i32, i32* %arrayidx703, align 4
  %idx.ext704 = sext i32 %569 to i64
  %add.ptr705 = getelementptr inbounds i8, i8* %566, i64 %idx.ext704
  %570 = load i32, i32* %i, align 4
  %add706 = add nsw i32 %570, 1
  %idxprom707 = sext i32 %add706 to i64
  %571 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx708 = getelementptr inbounds i32, i32* %571, i64 %idxprom707
  %572 = load i32, i32* %arrayidx708, align 4
  %573 = load i32, i32* %i, align 4
  %idxprom709 = sext i32 %573 to i64
  %574 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx710 = getelementptr inbounds i32, i32* %574, i64 %idxprom709
  %575 = load i32, i32* %arrayidx710, align 4
  %sub711 = sub nsw i32 %572, %575
  %conv712 = sext i32 %sub711 to i64
  %call713 = call i8* @strncpy(i8* %563, i8* %add.ptr705, i64 %conv712) #6
  %576 = load i32, i32* %i, align 4
  %add714 = add nsw i32 %576, 1
  %idxprom715 = sext i32 %add714 to i64
  %577 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx716 = getelementptr inbounds i32, i32* %577, i64 %idxprom715
  %578 = load i32, i32* %arrayidx716, align 4
  %579 = load i32, i32* %i, align 4
  %idxprom717 = sext i32 %579 to i64
  %580 = load i32*, i32** @Falign.cut1, align 8
  %arrayidx718 = getelementptr inbounds i32, i32* %580, i64 %idxprom717
  %581 = load i32, i32* %arrayidx718, align 4
  %sub719 = sub nsw i32 %578, %581
  %idxprom720 = sext i32 %sub719 to i64
  %582 = load i32, i32* %j, align 4
  %idxprom721 = sext i32 %582 to i64
  %583 = load i8**, i8*** @Falign.tmpres1, align 8
  %arrayidx722 = getelementptr inbounds i8*, i8** %583, i64 %idxprom721
  %584 = load i8*, i8** %arrayidx722, align 8
  %arrayidx723 = getelementptr inbounds i8, i8* %584, i64 %idxprom720
  store i8 0, i8* %arrayidx723, align 1
  br label %for.inc.724

for.inc.724:                                      ; preds = %for.body.697
  %585 = load i32, i32* %j, align 4
  %inc725 = add nsw i32 %585, 1
  store i32 %inc725, i32* %j, align 4
  br label %for.cond.694

for.end.726:                                      ; preds = %for.cond.694
  %586 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool727 = icmp ne i32 %586, 0
  br i1 %tobool727, label %land.lhs.true.728, label %if.end.731

land.lhs.true.728:                                ; preds = %for.end.726
  %587 = load i32, i32* @fftkeika, align 4
  %tobool729 = icmp ne i32 %587, 0
  br i1 %tobool729, label %if.then.730, label %if.end.731

if.then.730:                                      ; preds = %land.lhs.true.728
  %588 = load i32, i32* %clus1.addr, align 4
  %589 = load i8**, i8*** @Falign.tmpres1, align 8
  call void @commongappick(i32 %588, i8** %589)
  br label %if.end.731

if.end.731:                                       ; preds = %if.then.730, %land.lhs.true.728, %for.end.726
  store i32 0, i32* %j, align 4
  br label %for.cond.732

for.cond.732:                                     ; preds = %for.inc.762, %if.end.731
  %590 = load i32, i32* %j, align 4
  %591 = load i32, i32* %clus2.addr, align 4
  %cmp733 = icmp slt i32 %590, %591
  br i1 %cmp733, label %for.body.735, label %for.end.764

for.body.735:                                     ; preds = %for.cond.732
  %592 = load i32, i32* %j, align 4
  %idxprom736 = sext i32 %592 to i64
  %593 = load i8**, i8*** @Falign.tmpres2, align 8
  %arrayidx737 = getelementptr inbounds i8*, i8** %593, i64 %idxprom736
  %594 = load i8*, i8** %arrayidx737, align 8
  %595 = load i32, i32* %j, align 4
  %idxprom738 = sext i32 %595 to i64
  %596 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx739 = getelementptr inbounds i8*, i8** %596, i64 %idxprom738
  %597 = load i8*, i8** %arrayidx739, align 8
  %598 = load i32, i32* %i, align 4
  %idxprom740 = sext i32 %598 to i64
  %599 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx741 = getelementptr inbounds i32, i32* %599, i64 %idxprom740
  %600 = load i32, i32* %arrayidx741, align 4
  %idx.ext742 = sext i32 %600 to i64
  %add.ptr743 = getelementptr inbounds i8, i8* %597, i64 %idx.ext742
  %601 = load i32, i32* %i, align 4
  %add744 = add nsw i32 %601, 1
  %idxprom745 = sext i32 %add744 to i64
  %602 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx746 = getelementptr inbounds i32, i32* %602, i64 %idxprom745
  %603 = load i32, i32* %arrayidx746, align 4
  %604 = load i32, i32* %i, align 4
  %idxprom747 = sext i32 %604 to i64
  %605 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx748 = getelementptr inbounds i32, i32* %605, i64 %idxprom747
  %606 = load i32, i32* %arrayidx748, align 4
  %sub749 = sub nsw i32 %603, %606
  %conv750 = sext i32 %sub749 to i64
  %call751 = call i8* @strncpy(i8* %594, i8* %add.ptr743, i64 %conv750) #6
  %607 = load i32, i32* %i, align 4
  %add752 = add nsw i32 %607, 1
  %idxprom753 = sext i32 %add752 to i64
  %608 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx754 = getelementptr inbounds i32, i32* %608, i64 %idxprom753
  %609 = load i32, i32* %arrayidx754, align 4
  %610 = load i32, i32* %i, align 4
  %idxprom755 = sext i32 %610 to i64
  %611 = load i32*, i32** @Falign.cut2, align 8
  %arrayidx756 = getelementptr inbounds i32, i32* %611, i64 %idxprom755
  %612 = load i32, i32* %arrayidx756, align 4
  %sub757 = sub nsw i32 %609, %612
  %idxprom758 = sext i32 %sub757 to i64
  %613 = load i32, i32* %j, align 4
  %idxprom759 = sext i32 %613 to i64
  %614 = load i8**, i8*** @Falign.tmpres2, align 8
  %arrayidx760 = getelementptr inbounds i8*, i8** %614, i64 %idxprom759
  %615 = load i8*, i8** %arrayidx760, align 8
  %arrayidx761 = getelementptr inbounds i8, i8* %615, i64 %idxprom758
  store i8 0, i8* %arrayidx761, align 1
  br label %for.inc.762

for.inc.762:                                      ; preds = %for.body.735
  %616 = load i32, i32* %j, align 4
  %inc763 = add nsw i32 %616, 1
  store i32 %inc763, i32* %j, align 4
  br label %for.cond.732

for.end.764:                                      ; preds = %for.cond.732
  %617 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool765 = icmp ne i32 %617, 0
  br i1 %tobool765, label %land.lhs.true.766, label %if.end.769

land.lhs.true.766:                                ; preds = %for.end.764
  %618 = load i32, i32* @fftkeika, align 4
  %tobool767 = icmp ne i32 %618, 0
  br i1 %tobool767, label %if.then.768, label %if.end.769

if.then.768:                                      ; preds = %land.lhs.true.766
  %619 = load i32, i32* %clus2.addr, align 4
  %620 = load i8**, i8*** @Falign.tmpres2, align 8
  call void @commongappick(i32 %619, i8** %620)
  br label %if.end.769

if.end.769:                                       ; preds = %if.then.768, %land.lhs.true.766, %for.end.764
  %621 = load i32, i32* @constraint, align 4
  %tobool770 = icmp ne i32 %621, 0
  br i1 %tobool770, label %if.then.771, label %if.end.773

if.then.771:                                      ; preds = %if.end.769
  %622 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call772 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %622, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.773:                                       ; preds = %if.end.769
  %623 = load i8, i8* @alg, align 1
  %conv774 = sext i8 %623 to i32
  switch i32 %conv774, label %sw.default [
    i32 97, label %sw.bb
    i32 77, label %sw.bb.777
    i32 65, label %sw.bb.780
    i32 72, label %sw.bb.793
    i32 81, label %sw.bb.806
  ]

sw.bb:                                            ; preds = %if.end.773
  %624 = load i8**, i8*** @Falign.tmpres1, align 8
  %625 = load i8**, i8*** @Falign.tmpres2, align 8
  %626 = load double*, double** %eff1.addr, align 8
  %627 = load double*, double** %eff2.addr, align 8
  %628 = load i32, i32* %clus1.addr, align 4
  %629 = load i32, i32* %clus2.addr, align 4
  %630 = load i32, i32* %alloclen.addr, align 4
  %call775 = call float (i8**, i8**, double*, double*, i32, i32, i32, ...) bitcast (float (...)* @Aalign to float (i8**, i8**, double*, double*, i32, i32, i32, ...)*)(i8** %624, i8** %625, double* %626, double* %627, i32 %628, i32 %629, i32 %630)
  %631 = load float, float* %totalscore, align 4
  %add776 = fadd float %631, %call775
  store float %add776, float* %totalscore, align 4
  br label %sw.epilog

sw.bb.777:                                        ; preds = %if.end.773
  %632 = load i8**, i8*** @Falign.tmpres1, align 8
  %633 = load i8**, i8*** @Falign.tmpres2, align 8
  %634 = load double*, double** %eff1.addr, align 8
  %635 = load double*, double** %eff2.addr, align 8
  %636 = load i32, i32* %clus1.addr, align 4
  %637 = load i32, i32* %clus2.addr, align 4
  %638 = load i32, i32* %alloclen.addr, align 4
  %639 = load i8*, i8** @Falign.sgap1, align 8
  %640 = load i8*, i8** @Falign.sgap2, align 8
  %641 = load i8*, i8** @Falign.egap1, align 8
  %642 = load i8*, i8** @Falign.egap2, align 8
  %call778 = call float @MSalignmm(i8** %632, i8** %633, double* %634, double* %635, i32 %636, i32 %637, i32 %638, i8* %639, i8* %640, i8* %641, i8* %642)
  %643 = load float, float* %totalscore, align 4
  %add779 = fadd float %643, %call778
  store float %add779, float* %totalscore, align 4
  br label %sw.epilog

sw.bb.780:                                        ; preds = %if.end.773
  %644 = load i32, i32* %clus1.addr, align 4
  %cmp781 = icmp eq i32 %644, 1
  br i1 %cmp781, label %land.lhs.true.783, label %if.else.789

land.lhs.true.783:                                ; preds = %sw.bb.780
  %645 = load i32, i32* %clus2.addr, align 4
  %cmp784 = icmp eq i32 %645, 1
  br i1 %cmp784, label %if.then.786, label %if.else.789

if.then.786:                                      ; preds = %land.lhs.true.783
  %646 = load i8**, i8*** @Falign.tmpres1, align 8
  %647 = load i8**, i8*** @Falign.tmpres2, align 8
  %648 = load i32, i32* %alloclen.addr, align 4
  %call787 = call float @G__align11(i8** %646, i8** %647, i32 %648)
  %649 = load float, float* %totalscore, align 4
  %add788 = fadd float %649, %call787
  store float %add788, float* %totalscore, align 4
  br label %if.end.792

if.else.789:                                      ; preds = %land.lhs.true.783, %sw.bb.780
  %650 = load i8**, i8*** @Falign.tmpres1, align 8
  %651 = load i8**, i8*** @Falign.tmpres2, align 8
  %652 = load double*, double** %eff1.addr, align 8
  %653 = load double*, double** %eff2.addr, align 8
  %654 = load i32, i32* %clus1.addr, align 4
  %655 = load i32, i32* %clus2.addr, align 4
  %656 = load i32, i32* %alloclen.addr, align 4
  %657 = load i8*, i8** @Falign.sgap1, align 8
  %658 = load i8*, i8** @Falign.sgap2, align 8
  %659 = load i8*, i8** @Falign.egap1, align 8
  %660 = load i8*, i8** @Falign.egap2, align 8
  %call790 = call float @A__align(i8** %650, i8** %651, double* %652, double* %653, i32 %654, i32 %655, i32 %656, %struct._LocalHom*** null, float* %dumfl, i8* %657, i8* %658, i8* %659, i8* %660)
  %661 = load float, float* %totalscore, align 4
  %add791 = fadd float %661, %call790
  store float %add791, float* %totalscore, align 4
  br label %if.end.792

if.end.792:                                       ; preds = %if.else.789, %if.then.786
  br label %sw.epilog

sw.bb.793:                                        ; preds = %if.end.773
  %662 = load i32, i32* %clus1.addr, align 4
  %cmp794 = icmp eq i32 %662, 1
  br i1 %cmp794, label %land.lhs.true.796, label %if.else.802

land.lhs.true.796:                                ; preds = %sw.bb.793
  %663 = load i32, i32* %clus2.addr, align 4
  %cmp797 = icmp eq i32 %663, 1
  br i1 %cmp797, label %if.then.799, label %if.else.802

if.then.799:                                      ; preds = %land.lhs.true.796
  %664 = load i8**, i8*** @Falign.tmpres1, align 8
  %665 = load i8**, i8*** @Falign.tmpres2, align 8
  %666 = load i32, i32* %alloclen.addr, align 4
  %call800 = call float @G__align11(i8** %664, i8** %665, i32 %666)
  %667 = load float, float* %totalscore, align 4
  %add801 = fadd float %667, %call800
  store float %add801, float* %totalscore, align 4
  br label %if.end.805

if.else.802:                                      ; preds = %land.lhs.true.796, %sw.bb.793
  %668 = load i8**, i8*** @Falign.tmpres1, align 8
  %669 = load i8**, i8*** @Falign.tmpres2, align 8
  %670 = load double*, double** %eff1.addr, align 8
  %671 = load double*, double** %eff2.addr, align 8
  %672 = load i32, i32* %clus1.addr, align 4
  %673 = load i32, i32* %clus2.addr, align 4
  %674 = load i32, i32* %alloclen.addr, align 4
  %675 = load i8*, i8** @Falign.sgap1, align 8
  %676 = load i8*, i8** @Falign.sgap2, align 8
  %677 = load i8*, i8** @Falign.egap1, align 8
  %678 = load i8*, i8** @Falign.egap2, align 8
  %call803 = call float @H__align(i8** %668, i8** %669, double* %670, double* %671, i32 %672, i32 %673, i32 %674, %struct._LocalHom*** null, float* %dumfl, i8* %675, i8* %676, i8* %677, i8* %678)
  %679 = load float, float* %totalscore, align 4
  %add804 = fadd float %679, %call803
  store float %add804, float* %totalscore, align 4
  br label %if.end.805

if.end.805:                                       ; preds = %if.else.802, %if.then.799
  br label %sw.epilog

sw.bb.806:                                        ; preds = %if.end.773
  %680 = load i32, i32* %clus1.addr, align 4
  %cmp807 = icmp eq i32 %680, 1
  br i1 %cmp807, label %land.lhs.true.809, label %if.else.815

land.lhs.true.809:                                ; preds = %sw.bb.806
  %681 = load i32, i32* %clus2.addr, align 4
  %cmp810 = icmp eq i32 %681, 1
  br i1 %cmp810, label %if.then.812, label %if.else.815

if.then.812:                                      ; preds = %land.lhs.true.809
  %682 = load i8**, i8*** @Falign.tmpres1, align 8
  %683 = load i8**, i8*** @Falign.tmpres2, align 8
  %684 = load i32, i32* %alloclen.addr, align 4
  %call813 = call float @G__align11(i8** %682, i8** %683, i32 %684)
  %685 = load float, float* %totalscore, align 4
  %add814 = fadd float %685, %call813
  store float %add814, float* %totalscore, align 4
  br label %if.end.818

if.else.815:                                      ; preds = %land.lhs.true.809, %sw.bb.806
  %686 = load i8**, i8*** @Falign.tmpres1, align 8
  %687 = load i8**, i8*** @Falign.tmpres2, align 8
  %688 = load double*, double** %eff1.addr, align 8
  %689 = load double*, double** %eff2.addr, align 8
  %690 = load i32, i32* %clus1.addr, align 4
  %691 = load i32, i32* %clus2.addr, align 4
  %692 = load i32, i32* %alloclen.addr, align 4
  %693 = load i8*, i8** @Falign.sgap1, align 8
  %694 = load i8*, i8** @Falign.sgap2, align 8
  %695 = load i8*, i8** @Falign.egap1, align 8
  %696 = load i8*, i8** @Falign.egap2, align 8
  %call816 = call float @Q__align(i8** %686, i8** %687, double* %688, double* %689, i32 %690, i32 %691, i32 %692, %struct._LocalHom*** null, float* %dumfl, i8* %693, i8* %694, i8* %695, i8* %696)
  %697 = load float, float* %totalscore, align 4
  %add817 = fadd float %697, %call816
  store float %add817, float* %totalscore, align 4
  br label %if.end.818

if.end.818:                                       ; preds = %if.else.815, %if.then.812
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.773
  %698 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %699 = load i8, i8* @alg, align 1
  %conv819 = sext i8 %699 to i32
  %call820 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %698, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %conv819)
  call void @ErrorExit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.818, %if.end.805, %if.end.792, %sw.bb.777, %sw.bb
  %700 = load i8**, i8*** @Falign.tmpres1, align 8
  %arrayidx821 = getelementptr inbounds i8*, i8** %700, i64 0
  %701 = load i8*, i8** %arrayidx821, align 8
  %call822 = call i64 @strlen(i8* %701) #5
  %conv823 = trunc i64 %call822 to i32
  store i32 %conv823, i32* %nlen, align 4
  %702 = load i32, i32* %totallen, align 4
  %703 = load i32, i32* %nlen, align 4
  %add824 = add nsw i32 %702, %703
  %704 = load i32, i32* %alloclen.addr, align 4
  %cmp825 = icmp sgt i32 %add824, %704
  br i1 %cmp825, label %if.then.827, label %if.end.829

if.then.827:                                      ; preds = %sw.epilog
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %706 = load i32, i32* %totallen, align 4
  %707 = load i32, i32* %nlen, align 4
  %708 = load i32, i32* %alloclen.addr, align 4
  %call828 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %705, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 %706, i32 %707, i32 %708)
  call void @ErrorExit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.829

if.end.829:                                       ; preds = %if.then.827, %sw.epilog
  store i32 0, i32* %j, align 4
  br label %for.cond.830

for.cond.830:                                     ; preds = %for.inc.839, %if.end.829
  %709 = load i32, i32* %j, align 4
  %710 = load i32, i32* %clus1.addr, align 4
  %cmp831 = icmp slt i32 %709, %710
  br i1 %cmp831, label %for.body.833, label %for.end.841

for.body.833:                                     ; preds = %for.cond.830
  %711 = load i32, i32* %j, align 4
  %idxprom834 = sext i32 %711 to i64
  %712 = load i8**, i8*** @Falign.result1, align 8
  %arrayidx835 = getelementptr inbounds i8*, i8** %712, i64 %idxprom834
  %713 = load i8*, i8** %arrayidx835, align 8
  %714 = load i32, i32* %j, align 4
  %idxprom836 = sext i32 %714 to i64
  %715 = load i8**, i8*** @Falign.tmpres1, align 8
  %arrayidx837 = getelementptr inbounds i8*, i8** %715, i64 %idxprom836
  %716 = load i8*, i8** %arrayidx837, align 8
  %call838 = call i8* @strcat(i8* %713, i8* %716) #6
  br label %for.inc.839

for.inc.839:                                      ; preds = %for.body.833
  %717 = load i32, i32* %j, align 4
  %inc840 = add nsw i32 %717, 1
  store i32 %inc840, i32* %j, align 4
  br label %for.cond.830

for.end.841:                                      ; preds = %for.cond.830
  store i32 0, i32* %j, align 4
  br label %for.cond.842

for.cond.842:                                     ; preds = %for.inc.851, %for.end.841
  %718 = load i32, i32* %j, align 4
  %719 = load i32, i32* %clus2.addr, align 4
  %cmp843 = icmp slt i32 %718, %719
  br i1 %cmp843, label %for.body.845, label %for.end.853

for.body.845:                                     ; preds = %for.cond.842
  %720 = load i32, i32* %j, align 4
  %idxprom846 = sext i32 %720 to i64
  %721 = load i8**, i8*** @Falign.result2, align 8
  %arrayidx847 = getelementptr inbounds i8*, i8** %721, i64 %idxprom846
  %722 = load i8*, i8** %arrayidx847, align 8
  %723 = load i32, i32* %j, align 4
  %idxprom848 = sext i32 %723 to i64
  %724 = load i8**, i8*** @Falign.tmpres2, align 8
  %arrayidx849 = getelementptr inbounds i8*, i8** %724, i64 %idxprom848
  %725 = load i8*, i8** %arrayidx849, align 8
  %call850 = call i8* @strcat(i8* %722, i8* %725) #6
  br label %for.inc.851

for.inc.851:                                      ; preds = %for.body.845
  %726 = load i32, i32* %j, align 4
  %inc852 = add nsw i32 %726, 1
  store i32 %inc852, i32* %j, align 4
  br label %for.cond.842

for.end.853:                                      ; preds = %for.cond.842
  %727 = load i32, i32* %nlen, align 4
  %728 = load i32, i32* %totallen, align 4
  %add854 = add nsw i32 %728, %727
  store i32 %add854, i32* %totallen, align 4
  br label %for.inc.855

for.inc.855:                                      ; preds = %for.end.853
  %729 = load i32, i32* %i, align 4
  %inc856 = add nsw i32 %729, 1
  store i32 %inc856, i32* %i, align 4
  br label %for.cond.630

for.end.857:                                      ; preds = %for.cond.630
  store i32 0, i32* %j, align 4
  br label %for.cond.858

for.cond.858:                                     ; preds = %for.inc.867, %for.end.857
  %730 = load i32, i32* %j, align 4
  %731 = load i32, i32* %clus1.addr, align 4
  %cmp859 = icmp slt i32 %730, %731
  br i1 %cmp859, label %for.body.861, label %for.end.869

for.body.861:                                     ; preds = %for.cond.858
  %732 = load i32, i32* %j, align 4
  %idxprom862 = sext i32 %732 to i64
  %733 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx863 = getelementptr inbounds i8*, i8** %733, i64 %idxprom862
  %734 = load i8*, i8** %arrayidx863, align 8
  %735 = load i32, i32* %j, align 4
  %idxprom864 = sext i32 %735 to i64
  %736 = load i8**, i8*** @Falign.result1, align 8
  %arrayidx865 = getelementptr inbounds i8*, i8** %736, i64 %idxprom864
  %737 = load i8*, i8** %arrayidx865, align 8
  %call866 = call i8* @strcpy(i8* %734, i8* %737) #6
  br label %for.inc.867

for.inc.867:                                      ; preds = %for.body.861
  %738 = load i32, i32* %j, align 4
  %inc868 = add nsw i32 %738, 1
  store i32 %inc868, i32* %j, align 4
  br label %for.cond.858

for.end.869:                                      ; preds = %for.cond.858
  store i32 0, i32* %j, align 4
  br label %for.cond.870

for.cond.870:                                     ; preds = %for.inc.879, %for.end.869
  %739 = load i32, i32* %j, align 4
  %740 = load i32, i32* %clus2.addr, align 4
  %cmp871 = icmp slt i32 %739, %740
  br i1 %cmp871, label %for.body.873, label %for.end.881

for.body.873:                                     ; preds = %for.cond.870
  %741 = load i32, i32* %j, align 4
  %idxprom874 = sext i32 %741 to i64
  %742 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx875 = getelementptr inbounds i8*, i8** %742, i64 %idxprom874
  %743 = load i8*, i8** %arrayidx875, align 8
  %744 = load i32, i32* %j, align 4
  %idxprom876 = sext i32 %744 to i64
  %745 = load i8**, i8*** @Falign.result2, align 8
  %arrayidx877 = getelementptr inbounds i8*, i8** %745, i64 %idxprom876
  %746 = load i8*, i8** %arrayidx877, align 8
  %call878 = call i8* @strcpy(i8* %743, i8* %746) #6
  br label %for.inc.879

for.inc.879:                                      ; preds = %for.body.873
  %747 = load i32, i32* %j, align 4
  %inc880 = add nsw i32 %747, 1
  store i32 %inc880, i32* %j, align 4
  br label %for.cond.870

for.end.881:                                      ; preds = %for.cond.870
  %748 = load float, float* %totalscore, align 4
  ret float %748
}

declare i8* @AllocateCharVec(i32) #2

; Function Attrs: nounwind uwtable
define internal void @seq_vec_5(%struct._Fukusosuu* %result, double* %score1, double* %score2, double %incr, i8* %seq) #0 {
entry:
  %result.addr = alloca %struct._Fukusosuu*, align 8
  %score1.addr = alloca double*, align 8
  %score2.addr = alloca double*, align 8
  %incr.addr = alloca double, align 8
  %seq.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct._Fukusosuu* %result, %struct._Fukusosuu** %result.addr, align 8
  store double* %score1, double** %score1.addr, align 8
  store double* %score2, double** %score2.addr, align 8
  store double %incr, double* %incr.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %n, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %5, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load double, double* %incr.addr, align 8
  %7 = load i32, i32* %n, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load double*, double** %score1.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 %idxprom2
  %9 = load double, double* %arrayidx3, align 8
  %mul = fmul double %6, %9
  %10 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %10, i32 0, i32 0
  %11 = load double, double* %R, align 8
  %add = fadd double %11, %mul
  store double %add, double* %R, align 8
  %12 = load double, double* %incr.addr, align 8
  %13 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load double*, double** %score2.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %14, i64 %idxprom4
  %15 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %12, %15
  %16 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %16, i32 0, i32 1
  %17 = load double, double* %I, align 8
  %add7 = fadd double %17, %mul6
  store double %add7, double* %I, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %18 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %incdec.ptr8 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %18, i32 1
  store %struct._Fukusosuu* %incdec.ptr8, %struct._Fukusosuu** %result.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @getkyokaigap(i8*, i8**, i32, i32) #2

declare void @commongappick(i32, i8**) #2

; Function Attrs: nounwind uwtable
define float @Falign_noudp(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %clus1, i32 %clus2, i32 %alloclen, i32* %fftlog) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %fftlog.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %maxk = alloca i32, align 4
  %nlen = alloca i32, align 4
  %nlen2 = alloca i32, align 4
  %nlen4 = alloca i32, align 4
  %nlentmp = alloca i32, align 4
  %lag = alloca i32, align 4
  %tmpint = alloca i32, align 4
  %count = alloca i32, align 4
  %count0 = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %totallen = alloca i32, align 4
  %totalscore = alloca float, align 4
  %nkouho = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32* %fftlog, i32** %fftlog.addr, align 8
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %5 = load i32, i32* %len2, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %len1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %len2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %nlentmp, align 4
  store i32 1, i32* %nlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %8 = load i32, i32* %nlentmp, align 4
  %9 = load i32, i32* %nlen, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %nlen, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %nlen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %nlen, align 4
  %div = sdiv i32 %11, 2
  store i32 %div, i32* %nlen2, align 4
  %12 = load i32, i32* %nlen2, align 4
  %div7 = sdiv i32 %12, 2
  store i32 %div7, i32* %nlen4, align 4
  %13 = load i32, i32* @Falign_noudp.prevalloclen, align 4
  %14 = load i32, i32* %alloclen.addr, align 4
  %cmp8 = icmp ne i32 %13, %14
  br i1 %cmp8, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.end
  %15 = load i32, i32* @Falign_noudp.prevalloclen, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %16 = load i8**, i8*** @Falign_noudp.result1, align 8
  call void @FreeCharMtx(i8** %16)
  %17 = load i8**, i8*** @Falign_noudp.result2, align 8
  call void @FreeCharMtx(i8** %17)
  %18 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  call void @FreeCharMtx(i8** %18)
  %19 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  call void @FreeCharMtx(i8** %19)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %20 = load i32, i32* @njob, align 4
  %21 = load i32, i32* %alloclen.addr, align 4
  %call11 = call i8** @AllocateCharMtx(i32 %20, i32 %21)
  store i8** %call11, i8*** @Falign_noudp.result1, align 8
  %22 = load i32, i32* @njob, align 4
  %23 = load i32, i32* %alloclen.addr, align 4
  %call12 = call i8** @AllocateCharMtx(i32 %22, i32 %23)
  store i8** %call12, i8*** @Falign_noudp.result2, align 8
  %24 = load i32, i32* @njob, align 4
  %25 = load i32, i32* %alloclen.addr, align 4
  %call13 = call i8** @AllocateCharMtx(i32 %24, i32 %25)
  store i8** %call13, i8*** @Falign_noudp.tmpres1, align 8
  %26 = load i32, i32* @njob, align 4
  %27 = load i32, i32* %alloclen.addr, align 4
  %call14 = call i8** @AllocateCharMtx(i32 %26, i32 %27)
  store i8** %call14, i8*** @Falign_noudp.tmpres2, align 8
  %28 = load i32, i32* %alloclen.addr, align 4
  store i32 %28, i32* @Falign_noudp.prevalloclen, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %while.end
  %29 = load i32, i32* @Falign_noudp.localalloclen, align 4
  %tobool16 = icmp ne i32 %29, 0
  br i1 %tobool16, label %if.end.50, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %30 = load i32, i32* @njob, align 4
  %call18 = call i8* @AllocateCharVec(i32 %30)
  store i8* %call18, i8** @Falign_noudp.sgap1, align 8
  %31 = load i32, i32* @njob, align 4
  %call19 = call i8* @AllocateCharVec(i32 %31)
  store i8* %call19, i8** @Falign_noudp.egap1, align 8
  %32 = load i32, i32* @njob, align 4
  %call20 = call i8* @AllocateCharVec(i32 %32)
  store i8* %call20, i8** @Falign_noudp.sgap2, align 8
  %33 = load i32, i32* @njob, align 4
  %call21 = call i8* @AllocateCharVec(i32 %33)
  store i8* %call21, i8** @Falign_noudp.egap2, align 8
  %call22 = call i32* @AllocateIntVec(i32 100)
  store i32* %call22, i32** @Falign_noudp.kouho, align 8
  %call23 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call23, i32** @Falign_noudp.cut1, align 8
  %call24 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call24, i32** @Falign_noudp.cut2, align 8
  %34 = load i32, i32* @njob, align 4
  %call25 = call i8** @AllocateCharMtx(i32 %34, i32 0)
  store i8** %call25, i8*** @Falign_noudp.tmpptr1, align 8
  %35 = load i32, i32* @njob, align 4
  %call26 = call i8** @AllocateCharMtx(i32 %35, i32 0)
  store i8** %call26, i8*** @Falign_noudp.tmpptr2, align 8
  %call27 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %36 = bitcast i8* %call27 to %struct._Segment*
  store %struct._Segment* %36, %struct._Segment** @Falign_noudp.segment, align 8
  %call28 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %37 = bitcast i8* %call28 to %struct._Segment*
  store %struct._Segment* %37, %struct._Segment** @Falign_noudp.segment1, align 8
  %call29 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %38 = bitcast i8* %call29 to %struct._Segment*
  store %struct._Segment* %38, %struct._Segment** @Falign_noudp.segment2, align 8
  %call30 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %39 = bitcast i8* %call30 to %struct._Segment**
  store %struct._Segment** %39, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %call31 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %40 = bitcast i8* %call31 to %struct._Segment**
  store %struct._Segment** %40, %struct._Segment*** @Falign_noudp.sortedseg2, align 8
  %41 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %tobool32 = icmp ne %struct._Segment* %41, null
  br i1 %tobool32, label %land.lhs.true, label %if.then.40

land.lhs.true:                                    ; preds = %if.then.17
  %42 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %tobool33 = icmp ne %struct._Segment* %42, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.then.40

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %43 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %tobool35 = icmp ne %struct._Segment* %43, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.then.40

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %44 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %tobool37 = icmp ne %struct._Segment** %44, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.then.40

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %45 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg2, align 8
  %tobool39 = icmp ne %struct._Segment** %45, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38, %land.lhs.true.36, %land.lhs.true.34, %land.lhs.true, %if.then.17
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.38
  %46 = load i32, i32* @scoremtx, align 4
  %cmp42 = icmp eq i32 %46, -1
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.41
  store i32 1, i32* @n20or4or2, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.41
  %47 = load i32, i32* @fftscore, align 4
  %tobool45 = icmp ne i32 %47, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else
  store i32 1, i32* @n20or4or2, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %if.else
  store i32 20, i32* @n20or4or2, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.15
  %48 = load i32, i32* @Falign_noudp.localalloclen, align 4
  %49 = load i32, i32* %nlen, align 4
  %cmp51 = icmp slt i32 %48, %49
  br i1 %cmp51, label %if.then.53, label %if.end.72

if.then.53:                                       ; preds = %if.end.50
  %50 = load i32, i32* @Falign_noudp.localalloclen, align 4
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.then.53
  %51 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool56 = icmp ne i32 %51, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.55
  %52 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %52)
  %53 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %53)
  %54 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  call void @FreeFukusosuuVec(%struct._Fukusosuu* %54)
  %55 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.naiseki, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %55)
  %56 = load double*, double** @Falign_noudp.soukan, align 8
  call void @FreeDoubleVec(double* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.55
  %57 = load i8**, i8*** @Falign_noudp.tmpseq1, align 8
  call void @FreeCharMtx(i8** %57)
  %58 = load i8**, i8*** @Falign_noudp.tmpseq2, align 8
  call void @FreeCharMtx(i8** %58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.53
  %59 = load i32, i32* @njob, align 4
  %60 = load i32, i32* %nlen, align 4
  %call60 = call i8** @AllocateCharMtx(i32 %59, i32 %60)
  store i8** %call60, i8*** @Falign_noudp.tmpseq1, align 8
  %61 = load i32, i32* @njob, align 4
  %62 = load i32, i32* %nlen, align 4
  %call61 = call i8** @AllocateCharMtx(i32 %61, i32 %62)
  store i8** %call61, i8*** @Falign_noudp.tmpseq2, align 8
  %63 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool62 = icmp ne i32 %63, 0
  br i1 %tobool62, label %if.end.71, label %if.then.63

if.then.63:                                       ; preds = %if.end.59
  %64 = load i32, i32* %nlen, align 4
  %call64 = call %struct._Fukusosuu* @AllocateFukusosuuVec(i32 %64)
  store %struct._Fukusosuu* %call64, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %65 = load i32, i32* @n20or4or2, align 4
  %66 = load i32, i32* %nlen, align 4
  %call65 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %65, i32 %66)
  store %struct._Fukusosuu** %call65, %struct._Fukusosuu*** @Falign_noudp.naiseki, align 8
  %67 = load i32, i32* @n20or4or2, align 4
  %68 = load i32, i32* %nlen, align 4
  %add = add nsw i32 %68, 1
  %call66 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %67, i32 %add)
  store %struct._Fukusosuu** %call66, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %69 = load i32, i32* @n20or4or2, align 4
  %70 = load i32, i32* %nlen, align 4
  %add67 = add nsw i32 %70, 1
  %call68 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %69, i32 %add67)
  store %struct._Fukusosuu** %call68, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %71 = load i32, i32* %nlen, align 4
  %add69 = add nsw i32 %71, 1
  %call70 = call double* @AllocateDoubleVec(i32 %add69)
  store double* %call70, double** @Falign_noudp.soukan, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.59
  %72 = load i32, i32* %nlen, align 4
  store i32 %72, i32* @Falign_noudp.localalloclen, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.50
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.72
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %clus1.addr, align 4
  %cmp73 = icmp slt i32 %73, %74
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %j, align 4
  %idxprom = sext i32 %75 to i64
  %76 = load i8**, i8*** @Falign_noudp.tmpseq1, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %76, i64 %idxprom
  %77 = load i8*, i8** %arrayidx75, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %78 to i64
  %79 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %79, i64 %idxprom76
  %80 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i8* @strcpy(i8* %77, i8* %80) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %j, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %for.end
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %clus2.addr, align 4
  %cmp80 = icmp slt i32 %82, %83
  br i1 %cmp80, label %for.body.82, label %for.end.90

for.body.82:                                      ; preds = %for.cond.79
  %84 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = load i8**, i8*** @Falign_noudp.tmpseq2, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %85, i64 %idxprom83
  %86 = load i8*, i8** %arrayidx84, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %87 to i64
  %88 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %88, i64 %idxprom85
  %89 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i8* @strcpy(i8* %86, i8* %89) #6
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.82
  %90 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %90, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  %91 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool91 = icmp ne i32 %91, 0
  br i1 %tobool91, label %if.end.305, label %if.then.92

if.then.92:                                       ; preds = %for.end.90
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.100, %if.then.92
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* @n20or4or2, align 4
  %cmp95 = icmp slt i32 %93, %94
  br i1 %cmp95, label %for.body.97, label %for.end.102

for.body.97:                                      ; preds = %for.cond.94
  %95 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %95 to i64
  %96 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %arrayidx99 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %96, i64 %idxprom98
  %97 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx99, align 8
  %98 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %97, i32 %98)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.97
  %99 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %99, 1
  store i32 %inc101, i32* %j, align 4
  br label %for.cond.94

for.end.102:                                      ; preds = %for.cond.94
  %100 = load i32, i32* @scoremtx, align 4
  %cmp103 = icmp eq i32 %100, -1
  br i1 %cmp103, label %if.then.105, label %if.else.118

if.then.105:                                      ; preds = %for.end.102
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.115, %if.then.105
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %clus1.addr, align 4
  %cmp107 = icmp slt i32 %101, %102
  br i1 %cmp107, label %for.body.109, label %for.end.117

for.body.109:                                     ; preds = %for.cond.106
  %103 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %arrayidx110 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %103, i64 0
  %104 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx110, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %105 to i64
  %106 = load double*, double** %eff1.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %106, i64 %idxprom111
  %107 = load double, double* %arrayidx112, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %108 to i64
  %109 = load i8**, i8*** @Falign_noudp.tmpseq1, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %109, i64 %idxprom113
  %110 = load i8*, i8** %arrayidx114, align 8
  call void @seq_vec_4(%struct._Fukusosuu* %104, double %107, i8* %110)
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.109
  %111 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %111, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.106

for.end.117:                                      ; preds = %for.cond.106
  br label %if.end.146

if.else.118:                                      ; preds = %for.end.102
  %112 = load i32, i32* @fftscore, align 4
  %tobool119 = icmp ne i32 %112, 0
  br i1 %tobool119, label %if.then.120, label %if.else.133

if.then.120:                                      ; preds = %if.else.118
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.130, %if.then.120
  %113 = load i32, i32* %i, align 4
  %114 = load i32, i32* %clus1.addr, align 4
  %cmp122 = icmp slt i32 %113, %114
  br i1 %cmp122, label %for.body.124, label %for.end.132

for.body.124:                                     ; preds = %for.cond.121
  %115 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %arrayidx125 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %115, i64 0
  %116 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx125, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %117 to i64
  %118 = load double*, double** %eff1.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %118, i64 %idxprom126
  %119 = load double, double* %arrayidx127, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %120 to i64
  %121 = load i8**, i8*** @Falign_noudp.tmpseq1, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %121, i64 %idxprom128
  %122 = load i8*, i8** %arrayidx129, align 8
  call void @seq_vec_5(%struct._Fukusosuu* %116, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %119, i8* %122)
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.124
  %123 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %123, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.121

for.end.132:                                      ; preds = %for.cond.121
  br label %if.end.145

if.else.133:                                      ; preds = %if.else.118
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.142, %if.else.133
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %clus1.addr, align 4
  %cmp135 = icmp slt i32 %124, %125
  br i1 %cmp135, label %for.body.137, label %for.end.144

for.body.137:                                     ; preds = %for.cond.134
  %126 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %127 to i64
  %128 = load double*, double** %eff1.addr, align 8
  %arrayidx139 = getelementptr inbounds double, double* %128, i64 %idxprom138
  %129 = load double, double* %arrayidx139, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %130 to i64
  %131 = load i8**, i8*** @Falign_noudp.tmpseq1, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %131, i64 %idxprom140
  %132 = load i8*, i8** %arrayidx141, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %126, double %129, i8* %132)
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.137
  %133 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %133, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond.134

for.end.144:                                      ; preds = %for.cond.134
  br label %if.end.145

if.end.145:                                       ; preds = %for.end.144, %for.end.132
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %for.end.117
  store i32 0, i32* %j, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.153, %if.end.146
  %134 = load i32, i32* %j, align 4
  %135 = load i32, i32* @n20or4or2, align 4
  %cmp148 = icmp slt i32 %134, %135
  br i1 %cmp148, label %for.body.150, label %for.end.155

for.body.150:                                     ; preds = %for.cond.147
  %136 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %136 to i64
  %137 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %arrayidx152 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %137, i64 %idxprom151
  %138 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx152, align 8
  %139 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %138, i32 %139)
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.150
  %140 = load i32, i32* %j, align 4
  %inc154 = add nsw i32 %140, 1
  store i32 %inc154, i32* %j, align 4
  br label %for.cond.147

for.end.155:                                      ; preds = %for.cond.147
  %141 = load i32, i32* @scoremtx, align 4
  %cmp156 = icmp eq i32 %141, -1
  br i1 %cmp156, label %if.then.158, label %if.else.171

if.then.158:                                      ; preds = %for.end.155
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.168, %if.then.158
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %clus2.addr, align 4
  %cmp160 = icmp slt i32 %142, %143
  br i1 %cmp160, label %for.body.162, label %for.end.170

for.body.162:                                     ; preds = %for.cond.159
  %144 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %arrayidx163 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %144, i64 0
  %145 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx163, align 8
  %146 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %146 to i64
  %147 = load double*, double** %eff2.addr, align 8
  %arrayidx165 = getelementptr inbounds double, double* %147, i64 %idxprom164
  %148 = load double, double* %arrayidx165, align 8
  %149 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %149 to i64
  %150 = load i8**, i8*** @Falign_noudp.tmpseq2, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %150, i64 %idxprom166
  %151 = load i8*, i8** %arrayidx167, align 8
  call void @seq_vec_4(%struct._Fukusosuu* %145, double %148, i8* %151)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.162
  %152 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %152, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.159

for.end.170:                                      ; preds = %for.cond.159
  br label %if.end.199

if.else.171:                                      ; preds = %for.end.155
  %153 = load i32, i32* @fftscore, align 4
  %tobool172 = icmp ne i32 %153, 0
  br i1 %tobool172, label %if.then.173, label %if.else.186

if.then.173:                                      ; preds = %if.else.171
  store i32 0, i32* %i, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.183, %if.then.173
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %clus2.addr, align 4
  %cmp175 = icmp slt i32 %154, %155
  br i1 %cmp175, label %for.body.177, label %for.end.185

for.body.177:                                     ; preds = %for.cond.174
  %156 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %arrayidx178 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %156, i64 0
  %157 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx178, align 8
  %158 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %158 to i64
  %159 = load double*, double** %eff2.addr, align 8
  %arrayidx180 = getelementptr inbounds double, double* %159, i64 %idxprom179
  %160 = load double, double* %arrayidx180, align 8
  %161 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %161 to i64
  %162 = load i8**, i8*** @Falign_noudp.tmpseq2, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %162, i64 %idxprom181
  %163 = load i8*, i8** %arrayidx182, align 8
  call void @seq_vec_5(%struct._Fukusosuu* %157, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %160, i8* %163)
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.177
  %164 = load i32, i32* %i, align 4
  %inc184 = add nsw i32 %164, 1
  store i32 %inc184, i32* %i, align 4
  br label %for.cond.174

for.end.185:                                      ; preds = %for.cond.174
  br label %if.end.198

if.else.186:                                      ; preds = %if.else.171
  store i32 0, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.195, %if.else.186
  %165 = load i32, i32* %i, align 4
  %166 = load i32, i32* %clus2.addr, align 4
  %cmp188 = icmp slt i32 %165, %166
  br i1 %cmp188, label %for.body.190, label %for.end.197

for.body.190:                                     ; preds = %for.cond.187
  %167 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %168 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %168 to i64
  %169 = load double*, double** %eff2.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %169, i64 %idxprom191
  %170 = load double, double* %arrayidx192, align 8
  %171 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %171 to i64
  %172 = load i8**, i8*** @Falign_noudp.tmpseq2, align 8
  %arrayidx194 = getelementptr inbounds i8*, i8** %172, i64 %idxprom193
  %173 = load i8*, i8** %arrayidx194, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %167, double %170, i8* %173)
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.190
  %174 = load i32, i32* %i, align 4
  %inc196 = add nsw i32 %174, 1
  store i32 %inc196, i32* %i, align 4
  br label %for.cond.187

for.end.197:                                      ; preds = %for.cond.187
  br label %if.end.198

if.end.198:                                       ; preds = %for.end.197, %for.end.185
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %for.end.170
  store i32 0, i32* %j, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.212, %if.end.199
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* @n20or4or2, align 4
  %cmp201 = icmp slt i32 %175, %176
  br i1 %cmp201, label %for.body.203, label %for.end.214

for.body.203:                                     ; preds = %for.cond.200
  %177 = load i32, i32* %nlen, align 4
  %178 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %178 to i64
  %179 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %arrayidx205 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %179, i64 %idxprom204
  %180 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx205, align 8
  %181 = load i32, i32* %j, align 4
  %cmp206 = icmp eq i32 %181, 0
  %conv207 = zext i1 %cmp206 to i32
  %call208 = call i32 @fft(i32 %177, %struct._Fukusosuu* %180, i32 %conv207)
  %182 = load i32, i32* %nlen, align 4
  %183 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %183 to i64
  %184 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %arrayidx210 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %184, i64 %idxprom209
  %185 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx210, align 8
  %call211 = call i32 @fft(i32 %182, %struct._Fukusosuu* %185, i32 0)
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.203
  %186 = load i32, i32* %j, align 4
  %inc213 = add nsw i32 %186, 1
  store i32 %inc213, i32* %j, align 4
  br label %for.cond.200

for.end.214:                                      ; preds = %for.cond.200
  store i32 0, i32* %k, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.236, %for.end.214
  %187 = load i32, i32* %k, align 4
  %188 = load i32, i32* @n20or4or2, align 4
  %cmp216 = icmp slt i32 %187, %188
  br i1 %cmp216, label %for.body.218, label %for.end.238

for.body.218:                                     ; preds = %for.cond.215
  store i32 0, i32* %l, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.233, %for.body.218
  %189 = load i32, i32* %l, align 4
  %190 = load i32, i32* %nlen, align 4
  %cmp220 = icmp slt i32 %189, %190
  br i1 %cmp220, label %for.body.222, label %for.end.235

for.body.222:                                     ; preds = %for.cond.219
  %191 = load i32, i32* %k, align 4
  %idxprom223 = sext i32 %191 to i64
  %192 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.naiseki, align 8
  %arrayidx224 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %192, i64 %idxprom223
  %193 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx224, align 8
  %194 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %194 to i64
  %add.ptr = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %193, i64 %idx.ext
  %195 = load i32, i32* %k, align 4
  %idxprom225 = sext i32 %195 to i64
  %196 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector1, align 8
  %arrayidx226 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %196, i64 %idxprom225
  %197 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx226, align 8
  %198 = load i32, i32* %l, align 4
  %idx.ext227 = sext i32 %198 to i64
  %add.ptr228 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %197, i64 %idx.ext227
  %199 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %199 to i64
  %200 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.seqVector2, align 8
  %arrayidx230 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %200, i64 %idxprom229
  %201 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx230, align 8
  %202 = load i32, i32* %l, align 4
  %idx.ext231 = sext i32 %202 to i64
  %add.ptr232 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %201, i64 %idx.ext231
  call void @calcNaiseki(%struct._Fukusosuu* %add.ptr, %struct._Fukusosuu* %add.ptr228, %struct._Fukusosuu* %add.ptr232)
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.222
  %203 = load i32, i32* %l, align 4
  %inc234 = add nsw i32 %203, 1
  store i32 %inc234, i32* %l, align 4
  br label %for.cond.219

for.end.235:                                      ; preds = %for.cond.219
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.end.235
  %204 = load i32, i32* %k, align 4
  %inc237 = add nsw i32 %204, 1
  store i32 %inc237, i32* %k, align 4
  br label %for.cond.215

for.end.238:                                      ; preds = %for.cond.215
  store i32 0, i32* %l, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.272, %for.end.238
  %205 = load i32, i32* %l, align 4
  %206 = load i32, i32* %nlen, align 4
  %cmp240 = icmp slt i32 %205, %206
  br i1 %cmp240, label %for.body.242, label %for.end.274

for.body.242:                                     ; preds = %for.cond.239
  %207 = load i32, i32* %l, align 4
  %idxprom243 = sext i32 %207 to i64
  %208 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %arrayidx244 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %208, i64 %idxprom243
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx244, i32 0, i32 0
  store double 0.000000e+00, double* %R, align 8
  %209 = load i32, i32* %l, align 4
  %idxprom245 = sext i32 %209 to i64
  %210 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %arrayidx246 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %210, i64 %idxprom245
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx246, i32 0, i32 1
  store double 0.000000e+00, double* %I, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.269, %for.body.242
  %211 = load i32, i32* %k, align 4
  %212 = load i32, i32* @n20or4or2, align 4
  %cmp248 = icmp slt i32 %211, %212
  br i1 %cmp248, label %for.body.250, label %for.end.271

for.body.250:                                     ; preds = %for.cond.247
  %213 = load i32, i32* %l, align 4
  %idxprom251 = sext i32 %213 to i64
  %214 = load i32, i32* %k, align 4
  %idxprom252 = sext i32 %214 to i64
  %215 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.naiseki, align 8
  %arrayidx253 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %215, i64 %idxprom252
  %216 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %216, i64 %idxprom251
  %R255 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx254, i32 0, i32 0
  %217 = load double, double* %R255, align 8
  %218 = load i32, i32* %l, align 4
  %idxprom256 = sext i32 %218 to i64
  %219 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %arrayidx257 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %219, i64 %idxprom256
  %R258 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx257, i32 0, i32 0
  %220 = load double, double* %R258, align 8
  %add259 = fadd double %220, %217
  store double %add259, double* %R258, align 8
  %221 = load i32, i32* %l, align 4
  %idxprom260 = sext i32 %221 to i64
  %222 = load i32, i32* %k, align 4
  %idxprom261 = sext i32 %222 to i64
  %223 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_noudp.naiseki, align 8
  %arrayidx262 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %223, i64 %idxprom261
  %224 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %224, i64 %idxprom260
  %I264 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx263, i32 0, i32 1
  %225 = load double, double* %I264, align 8
  %226 = load i32, i32* %l, align 4
  %idxprom265 = sext i32 %226 to i64
  %227 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %arrayidx266 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %227, i64 %idxprom265
  %I267 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx266, i32 0, i32 1
  %228 = load double, double* %I267, align 8
  %add268 = fadd double %228, %225
  store double %add268, double* %I267, align 8
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.body.250
  %229 = load i32, i32* %k, align 4
  %inc270 = add nsw i32 %229, 1
  store i32 %inc270, i32* %k, align 4
  br label %for.cond.247

for.end.271:                                      ; preds = %for.cond.247
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.end.271
  %230 = load i32, i32* %l, align 4
  %inc273 = add nsw i32 %230, 1
  store i32 %inc273, i32* %l, align 4
  br label %for.cond.239

for.end.274:                                      ; preds = %for.cond.239
  %231 = load i32, i32* %nlen, align 4
  %sub = sub nsw i32 0, %231
  %232 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %call275 = call i32 @fft(i32 %sub, %struct._Fukusosuu* %232, i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.286, %for.end.274
  %233 = load i32, i32* %m, align 4
  %234 = load i32, i32* %nlen2, align 4
  %cmp277 = icmp sle i32 %233, %234
  br i1 %cmp277, label %for.body.279, label %for.end.288

for.body.279:                                     ; preds = %for.cond.276
  %235 = load i32, i32* %nlen2, align 4
  %236 = load i32, i32* %m, align 4
  %sub280 = sub nsw i32 %235, %236
  %idxprom281 = sext i32 %sub280 to i64
  %237 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %arrayidx282 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %237, i64 %idxprom281
  %R283 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx282, i32 0, i32 0
  %238 = load double, double* %R283, align 8
  %239 = load i32, i32* %m, align 4
  %idxprom284 = sext i32 %239 to i64
  %240 = load double*, double** @Falign_noudp.soukan, align 8
  %arrayidx285 = getelementptr inbounds double, double* %240, i64 %idxprom284
  store double %238, double* %arrayidx285, align 8
  br label %for.inc.286

for.inc.286:                                      ; preds = %for.body.279
  %241 = load i32, i32* %m, align 4
  %inc287 = add nsw i32 %241, 1
  store i32 %inc287, i32* %m, align 4
  br label %for.cond.276

for.end.288:                                      ; preds = %for.cond.276
  %242 = load i32, i32* %nlen2, align 4
  %add289 = add nsw i32 %242, 1
  store i32 %add289, i32* %m, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.301, %for.end.288
  %243 = load i32, i32* %m, align 4
  %244 = load i32, i32* %nlen, align 4
  %cmp291 = icmp slt i32 %243, %244
  br i1 %cmp291, label %for.body.293, label %for.end.303

for.body.293:                                     ; preds = %for.cond.290
  %245 = load i32, i32* %nlen, align 4
  %246 = load i32, i32* %nlen2, align 4
  %add294 = add nsw i32 %245, %246
  %247 = load i32, i32* %m, align 4
  %sub295 = sub nsw i32 %add294, %247
  %idxprom296 = sext i32 %sub295 to i64
  %248 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_noudp.naisekiNoWa, align 8
  %arrayidx297 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %248, i64 %idxprom296
  %R298 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx297, i32 0, i32 0
  %249 = load double, double* %R298, align 8
  %250 = load i32, i32* %m, align 4
  %idxprom299 = sext i32 %250 to i64
  %251 = load double*, double** @Falign_noudp.soukan, align 8
  %arrayidx300 = getelementptr inbounds double, double* %251, i64 %idxprom299
  store double %249, double* %arrayidx300, align 8
  br label %for.inc.301

for.inc.301:                                      ; preds = %for.body.293
  %252 = load i32, i32* %m, align 4
  %inc302 = add nsw i32 %252, 1
  store i32 %inc302, i32* %m, align 4
  br label %for.cond.290

for.end.303:                                      ; preds = %for.cond.290
  %253 = load i32*, i32** @Falign_noudp.kouho, align 8
  %254 = load double*, double** @Falign_noudp.soukan, align 8
  %255 = load i32, i32* %nlen, align 4
  %call304 = call i32 @getKouho(i32* %253, i32 100, double* %254, i32 %255)
  store i32 %call304, i32* %nkouho, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %for.end.303, %for.end.90
  store i32 0, i32* %count, align 4
  %256 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool306 = icmp ne i32 %256, 0
  br i1 %tobool306, label %if.then.307, label %if.else.309

if.then.307:                                      ; preds = %if.end.305
  store i32 1, i32* %maxk, align 4
  %257 = load i32*, i32** @Falign_noudp.kouho, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 0, i32* %arrayidx308, align 4
  br label %if.end.310

if.else.309:                                      ; preds = %if.end.305
  %258 = load i32, i32* %nkouho, align 4
  store i32 %258, i32* %maxk, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.307
  store i32 0, i32* %k, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.454, %if.end.310
  %259 = load i32, i32* %k, align 4
  %260 = load i32, i32* %maxk, align 4
  %cmp312 = icmp slt i32 %259, %260
  br i1 %cmp312, label %for.body.314, label %for.end.456

for.body.314:                                     ; preds = %for.cond.311
  %261 = load i32, i32* %k, align 4
  %idxprom315 = sext i32 %261 to i64
  %262 = load i32*, i32** @Falign_noudp.kouho, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %262, i64 %idxprom315
  %263 = load i32, i32* %arrayidx316, align 4
  store i32 %263, i32* %lag, align 4
  %264 = load i32, i32* %lag, align 4
  %265 = load i32, i32* %len1, align 4
  %sub317 = sub nsw i32 0, %265
  %cmp318 = icmp sle i32 %264, %sub317
  br i1 %cmp318, label %if.then.322, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.314
  %266 = load i32, i32* %len2, align 4
  %267 = load i32, i32* %lag, align 4
  %cmp320 = icmp sle i32 %266, %267
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %lor.lhs.false, %for.body.314
  br label %for.inc.454

if.end.323:                                       ; preds = %lor.lhs.false
  %268 = load i32, i32* %lag, align 4
  %269 = load i32, i32* %clus1.addr, align 4
  %270 = load i32, i32* %clus2.addr, align 4
  %271 = load i8**, i8*** %seq1.addr, align 8
  %272 = load i8**, i8*** %seq2.addr, align 8
  %273 = load i8**, i8*** @Falign_noudp.tmpptr1, align 8
  %274 = load i8**, i8*** @Falign_noudp.tmpptr2, align 8
  call void @zurasu2(i32 %268, i32 %269, i32 %270, i8** %271, i8** %272, i8** %273, i8** %274)
  %275 = load i32, i32* %clus1.addr, align 4
  %276 = load i32, i32* %clus2.addr, align 4
  %277 = load i8**, i8*** @Falign_noudp.tmpptr1, align 8
  %278 = load i8**, i8*** @Falign_noudp.tmpptr2, align 8
  %279 = load double*, double** %eff1.addr, align 8
  %280 = load double*, double** %eff2.addr, align 8
  %281 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %282 = load i32, i32* %count, align 4
  %idx.ext324 = sext i32 %282 to i64
  %add.ptr325 = getelementptr inbounds %struct._Segment, %struct._Segment* %281, i64 %idx.ext324
  %call326 = call i32 @alignableReagion(i32 %275, i32 %276, i8** %277, i8** %278, double* %279, double* %280, %struct._Segment* %add.ptr325)
  store i32 %call326, i32* %tmpint, align 4
  %283 = load i32, i32* %count, align 4
  %284 = load i32, i32* %tmpint, align 4
  %add327 = add nsw i32 %283, %284
  %cmp328 = icmp sgt i32 %add327, 99997
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.323
  call void @ErrorExit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %if.end.323
  %285 = load i32, i32* %tmpint, align 4
  %cmp332 = icmp eq i32 %285, 0
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.331
  br label %for.end.456

if.end.335:                                       ; preds = %if.end.331
  br label %while.cond.336

while.cond.336:                                   ; preds = %if.end.442, %if.end.335
  %286 = load i32, i32* %tmpint, align 4
  %dec = add nsw i32 %286, -1
  store i32 %dec, i32* %tmpint, align 4
  %cmp337 = icmp sgt i32 %286, 0
  br i1 %cmp337, label %while.body.339, label %while.end.453

while.body.339:                                   ; preds = %while.cond.336
  %287 = load i32, i32* %lag, align 4
  %cmp340 = icmp sgt i32 %287, 0
  br i1 %cmp340, label %if.then.342, label %if.else.390

if.then.342:                                      ; preds = %while.body.339
  %288 = load i32, i32* %count, align 4
  %idxprom343 = sext i32 %288 to i64
  %289 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx344 = getelementptr inbounds %struct._Segment, %struct._Segment* %289, i64 %idxprom343
  %start = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx344, i32 0, i32 0
  %290 = load i32, i32* %start, align 4
  %291 = load i32, i32* %count, align 4
  %idxprom345 = sext i32 %291 to i64
  %292 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx346 = getelementptr inbounds %struct._Segment, %struct._Segment* %292, i64 %idxprom345
  %start347 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx346, i32 0, i32 0
  store i32 %290, i32* %start347, align 4
  %293 = load i32, i32* %count, align 4
  %idxprom348 = sext i32 %293 to i64
  %294 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx349 = getelementptr inbounds %struct._Segment, %struct._Segment* %294, i64 %idxprom348
  %end = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx349, i32 0, i32 1
  %295 = load i32, i32* %end, align 4
  %296 = load i32, i32* %count, align 4
  %idxprom350 = sext i32 %296 to i64
  %297 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx351 = getelementptr inbounds %struct._Segment, %struct._Segment* %297, i64 %idxprom350
  %end352 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx351, i32 0, i32 1
  store i32 %295, i32* %end352, align 4
  %298 = load i32, i32* %count, align 4
  %idxprom353 = sext i32 %298 to i64
  %299 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx354 = getelementptr inbounds %struct._Segment, %struct._Segment* %299, i64 %idxprom353
  %center = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx354, i32 0, i32 2
  %300 = load i32, i32* %center, align 4
  %301 = load i32, i32* %count, align 4
  %idxprom355 = sext i32 %301 to i64
  %302 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx356 = getelementptr inbounds %struct._Segment, %struct._Segment* %302, i64 %idxprom355
  %center357 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx356, i32 0, i32 2
  store i32 %300, i32* %center357, align 4
  %303 = load i32, i32* %count, align 4
  %idxprom358 = sext i32 %303 to i64
  %304 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx359 = getelementptr inbounds %struct._Segment, %struct._Segment* %304, i64 %idxprom358
  %score = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx359, i32 0, i32 3
  %305 = load double, double* %score, align 8
  %306 = load i32, i32* %count, align 4
  %idxprom360 = sext i32 %306 to i64
  %307 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx361 = getelementptr inbounds %struct._Segment, %struct._Segment* %307, i64 %idxprom360
  %score362 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx361, i32 0, i32 3
  store double %305, double* %score362, align 8
  %308 = load i32, i32* %count, align 4
  %idxprom363 = sext i32 %308 to i64
  %309 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx364 = getelementptr inbounds %struct._Segment, %struct._Segment* %309, i64 %idxprom363
  %start365 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx364, i32 0, i32 0
  %310 = load i32, i32* %start365, align 4
  %311 = load i32, i32* %lag, align 4
  %add366 = add nsw i32 %310, %311
  %312 = load i32, i32* %count, align 4
  %idxprom367 = sext i32 %312 to i64
  %313 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx368 = getelementptr inbounds %struct._Segment, %struct._Segment* %313, i64 %idxprom367
  %start369 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx368, i32 0, i32 0
  store i32 %add366, i32* %start369, align 4
  %314 = load i32, i32* %count, align 4
  %idxprom370 = sext i32 %314 to i64
  %315 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx371 = getelementptr inbounds %struct._Segment, %struct._Segment* %315, i64 %idxprom370
  %end372 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx371, i32 0, i32 1
  %316 = load i32, i32* %end372, align 4
  %317 = load i32, i32* %lag, align 4
  %add373 = add nsw i32 %316, %317
  %318 = load i32, i32* %count, align 4
  %idxprom374 = sext i32 %318 to i64
  %319 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx375 = getelementptr inbounds %struct._Segment, %struct._Segment* %319, i64 %idxprom374
  %end376 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx375, i32 0, i32 1
  store i32 %add373, i32* %end376, align 4
  %320 = load i32, i32* %count, align 4
  %idxprom377 = sext i32 %320 to i64
  %321 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx378 = getelementptr inbounds %struct._Segment, %struct._Segment* %321, i64 %idxprom377
  %center379 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx378, i32 0, i32 2
  %322 = load i32, i32* %center379, align 4
  %323 = load i32, i32* %lag, align 4
  %add380 = add nsw i32 %322, %323
  %324 = load i32, i32* %count, align 4
  %idxprom381 = sext i32 %324 to i64
  %325 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx382 = getelementptr inbounds %struct._Segment, %struct._Segment* %325, i64 %idxprom381
  %center383 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx382, i32 0, i32 2
  store i32 %add380, i32* %center383, align 4
  %326 = load i32, i32* %count, align 4
  %idxprom384 = sext i32 %326 to i64
  %327 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx385 = getelementptr inbounds %struct._Segment, %struct._Segment* %327, i64 %idxprom384
  %score386 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx385, i32 0, i32 3
  %328 = load double, double* %score386, align 8
  %329 = load i32, i32* %count, align 4
  %idxprom387 = sext i32 %329 to i64
  %330 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx388 = getelementptr inbounds %struct._Segment, %struct._Segment* %330, i64 %idxprom387
  %score389 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx388, i32 0, i32 3
  store double %328, double* %score389, align 8
  br label %if.end.442

if.else.390:                                      ; preds = %while.body.339
  %331 = load i32, i32* %count, align 4
  %idxprom391 = sext i32 %331 to i64
  %332 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx392 = getelementptr inbounds %struct._Segment, %struct._Segment* %332, i64 %idxprom391
  %start393 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx392, i32 0, i32 0
  %333 = load i32, i32* %start393, align 4
  %334 = load i32, i32* %lag, align 4
  %sub394 = sub nsw i32 %333, %334
  %335 = load i32, i32* %count, align 4
  %idxprom395 = sext i32 %335 to i64
  %336 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx396 = getelementptr inbounds %struct._Segment, %struct._Segment* %336, i64 %idxprom395
  %start397 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx396, i32 0, i32 0
  store i32 %sub394, i32* %start397, align 4
  %337 = load i32, i32* %count, align 4
  %idxprom398 = sext i32 %337 to i64
  %338 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx399 = getelementptr inbounds %struct._Segment, %struct._Segment* %338, i64 %idxprom398
  %end400 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx399, i32 0, i32 1
  %339 = load i32, i32* %end400, align 4
  %340 = load i32, i32* %lag, align 4
  %sub401 = sub nsw i32 %339, %340
  %341 = load i32, i32* %count, align 4
  %idxprom402 = sext i32 %341 to i64
  %342 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx403 = getelementptr inbounds %struct._Segment, %struct._Segment* %342, i64 %idxprom402
  %end404 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx403, i32 0, i32 1
  store i32 %sub401, i32* %end404, align 4
  %343 = load i32, i32* %count, align 4
  %idxprom405 = sext i32 %343 to i64
  %344 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx406 = getelementptr inbounds %struct._Segment, %struct._Segment* %344, i64 %idxprom405
  %center407 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx406, i32 0, i32 2
  %345 = load i32, i32* %center407, align 4
  %346 = load i32, i32* %lag, align 4
  %sub408 = sub nsw i32 %345, %346
  %347 = load i32, i32* %count, align 4
  %idxprom409 = sext i32 %347 to i64
  %348 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx410 = getelementptr inbounds %struct._Segment, %struct._Segment* %348, i64 %idxprom409
  %center411 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx410, i32 0, i32 2
  store i32 %sub408, i32* %center411, align 4
  %349 = load i32, i32* %count, align 4
  %idxprom412 = sext i32 %349 to i64
  %350 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx413 = getelementptr inbounds %struct._Segment, %struct._Segment* %350, i64 %idxprom412
  %score414 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx413, i32 0, i32 3
  %351 = load double, double* %score414, align 8
  %352 = load i32, i32* %count, align 4
  %idxprom415 = sext i32 %352 to i64
  %353 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx416 = getelementptr inbounds %struct._Segment, %struct._Segment* %353, i64 %idxprom415
  %score417 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx416, i32 0, i32 3
  store double %351, double* %score417, align 8
  %354 = load i32, i32* %count, align 4
  %idxprom418 = sext i32 %354 to i64
  %355 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx419 = getelementptr inbounds %struct._Segment, %struct._Segment* %355, i64 %idxprom418
  %start420 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx419, i32 0, i32 0
  %356 = load i32, i32* %start420, align 4
  %357 = load i32, i32* %count, align 4
  %idxprom421 = sext i32 %357 to i64
  %358 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx422 = getelementptr inbounds %struct._Segment, %struct._Segment* %358, i64 %idxprom421
  %start423 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx422, i32 0, i32 0
  store i32 %356, i32* %start423, align 4
  %359 = load i32, i32* %count, align 4
  %idxprom424 = sext i32 %359 to i64
  %360 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx425 = getelementptr inbounds %struct._Segment, %struct._Segment* %360, i64 %idxprom424
  %end426 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx425, i32 0, i32 1
  %361 = load i32, i32* %end426, align 4
  %362 = load i32, i32* %count, align 4
  %idxprom427 = sext i32 %362 to i64
  %363 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx428 = getelementptr inbounds %struct._Segment, %struct._Segment* %363, i64 %idxprom427
  %end429 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx428, i32 0, i32 1
  store i32 %361, i32* %end429, align 4
  %364 = load i32, i32* %count, align 4
  %idxprom430 = sext i32 %364 to i64
  %365 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx431 = getelementptr inbounds %struct._Segment, %struct._Segment* %365, i64 %idxprom430
  %center432 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx431, i32 0, i32 2
  %366 = load i32, i32* %center432, align 4
  %367 = load i32, i32* %count, align 4
  %idxprom433 = sext i32 %367 to i64
  %368 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx434 = getelementptr inbounds %struct._Segment, %struct._Segment* %368, i64 %idxprom433
  %center435 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx434, i32 0, i32 2
  store i32 %366, i32* %center435, align 4
  %369 = load i32, i32* %count, align 4
  %idxprom436 = sext i32 %369 to i64
  %370 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment, align 8
  %arrayidx437 = getelementptr inbounds %struct._Segment, %struct._Segment* %370, i64 %idxprom436
  %score438 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx437, i32 0, i32 3
  %371 = load double, double* %score438, align 8
  %372 = load i32, i32* %count, align 4
  %idxprom439 = sext i32 %372 to i64
  %373 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx440 = getelementptr inbounds %struct._Segment, %struct._Segment* %373, i64 %idxprom439
  %score441 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx440, i32 0, i32 3
  store double %371, double* %score441, align 8
  br label %if.end.442

if.end.442:                                       ; preds = %if.else.390, %if.then.342
  %374 = load i32, i32* %count, align 4
  %idxprom443 = sext i32 %374 to i64
  %375 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx444 = getelementptr inbounds %struct._Segment, %struct._Segment* %375, i64 %idxprom443
  %376 = load i32, i32* %count, align 4
  %idxprom445 = sext i32 %376 to i64
  %377 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx446 = getelementptr inbounds %struct._Segment, %struct._Segment* %377, i64 %idxprom445
  %pair = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx446, i32 0, i32 6
  store %struct._Segment* %arrayidx444, %struct._Segment** %pair, align 8
  %378 = load i32, i32* %count, align 4
  %idxprom447 = sext i32 %378 to i64
  %379 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx448 = getelementptr inbounds %struct._Segment, %struct._Segment* %379, i64 %idxprom447
  %380 = load i32, i32* %count, align 4
  %idxprom449 = sext i32 %380 to i64
  %381 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx450 = getelementptr inbounds %struct._Segment, %struct._Segment* %381, i64 %idxprom449
  %pair451 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx450, i32 0, i32 6
  store %struct._Segment* %arrayidx448, %struct._Segment** %pair451, align 8
  %382 = load i32, i32* %count, align 4
  %inc452 = add nsw i32 %382, 1
  store i32 %inc452, i32* %count, align 4
  br label %while.cond.336

while.end.453:                                    ; preds = %while.cond.336
  br label %for.inc.454

for.inc.454:                                      ; preds = %while.end.453, %if.then.322
  %383 = load i32, i32* %k, align 4
  %inc455 = add nsw i32 %383, 1
  store i32 %inc455, i32* %k, align 4
  br label %for.cond.311

for.end.456:                                      ; preds = %if.then.334, %for.cond.311
  %384 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool457 = icmp ne i32 %384, 0
  br i1 %tobool457, label %if.end.460, label %if.then.458

if.then.458:                                      ; preds = %for.end.456
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %386 = load i32, i32* %count, align 4
  %call459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %385, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 %386)
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.458, %for.end.456
  %387 = load i32, i32* %count, align 4
  %tobool461 = icmp ne i32 %387, 0
  br i1 %tobool461, label %if.end.465, label %land.lhs.true.462

land.lhs.true.462:                                ; preds = %if.end.460
  %388 = load i32, i32* @fftNoAnchStop, align 4
  %tobool463 = icmp ne i32 %388, 0
  br i1 %tobool463, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %land.lhs.true.462
  call void @ErrorExit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %land.lhs.true.462, %if.end.460
  store i32 0, i32* %i, align 4
  br label %for.cond.466

for.cond.466:                                     ; preds = %for.inc.478, %if.end.465
  %389 = load i32, i32* %i, align 4
  %390 = load i32, i32* %count, align 4
  %cmp467 = icmp slt i32 %389, %390
  br i1 %cmp467, label %for.body.469, label %for.end.480

for.body.469:                                     ; preds = %for.cond.466
  %391 = load i32, i32* %i, align 4
  %idxprom470 = sext i32 %391 to i64
  %392 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment1, align 8
  %arrayidx471 = getelementptr inbounds %struct._Segment, %struct._Segment* %392, i64 %idxprom470
  %393 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %393 to i64
  %394 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx473 = getelementptr inbounds %struct._Segment*, %struct._Segment** %394, i64 %idxprom472
  store %struct._Segment* %arrayidx471, %struct._Segment** %arrayidx473, align 8
  %395 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %395 to i64
  %396 = load %struct._Segment*, %struct._Segment** @Falign_noudp.segment2, align 8
  %arrayidx475 = getelementptr inbounds %struct._Segment, %struct._Segment* %396, i64 %idxprom474
  %397 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %397 to i64
  %398 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg2, align 8
  %arrayidx477 = getelementptr inbounds %struct._Segment*, %struct._Segment** %398, i64 %idxprom476
  store %struct._Segment* %arrayidx475, %struct._Segment** %arrayidx477, align 8
  br label %for.inc.478

for.inc.478:                                      ; preds = %for.body.469
  %399 = load i32, i32* %i, align 4
  %inc479 = add nsw i32 %399, 1
  store i32 %inc479, i32* %i, align 4
  br label %for.cond.466

for.end.480:                                      ; preds = %for.cond.466
  %400 = load i32, i32* %count, align 4
  %sub481 = sub nsw i32 %400, 1
  %401 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  call void @mymergesort(i32 0, i32 %sub481, %struct._Segment** %401)
  %402 = load i32, i32* %count, align 4
  %sub482 = sub nsw i32 %402, 1
  %403 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg2, align 8
  call void @mymergesort(i32 0, i32 %sub482, %struct._Segment** %403)
  store i32 0, i32* %i, align 4
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.489, %for.end.480
  %404 = load i32, i32* %i, align 4
  %405 = load i32, i32* %count, align 4
  %cmp484 = icmp slt i32 %404, %405
  br i1 %cmp484, label %for.body.486, label %for.end.491

for.body.486:                                     ; preds = %for.cond.483
  %406 = load i32, i32* %i, align 4
  %407 = load i32, i32* %i, align 4
  %idxprom487 = sext i32 %407 to i64
  %408 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx488 = getelementptr inbounds %struct._Segment*, %struct._Segment** %408, i64 %idxprom487
  %409 = load %struct._Segment*, %struct._Segment** %arrayidx488, align 8
  %number = getelementptr inbounds %struct._Segment, %struct._Segment* %409, i32 0, i32 7
  store i32 %406, i32* %number, align 4
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.body.486
  %410 = load i32, i32* %i, align 4
  %inc490 = add nsw i32 %410, 1
  store i32 %inc490, i32* %i, align 4
  br label %for.cond.483

for.end.491:                                      ; preds = %for.cond.483
  store i32 0, i32* %i, align 4
  br label %for.cond.492

for.cond.492:                                     ; preds = %for.inc.499, %for.end.491
  %411 = load i32, i32* %i, align 4
  %412 = load i32, i32* %count, align 4
  %cmp493 = icmp slt i32 %411, %412
  br i1 %cmp493, label %for.body.495, label %for.end.501

for.body.495:                                     ; preds = %for.cond.492
  %413 = load i32, i32* %i, align 4
  %414 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %414 to i64
  %415 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg2, align 8
  %arrayidx497 = getelementptr inbounds %struct._Segment*, %struct._Segment** %415, i64 %idxprom496
  %416 = load %struct._Segment*, %struct._Segment** %arrayidx497, align 8
  %number498 = getelementptr inbounds %struct._Segment, %struct._Segment* %416, i32 0, i32 7
  store i32 %413, i32* %number498, align 4
  br label %for.inc.499

for.inc.499:                                      ; preds = %for.body.495
  %417 = load i32, i32* %i, align 4
  %inc500 = add nsw i32 %417, 1
  store i32 %inc500, i32* %i, align 4
  br label %for.cond.492

for.end.501:                                      ; preds = %for.cond.492
  %418 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool502 = icmp ne i32 %418, 0
  br i1 %tobool502, label %if.then.503, label %if.else.532

if.then.503:                                      ; preds = %for.end.501
  store i32 0, i32* %i, align 4
  br label %for.cond.504

for.cond.504:                                     ; preds = %for.inc.520, %if.then.503
  %419 = load i32, i32* %i, align 4
  %420 = load i32, i32* %count, align 4
  %cmp505 = icmp slt i32 %419, %420
  br i1 %cmp505, label %for.body.507, label %for.end.522

for.body.507:                                     ; preds = %for.cond.504
  %421 = load i32, i32* %i, align 4
  %idxprom508 = sext i32 %421 to i64
  %422 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx509 = getelementptr inbounds %struct._Segment*, %struct._Segment** %422, i64 %idxprom508
  %423 = load %struct._Segment*, %struct._Segment** %arrayidx509, align 8
  %center510 = getelementptr inbounds %struct._Segment, %struct._Segment* %423, i32 0, i32 2
  %424 = load i32, i32* %center510, align 4
  %425 = load i32, i32* %i, align 4
  %add511 = add nsw i32 %425, 1
  %idxprom512 = sext i32 %add511 to i64
  %426 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %426, i64 %idxprom512
  store i32 %424, i32* %arrayidx513, align 4
  %427 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %427 to i64
  %428 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg2, align 8
  %arrayidx515 = getelementptr inbounds %struct._Segment*, %struct._Segment** %428, i64 %idxprom514
  %429 = load %struct._Segment*, %struct._Segment** %arrayidx515, align 8
  %center516 = getelementptr inbounds %struct._Segment, %struct._Segment* %429, i32 0, i32 2
  %430 = load i32, i32* %center516, align 4
  %431 = load i32, i32* %i, align 4
  %add517 = add nsw i32 %431, 1
  %idxprom518 = sext i32 %add517 to i64
  %432 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %432, i64 %idxprom518
  store i32 %430, i32* %arrayidx519, align 4
  br label %for.inc.520

for.inc.520:                                      ; preds = %for.body.507
  %433 = load i32, i32* %i, align 4
  %inc521 = add nsw i32 %433, 1
  store i32 %inc521, i32* %i, align 4
  br label %for.cond.504

for.end.522:                                      ; preds = %for.cond.504
  %434 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %434, i64 0
  store i32 0, i32* %arrayidx523, align 4
  %435 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx524 = getelementptr inbounds i32, i32* %435, i64 0
  store i32 0, i32* %arrayidx524, align 4
  %436 = load i32, i32* %len1, align 4
  %437 = load i32, i32* %count, align 4
  %add525 = add nsw i32 %437, 1
  %idxprom526 = sext i32 %add525 to i64
  %438 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx527 = getelementptr inbounds i32, i32* %438, i64 %idxprom526
  store i32 %436, i32* %arrayidx527, align 4
  %439 = load i32, i32* %len2, align 4
  %440 = load i32, i32* %count, align 4
  %add528 = add nsw i32 %440, 1
  %idxprom529 = sext i32 %add528 to i64
  %441 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx530 = getelementptr inbounds i32, i32* %441, i64 %idxprom529
  store i32 %439, i32* %arrayidx530, align 4
  %442 = load i32, i32* %count, align 4
  %add531 = add nsw i32 %442, 2
  store i32 %add531, i32* %count, align 4
  br label %if.end.625

if.else.532:                                      ; preds = %for.end.501
  %443 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %443, i64 0
  store i32 0, i32* %arrayidx533, align 4
  %444 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx534 = getelementptr inbounds i32, i32* %444, i64 0
  store i32 0, i32* %arrayidx534, align 4
  store i32 0, i32* %count0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.535

for.cond.535:                                     ; preds = %for.inc.615, %if.else.532
  %445 = load i32, i32* %i, align 4
  %446 = load i32, i32* %count, align 4
  %cmp536 = icmp slt i32 %445, %446
  br i1 %cmp536, label %for.body.538, label %for.end.617

for.body.538:                                     ; preds = %for.cond.535
  %447 = load i32, i32* %i, align 4
  %idxprom539 = sext i32 %447 to i64
  %448 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx540 = getelementptr inbounds %struct._Segment*, %struct._Segment** %448, i64 %idxprom539
  %449 = load %struct._Segment*, %struct._Segment** %arrayidx540, align 8
  %center541 = getelementptr inbounds %struct._Segment, %struct._Segment* %449, i32 0, i32 2
  %450 = load i32, i32* %center541, align 4
  %451 = load i32, i32* %count0, align 4
  %idxprom542 = sext i32 %451 to i64
  %452 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %452, i64 %idxprom542
  %453 = load i32, i32* %arrayidx543, align 4
  %cmp544 = icmp sgt i32 %450, %453
  br i1 %cmp544, label %land.lhs.true.546, label %if.else.568

land.lhs.true.546:                                ; preds = %for.body.538
  %454 = load i32, i32* %i, align 4
  %idxprom547 = sext i32 %454 to i64
  %455 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx548 = getelementptr inbounds %struct._Segment*, %struct._Segment** %455, i64 %idxprom547
  %456 = load %struct._Segment*, %struct._Segment** %arrayidx548, align 8
  %pair549 = getelementptr inbounds %struct._Segment, %struct._Segment* %456, i32 0, i32 6
  %457 = load %struct._Segment*, %struct._Segment** %pair549, align 8
  %center550 = getelementptr inbounds %struct._Segment, %struct._Segment* %457, i32 0, i32 2
  %458 = load i32, i32* %center550, align 4
  %459 = load i32, i32* %count0, align 4
  %idxprom551 = sext i32 %459 to i64
  %460 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx552 = getelementptr inbounds i32, i32* %460, i64 %idxprom551
  %461 = load i32, i32* %arrayidx552, align 4
  %cmp553 = icmp sgt i32 %458, %461
  br i1 %cmp553, label %if.then.555, label %if.else.568

if.then.555:                                      ; preds = %land.lhs.true.546
  %462 = load i32, i32* %count0, align 4
  %inc556 = add nsw i32 %462, 1
  store i32 %inc556, i32* %count0, align 4
  %463 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %463 to i64
  %464 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx558 = getelementptr inbounds %struct._Segment*, %struct._Segment** %464, i64 %idxprom557
  %465 = load %struct._Segment*, %struct._Segment** %arrayidx558, align 8
  %center559 = getelementptr inbounds %struct._Segment, %struct._Segment* %465, i32 0, i32 2
  %466 = load i32, i32* %center559, align 4
  %467 = load i32, i32* %count0, align 4
  %idxprom560 = sext i32 %467 to i64
  %468 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %468, i64 %idxprom560
  store i32 %466, i32* %arrayidx561, align 4
  %469 = load i32, i32* %i, align 4
  %idxprom562 = sext i32 %469 to i64
  %470 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx563 = getelementptr inbounds %struct._Segment*, %struct._Segment** %470, i64 %idxprom562
  %471 = load %struct._Segment*, %struct._Segment** %arrayidx563, align 8
  %pair564 = getelementptr inbounds %struct._Segment, %struct._Segment* %471, i32 0, i32 6
  %472 = load %struct._Segment*, %struct._Segment** %pair564, align 8
  %center565 = getelementptr inbounds %struct._Segment, %struct._Segment* %472, i32 0, i32 2
  %473 = load i32, i32* %center565, align 4
  %474 = load i32, i32* %count0, align 4
  %idxprom566 = sext i32 %474 to i64
  %475 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx567 = getelementptr inbounds i32, i32* %475, i64 %idxprom566
  store i32 %473, i32* %arrayidx567, align 4
  br label %if.end.614

if.else.568:                                      ; preds = %land.lhs.true.546, %for.body.538
  %476 = load i32, i32* %i, align 4
  %tobool569 = icmp ne i32 %476, 0
  br i1 %tobool569, label %land.lhs.true.570, label %if.end.613

land.lhs.true.570:                                ; preds = %if.else.568
  %477 = load i32, i32* %i, align 4
  %idxprom571 = sext i32 %477 to i64
  %478 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx572 = getelementptr inbounds %struct._Segment*, %struct._Segment** %478, i64 %idxprom571
  %479 = load %struct._Segment*, %struct._Segment** %arrayidx572, align 8
  %score573 = getelementptr inbounds %struct._Segment, %struct._Segment* %479, i32 0, i32 3
  %480 = load double, double* %score573, align 8
  %481 = load i32, i32* %i, align 4
  %sub574 = sub nsw i32 %481, 1
  %idxprom575 = sext i32 %sub574 to i64
  %482 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx576 = getelementptr inbounds %struct._Segment*, %struct._Segment** %482, i64 %idxprom575
  %483 = load %struct._Segment*, %struct._Segment** %arrayidx576, align 8
  %score577 = getelementptr inbounds %struct._Segment, %struct._Segment* %483, i32 0, i32 3
  %484 = load double, double* %score577, align 8
  %cmp578 = fcmp ogt double %480, %484
  br i1 %cmp578, label %if.then.580, label %if.end.613

if.then.580:                                      ; preds = %land.lhs.true.570
  %485 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %485 to i64
  %486 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx582 = getelementptr inbounds %struct._Segment*, %struct._Segment** %486, i64 %idxprom581
  %487 = load %struct._Segment*, %struct._Segment** %arrayidx582, align 8
  %center583 = getelementptr inbounds %struct._Segment, %struct._Segment* %487, i32 0, i32 2
  %488 = load i32, i32* %center583, align 4
  %489 = load i32, i32* %count0, align 4
  %sub584 = sub nsw i32 %489, 1
  %idxprom585 = sext i32 %sub584 to i64
  %490 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx586 = getelementptr inbounds i32, i32* %490, i64 %idxprom585
  %491 = load i32, i32* %arrayidx586, align 4
  %cmp587 = icmp sgt i32 %488, %491
  br i1 %cmp587, label %land.lhs.true.589, label %if.else.611

land.lhs.true.589:                                ; preds = %if.then.580
  %492 = load i32, i32* %i, align 4
  %idxprom590 = sext i32 %492 to i64
  %493 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx591 = getelementptr inbounds %struct._Segment*, %struct._Segment** %493, i64 %idxprom590
  %494 = load %struct._Segment*, %struct._Segment** %arrayidx591, align 8
  %pair592 = getelementptr inbounds %struct._Segment, %struct._Segment* %494, i32 0, i32 6
  %495 = load %struct._Segment*, %struct._Segment** %pair592, align 8
  %center593 = getelementptr inbounds %struct._Segment, %struct._Segment* %495, i32 0, i32 2
  %496 = load i32, i32* %center593, align 4
  %497 = load i32, i32* %count0, align 4
  %sub594 = sub nsw i32 %497, 1
  %idxprom595 = sext i32 %sub594 to i64
  %498 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx596 = getelementptr inbounds i32, i32* %498, i64 %idxprom595
  %499 = load i32, i32* %arrayidx596, align 4
  %cmp597 = icmp sgt i32 %496, %499
  br i1 %cmp597, label %if.then.599, label %if.else.611

if.then.599:                                      ; preds = %land.lhs.true.589
  %500 = load i32, i32* %i, align 4
  %idxprom600 = sext i32 %500 to i64
  %501 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx601 = getelementptr inbounds %struct._Segment*, %struct._Segment** %501, i64 %idxprom600
  %502 = load %struct._Segment*, %struct._Segment** %arrayidx601, align 8
  %center602 = getelementptr inbounds %struct._Segment, %struct._Segment* %502, i32 0, i32 2
  %503 = load i32, i32* %center602, align 4
  %504 = load i32, i32* %count0, align 4
  %idxprom603 = sext i32 %504 to i64
  %505 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx604 = getelementptr inbounds i32, i32* %505, i64 %idxprom603
  store i32 %503, i32* %arrayidx604, align 4
  %506 = load i32, i32* %i, align 4
  %idxprom605 = sext i32 %506 to i64
  %507 = load %struct._Segment**, %struct._Segment*** @Falign_noudp.sortedseg1, align 8
  %arrayidx606 = getelementptr inbounds %struct._Segment*, %struct._Segment** %507, i64 %idxprom605
  %508 = load %struct._Segment*, %struct._Segment** %arrayidx606, align 8
  %pair607 = getelementptr inbounds %struct._Segment, %struct._Segment* %508, i32 0, i32 6
  %509 = load %struct._Segment*, %struct._Segment** %pair607, align 8
  %center608 = getelementptr inbounds %struct._Segment, %struct._Segment* %509, i32 0, i32 2
  %510 = load i32, i32* %center608, align 4
  %511 = load i32, i32* %count0, align 4
  %idxprom609 = sext i32 %511 to i64
  %512 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx610 = getelementptr inbounds i32, i32* %512, i64 %idxprom609
  store i32 %510, i32* %arrayidx610, align 4
  br label %if.end.612

if.else.611:                                      ; preds = %land.lhs.true.589, %if.then.580
  br label %if.end.612

if.end.612:                                       ; preds = %if.else.611, %if.then.599
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612, %land.lhs.true.570, %if.else.568
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.then.555
  br label %for.inc.615

for.inc.615:                                      ; preds = %if.end.614
  %513 = load i32, i32* %i, align 4
  %inc616 = add nsw i32 %513, 1
  store i32 %inc616, i32* %i, align 4
  br label %for.cond.535

for.end.617:                                      ; preds = %for.cond.535
  %514 = load i32, i32* %len1, align 4
  %515 = load i32, i32* %count0, align 4
  %add618 = add nsw i32 %515, 1
  %idxprom619 = sext i32 %add618 to i64
  %516 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx620 = getelementptr inbounds i32, i32* %516, i64 %idxprom619
  store i32 %514, i32* %arrayidx620, align 4
  %517 = load i32, i32* %len2, align 4
  %518 = load i32, i32* %count0, align 4
  %add621 = add nsw i32 %518, 1
  %idxprom622 = sext i32 %add621 to i64
  %519 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx623 = getelementptr inbounds i32, i32* %519, i64 %idxprom622
  store i32 %517, i32* %arrayidx623, align 4
  %520 = load i32, i32* %count0, align 4
  %add624 = add nsw i32 %520, 2
  store i32 %add624, i32* %count, align 4
  %521 = load i32, i32* %count, align 4
  store i32 %521, i32* %count0, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %for.end.617, %for.end.522
  store i32 0, i32* %totallen, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.626

for.cond.626:                                     ; preds = %for.inc.633, %if.end.625
  %522 = load i32, i32* %j, align 4
  %523 = load i32, i32* %clus1.addr, align 4
  %cmp627 = icmp slt i32 %522, %523
  br i1 %cmp627, label %for.body.629, label %for.end.635

for.body.629:                                     ; preds = %for.cond.626
  %524 = load i32, i32* %j, align 4
  %idxprom630 = sext i32 %524 to i64
  %525 = load i8**, i8*** @Falign_noudp.result1, align 8
  %arrayidx631 = getelementptr inbounds i8*, i8** %525, i64 %idxprom630
  %526 = load i8*, i8** %arrayidx631, align 8
  %arrayidx632 = getelementptr inbounds i8, i8* %526, i64 0
  store i8 0, i8* %arrayidx632, align 1
  br label %for.inc.633

for.inc.633:                                      ; preds = %for.body.629
  %527 = load i32, i32* %j, align 4
  %inc634 = add nsw i32 %527, 1
  store i32 %inc634, i32* %j, align 4
  br label %for.cond.626

for.end.635:                                      ; preds = %for.cond.626
  store i32 0, i32* %j, align 4
  br label %for.cond.636

for.cond.636:                                     ; preds = %for.inc.643, %for.end.635
  %528 = load i32, i32* %j, align 4
  %529 = load i32, i32* %clus2.addr, align 4
  %cmp637 = icmp slt i32 %528, %529
  br i1 %cmp637, label %for.body.639, label %for.end.645

for.body.639:                                     ; preds = %for.cond.636
  %530 = load i32, i32* %j, align 4
  %idxprom640 = sext i32 %530 to i64
  %531 = load i8**, i8*** @Falign_noudp.result2, align 8
  %arrayidx641 = getelementptr inbounds i8*, i8** %531, i64 %idxprom640
  %532 = load i8*, i8** %arrayidx641, align 8
  %arrayidx642 = getelementptr inbounds i8, i8* %532, i64 0
  store i8 0, i8* %arrayidx642, align 1
  br label %for.inc.643

for.inc.643:                                      ; preds = %for.body.639
  %533 = load i32, i32* %j, align 4
  %inc644 = add nsw i32 %533, 1
  store i32 %inc644, i32* %j, align 4
  br label %for.cond.636

for.end.645:                                      ; preds = %for.cond.636
  store float 0.000000e+00, float* %totalscore, align 4
  %534 = load i32*, i32** %fftlog.addr, align 8
  store i32 -1, i32* %534, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.646

for.cond.646:                                     ; preds = %for.inc.848, %for.end.645
  %535 = load i32, i32* %i, align 4
  %536 = load i32, i32* %count, align 4
  %sub647 = sub nsw i32 %536, 1
  %cmp648 = icmp slt i32 %535, %sub647
  br i1 %cmp648, label %for.body.650, label %for.end.850

for.body.650:                                     ; preds = %for.cond.646
  %537 = load i32*, i32** %fftlog.addr, align 8
  %538 = load i32, i32* %537, align 4
  %add651 = add nsw i32 %538, 1
  store i32 %add651, i32* %537, align 4
  %539 = load i32, i32* %i, align 4
  %idxprom652 = sext i32 %539 to i64
  %540 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx653 = getelementptr inbounds i32, i32* %540, i64 %idxprom652
  %541 = load i32, i32* %arrayidx653, align 4
  %tobool654 = icmp ne i32 %541, 0
  br i1 %tobool654, label %if.then.655, label %if.else.658

if.then.655:                                      ; preds = %for.body.650
  %542 = load i8*, i8** @Falign_noudp.sgap1, align 8
  %543 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  %544 = load i32, i32* %nlen, align 4
  %sub656 = sub nsw i32 %544, 1
  %545 = load i32, i32* %clus1.addr, align 4
  call void @getkyokaigap(i8* %542, i8** %543, i32 %sub656, i32 %545)
  %546 = load i8*, i8** @Falign_noudp.sgap2, align 8
  %547 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  %548 = load i32, i32* %nlen, align 4
  %sub657 = sub nsw i32 %548, 1
  %549 = load i32, i32* %clus2.addr, align 4
  call void @getkyokaigap(i8* %546, i8** %547, i32 %sub657, i32 %549)
  br label %if.end.677

if.else.658:                                      ; preds = %for.body.650
  store i32 0, i32* %j, align 4
  br label %for.cond.659

for.cond.659:                                     ; preds = %for.inc.665, %if.else.658
  %550 = load i32, i32* %j, align 4
  %551 = load i32, i32* %clus1.addr, align 4
  %cmp660 = icmp slt i32 %550, %551
  br i1 %cmp660, label %for.body.662, label %for.end.667

for.body.662:                                     ; preds = %for.cond.659
  %552 = load i32, i32* %j, align 4
  %idxprom663 = sext i32 %552 to i64
  %553 = load i8*, i8** @Falign_noudp.sgap1, align 8
  %arrayidx664 = getelementptr inbounds i8, i8* %553, i64 %idxprom663
  store i8 111, i8* %arrayidx664, align 1
  br label %for.inc.665

for.inc.665:                                      ; preds = %for.body.662
  %554 = load i32, i32* %j, align 4
  %inc666 = add nsw i32 %554, 1
  store i32 %inc666, i32* %j, align 4
  br label %for.cond.659

for.end.667:                                      ; preds = %for.cond.659
  store i32 0, i32* %j, align 4
  br label %for.cond.668

for.cond.668:                                     ; preds = %for.inc.674, %for.end.667
  %555 = load i32, i32* %j, align 4
  %556 = load i32, i32* %clus2.addr, align 4
  %cmp669 = icmp slt i32 %555, %556
  br i1 %cmp669, label %for.body.671, label %for.end.676

for.body.671:                                     ; preds = %for.cond.668
  %557 = load i32, i32* %j, align 4
  %idxprom672 = sext i32 %557 to i64
  %558 = load i8*, i8** @Falign_noudp.sgap2, align 8
  %arrayidx673 = getelementptr inbounds i8, i8* %558, i64 %idxprom672
  store i8 111, i8* %arrayidx673, align 1
  br label %for.inc.674

for.inc.674:                                      ; preds = %for.body.671
  %559 = load i32, i32* %j, align 4
  %inc675 = add nsw i32 %559, 1
  store i32 %inc675, i32* %j, align 4
  br label %for.cond.668

for.end.676:                                      ; preds = %for.cond.668
  br label %if.end.677

if.end.677:                                       ; preds = %for.end.676, %if.then.655
  %560 = load i32, i32* %i, align 4
  %add678 = add nsw i32 %560, 1
  %idxprom679 = sext i32 %add678 to i64
  %561 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx680 = getelementptr inbounds i32, i32* %561, i64 %idxprom679
  %562 = load i32, i32* %arrayidx680, align 4
  %563 = load i32, i32* %len1, align 4
  %cmp681 = icmp ne i32 %562, %563
  br i1 %cmp681, label %if.then.683, label %if.else.690

if.then.683:                                      ; preds = %if.end.677
  %564 = load i8*, i8** @Falign_noudp.egap1, align 8
  %565 = load i8**, i8*** %seq1.addr, align 8
  %566 = load i32, i32* %i, align 4
  %add684 = add nsw i32 %566, 1
  %idxprom685 = sext i32 %add684 to i64
  %567 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx686 = getelementptr inbounds i32, i32* %567, i64 %idxprom685
  %568 = load i32, i32* %arrayidx686, align 4
  %569 = load i32, i32* %clus1.addr, align 4
  call void @getkyokaigap(i8* %564, i8** %565, i32 %568, i32 %569)
  %570 = load i8*, i8** @Falign_noudp.egap2, align 8
  %571 = load i8**, i8*** %seq2.addr, align 8
  %572 = load i32, i32* %i, align 4
  %add687 = add nsw i32 %572, 1
  %idxprom688 = sext i32 %add687 to i64
  %573 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx689 = getelementptr inbounds i32, i32* %573, i64 %idxprom688
  %574 = load i32, i32* %arrayidx689, align 4
  %575 = load i32, i32* %clus2.addr, align 4
  call void @getkyokaigap(i8* %570, i8** %571, i32 %574, i32 %575)
  br label %if.end.709

if.else.690:                                      ; preds = %if.end.677
  store i32 0, i32* %j, align 4
  br label %for.cond.691

for.cond.691:                                     ; preds = %for.inc.697, %if.else.690
  %576 = load i32, i32* %j, align 4
  %577 = load i32, i32* %clus1.addr, align 4
  %cmp692 = icmp slt i32 %576, %577
  br i1 %cmp692, label %for.body.694, label %for.end.699

for.body.694:                                     ; preds = %for.cond.691
  %578 = load i32, i32* %j, align 4
  %idxprom695 = sext i32 %578 to i64
  %579 = load i8*, i8** @Falign_noudp.egap1, align 8
  %arrayidx696 = getelementptr inbounds i8, i8* %579, i64 %idxprom695
  store i8 111, i8* %arrayidx696, align 1
  br label %for.inc.697

for.inc.697:                                      ; preds = %for.body.694
  %580 = load i32, i32* %j, align 4
  %inc698 = add nsw i32 %580, 1
  store i32 %inc698, i32* %j, align 4
  br label %for.cond.691

for.end.699:                                      ; preds = %for.cond.691
  store i32 0, i32* %j, align 4
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.706, %for.end.699
  %581 = load i32, i32* %j, align 4
  %582 = load i32, i32* %clus2.addr, align 4
  %cmp701 = icmp slt i32 %581, %582
  br i1 %cmp701, label %for.body.703, label %for.end.708

for.body.703:                                     ; preds = %for.cond.700
  %583 = load i32, i32* %j, align 4
  %idxprom704 = sext i32 %583 to i64
  %584 = load i8*, i8** @Falign_noudp.egap2, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %584, i64 %idxprom704
  store i8 111, i8* %arrayidx705, align 1
  br label %for.inc.706

for.inc.706:                                      ; preds = %for.body.703
  %585 = load i32, i32* %j, align 4
  %inc707 = add nsw i32 %585, 1
  store i32 %inc707, i32* %j, align 4
  br label %for.cond.700

for.end.708:                                      ; preds = %for.cond.700
  br label %if.end.709

if.end.709:                                       ; preds = %for.end.708, %if.then.683
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %587 = load i32, i32* %i, align 4
  %add710 = add nsw i32 %587, 1
  %588 = load i32, i32* %count, align 4
  %sub711 = sub nsw i32 %588, 1
  %call712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %586, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %add710, i32 %sub711)
  store i32 0, i32* %j, align 4
  br label %for.cond.713

for.cond.713:                                     ; preds = %for.inc.743, %if.end.709
  %589 = load i32, i32* %j, align 4
  %590 = load i32, i32* %clus1.addr, align 4
  %cmp714 = icmp slt i32 %589, %590
  br i1 %cmp714, label %for.body.716, label %for.end.745

for.body.716:                                     ; preds = %for.cond.713
  %591 = load i32, i32* %j, align 4
  %idxprom717 = sext i32 %591 to i64
  %592 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  %arrayidx718 = getelementptr inbounds i8*, i8** %592, i64 %idxprom717
  %593 = load i8*, i8** %arrayidx718, align 8
  %594 = load i32, i32* %j, align 4
  %idxprom719 = sext i32 %594 to i64
  %595 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx720 = getelementptr inbounds i8*, i8** %595, i64 %idxprom719
  %596 = load i8*, i8** %arrayidx720, align 8
  %597 = load i32, i32* %i, align 4
  %idxprom721 = sext i32 %597 to i64
  %598 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx722 = getelementptr inbounds i32, i32* %598, i64 %idxprom721
  %599 = load i32, i32* %arrayidx722, align 4
  %idx.ext723 = sext i32 %599 to i64
  %add.ptr724 = getelementptr inbounds i8, i8* %596, i64 %idx.ext723
  %600 = load i32, i32* %i, align 4
  %add725 = add nsw i32 %600, 1
  %idxprom726 = sext i32 %add725 to i64
  %601 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx727 = getelementptr inbounds i32, i32* %601, i64 %idxprom726
  %602 = load i32, i32* %arrayidx727, align 4
  %603 = load i32, i32* %i, align 4
  %idxprom728 = sext i32 %603 to i64
  %604 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx729 = getelementptr inbounds i32, i32* %604, i64 %idxprom728
  %605 = load i32, i32* %arrayidx729, align 4
  %sub730 = sub nsw i32 %602, %605
  %conv731 = sext i32 %sub730 to i64
  %call732 = call i8* @strncpy(i8* %593, i8* %add.ptr724, i64 %conv731) #6
  %606 = load i32, i32* %i, align 4
  %add733 = add nsw i32 %606, 1
  %idxprom734 = sext i32 %add733 to i64
  %607 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx735 = getelementptr inbounds i32, i32* %607, i64 %idxprom734
  %608 = load i32, i32* %arrayidx735, align 4
  %609 = load i32, i32* %i, align 4
  %idxprom736 = sext i32 %609 to i64
  %610 = load i32*, i32** @Falign_noudp.cut1, align 8
  %arrayidx737 = getelementptr inbounds i32, i32* %610, i64 %idxprom736
  %611 = load i32, i32* %arrayidx737, align 4
  %sub738 = sub nsw i32 %608, %611
  %idxprom739 = sext i32 %sub738 to i64
  %612 = load i32, i32* %j, align 4
  %idxprom740 = sext i32 %612 to i64
  %613 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  %arrayidx741 = getelementptr inbounds i8*, i8** %613, i64 %idxprom740
  %614 = load i8*, i8** %arrayidx741, align 8
  %arrayidx742 = getelementptr inbounds i8, i8* %614, i64 %idxprom739
  store i8 0, i8* %arrayidx742, align 1
  br label %for.inc.743

for.inc.743:                                      ; preds = %for.body.716
  %615 = load i32, i32* %j, align 4
  %inc744 = add nsw i32 %615, 1
  store i32 %inc744, i32* %j, align 4
  br label %for.cond.713

for.end.745:                                      ; preds = %for.cond.713
  %616 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool746 = icmp ne i32 %616, 0
  br i1 %tobool746, label %land.lhs.true.747, label %if.end.750

land.lhs.true.747:                                ; preds = %for.end.745
  %617 = load i32, i32* @fftkeika, align 4
  %tobool748 = icmp ne i32 %617, 0
  br i1 %tobool748, label %if.then.749, label %if.end.750

if.then.749:                                      ; preds = %land.lhs.true.747
  %618 = load i32, i32* %clus1.addr, align 4
  %619 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  call void @commongappick(i32 %618, i8** %619)
  br label %if.end.750

if.end.750:                                       ; preds = %if.then.749, %land.lhs.true.747, %for.end.745
  store i32 0, i32* %j, align 4
  br label %for.cond.751

for.cond.751:                                     ; preds = %for.inc.797, %if.end.750
  %620 = load i32, i32* %j, align 4
  %621 = load i32, i32* %clus2.addr, align 4
  %cmp752 = icmp slt i32 %620, %621
  br i1 %cmp752, label %for.body.754, label %for.end.799

for.body.754:                                     ; preds = %for.cond.751
  %622 = load i32, i32* %i, align 4
  %add755 = add nsw i32 %622, 1
  %idxprom756 = sext i32 %add755 to i64
  %623 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx757 = getelementptr inbounds i32, i32* %623, i64 %idxprom756
  %624 = load i32, i32* %arrayidx757, align 4
  %625 = load i32, i32* %i, align 4
  %idxprom758 = sext i32 %625 to i64
  %626 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx759 = getelementptr inbounds i32, i32* %626, i64 %idxprom758
  %627 = load i32, i32* %arrayidx759, align 4
  %sub760 = sub nsw i32 %624, %627
  %cmp761 = icmp sle i32 %sub760, 0
  br i1 %cmp761, label %if.then.763, label %if.end.770

if.then.763:                                      ; preds = %for.body.754
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %629 = load i32, i32* %i, align 4
  %add764 = add nsw i32 %629, 1
  %idxprom765 = sext i32 %add764 to i64
  %630 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx766 = getelementptr inbounds i32, i32* %630, i64 %idxprom765
  %631 = load i32, i32* %arrayidx766, align 4
  %632 = load i32, i32* %i, align 4
  %idxprom767 = sext i32 %632 to i64
  %633 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx768 = getelementptr inbounds i32, i32* %633, i64 %idxprom767
  %634 = load i32, i32* %arrayidx768, align 4
  %call769 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %628, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 %631, i32 %634)
  br label %if.end.770

if.end.770:                                       ; preds = %if.then.763, %for.body.754
  %635 = load i32, i32* %j, align 4
  %idxprom771 = sext i32 %635 to i64
  %636 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  %arrayidx772 = getelementptr inbounds i8*, i8** %636, i64 %idxprom771
  %637 = load i8*, i8** %arrayidx772, align 8
  %638 = load i32, i32* %j, align 4
  %idxprom773 = sext i32 %638 to i64
  %639 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx774 = getelementptr inbounds i8*, i8** %639, i64 %idxprom773
  %640 = load i8*, i8** %arrayidx774, align 8
  %641 = load i32, i32* %i, align 4
  %idxprom775 = sext i32 %641 to i64
  %642 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx776 = getelementptr inbounds i32, i32* %642, i64 %idxprom775
  %643 = load i32, i32* %arrayidx776, align 4
  %idx.ext777 = sext i32 %643 to i64
  %add.ptr778 = getelementptr inbounds i8, i8* %640, i64 %idx.ext777
  %644 = load i32, i32* %i, align 4
  %add779 = add nsw i32 %644, 1
  %idxprom780 = sext i32 %add779 to i64
  %645 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx781 = getelementptr inbounds i32, i32* %645, i64 %idxprom780
  %646 = load i32, i32* %arrayidx781, align 4
  %647 = load i32, i32* %i, align 4
  %idxprom782 = sext i32 %647 to i64
  %648 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx783 = getelementptr inbounds i32, i32* %648, i64 %idxprom782
  %649 = load i32, i32* %arrayidx783, align 4
  %sub784 = sub nsw i32 %646, %649
  %conv785 = sext i32 %sub784 to i64
  %call786 = call i8* @strncpy(i8* %637, i8* %add.ptr778, i64 %conv785) #6
  %650 = load i32, i32* %i, align 4
  %add787 = add nsw i32 %650, 1
  %idxprom788 = sext i32 %add787 to i64
  %651 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx789 = getelementptr inbounds i32, i32* %651, i64 %idxprom788
  %652 = load i32, i32* %arrayidx789, align 4
  %653 = load i32, i32* %i, align 4
  %idxprom790 = sext i32 %653 to i64
  %654 = load i32*, i32** @Falign_noudp.cut2, align 8
  %arrayidx791 = getelementptr inbounds i32, i32* %654, i64 %idxprom790
  %655 = load i32, i32* %arrayidx791, align 4
  %sub792 = sub nsw i32 %652, %655
  %idxprom793 = sext i32 %sub792 to i64
  %656 = load i32, i32* %j, align 4
  %idxprom794 = sext i32 %656 to i64
  %657 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  %arrayidx795 = getelementptr inbounds i8*, i8** %657, i64 %idxprom794
  %658 = load i8*, i8** %arrayidx795, align 8
  %arrayidx796 = getelementptr inbounds i8, i8* %658, i64 %idxprom793
  store i8 0, i8* %arrayidx796, align 1
  br label %for.inc.797

for.inc.797:                                      ; preds = %if.end.770
  %659 = load i32, i32* %j, align 4
  %inc798 = add nsw i32 %659, 1
  store i32 %inc798, i32* %j, align 4
  br label %for.cond.751

for.end.799:                                      ; preds = %for.cond.751
  %660 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool800 = icmp ne i32 %660, 0
  br i1 %tobool800, label %land.lhs.true.801, label %if.end.804

land.lhs.true.801:                                ; preds = %for.end.799
  %661 = load i32, i32* @fftkeika, align 4
  %tobool802 = icmp ne i32 %661, 0
  br i1 %tobool802, label %if.then.803, label %if.end.804

if.then.803:                                      ; preds = %land.lhs.true.801
  %662 = load i32, i32* %clus2.addr, align 4
  %663 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  call void @commongappick(i32 %662, i8** %663)
  br label %if.end.804

if.end.804:                                       ; preds = %if.then.803, %land.lhs.true.801, %for.end.799
  %664 = load i32, i32* @constraint, align 4
  %tobool805 = icmp ne i32 %664, 0
  br i1 %tobool805, label %if.then.806, label %if.end.808

if.then.806:                                      ; preds = %if.end.804
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call807 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %665, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.808:                                       ; preds = %if.end.804
  %666 = load i8, i8* @alg, align 1
  %conv809 = sext i8 %666 to i32
  switch i32 %conv809, label %sw.default [
    i32 77, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.808
  %667 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  %668 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  %669 = load double*, double** %eff1.addr, align 8
  %670 = load double*, double** %eff2.addr, align 8
  %671 = load i32, i32* %clus1.addr, align 4
  %672 = load i32, i32* %clus2.addr, align 4
  %673 = load i32, i32* %alloclen.addr, align 4
  %674 = load i8*, i8** @Falign_noudp.sgap1, align 8
  %675 = load i8*, i8** @Falign_noudp.sgap2, align 8
  %676 = load i8*, i8** @Falign_noudp.egap1, align 8
  %677 = load i8*, i8** @Falign_noudp.egap2, align 8
  %call810 = call float @MSalignmm(i8** %667, i8** %668, double* %669, double* %670, i32 %671, i32 %672, i32 %673, i8* %674, i8* %675, i8* %676, i8* %677)
  %678 = load float, float* %totalscore, align 4
  %add811 = fadd float %678, %call810
  store float %add811, float* %totalscore, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.808
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %680 = load i8, i8* @alg, align 1
  %conv812 = sext i8 %680 to i32
  %call813 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %679, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %conv812)
  call void @ErrorExit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %681 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  %arrayidx814 = getelementptr inbounds i8*, i8** %681, i64 0
  %682 = load i8*, i8** %arrayidx814, align 8
  %call815 = call i64 @strlen(i8* %682) #5
  %conv816 = trunc i64 %call815 to i32
  store i32 %conv816, i32* %nlen, align 4
  %683 = load i32, i32* %totallen, align 4
  %684 = load i32, i32* %nlen, align 4
  %add817 = add nsw i32 %683, %684
  %685 = load i32, i32* %alloclen.addr, align 4
  %cmp818 = icmp sgt i32 %add817, %685
  br i1 %cmp818, label %if.then.820, label %if.end.822

if.then.820:                                      ; preds = %sw.epilog
  %686 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %687 = load i32, i32* %totallen, align 4
  %688 = load i32, i32* %nlen, align 4
  %689 = load i32, i32* %alloclen.addr, align 4
  %call821 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %686, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 %687, i32 %688, i32 %689)
  call void @ErrorExit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.820, %sw.epilog
  store i32 0, i32* %j, align 4
  br label %for.cond.823

for.cond.823:                                     ; preds = %for.inc.832, %if.end.822
  %690 = load i32, i32* %j, align 4
  %691 = load i32, i32* %clus1.addr, align 4
  %cmp824 = icmp slt i32 %690, %691
  br i1 %cmp824, label %for.body.826, label %for.end.834

for.body.826:                                     ; preds = %for.cond.823
  %692 = load i32, i32* %j, align 4
  %idxprom827 = sext i32 %692 to i64
  %693 = load i8**, i8*** @Falign_noudp.result1, align 8
  %arrayidx828 = getelementptr inbounds i8*, i8** %693, i64 %idxprom827
  %694 = load i8*, i8** %arrayidx828, align 8
  %695 = load i32, i32* %j, align 4
  %idxprom829 = sext i32 %695 to i64
  %696 = load i8**, i8*** @Falign_noudp.tmpres1, align 8
  %arrayidx830 = getelementptr inbounds i8*, i8** %696, i64 %idxprom829
  %697 = load i8*, i8** %arrayidx830, align 8
  %call831 = call i8* @strcat(i8* %694, i8* %697) #6
  br label %for.inc.832

for.inc.832:                                      ; preds = %for.body.826
  %698 = load i32, i32* %j, align 4
  %inc833 = add nsw i32 %698, 1
  store i32 %inc833, i32* %j, align 4
  br label %for.cond.823

for.end.834:                                      ; preds = %for.cond.823
  store i32 0, i32* %j, align 4
  br label %for.cond.835

for.cond.835:                                     ; preds = %for.inc.844, %for.end.834
  %699 = load i32, i32* %j, align 4
  %700 = load i32, i32* %clus2.addr, align 4
  %cmp836 = icmp slt i32 %699, %700
  br i1 %cmp836, label %for.body.838, label %for.end.846

for.body.838:                                     ; preds = %for.cond.835
  %701 = load i32, i32* %j, align 4
  %idxprom839 = sext i32 %701 to i64
  %702 = load i8**, i8*** @Falign_noudp.result2, align 8
  %arrayidx840 = getelementptr inbounds i8*, i8** %702, i64 %idxprom839
  %703 = load i8*, i8** %arrayidx840, align 8
  %704 = load i32, i32* %j, align 4
  %idxprom841 = sext i32 %704 to i64
  %705 = load i8**, i8*** @Falign_noudp.tmpres2, align 8
  %arrayidx842 = getelementptr inbounds i8*, i8** %705, i64 %idxprom841
  %706 = load i8*, i8** %arrayidx842, align 8
  %call843 = call i8* @strcat(i8* %703, i8* %706) #6
  br label %for.inc.844

for.inc.844:                                      ; preds = %for.body.838
  %707 = load i32, i32* %j, align 4
  %inc845 = add nsw i32 %707, 1
  store i32 %inc845, i32* %j, align 4
  br label %for.cond.835

for.end.846:                                      ; preds = %for.cond.835
  %708 = load i32, i32* %nlen, align 4
  %709 = load i32, i32* %totallen, align 4
  %add847 = add nsw i32 %709, %708
  store i32 %add847, i32* %totallen, align 4
  br label %for.inc.848

for.inc.848:                                      ; preds = %for.end.846
  %710 = load i32, i32* %i, align 4
  %inc849 = add nsw i32 %710, 1
  store i32 %inc849, i32* %i, align 4
  br label %for.cond.646

for.end.850:                                      ; preds = %for.cond.646
  store i32 0, i32* %j, align 4
  br label %for.cond.851

for.cond.851:                                     ; preds = %for.inc.860, %for.end.850
  %711 = load i32, i32* %j, align 4
  %712 = load i32, i32* %clus1.addr, align 4
  %cmp852 = icmp slt i32 %711, %712
  br i1 %cmp852, label %for.body.854, label %for.end.862

for.body.854:                                     ; preds = %for.cond.851
  %713 = load i32, i32* %j, align 4
  %idxprom855 = sext i32 %713 to i64
  %714 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx856 = getelementptr inbounds i8*, i8** %714, i64 %idxprom855
  %715 = load i8*, i8** %arrayidx856, align 8
  %716 = load i32, i32* %j, align 4
  %idxprom857 = sext i32 %716 to i64
  %717 = load i8**, i8*** @Falign_noudp.result1, align 8
  %arrayidx858 = getelementptr inbounds i8*, i8** %717, i64 %idxprom857
  %718 = load i8*, i8** %arrayidx858, align 8
  %call859 = call i8* @strcpy(i8* %715, i8* %718) #6
  br label %for.inc.860

for.inc.860:                                      ; preds = %for.body.854
  %719 = load i32, i32* %j, align 4
  %inc861 = add nsw i32 %719, 1
  store i32 %inc861, i32* %j, align 4
  br label %for.cond.851

for.end.862:                                      ; preds = %for.cond.851
  store i32 0, i32* %j, align 4
  br label %for.cond.863

for.cond.863:                                     ; preds = %for.inc.872, %for.end.862
  %720 = load i32, i32* %j, align 4
  %721 = load i32, i32* %clus2.addr, align 4
  %cmp864 = icmp slt i32 %720, %721
  br i1 %cmp864, label %for.body.866, label %for.end.874

for.body.866:                                     ; preds = %for.cond.863
  %722 = load i32, i32* %j, align 4
  %idxprom867 = sext i32 %722 to i64
  %723 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx868 = getelementptr inbounds i8*, i8** %723, i64 %idxprom867
  %724 = load i8*, i8** %arrayidx868, align 8
  %725 = load i32, i32* %j, align 4
  %idxprom869 = sext i32 %725 to i64
  %726 = load i8**, i8*** @Falign_noudp.result2, align 8
  %arrayidx870 = getelementptr inbounds i8*, i8** %726, i64 %idxprom869
  %727 = load i8*, i8** %arrayidx870, align 8
  %call871 = call i8* @strcpy(i8* %724, i8* %727) #6
  br label %for.inc.872

for.inc.872:                                      ; preds = %for.body.866
  %728 = load i32, i32* %j, align 4
  %inc873 = add nsw i32 %728, 1
  store i32 %inc873, i32* %j, align 4
  br label %for.cond.863

for.end.874:                                      ; preds = %for.cond.863
  %729 = load float, float* %totalscore, align 4
  ret float %729
}

; Function Attrs: nounwind uwtable
define internal void @seq_vec_4(%struct._Fukusosuu* %result, double %incr, i8* %seq) #0 {
entry:
  %result.addr = alloca %struct._Fukusosuu*, align 8
  %incr.addr = alloca double, align 8
  %seq.addr = alloca i8*, align 8
  %s = alloca i8, align 1
  store %struct._Fukusosuu* %result, %struct._Fukusosuu** %result.addr, align 8
  store double %incr, double* %incr.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %s, align 1
  %4 = load i8, i8* %s, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load double, double* %incr.addr, align 8
  %6 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %6, i32 0, i32 0
  %7 = load double, double* %R, align 8
  %add = fadd double %7, %5
  store double %add, double* %R, align 8
  br label %if.end.22

if.else:                                          ; preds = %for.body
  %8 = load i8, i8* %s, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 116
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %9 = load double, double* %incr.addr, align 8
  %10 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %R6 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %10, i32 0, i32 0
  %11 = load double, double* %R6, align 8
  %sub = fsub double %11, %9
  store double %sub, double* %R6, align 8
  br label %if.end.21

if.else.7:                                        ; preds = %if.else
  %12 = load i8, i8* %s, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 103
  br i1 %cmp9, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.7
  %13 = load double, double* %incr.addr, align 8
  %14 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %14, i32 0, i32 1
  %15 = load double, double* %I, align 8
  %add12 = fadd double %15, %13
  store double %add12, double* %I, align 8
  br label %if.end.20

if.else.13:                                       ; preds = %if.else.7
  %16 = load i8, i8* %s, align 1
  %conv14 = sext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv14, 99
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else.13
  %17 = load double, double* %incr.addr, align 8
  %18 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %I18 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %18, i32 0, i32 1
  %19 = load double, double* %I18, align 8
  %sub19 = fsub double %19, %17
  store double %sub19, double* %I18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.11
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %20 = load %struct._Fukusosuu*, %struct._Fukusosuu** %result.addr, align 8
  %incdec.ptr23 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %20, i32 1
  store %struct._Fukusosuu* %incdec.ptr23, %struct._Fukusosuu** %result.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define float @Falign_udpari_long(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %clus1, i32 %clus2, i32 %alloclen, i32* %fftlog) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %fftlog.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %maxk = alloca i32, align 4
  %nlen = alloca i32, align 4
  %nlen2 = alloca i32, align 4
  %nlen4 = alloca i32, align 4
  %nlentmp = alloca i32, align 4
  %lag = alloca i32, align 4
  %tmpint = alloca i32, align 4
  %count = alloca i32, align 4
  %count0 = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %totallen = alloca i32, align 4
  %totalscore = alloca float, align 4
  %nkouho = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32* %fftlog, i32** %fftlog.addr, align 8
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %5 = load i32, i32* %len2, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %len1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %len2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %nlentmp, align 4
  store i32 1, i32* %nlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %8 = load i32, i32* %nlentmp, align 4
  %9 = load i32, i32* %nlen, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %nlen, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %nlen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %nlen, align 4
  %div = sdiv i32 %11, 2
  store i32 %div, i32* %nlen2, align 4
  %12 = load i32, i32* %nlen2, align 4
  %div7 = sdiv i32 %12, 2
  store i32 %div7, i32* %nlen4, align 4
  %13 = load i32, i32* @Falign_udpari_long.prevalloclen, align 4
  %14 = load i32, i32* %alloclen.addr, align 4
  %cmp8 = icmp ne i32 %13, %14
  br i1 %cmp8, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.end
  %15 = load i32, i32* @Falign_udpari_long.prevalloclen, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %16 = load i8**, i8*** @Falign_udpari_long.result1, align 8
  call void @FreeCharMtx(i8** %16)
  %17 = load i8**, i8*** @Falign_udpari_long.result2, align 8
  call void @FreeCharMtx(i8** %17)
  %18 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  call void @FreeCharMtx(i8** %18)
  %19 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  call void @FreeCharMtx(i8** %19)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %20 = load i32, i32* @njob, align 4
  %21 = load i32, i32* %alloclen.addr, align 4
  %call11 = call i8** @AllocateCharMtx(i32 %20, i32 %21)
  store i8** %call11, i8*** @Falign_udpari_long.result1, align 8
  %22 = load i32, i32* @njob, align 4
  %23 = load i32, i32* %alloclen.addr, align 4
  %call12 = call i8** @AllocateCharMtx(i32 %22, i32 %23)
  store i8** %call12, i8*** @Falign_udpari_long.result2, align 8
  %24 = load i32, i32* @njob, align 4
  %25 = load i32, i32* %alloclen.addr, align 4
  %call13 = call i8** @AllocateCharMtx(i32 %24, i32 %25)
  store i8** %call13, i8*** @Falign_udpari_long.tmpres1, align 8
  %26 = load i32, i32* @njob, align 4
  %27 = load i32, i32* %alloclen.addr, align 4
  %call14 = call i8** @AllocateCharMtx(i32 %26, i32 %27)
  store i8** %call14, i8*** @Falign_udpari_long.tmpres2, align 8
  %28 = load i32, i32* %alloclen.addr, align 4
  store i32 %28, i32* @Falign_udpari_long.prevalloclen, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %while.end
  %29 = load i32, i32* @Falign_udpari_long.localalloclen, align 4
  %tobool16 = icmp ne i32 %29, 0
  br i1 %tobool16, label %if.end.50, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %30 = load i32, i32* @njob, align 4
  %call18 = call i8* @AllocateCharVec(i32 %30)
  store i8* %call18, i8** @Falign_udpari_long.sgap1, align 8
  %31 = load i32, i32* @njob, align 4
  %call19 = call i8* @AllocateCharVec(i32 %31)
  store i8* %call19, i8** @Falign_udpari_long.egap1, align 8
  %32 = load i32, i32* @njob, align 4
  %call20 = call i8* @AllocateCharVec(i32 %32)
  store i8* %call20, i8** @Falign_udpari_long.sgap2, align 8
  %33 = load i32, i32* @njob, align 4
  %call21 = call i8* @AllocateCharVec(i32 %33)
  store i8* %call21, i8** @Falign_udpari_long.egap2, align 8
  %call22 = call i32* @AllocateIntVec(i32 100)
  store i32* %call22, i32** @Falign_udpari_long.kouho, align 8
  %call23 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call23, i32** @Falign_udpari_long.cut1, align 8
  %call24 = call i32* @AllocateIntVec(i32 100000)
  store i32* %call24, i32** @Falign_udpari_long.cut2, align 8
  %34 = load i32, i32* @njob, align 4
  %call25 = call i8** @AllocateCharMtx(i32 %34, i32 0)
  store i8** %call25, i8*** @Falign_udpari_long.tmpptr1, align 8
  %35 = load i32, i32* @njob, align 4
  %call26 = call i8** @AllocateCharMtx(i32 %35, i32 0)
  store i8** %call26, i8*** @Falign_udpari_long.tmpptr2, align 8
  %call27 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %36 = bitcast i8* %call27 to %struct._Segment*
  store %struct._Segment* %36, %struct._Segment** @Falign_udpari_long.segment, align 8
  %call28 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %37 = bitcast i8* %call28 to %struct._Segment*
  store %struct._Segment* %37, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %call29 = call noalias i8* @calloc(i64 100000, i64 48) #6
  %38 = bitcast i8* %call29 to %struct._Segment*
  store %struct._Segment* %38, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %call30 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %39 = bitcast i8* %call30 to %struct._Segment**
  store %struct._Segment** %39, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %call31 = call noalias i8* @calloc(i64 100000, i64 8) #6
  %40 = bitcast i8* %call31 to %struct._Segment**
  store %struct._Segment** %40, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %41 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %tobool32 = icmp ne %struct._Segment* %41, null
  br i1 %tobool32, label %land.lhs.true, label %if.then.40

land.lhs.true:                                    ; preds = %if.then.17
  %42 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %tobool33 = icmp ne %struct._Segment* %42, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.then.40

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %43 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %tobool35 = icmp ne %struct._Segment* %43, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.then.40

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %44 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %tobool37 = icmp ne %struct._Segment** %44, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.then.40

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %45 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %tobool39 = icmp ne %struct._Segment** %45, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38, %land.lhs.true.36, %land.lhs.true.34, %land.lhs.true, %if.then.17
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.38
  %46 = load i32, i32* @scoremtx, align 4
  %cmp42 = icmp eq i32 %46, -1
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.41
  store i32 1, i32* @n20or4or2, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.41
  %47 = load i32, i32* @fftscore, align 4
  %tobool45 = icmp ne i32 %47, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else
  store i32 1, i32* @n20or4or2, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %if.else
  store i32 20, i32* @n20or4or2, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.15
  %48 = load i32, i32* @Falign_udpari_long.localalloclen, align 4
  %49 = load i32, i32* %nlen, align 4
  %cmp51 = icmp slt i32 %48, %49
  br i1 %cmp51, label %if.then.53, label %if.end.72

if.then.53:                                       ; preds = %if.end.50
  %50 = load i32, i32* @Falign_udpari_long.localalloclen, align 4
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.then.53
  %51 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool56 = icmp ne i32 %51, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.55
  %52 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %52)
  %53 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %53)
  %54 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  call void @FreeFukusosuuVec(%struct._Fukusosuu* %54)
  %55 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.naiseki, align 8
  call void @FreeFukusosuuMtx(%struct._Fukusosuu** %55)
  %56 = load double*, double** @Falign_udpari_long.soukan, align 8
  call void @FreeDoubleVec(double* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.55
  %57 = load i8**, i8*** @Falign_udpari_long.tmpseq1, align 8
  call void @FreeCharMtx(i8** %57)
  %58 = load i8**, i8*** @Falign_udpari_long.tmpseq2, align 8
  call void @FreeCharMtx(i8** %58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.53
  %59 = load i32, i32* @njob, align 4
  %60 = load i32, i32* %nlen, align 4
  %call60 = call i8** @AllocateCharMtx(i32 %59, i32 %60)
  store i8** %call60, i8*** @Falign_udpari_long.tmpseq1, align 8
  %61 = load i32, i32* @njob, align 4
  %62 = load i32, i32* %nlen, align 4
  %call61 = call i8** @AllocateCharMtx(i32 %61, i32 %62)
  store i8** %call61, i8*** @Falign_udpari_long.tmpseq2, align 8
  %63 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool62 = icmp ne i32 %63, 0
  br i1 %tobool62, label %if.end.71, label %if.then.63

if.then.63:                                       ; preds = %if.end.59
  %64 = load i32, i32* %nlen, align 4
  %call64 = call %struct._Fukusosuu* @AllocateFukusosuuVec(i32 %64)
  store %struct._Fukusosuu* %call64, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %65 = load i32, i32* @n20or4or2, align 4
  %66 = load i32, i32* %nlen, align 4
  %call65 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %65, i32 %66)
  store %struct._Fukusosuu** %call65, %struct._Fukusosuu*** @Falign_udpari_long.naiseki, align 8
  %67 = load i32, i32* @n20or4or2, align 4
  %68 = load i32, i32* %nlen, align 4
  %add = add nsw i32 %68, 1
  %call66 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %67, i32 %add)
  store %struct._Fukusosuu** %call66, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %69 = load i32, i32* @n20or4or2, align 4
  %70 = load i32, i32* %nlen, align 4
  %add67 = add nsw i32 %70, 1
  %call68 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %69, i32 %add67)
  store %struct._Fukusosuu** %call68, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %71 = load i32, i32* %nlen, align 4
  %add69 = add nsw i32 %71, 1
  %call70 = call double* @AllocateDoubleVec(i32 %add69)
  store double* %call70, double** @Falign_udpari_long.soukan, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.59
  %72 = load i32, i32* %nlen, align 4
  store i32 %72, i32* @Falign_udpari_long.localalloclen, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.50
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.72
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %clus1.addr, align 4
  %cmp73 = icmp slt i32 %73, %74
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %j, align 4
  %idxprom = sext i32 %75 to i64
  %76 = load i8**, i8*** @Falign_udpari_long.tmpseq1, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %76, i64 %idxprom
  %77 = load i8*, i8** %arrayidx75, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %78 to i64
  %79 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %79, i64 %idxprom76
  %80 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i8* @strcpy(i8* %77, i8* %80) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %j, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %for.end
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %clus2.addr, align 4
  %cmp80 = icmp slt i32 %82, %83
  br i1 %cmp80, label %for.body.82, label %for.end.90

for.body.82:                                      ; preds = %for.cond.79
  %84 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = load i8**, i8*** @Falign_udpari_long.tmpseq2, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %85, i64 %idxprom83
  %86 = load i8*, i8** %arrayidx84, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %87 to i64
  %88 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %88, i64 %idxprom85
  %89 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i8* @strcpy(i8* %86, i8* %89) #6
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.82
  %90 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %90, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  %91 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool91 = icmp ne i32 %91, 0
  br i1 %tobool91, label %if.end.305, label %if.then.92

if.then.92:                                       ; preds = %for.end.90
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.100, %if.then.92
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* @n20or4or2, align 4
  %cmp95 = icmp slt i32 %93, %94
  br i1 %cmp95, label %for.body.97, label %for.end.102

for.body.97:                                      ; preds = %for.cond.94
  %95 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %95 to i64
  %96 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %arrayidx99 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %96, i64 %idxprom98
  %97 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx99, align 8
  %98 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %97, i32 %98)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.97
  %99 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %99, 1
  store i32 %inc101, i32* %j, align 4
  br label %for.cond.94

for.end.102:                                      ; preds = %for.cond.94
  %100 = load i32, i32* @scoremtx, align 4
  %cmp103 = icmp eq i32 %100, -1
  br i1 %cmp103, label %if.then.105, label %if.else.118

if.then.105:                                      ; preds = %for.end.102
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.115, %if.then.105
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %clus1.addr, align 4
  %cmp107 = icmp slt i32 %101, %102
  br i1 %cmp107, label %for.body.109, label %for.end.117

for.body.109:                                     ; preds = %for.cond.106
  %103 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %arrayidx110 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %103, i64 0
  %104 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx110, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %105 to i64
  %106 = load double*, double** %eff1.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %106, i64 %idxprom111
  %107 = load double, double* %arrayidx112, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %108 to i64
  %109 = load i8**, i8*** @Falign_udpari_long.tmpseq1, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %109, i64 %idxprom113
  %110 = load i8*, i8** %arrayidx114, align 8
  call void @seq_vec_4(%struct._Fukusosuu* %104, double %107, i8* %110)
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.109
  %111 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %111, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.106

for.end.117:                                      ; preds = %for.cond.106
  br label %if.end.146

if.else.118:                                      ; preds = %for.end.102
  %112 = load i32, i32* @fftscore, align 4
  %tobool119 = icmp ne i32 %112, 0
  br i1 %tobool119, label %if.then.120, label %if.else.133

if.then.120:                                      ; preds = %if.else.118
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.130, %if.then.120
  %113 = load i32, i32* %i, align 4
  %114 = load i32, i32* %clus1.addr, align 4
  %cmp122 = icmp slt i32 %113, %114
  br i1 %cmp122, label %for.body.124, label %for.end.132

for.body.124:                                     ; preds = %for.cond.121
  %115 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %arrayidx125 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %115, i64 0
  %116 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx125, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %117 to i64
  %118 = load double*, double** %eff1.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %118, i64 %idxprom126
  %119 = load double, double* %arrayidx127, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %120 to i64
  %121 = load i8**, i8*** @Falign_udpari_long.tmpseq1, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %121, i64 %idxprom128
  %122 = load i8*, i8** %arrayidx129, align 8
  call void @seq_vec_5(%struct._Fukusosuu* %116, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %119, i8* %122)
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.124
  %123 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %123, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.121

for.end.132:                                      ; preds = %for.cond.121
  br label %if.end.145

if.else.133:                                      ; preds = %if.else.118
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.142, %if.else.133
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %clus1.addr, align 4
  %cmp135 = icmp slt i32 %124, %125
  br i1 %cmp135, label %for.body.137, label %for.end.144

for.body.137:                                     ; preds = %for.cond.134
  %126 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %127 to i64
  %128 = load double*, double** %eff1.addr, align 8
  %arrayidx139 = getelementptr inbounds double, double* %128, i64 %idxprom138
  %129 = load double, double* %arrayidx139, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %130 to i64
  %131 = load i8**, i8*** @Falign_udpari_long.tmpseq1, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %131, i64 %idxprom140
  %132 = load i8*, i8** %arrayidx141, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %126, double %129, i8* %132)
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.137
  %133 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %133, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond.134

for.end.144:                                      ; preds = %for.cond.134
  br label %if.end.145

if.end.145:                                       ; preds = %for.end.144, %for.end.132
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %for.end.117
  store i32 0, i32* %j, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.153, %if.end.146
  %134 = load i32, i32* %j, align 4
  %135 = load i32, i32* @n20or4or2, align 4
  %cmp148 = icmp slt i32 %134, %135
  br i1 %cmp148, label %for.body.150, label %for.end.155

for.body.150:                                     ; preds = %for.cond.147
  %136 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %136 to i64
  %137 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %arrayidx152 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %137, i64 %idxprom151
  %138 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx152, align 8
  %139 = load i32, i32* %nlen, align 4
  call void @vec_init(%struct._Fukusosuu* %138, i32 %139)
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.150
  %140 = load i32, i32* %j, align 4
  %inc154 = add nsw i32 %140, 1
  store i32 %inc154, i32* %j, align 4
  br label %for.cond.147

for.end.155:                                      ; preds = %for.cond.147
  %141 = load i32, i32* @scoremtx, align 4
  %cmp156 = icmp eq i32 %141, -1
  br i1 %cmp156, label %if.then.158, label %if.else.171

if.then.158:                                      ; preds = %for.end.155
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.168, %if.then.158
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %clus2.addr, align 4
  %cmp160 = icmp slt i32 %142, %143
  br i1 %cmp160, label %for.body.162, label %for.end.170

for.body.162:                                     ; preds = %for.cond.159
  %144 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %arrayidx163 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %144, i64 0
  %145 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx163, align 8
  %146 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %146 to i64
  %147 = load double*, double** %eff2.addr, align 8
  %arrayidx165 = getelementptr inbounds double, double* %147, i64 %idxprom164
  %148 = load double, double* %arrayidx165, align 8
  %149 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %149 to i64
  %150 = load i8**, i8*** @Falign_udpari_long.tmpseq2, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %150, i64 %idxprom166
  %151 = load i8*, i8** %arrayidx167, align 8
  call void @seq_vec_4(%struct._Fukusosuu* %145, double %148, i8* %151)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.162
  %152 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %152, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.159

for.end.170:                                      ; preds = %for.cond.159
  br label %if.end.199

if.else.171:                                      ; preds = %for.end.155
  %153 = load i32, i32* @fftscore, align 4
  %tobool172 = icmp ne i32 %153, 0
  br i1 %tobool172, label %if.then.173, label %if.else.186

if.then.173:                                      ; preds = %if.else.171
  store i32 0, i32* %i, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.183, %if.then.173
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %clus2.addr, align 4
  %cmp175 = icmp slt i32 %154, %155
  br i1 %cmp175, label %for.body.177, label %for.end.185

for.body.177:                                     ; preds = %for.cond.174
  %156 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %arrayidx178 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %156, i64 0
  %157 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx178, align 8
  %158 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %158 to i64
  %159 = load double*, double** %eff2.addr, align 8
  %arrayidx180 = getelementptr inbounds double, double* %159, i64 %idxprom179
  %160 = load double, double* %arrayidx180, align 8
  %161 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %161 to i64
  %162 = load i8**, i8*** @Falign_udpari_long.tmpseq2, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %162, i64 %idxprom181
  %163 = load i8*, i8** %arrayidx182, align 8
  call void @seq_vec_5(%struct._Fukusosuu* %157, double* getelementptr inbounds ([20 x double], [20 x double]* @polarity, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @volume, i32 0, i32 0), double %160, i8* %163)
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.177
  %164 = load i32, i32* %i, align 4
  %inc184 = add nsw i32 %164, 1
  store i32 %inc184, i32* %i, align 4
  br label %for.cond.174

for.end.185:                                      ; preds = %for.cond.174
  br label %if.end.198

if.else.186:                                      ; preds = %if.else.171
  store i32 0, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.195, %if.else.186
  %165 = load i32, i32* %i, align 4
  %166 = load i32, i32* %clus2.addr, align 4
  %cmp188 = icmp slt i32 %165, %166
  br i1 %cmp188, label %for.body.190, label %for.end.197

for.body.190:                                     ; preds = %for.cond.187
  %167 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %168 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %168 to i64
  %169 = load double*, double** %eff2.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %169, i64 %idxprom191
  %170 = load double, double* %arrayidx192, align 8
  %171 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %171 to i64
  %172 = load i8**, i8*** @Falign_udpari_long.tmpseq2, align 8
  %arrayidx194 = getelementptr inbounds i8*, i8** %172, i64 %idxprom193
  %173 = load i8*, i8** %arrayidx194, align 8
  call void @seq_vec_3(%struct._Fukusosuu** %167, double %170, i8* %173)
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.190
  %174 = load i32, i32* %i, align 4
  %inc196 = add nsw i32 %174, 1
  store i32 %inc196, i32* %i, align 4
  br label %for.cond.187

for.end.197:                                      ; preds = %for.cond.187
  br label %if.end.198

if.end.198:                                       ; preds = %for.end.197, %for.end.185
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %for.end.170
  store i32 0, i32* %j, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.212, %if.end.199
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* @n20or4or2, align 4
  %cmp201 = icmp slt i32 %175, %176
  br i1 %cmp201, label %for.body.203, label %for.end.214

for.body.203:                                     ; preds = %for.cond.200
  %177 = load i32, i32* %nlen, align 4
  %178 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %178 to i64
  %179 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %arrayidx205 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %179, i64 %idxprom204
  %180 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx205, align 8
  %181 = load i32, i32* %j, align 4
  %cmp206 = icmp eq i32 %181, 0
  %conv207 = zext i1 %cmp206 to i32
  %call208 = call i32 @fft(i32 %177, %struct._Fukusosuu* %180, i32 %conv207)
  %182 = load i32, i32* %nlen, align 4
  %183 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %183 to i64
  %184 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %arrayidx210 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %184, i64 %idxprom209
  %185 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx210, align 8
  %call211 = call i32 @fft(i32 %182, %struct._Fukusosuu* %185, i32 0)
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.203
  %186 = load i32, i32* %j, align 4
  %inc213 = add nsw i32 %186, 1
  store i32 %inc213, i32* %j, align 4
  br label %for.cond.200

for.end.214:                                      ; preds = %for.cond.200
  store i32 0, i32* %k, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.236, %for.end.214
  %187 = load i32, i32* %k, align 4
  %188 = load i32, i32* @n20or4or2, align 4
  %cmp216 = icmp slt i32 %187, %188
  br i1 %cmp216, label %for.body.218, label %for.end.238

for.body.218:                                     ; preds = %for.cond.215
  store i32 0, i32* %l, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.233, %for.body.218
  %189 = load i32, i32* %l, align 4
  %190 = load i32, i32* %nlen, align 4
  %cmp220 = icmp slt i32 %189, %190
  br i1 %cmp220, label %for.body.222, label %for.end.235

for.body.222:                                     ; preds = %for.cond.219
  %191 = load i32, i32* %k, align 4
  %idxprom223 = sext i32 %191 to i64
  %192 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.naiseki, align 8
  %arrayidx224 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %192, i64 %idxprom223
  %193 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx224, align 8
  %194 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %194 to i64
  %add.ptr = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %193, i64 %idx.ext
  %195 = load i32, i32* %k, align 4
  %idxprom225 = sext i32 %195 to i64
  %196 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector1, align 8
  %arrayidx226 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %196, i64 %idxprom225
  %197 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx226, align 8
  %198 = load i32, i32* %l, align 4
  %idx.ext227 = sext i32 %198 to i64
  %add.ptr228 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %197, i64 %idx.ext227
  %199 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %199 to i64
  %200 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.seqVector2, align 8
  %arrayidx230 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %200, i64 %idxprom229
  %201 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx230, align 8
  %202 = load i32, i32* %l, align 4
  %idx.ext231 = sext i32 %202 to i64
  %add.ptr232 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %201, i64 %idx.ext231
  call void @calcNaiseki(%struct._Fukusosuu* %add.ptr, %struct._Fukusosuu* %add.ptr228, %struct._Fukusosuu* %add.ptr232)
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.222
  %203 = load i32, i32* %l, align 4
  %inc234 = add nsw i32 %203, 1
  store i32 %inc234, i32* %l, align 4
  br label %for.cond.219

for.end.235:                                      ; preds = %for.cond.219
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.end.235
  %204 = load i32, i32* %k, align 4
  %inc237 = add nsw i32 %204, 1
  store i32 %inc237, i32* %k, align 4
  br label %for.cond.215

for.end.238:                                      ; preds = %for.cond.215
  store i32 0, i32* %l, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.272, %for.end.238
  %205 = load i32, i32* %l, align 4
  %206 = load i32, i32* %nlen, align 4
  %cmp240 = icmp slt i32 %205, %206
  br i1 %cmp240, label %for.body.242, label %for.end.274

for.body.242:                                     ; preds = %for.cond.239
  %207 = load i32, i32* %l, align 4
  %idxprom243 = sext i32 %207 to i64
  %208 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %arrayidx244 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %208, i64 %idxprom243
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx244, i32 0, i32 0
  store double 0.000000e+00, double* %R, align 8
  %209 = load i32, i32* %l, align 4
  %idxprom245 = sext i32 %209 to i64
  %210 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %arrayidx246 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %210, i64 %idxprom245
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx246, i32 0, i32 1
  store double 0.000000e+00, double* %I, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.269, %for.body.242
  %211 = load i32, i32* %k, align 4
  %212 = load i32, i32* @n20or4or2, align 4
  %cmp248 = icmp slt i32 %211, %212
  br i1 %cmp248, label %for.body.250, label %for.end.271

for.body.250:                                     ; preds = %for.cond.247
  %213 = load i32, i32* %l, align 4
  %idxprom251 = sext i32 %213 to i64
  %214 = load i32, i32* %k, align 4
  %idxprom252 = sext i32 %214 to i64
  %215 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.naiseki, align 8
  %arrayidx253 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %215, i64 %idxprom252
  %216 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %216, i64 %idxprom251
  %R255 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx254, i32 0, i32 0
  %217 = load double, double* %R255, align 8
  %218 = load i32, i32* %l, align 4
  %idxprom256 = sext i32 %218 to i64
  %219 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %arrayidx257 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %219, i64 %idxprom256
  %R258 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx257, i32 0, i32 0
  %220 = load double, double* %R258, align 8
  %add259 = fadd double %220, %217
  store double %add259, double* %R258, align 8
  %221 = load i32, i32* %l, align 4
  %idxprom260 = sext i32 %221 to i64
  %222 = load i32, i32* %k, align 4
  %idxprom261 = sext i32 %222 to i64
  %223 = load %struct._Fukusosuu**, %struct._Fukusosuu*** @Falign_udpari_long.naiseki, align 8
  %arrayidx262 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %223, i64 %idxprom261
  %224 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %224, i64 %idxprom260
  %I264 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx263, i32 0, i32 1
  %225 = load double, double* %I264, align 8
  %226 = load i32, i32* %l, align 4
  %idxprom265 = sext i32 %226 to i64
  %227 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %arrayidx266 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %227, i64 %idxprom265
  %I267 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx266, i32 0, i32 1
  %228 = load double, double* %I267, align 8
  %add268 = fadd double %228, %225
  store double %add268, double* %I267, align 8
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.body.250
  %229 = load i32, i32* %k, align 4
  %inc270 = add nsw i32 %229, 1
  store i32 %inc270, i32* %k, align 4
  br label %for.cond.247

for.end.271:                                      ; preds = %for.cond.247
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.end.271
  %230 = load i32, i32* %l, align 4
  %inc273 = add nsw i32 %230, 1
  store i32 %inc273, i32* %l, align 4
  br label %for.cond.239

for.end.274:                                      ; preds = %for.cond.239
  %231 = load i32, i32* %nlen, align 4
  %sub = sub nsw i32 0, %231
  %232 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %call275 = call i32 @fft(i32 %sub, %struct._Fukusosuu* %232, i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.286, %for.end.274
  %233 = load i32, i32* %m, align 4
  %234 = load i32, i32* %nlen2, align 4
  %cmp277 = icmp sle i32 %233, %234
  br i1 %cmp277, label %for.body.279, label %for.end.288

for.body.279:                                     ; preds = %for.cond.276
  %235 = load i32, i32* %nlen2, align 4
  %236 = load i32, i32* %m, align 4
  %sub280 = sub nsw i32 %235, %236
  %idxprom281 = sext i32 %sub280 to i64
  %237 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %arrayidx282 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %237, i64 %idxprom281
  %R283 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx282, i32 0, i32 0
  %238 = load double, double* %R283, align 8
  %239 = load i32, i32* %m, align 4
  %idxprom284 = sext i32 %239 to i64
  %240 = load double*, double** @Falign_udpari_long.soukan, align 8
  %arrayidx285 = getelementptr inbounds double, double* %240, i64 %idxprom284
  store double %238, double* %arrayidx285, align 8
  br label %for.inc.286

for.inc.286:                                      ; preds = %for.body.279
  %241 = load i32, i32* %m, align 4
  %inc287 = add nsw i32 %241, 1
  store i32 %inc287, i32* %m, align 4
  br label %for.cond.276

for.end.288:                                      ; preds = %for.cond.276
  %242 = load i32, i32* %nlen2, align 4
  %add289 = add nsw i32 %242, 1
  store i32 %add289, i32* %m, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.301, %for.end.288
  %243 = load i32, i32* %m, align 4
  %244 = load i32, i32* %nlen, align 4
  %cmp291 = icmp slt i32 %243, %244
  br i1 %cmp291, label %for.body.293, label %for.end.303

for.body.293:                                     ; preds = %for.cond.290
  %245 = load i32, i32* %nlen, align 4
  %246 = load i32, i32* %nlen2, align 4
  %add294 = add nsw i32 %245, %246
  %247 = load i32, i32* %m, align 4
  %sub295 = sub nsw i32 %add294, %247
  %idxprom296 = sext i32 %sub295 to i64
  %248 = load %struct._Fukusosuu*, %struct._Fukusosuu** @Falign_udpari_long.naisekiNoWa, align 8
  %arrayidx297 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %248, i64 %idxprom296
  %R298 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx297, i32 0, i32 0
  %249 = load double, double* %R298, align 8
  %250 = load i32, i32* %m, align 4
  %idxprom299 = sext i32 %250 to i64
  %251 = load double*, double** @Falign_udpari_long.soukan, align 8
  %arrayidx300 = getelementptr inbounds double, double* %251, i64 %idxprom299
  store double %249, double* %arrayidx300, align 8
  br label %for.inc.301

for.inc.301:                                      ; preds = %for.body.293
  %252 = load i32, i32* %m, align 4
  %inc302 = add nsw i32 %252, 1
  store i32 %inc302, i32* %m, align 4
  br label %for.cond.290

for.end.303:                                      ; preds = %for.cond.290
  %253 = load i32*, i32** @Falign_udpari_long.kouho, align 8
  %254 = load double*, double** @Falign_udpari_long.soukan, align 8
  %255 = load i32, i32* %nlen, align 4
  %call304 = call i32 @getKouho(i32* %253, i32 100, double* %254, i32 %255)
  store i32 %call304, i32* %nkouho, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %for.end.303, %for.end.90
  store i32 0, i32* %count, align 4
  %256 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool306 = icmp ne i32 %256, 0
  br i1 %tobool306, label %if.then.307, label %if.else.309

if.then.307:                                      ; preds = %if.end.305
  store i32 1, i32* %maxk, align 4
  %257 = load i32*, i32** @Falign_udpari_long.kouho, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 0, i32* %arrayidx308, align 4
  br label %if.end.310

if.else.309:                                      ; preds = %if.end.305
  %258 = load i32, i32* %nkouho, align 4
  store i32 %258, i32* %maxk, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.307
  store i32 0, i32* %k, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.454, %if.end.310
  %259 = load i32, i32* %k, align 4
  %260 = load i32, i32* %maxk, align 4
  %cmp312 = icmp slt i32 %259, %260
  br i1 %cmp312, label %for.body.314, label %for.end.456

for.body.314:                                     ; preds = %for.cond.311
  %261 = load i32, i32* %k, align 4
  %idxprom315 = sext i32 %261 to i64
  %262 = load i32*, i32** @Falign_udpari_long.kouho, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %262, i64 %idxprom315
  %263 = load i32, i32* %arrayidx316, align 4
  store i32 %263, i32* %lag, align 4
  %264 = load i32, i32* %lag, align 4
  %265 = load i32, i32* %len1, align 4
  %sub317 = sub nsw i32 0, %265
  %cmp318 = icmp sle i32 %264, %sub317
  br i1 %cmp318, label %if.then.322, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.314
  %266 = load i32, i32* %len2, align 4
  %267 = load i32, i32* %lag, align 4
  %cmp320 = icmp sle i32 %266, %267
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %lor.lhs.false, %for.body.314
  br label %for.inc.454

if.end.323:                                       ; preds = %lor.lhs.false
  %268 = load i32, i32* %lag, align 4
  %269 = load i32, i32* %clus1.addr, align 4
  %270 = load i32, i32* %clus2.addr, align 4
  %271 = load i8**, i8*** %seq1.addr, align 8
  %272 = load i8**, i8*** %seq2.addr, align 8
  %273 = load i8**, i8*** @Falign_udpari_long.tmpptr1, align 8
  %274 = load i8**, i8*** @Falign_udpari_long.tmpptr2, align 8
  call void @zurasu2(i32 %268, i32 %269, i32 %270, i8** %271, i8** %272, i8** %273, i8** %274)
  %275 = load i32, i32* %clus1.addr, align 4
  %276 = load i32, i32* %clus2.addr, align 4
  %277 = load i8**, i8*** @Falign_udpari_long.tmpptr1, align 8
  %278 = load i8**, i8*** @Falign_udpari_long.tmpptr2, align 8
  %279 = load double*, double** %eff1.addr, align 8
  %280 = load double*, double** %eff2.addr, align 8
  %281 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %282 = load i32, i32* %count, align 4
  %idx.ext324 = sext i32 %282 to i64
  %add.ptr325 = getelementptr inbounds %struct._Segment, %struct._Segment* %281, i64 %idx.ext324
  %call326 = call i32 @alignableReagion(i32 %275, i32 %276, i8** %277, i8** %278, double* %279, double* %280, %struct._Segment* %add.ptr325)
  store i32 %call326, i32* %tmpint, align 4
  %283 = load i32, i32* %count, align 4
  %284 = load i32, i32* %tmpint, align 4
  %add327 = add nsw i32 %283, %284
  %cmp328 = icmp sgt i32 %add327, 99997
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.323
  call void @ErrorExit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %if.end.323
  %285 = load i32, i32* %tmpint, align 4
  %cmp332 = icmp eq i32 %285, 0
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.331
  br label %for.end.456

if.end.335:                                       ; preds = %if.end.331
  br label %while.cond.336

while.cond.336:                                   ; preds = %if.end.442, %if.end.335
  %286 = load i32, i32* %tmpint, align 4
  %dec = add nsw i32 %286, -1
  store i32 %dec, i32* %tmpint, align 4
  %cmp337 = icmp sgt i32 %286, 0
  br i1 %cmp337, label %while.body.339, label %while.end.453

while.body.339:                                   ; preds = %while.cond.336
  %287 = load i32, i32* %lag, align 4
  %cmp340 = icmp sgt i32 %287, 0
  br i1 %cmp340, label %if.then.342, label %if.else.390

if.then.342:                                      ; preds = %while.body.339
  %288 = load i32, i32* %count, align 4
  %idxprom343 = sext i32 %288 to i64
  %289 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx344 = getelementptr inbounds %struct._Segment, %struct._Segment* %289, i64 %idxprom343
  %start = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx344, i32 0, i32 0
  %290 = load i32, i32* %start, align 4
  %291 = load i32, i32* %count, align 4
  %idxprom345 = sext i32 %291 to i64
  %292 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx346 = getelementptr inbounds %struct._Segment, %struct._Segment* %292, i64 %idxprom345
  %start347 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx346, i32 0, i32 0
  store i32 %290, i32* %start347, align 4
  %293 = load i32, i32* %count, align 4
  %idxprom348 = sext i32 %293 to i64
  %294 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx349 = getelementptr inbounds %struct._Segment, %struct._Segment* %294, i64 %idxprom348
  %end = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx349, i32 0, i32 1
  %295 = load i32, i32* %end, align 4
  %296 = load i32, i32* %count, align 4
  %idxprom350 = sext i32 %296 to i64
  %297 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx351 = getelementptr inbounds %struct._Segment, %struct._Segment* %297, i64 %idxprom350
  %end352 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx351, i32 0, i32 1
  store i32 %295, i32* %end352, align 4
  %298 = load i32, i32* %count, align 4
  %idxprom353 = sext i32 %298 to i64
  %299 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx354 = getelementptr inbounds %struct._Segment, %struct._Segment* %299, i64 %idxprom353
  %center = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx354, i32 0, i32 2
  %300 = load i32, i32* %center, align 4
  %301 = load i32, i32* %count, align 4
  %idxprom355 = sext i32 %301 to i64
  %302 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx356 = getelementptr inbounds %struct._Segment, %struct._Segment* %302, i64 %idxprom355
  %center357 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx356, i32 0, i32 2
  store i32 %300, i32* %center357, align 4
  %303 = load i32, i32* %count, align 4
  %idxprom358 = sext i32 %303 to i64
  %304 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx359 = getelementptr inbounds %struct._Segment, %struct._Segment* %304, i64 %idxprom358
  %score = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx359, i32 0, i32 3
  %305 = load double, double* %score, align 8
  %306 = load i32, i32* %count, align 4
  %idxprom360 = sext i32 %306 to i64
  %307 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx361 = getelementptr inbounds %struct._Segment, %struct._Segment* %307, i64 %idxprom360
  %score362 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx361, i32 0, i32 3
  store double %305, double* %score362, align 8
  %308 = load i32, i32* %count, align 4
  %idxprom363 = sext i32 %308 to i64
  %309 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx364 = getelementptr inbounds %struct._Segment, %struct._Segment* %309, i64 %idxprom363
  %start365 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx364, i32 0, i32 0
  %310 = load i32, i32* %start365, align 4
  %311 = load i32, i32* %lag, align 4
  %add366 = add nsw i32 %310, %311
  %312 = load i32, i32* %count, align 4
  %idxprom367 = sext i32 %312 to i64
  %313 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx368 = getelementptr inbounds %struct._Segment, %struct._Segment* %313, i64 %idxprom367
  %start369 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx368, i32 0, i32 0
  store i32 %add366, i32* %start369, align 4
  %314 = load i32, i32* %count, align 4
  %idxprom370 = sext i32 %314 to i64
  %315 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx371 = getelementptr inbounds %struct._Segment, %struct._Segment* %315, i64 %idxprom370
  %end372 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx371, i32 0, i32 1
  %316 = load i32, i32* %end372, align 4
  %317 = load i32, i32* %lag, align 4
  %add373 = add nsw i32 %316, %317
  %318 = load i32, i32* %count, align 4
  %idxprom374 = sext i32 %318 to i64
  %319 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx375 = getelementptr inbounds %struct._Segment, %struct._Segment* %319, i64 %idxprom374
  %end376 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx375, i32 0, i32 1
  store i32 %add373, i32* %end376, align 4
  %320 = load i32, i32* %count, align 4
  %idxprom377 = sext i32 %320 to i64
  %321 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx378 = getelementptr inbounds %struct._Segment, %struct._Segment* %321, i64 %idxprom377
  %center379 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx378, i32 0, i32 2
  %322 = load i32, i32* %center379, align 4
  %323 = load i32, i32* %lag, align 4
  %add380 = add nsw i32 %322, %323
  %324 = load i32, i32* %count, align 4
  %idxprom381 = sext i32 %324 to i64
  %325 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx382 = getelementptr inbounds %struct._Segment, %struct._Segment* %325, i64 %idxprom381
  %center383 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx382, i32 0, i32 2
  store i32 %add380, i32* %center383, align 4
  %326 = load i32, i32* %count, align 4
  %idxprom384 = sext i32 %326 to i64
  %327 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx385 = getelementptr inbounds %struct._Segment, %struct._Segment* %327, i64 %idxprom384
  %score386 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx385, i32 0, i32 3
  %328 = load double, double* %score386, align 8
  %329 = load i32, i32* %count, align 4
  %idxprom387 = sext i32 %329 to i64
  %330 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx388 = getelementptr inbounds %struct._Segment, %struct._Segment* %330, i64 %idxprom387
  %score389 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx388, i32 0, i32 3
  store double %328, double* %score389, align 8
  br label %if.end.442

if.else.390:                                      ; preds = %while.body.339
  %331 = load i32, i32* %count, align 4
  %idxprom391 = sext i32 %331 to i64
  %332 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx392 = getelementptr inbounds %struct._Segment, %struct._Segment* %332, i64 %idxprom391
  %start393 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx392, i32 0, i32 0
  %333 = load i32, i32* %start393, align 4
  %334 = load i32, i32* %lag, align 4
  %sub394 = sub nsw i32 %333, %334
  %335 = load i32, i32* %count, align 4
  %idxprom395 = sext i32 %335 to i64
  %336 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx396 = getelementptr inbounds %struct._Segment, %struct._Segment* %336, i64 %idxprom395
  %start397 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx396, i32 0, i32 0
  store i32 %sub394, i32* %start397, align 4
  %337 = load i32, i32* %count, align 4
  %idxprom398 = sext i32 %337 to i64
  %338 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx399 = getelementptr inbounds %struct._Segment, %struct._Segment* %338, i64 %idxprom398
  %end400 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx399, i32 0, i32 1
  %339 = load i32, i32* %end400, align 4
  %340 = load i32, i32* %lag, align 4
  %sub401 = sub nsw i32 %339, %340
  %341 = load i32, i32* %count, align 4
  %idxprom402 = sext i32 %341 to i64
  %342 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx403 = getelementptr inbounds %struct._Segment, %struct._Segment* %342, i64 %idxprom402
  %end404 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx403, i32 0, i32 1
  store i32 %sub401, i32* %end404, align 4
  %343 = load i32, i32* %count, align 4
  %idxprom405 = sext i32 %343 to i64
  %344 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx406 = getelementptr inbounds %struct._Segment, %struct._Segment* %344, i64 %idxprom405
  %center407 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx406, i32 0, i32 2
  %345 = load i32, i32* %center407, align 4
  %346 = load i32, i32* %lag, align 4
  %sub408 = sub nsw i32 %345, %346
  %347 = load i32, i32* %count, align 4
  %idxprom409 = sext i32 %347 to i64
  %348 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx410 = getelementptr inbounds %struct._Segment, %struct._Segment* %348, i64 %idxprom409
  %center411 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx410, i32 0, i32 2
  store i32 %sub408, i32* %center411, align 4
  %349 = load i32, i32* %count, align 4
  %idxprom412 = sext i32 %349 to i64
  %350 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx413 = getelementptr inbounds %struct._Segment, %struct._Segment* %350, i64 %idxprom412
  %score414 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx413, i32 0, i32 3
  %351 = load double, double* %score414, align 8
  %352 = load i32, i32* %count, align 4
  %idxprom415 = sext i32 %352 to i64
  %353 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx416 = getelementptr inbounds %struct._Segment, %struct._Segment* %353, i64 %idxprom415
  %score417 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx416, i32 0, i32 3
  store double %351, double* %score417, align 8
  %354 = load i32, i32* %count, align 4
  %idxprom418 = sext i32 %354 to i64
  %355 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx419 = getelementptr inbounds %struct._Segment, %struct._Segment* %355, i64 %idxprom418
  %start420 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx419, i32 0, i32 0
  %356 = load i32, i32* %start420, align 4
  %357 = load i32, i32* %count, align 4
  %idxprom421 = sext i32 %357 to i64
  %358 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx422 = getelementptr inbounds %struct._Segment, %struct._Segment* %358, i64 %idxprom421
  %start423 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx422, i32 0, i32 0
  store i32 %356, i32* %start423, align 4
  %359 = load i32, i32* %count, align 4
  %idxprom424 = sext i32 %359 to i64
  %360 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx425 = getelementptr inbounds %struct._Segment, %struct._Segment* %360, i64 %idxprom424
  %end426 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx425, i32 0, i32 1
  %361 = load i32, i32* %end426, align 4
  %362 = load i32, i32* %count, align 4
  %idxprom427 = sext i32 %362 to i64
  %363 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx428 = getelementptr inbounds %struct._Segment, %struct._Segment* %363, i64 %idxprom427
  %end429 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx428, i32 0, i32 1
  store i32 %361, i32* %end429, align 4
  %364 = load i32, i32* %count, align 4
  %idxprom430 = sext i32 %364 to i64
  %365 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx431 = getelementptr inbounds %struct._Segment, %struct._Segment* %365, i64 %idxprom430
  %center432 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx431, i32 0, i32 2
  %366 = load i32, i32* %center432, align 4
  %367 = load i32, i32* %count, align 4
  %idxprom433 = sext i32 %367 to i64
  %368 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx434 = getelementptr inbounds %struct._Segment, %struct._Segment* %368, i64 %idxprom433
  %center435 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx434, i32 0, i32 2
  store i32 %366, i32* %center435, align 4
  %369 = load i32, i32* %count, align 4
  %idxprom436 = sext i32 %369 to i64
  %370 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment, align 8
  %arrayidx437 = getelementptr inbounds %struct._Segment, %struct._Segment* %370, i64 %idxprom436
  %score438 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx437, i32 0, i32 3
  %371 = load double, double* %score438, align 8
  %372 = load i32, i32* %count, align 4
  %idxprom439 = sext i32 %372 to i64
  %373 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx440 = getelementptr inbounds %struct._Segment, %struct._Segment* %373, i64 %idxprom439
  %score441 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx440, i32 0, i32 3
  store double %371, double* %score441, align 8
  br label %if.end.442

if.end.442:                                       ; preds = %if.else.390, %if.then.342
  %374 = load i32, i32* %count, align 4
  %idxprom443 = sext i32 %374 to i64
  %375 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx444 = getelementptr inbounds %struct._Segment, %struct._Segment* %375, i64 %idxprom443
  %376 = load i32, i32* %count, align 4
  %idxprom445 = sext i32 %376 to i64
  %377 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx446 = getelementptr inbounds %struct._Segment, %struct._Segment* %377, i64 %idxprom445
  %pair = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx446, i32 0, i32 6
  store %struct._Segment* %arrayidx444, %struct._Segment** %pair, align 8
  %378 = load i32, i32* %count, align 4
  %idxprom447 = sext i32 %378 to i64
  %379 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx448 = getelementptr inbounds %struct._Segment, %struct._Segment* %379, i64 %idxprom447
  %380 = load i32, i32* %count, align 4
  %idxprom449 = sext i32 %380 to i64
  %381 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx450 = getelementptr inbounds %struct._Segment, %struct._Segment* %381, i64 %idxprom449
  %pair451 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx450, i32 0, i32 6
  store %struct._Segment* %arrayidx448, %struct._Segment** %pair451, align 8
  %382 = load i32, i32* %count, align 4
  %inc452 = add nsw i32 %382, 1
  store i32 %inc452, i32* %count, align 4
  br label %while.cond.336

while.end.453:                                    ; preds = %while.cond.336
  br label %for.inc.454

for.inc.454:                                      ; preds = %while.end.453, %if.then.322
  %383 = load i32, i32* %k, align 4
  %inc455 = add nsw i32 %383, 1
  store i32 %inc455, i32* %k, align 4
  br label %for.cond.311

for.end.456:                                      ; preds = %if.then.334, %for.cond.311
  %384 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool457 = icmp ne i32 %384, 0
  br i1 %tobool457, label %if.end.460, label %if.then.458

if.then.458:                                      ; preds = %for.end.456
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %386 = load i32, i32* %count, align 4
  %call459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %385, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 %386)
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.458, %for.end.456
  %387 = load i32, i32* %count, align 4
  %tobool461 = icmp ne i32 %387, 0
  br i1 %tobool461, label %if.end.465, label %land.lhs.true.462

land.lhs.true.462:                                ; preds = %if.end.460
  %388 = load i32, i32* @fftNoAnchStop, align 4
  %tobool463 = icmp ne i32 %388, 0
  br i1 %tobool463, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %land.lhs.true.462
  call void @ErrorExit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %land.lhs.true.462, %if.end.460
  store i32 0, i32* %i, align 4
  br label %for.cond.466

for.cond.466:                                     ; preds = %for.inc.478, %if.end.465
  %389 = load i32, i32* %i, align 4
  %390 = load i32, i32* %count, align 4
  %cmp467 = icmp slt i32 %389, %390
  br i1 %cmp467, label %for.body.469, label %for.end.480

for.body.469:                                     ; preds = %for.cond.466
  %391 = load i32, i32* %i, align 4
  %idxprom470 = sext i32 %391 to i64
  %392 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx471 = getelementptr inbounds %struct._Segment, %struct._Segment* %392, i64 %idxprom470
  %393 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %393 to i64
  %394 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %arrayidx473 = getelementptr inbounds %struct._Segment*, %struct._Segment** %394, i64 %idxprom472
  store %struct._Segment* %arrayidx471, %struct._Segment** %arrayidx473, align 8
  %395 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %395 to i64
  %396 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment2, align 8
  %arrayidx475 = getelementptr inbounds %struct._Segment, %struct._Segment* %396, i64 %idxprom474
  %397 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %397 to i64
  %398 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %arrayidx477 = getelementptr inbounds %struct._Segment*, %struct._Segment** %398, i64 %idxprom476
  store %struct._Segment* %arrayidx475, %struct._Segment** %arrayidx477, align 8
  br label %for.inc.478

for.inc.478:                                      ; preds = %for.body.469
  %399 = load i32, i32* %i, align 4
  %inc479 = add nsw i32 %399, 1
  store i32 %inc479, i32* %i, align 4
  br label %for.cond.466

for.end.480:                                      ; preds = %for.cond.466
  %400 = load i32, i32* %count, align 4
  %sub481 = sub nsw i32 %400, 1
  %401 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  call void @mymergesort(i32 0, i32 %sub481, %struct._Segment** %401)
  %402 = load i32, i32* %count, align 4
  %sub482 = sub nsw i32 %402, 1
  %403 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  call void @mymergesort(i32 0, i32 %sub482, %struct._Segment** %403)
  store i32 0, i32* %i, align 4
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.489, %for.end.480
  %404 = load i32, i32* %i, align 4
  %405 = load i32, i32* %count, align 4
  %cmp484 = icmp slt i32 %404, %405
  br i1 %cmp484, label %for.body.486, label %for.end.491

for.body.486:                                     ; preds = %for.cond.483
  %406 = load i32, i32* %i, align 4
  %407 = load i32, i32* %i, align 4
  %idxprom487 = sext i32 %407 to i64
  %408 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %arrayidx488 = getelementptr inbounds %struct._Segment*, %struct._Segment** %408, i64 %idxprom487
  %409 = load %struct._Segment*, %struct._Segment** %arrayidx488, align 8
  %number = getelementptr inbounds %struct._Segment, %struct._Segment* %409, i32 0, i32 7
  store i32 %406, i32* %number, align 4
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.body.486
  %410 = load i32, i32* %i, align 4
  %inc490 = add nsw i32 %410, 1
  store i32 %inc490, i32* %i, align 4
  br label %for.cond.483

for.end.491:                                      ; preds = %for.cond.483
  store i32 0, i32* %i, align 4
  br label %for.cond.492

for.cond.492:                                     ; preds = %for.inc.499, %for.end.491
  %411 = load i32, i32* %i, align 4
  %412 = load i32, i32* %count, align 4
  %cmp493 = icmp slt i32 %411, %412
  br i1 %cmp493, label %for.body.495, label %for.end.501

for.body.495:                                     ; preds = %for.cond.492
  %413 = load i32, i32* %i, align 4
  %414 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %414 to i64
  %415 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %arrayidx497 = getelementptr inbounds %struct._Segment*, %struct._Segment** %415, i64 %idxprom496
  %416 = load %struct._Segment*, %struct._Segment** %arrayidx497, align 8
  %number498 = getelementptr inbounds %struct._Segment, %struct._Segment* %416, i32 0, i32 7
  store i32 %413, i32* %number498, align 4
  br label %for.inc.499

for.inc.499:                                      ; preds = %for.body.495
  %417 = load i32, i32* %i, align 4
  %inc500 = add nsw i32 %417, 1
  store i32 %inc500, i32* %i, align 4
  br label %for.cond.492

for.end.501:                                      ; preds = %for.cond.492
  %418 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool502 = icmp ne i32 %418, 0
  br i1 %tobool502, label %if.then.503, label %if.else.532

if.then.503:                                      ; preds = %for.end.501
  store i32 0, i32* %i, align 4
  br label %for.cond.504

for.cond.504:                                     ; preds = %for.inc.520, %if.then.503
  %419 = load i32, i32* %i, align 4
  %420 = load i32, i32* %count, align 4
  %cmp505 = icmp slt i32 %419, %420
  br i1 %cmp505, label %for.body.507, label %for.end.522

for.body.507:                                     ; preds = %for.cond.504
  %421 = load i32, i32* %i, align 4
  %idxprom508 = sext i32 %421 to i64
  %422 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %arrayidx509 = getelementptr inbounds %struct._Segment*, %struct._Segment** %422, i64 %idxprom508
  %423 = load %struct._Segment*, %struct._Segment** %arrayidx509, align 8
  %center510 = getelementptr inbounds %struct._Segment, %struct._Segment* %423, i32 0, i32 2
  %424 = load i32, i32* %center510, align 4
  %425 = load i32, i32* %i, align 4
  %add511 = add nsw i32 %425, 1
  %idxprom512 = sext i32 %add511 to i64
  %426 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %426, i64 %idxprom512
  store i32 %424, i32* %arrayidx513, align 4
  %427 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %427 to i64
  %428 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %arrayidx515 = getelementptr inbounds %struct._Segment*, %struct._Segment** %428, i64 %idxprom514
  %429 = load %struct._Segment*, %struct._Segment** %arrayidx515, align 8
  %center516 = getelementptr inbounds %struct._Segment, %struct._Segment* %429, i32 0, i32 2
  %430 = load i32, i32* %center516, align 4
  %431 = load i32, i32* %i, align 4
  %add517 = add nsw i32 %431, 1
  %idxprom518 = sext i32 %add517 to i64
  %432 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %432, i64 %idxprom518
  store i32 %430, i32* %arrayidx519, align 4
  br label %for.inc.520

for.inc.520:                                      ; preds = %for.body.507
  %433 = load i32, i32* %i, align 4
  %inc521 = add nsw i32 %433, 1
  store i32 %inc521, i32* %i, align 4
  br label %for.cond.504

for.end.522:                                      ; preds = %for.cond.504
  %434 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %434, i64 0
  store i32 0, i32* %arrayidx523, align 4
  %435 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx524 = getelementptr inbounds i32, i32* %435, i64 0
  store i32 0, i32* %arrayidx524, align 4
  %436 = load i32, i32* %len1, align 4
  %437 = load i32, i32* %count, align 4
  %add525 = add nsw i32 %437, 1
  %idxprom526 = sext i32 %add525 to i64
  %438 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx527 = getelementptr inbounds i32, i32* %438, i64 %idxprom526
  store i32 %436, i32* %arrayidx527, align 4
  %439 = load i32, i32* %len2, align 4
  %440 = load i32, i32* %count, align 4
  %add528 = add nsw i32 %440, 1
  %idxprom529 = sext i32 %add528 to i64
  %441 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx530 = getelementptr inbounds i32, i32* %441, i64 %idxprom529
  store i32 %439, i32* %arrayidx530, align 4
  %442 = load i32, i32* %count, align 4
  %add531 = add nsw i32 %442, 2
  store i32 %add531, i32* %count, align 4
  br label %if.end.636

if.else.532:                                      ; preds = %for.end.501
  %443 = load i32, i32* @Falign_udpari_long.crossscoresize, align 4
  %444 = load i32, i32* %count, align 4
  %add533 = add nsw i32 %444, 2
  %cmp534 = icmp slt i32 %443, %add533
  br i1 %cmp534, label %if.then.536, label %if.end.546

if.then.536:                                      ; preds = %if.else.532
  %445 = load i32, i32* %count, align 4
  %add537 = add nsw i32 %445, 2
  store i32 %add537, i32* @Falign_udpari_long.crossscoresize, align 4
  %446 = load i32, i32* @fftkeika, align 4
  %tobool538 = icmp ne i32 %446, 0
  br i1 %tobool538, label %if.then.539, label %if.end.541

if.then.539:                                      ; preds = %if.then.536
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %448 = load i32, i32* @Falign_udpari_long.crossscoresize, align 4
  %call540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %448)
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.539, %if.then.536
  %449 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  %tobool542 = icmp ne double** %449, null
  br i1 %tobool542, label %if.then.543, label %if.end.544

if.then.543:                                      ; preds = %if.end.541
  %450 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  call void @FreeDoubleMtx(double** %450)
  br label %if.end.544

if.end.544:                                       ; preds = %if.then.543, %if.end.541
  %451 = load i32, i32* @Falign_udpari_long.crossscoresize, align 4
  %452 = load i32, i32* @Falign_udpari_long.crossscoresize, align 4
  %call545 = call double** @AllocateDoubleMtx(i32 %451, i32 %452)
  store double** %call545, double*** @Falign_udpari_long.crossscore, align 8
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.544, %if.else.532
  store i32 0, i32* %i, align 4
  br label %for.cond.547

for.cond.547:                                     ; preds = %for.inc.564, %if.end.546
  %453 = load i32, i32* %i, align 4
  %454 = load i32, i32* %count, align 4
  %add548 = add nsw i32 %454, 2
  %cmp549 = icmp slt i32 %453, %add548
  br i1 %cmp549, label %for.body.551, label %for.end.566

for.body.551:                                     ; preds = %for.cond.547
  store i32 0, i32* %j, align 4
  br label %for.cond.552

for.cond.552:                                     ; preds = %for.inc.561, %for.body.551
  %455 = load i32, i32* %j, align 4
  %456 = load i32, i32* %count, align 4
  %add553 = add nsw i32 %456, 2
  %cmp554 = icmp slt i32 %455, %add553
  br i1 %cmp554, label %for.body.556, label %for.end.563

for.body.556:                                     ; preds = %for.cond.552
  %457 = load i32, i32* %j, align 4
  %idxprom557 = sext i32 %457 to i64
  %458 = load i32, i32* %i, align 4
  %idxprom558 = sext i32 %458 to i64
  %459 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  %arrayidx559 = getelementptr inbounds double*, double** %459, i64 %idxprom558
  %460 = load double*, double** %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds double, double* %460, i64 %idxprom557
  store double 0.000000e+00, double* %arrayidx560, align 8
  br label %for.inc.561

for.inc.561:                                      ; preds = %for.body.556
  %461 = load i32, i32* %j, align 4
  %inc562 = add nsw i32 %461, 1
  store i32 %inc562, i32* %j, align 4
  br label %for.cond.552

for.end.563:                                      ; preds = %for.cond.552
  br label %for.inc.564

for.inc.564:                                      ; preds = %for.end.563
  %462 = load i32, i32* %i, align 4
  %inc565 = add nsw i32 %462, 1
  store i32 %inc565, i32* %i, align 4
  br label %for.cond.547

for.end.566:                                      ; preds = %for.cond.547
  store i32 0, i32* %i, align 4
  br label %for.cond.567

for.cond.567:                                     ; preds = %for.inc.599, %for.end.566
  %463 = load i32, i32* %i, align 4
  %464 = load i32, i32* %count, align 4
  %cmp568 = icmp slt i32 %463, %464
  br i1 %cmp568, label %for.body.570, label %for.end.601

for.body.570:                                     ; preds = %for.cond.567
  %465 = load i32, i32* %i, align 4
  %idxprom571 = sext i32 %465 to i64
  %466 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx572 = getelementptr inbounds %struct._Segment, %struct._Segment* %466, i64 %idxprom571
  %score573 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx572, i32 0, i32 3
  %467 = load double, double* %score573, align 8
  %468 = load i32, i32* %i, align 4
  %idxprom574 = sext i32 %468 to i64
  %469 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx575 = getelementptr inbounds %struct._Segment, %struct._Segment* %469, i64 %idxprom574
  %pair576 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx575, i32 0, i32 6
  %470 = load %struct._Segment*, %struct._Segment** %pair576, align 8
  %number577 = getelementptr inbounds %struct._Segment, %struct._Segment* %470, i32 0, i32 7
  %471 = load i32, i32* %number577, align 4
  %add578 = add nsw i32 %471, 1
  %idxprom579 = sext i32 %add578 to i64
  %472 = load i32, i32* %i, align 4
  %idxprom580 = sext i32 %472 to i64
  %473 = load %struct._Segment*, %struct._Segment** @Falign_udpari_long.segment1, align 8
  %arrayidx581 = getelementptr inbounds %struct._Segment, %struct._Segment* %473, i64 %idxprom580
  %number582 = getelementptr inbounds %struct._Segment, %struct._Segment* %arrayidx581, i32 0, i32 7
  %474 = load i32, i32* %number582, align 4
  %add583 = add nsw i32 %474, 1
  %idxprom584 = sext i32 %add583 to i64
  %475 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  %arrayidx585 = getelementptr inbounds double*, double** %475, i64 %idxprom584
  %476 = load double*, double** %arrayidx585, align 8
  %arrayidx586 = getelementptr inbounds double, double* %476, i64 %idxprom579
  store double %467, double* %arrayidx586, align 8
  %477 = load i32, i32* %i, align 4
  %idxprom587 = sext i32 %477 to i64
  %478 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %arrayidx588 = getelementptr inbounds %struct._Segment*, %struct._Segment** %478, i64 %idxprom587
  %479 = load %struct._Segment*, %struct._Segment** %arrayidx588, align 8
  %center589 = getelementptr inbounds %struct._Segment, %struct._Segment* %479, i32 0, i32 2
  %480 = load i32, i32* %center589, align 4
  %481 = load i32, i32* %i, align 4
  %add590 = add nsw i32 %481, 1
  %idxprom591 = sext i32 %add590 to i64
  %482 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx592 = getelementptr inbounds i32, i32* %482, i64 %idxprom591
  store i32 %480, i32* %arrayidx592, align 4
  %483 = load i32, i32* %i, align 4
  %idxprom593 = sext i32 %483 to i64
  %484 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %arrayidx594 = getelementptr inbounds %struct._Segment*, %struct._Segment** %484, i64 %idxprom593
  %485 = load %struct._Segment*, %struct._Segment** %arrayidx594, align 8
  %center595 = getelementptr inbounds %struct._Segment, %struct._Segment* %485, i32 0, i32 2
  %486 = load i32, i32* %center595, align 4
  %487 = load i32, i32* %i, align 4
  %add596 = add nsw i32 %487, 1
  %idxprom597 = sext i32 %add596 to i64
  %488 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx598 = getelementptr inbounds i32, i32* %488, i64 %idxprom597
  store i32 %486, i32* %arrayidx598, align 4
  br label %for.inc.599

for.inc.599:                                      ; preds = %for.body.570
  %489 = load i32, i32* %i, align 4
  %inc600 = add nsw i32 %489, 1
  store i32 %inc600, i32* %i, align 4
  br label %for.cond.567

for.end.601:                                      ; preds = %for.cond.567
  %490 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  %arrayidx602 = getelementptr inbounds double*, double** %490, i64 0
  %491 = load double*, double** %arrayidx602, align 8
  %arrayidx603 = getelementptr inbounds double, double* %491, i64 0
  store double 1.000000e+07, double* %arrayidx603, align 8
  %492 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx604 = getelementptr inbounds i32, i32* %492, i64 0
  store i32 0, i32* %arrayidx604, align 4
  %493 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx605 = getelementptr inbounds i32, i32* %493, i64 0
  store i32 0, i32* %arrayidx605, align 4
  %494 = load i32, i32* %count, align 4
  %add606 = add nsw i32 %494, 1
  %idxprom607 = sext i32 %add606 to i64
  %495 = load i32, i32* %count, align 4
  %add608 = add nsw i32 %495, 1
  %idxprom609 = sext i32 %add608 to i64
  %496 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  %arrayidx610 = getelementptr inbounds double*, double** %496, i64 %idxprom609
  %497 = load double*, double** %arrayidx610, align 8
  %arrayidx611 = getelementptr inbounds double, double* %497, i64 %idxprom607
  store double 1.000000e+07, double* %arrayidx611, align 8
  %498 = load i32, i32* %len1, align 4
  %499 = load i32, i32* %count, align 4
  %add612 = add nsw i32 %499, 1
  %idxprom613 = sext i32 %add612 to i64
  %500 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx614 = getelementptr inbounds i32, i32* %500, i64 %idxprom613
  store i32 %498, i32* %arrayidx614, align 4
  %501 = load i32, i32* %len2, align 4
  %502 = load i32, i32* %count, align 4
  %add615 = add nsw i32 %502, 1
  %idxprom616 = sext i32 %add615 to i64
  %503 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx617 = getelementptr inbounds i32, i32* %503, i64 %idxprom616
  store i32 %501, i32* %arrayidx617, align 4
  %504 = load i32, i32* %count, align 4
  %add618 = add nsw i32 %504, 2
  store i32 %add618, i32* %count, align 4
  %505 = load i32, i32* %count, align 4
  store i32 %505, i32* %count0, align 4
  %506 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %507 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %508 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg1, align 8
  %509 = load %struct._Segment**, %struct._Segment*** @Falign_udpari_long.sortedseg2, align 8
  %510 = load double**, double*** @Falign_udpari_long.crossscore, align 8
  call void @blockAlign2(i32* %506, i32* %507, %struct._Segment** %508, %struct._Segment** %509, double** %510, i32* %count)
  %511 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool619 = icmp ne i32 %511, 0
  br i1 %tobool619, label %if.end.624, label %land.lhs.true.620

land.lhs.true.620:                                ; preds = %for.end.601
  %512 = load i32, i32* @fftkeika, align 4
  %tobool621 = icmp ne i32 %512, 0
  br i1 %tobool621, label %if.then.622, label %if.end.624

if.then.622:                                      ; preds = %land.lhs.true.620
  %513 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %514 = load i32, i32* %count, align 4
  %call623 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %513, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %514)
  br label %if.end.624

if.end.624:                                       ; preds = %if.then.622, %land.lhs.true.620, %for.end.601
  %515 = load i32, i32* @fftkeika, align 4
  %tobool625 = icmp ne i32 %515, 0
  br i1 %tobool625, label %if.then.626, label %if.end.635

if.then.626:                                      ; preds = %if.end.624
  %516 = load i32, i32* %count0, align 4
  %517 = load i32, i32* %count, align 4
  %cmp627 = icmp sgt i32 %516, %517
  br i1 %cmp627, label %if.then.629, label %if.end.634

if.then.629:                                      ; preds = %if.then.626
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call630 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %518, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %519 = load i32, i32* @fftRepeatStop, align 4
  %tobool631 = icmp ne i32 %519, 0
  br i1 %tobool631, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %if.then.629
  call void @exit(i32 1) #7
  unreachable

if.end.633:                                       ; preds = %if.then.629
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.then.626
  br label %if.end.635

if.end.635:                                       ; preds = %if.end.634, %if.end.624
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %for.end.522
  store i32 0, i32* %totallen, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.644, %if.end.636
  %520 = load i32, i32* %j, align 4
  %521 = load i32, i32* %clus1.addr, align 4
  %cmp638 = icmp slt i32 %520, %521
  br i1 %cmp638, label %for.body.640, label %for.end.646

for.body.640:                                     ; preds = %for.cond.637
  %522 = load i32, i32* %j, align 4
  %idxprom641 = sext i32 %522 to i64
  %523 = load i8**, i8*** @Falign_udpari_long.result1, align 8
  %arrayidx642 = getelementptr inbounds i8*, i8** %523, i64 %idxprom641
  %524 = load i8*, i8** %arrayidx642, align 8
  %arrayidx643 = getelementptr inbounds i8, i8* %524, i64 0
  store i8 0, i8* %arrayidx643, align 1
  br label %for.inc.644

for.inc.644:                                      ; preds = %for.body.640
  %525 = load i32, i32* %j, align 4
  %inc645 = add nsw i32 %525, 1
  store i32 %inc645, i32* %j, align 4
  br label %for.cond.637

for.end.646:                                      ; preds = %for.cond.637
  store i32 0, i32* %j, align 4
  br label %for.cond.647

for.cond.647:                                     ; preds = %for.inc.654, %for.end.646
  %526 = load i32, i32* %j, align 4
  %527 = load i32, i32* %clus2.addr, align 4
  %cmp648 = icmp slt i32 %526, %527
  br i1 %cmp648, label %for.body.650, label %for.end.656

for.body.650:                                     ; preds = %for.cond.647
  %528 = load i32, i32* %j, align 4
  %idxprom651 = sext i32 %528 to i64
  %529 = load i8**, i8*** @Falign_udpari_long.result2, align 8
  %arrayidx652 = getelementptr inbounds i8*, i8** %529, i64 %idxprom651
  %530 = load i8*, i8** %arrayidx652, align 8
  %arrayidx653 = getelementptr inbounds i8, i8* %530, i64 0
  store i8 0, i8* %arrayidx653, align 1
  br label %for.inc.654

for.inc.654:                                      ; preds = %for.body.650
  %531 = load i32, i32* %j, align 4
  %inc655 = add nsw i32 %531, 1
  store i32 %inc655, i32* %j, align 4
  br label %for.cond.647

for.end.656:                                      ; preds = %for.cond.647
  store float 0.000000e+00, float* %totalscore, align 4
  %532 = load i32*, i32** %fftlog.addr, align 8
  store i32 -1, i32* %532, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.657

for.cond.657:                                     ; preds = %for.inc.859, %for.end.656
  %533 = load i32, i32* %i, align 4
  %534 = load i32, i32* %count, align 4
  %sub658 = sub nsw i32 %534, 1
  %cmp659 = icmp slt i32 %533, %sub658
  br i1 %cmp659, label %for.body.661, label %for.end.861

for.body.661:                                     ; preds = %for.cond.657
  %535 = load i32*, i32** %fftlog.addr, align 8
  %536 = load i32, i32* %535, align 4
  %add662 = add nsw i32 %536, 1
  store i32 %add662, i32* %535, align 4
  %537 = load i32, i32* %i, align 4
  %idxprom663 = sext i32 %537 to i64
  %538 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx664 = getelementptr inbounds i32, i32* %538, i64 %idxprom663
  %539 = load i32, i32* %arrayidx664, align 4
  %tobool665 = icmp ne i32 %539, 0
  br i1 %tobool665, label %if.then.666, label %if.else.669

if.then.666:                                      ; preds = %for.body.661
  %540 = load i8*, i8** @Falign_udpari_long.sgap1, align 8
  %541 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  %542 = load i32, i32* %nlen, align 4
  %sub667 = sub nsw i32 %542, 1
  %543 = load i32, i32* %clus1.addr, align 4
  call void @getkyokaigap(i8* %540, i8** %541, i32 %sub667, i32 %543)
  %544 = load i8*, i8** @Falign_udpari_long.sgap2, align 8
  %545 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  %546 = load i32, i32* %nlen, align 4
  %sub668 = sub nsw i32 %546, 1
  %547 = load i32, i32* %clus2.addr, align 4
  call void @getkyokaigap(i8* %544, i8** %545, i32 %sub668, i32 %547)
  br label %if.end.688

if.else.669:                                      ; preds = %for.body.661
  store i32 0, i32* %j, align 4
  br label %for.cond.670

for.cond.670:                                     ; preds = %for.inc.676, %if.else.669
  %548 = load i32, i32* %j, align 4
  %549 = load i32, i32* %clus1.addr, align 4
  %cmp671 = icmp slt i32 %548, %549
  br i1 %cmp671, label %for.body.673, label %for.end.678

for.body.673:                                     ; preds = %for.cond.670
  %550 = load i32, i32* %j, align 4
  %idxprom674 = sext i32 %550 to i64
  %551 = load i8*, i8** @Falign_udpari_long.sgap1, align 8
  %arrayidx675 = getelementptr inbounds i8, i8* %551, i64 %idxprom674
  store i8 111, i8* %arrayidx675, align 1
  br label %for.inc.676

for.inc.676:                                      ; preds = %for.body.673
  %552 = load i32, i32* %j, align 4
  %inc677 = add nsw i32 %552, 1
  store i32 %inc677, i32* %j, align 4
  br label %for.cond.670

for.end.678:                                      ; preds = %for.cond.670
  store i32 0, i32* %j, align 4
  br label %for.cond.679

for.cond.679:                                     ; preds = %for.inc.685, %for.end.678
  %553 = load i32, i32* %j, align 4
  %554 = load i32, i32* %clus2.addr, align 4
  %cmp680 = icmp slt i32 %553, %554
  br i1 %cmp680, label %for.body.682, label %for.end.687

for.body.682:                                     ; preds = %for.cond.679
  %555 = load i32, i32* %j, align 4
  %idxprom683 = sext i32 %555 to i64
  %556 = load i8*, i8** @Falign_udpari_long.sgap2, align 8
  %arrayidx684 = getelementptr inbounds i8, i8* %556, i64 %idxprom683
  store i8 111, i8* %arrayidx684, align 1
  br label %for.inc.685

for.inc.685:                                      ; preds = %for.body.682
  %557 = load i32, i32* %j, align 4
  %inc686 = add nsw i32 %557, 1
  store i32 %inc686, i32* %j, align 4
  br label %for.cond.679

for.end.687:                                      ; preds = %for.cond.679
  br label %if.end.688

if.end.688:                                       ; preds = %for.end.687, %if.then.666
  %558 = load i32, i32* %i, align 4
  %add689 = add nsw i32 %558, 1
  %idxprom690 = sext i32 %add689 to i64
  %559 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx691 = getelementptr inbounds i32, i32* %559, i64 %idxprom690
  %560 = load i32, i32* %arrayidx691, align 4
  %561 = load i32, i32* %len1, align 4
  %cmp692 = icmp ne i32 %560, %561
  br i1 %cmp692, label %if.then.694, label %if.else.701

if.then.694:                                      ; preds = %if.end.688
  %562 = load i8*, i8** @Falign_udpari_long.egap1, align 8
  %563 = load i8**, i8*** %seq1.addr, align 8
  %564 = load i32, i32* %i, align 4
  %add695 = add nsw i32 %564, 1
  %idxprom696 = sext i32 %add695 to i64
  %565 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx697 = getelementptr inbounds i32, i32* %565, i64 %idxprom696
  %566 = load i32, i32* %arrayidx697, align 4
  %567 = load i32, i32* %clus1.addr, align 4
  call void @getkyokaigap(i8* %562, i8** %563, i32 %566, i32 %567)
  %568 = load i8*, i8** @Falign_udpari_long.egap2, align 8
  %569 = load i8**, i8*** %seq2.addr, align 8
  %570 = load i32, i32* %i, align 4
  %add698 = add nsw i32 %570, 1
  %idxprom699 = sext i32 %add698 to i64
  %571 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx700 = getelementptr inbounds i32, i32* %571, i64 %idxprom699
  %572 = load i32, i32* %arrayidx700, align 4
  %573 = load i32, i32* %clus2.addr, align 4
  call void @getkyokaigap(i8* %568, i8** %569, i32 %572, i32 %573)
  br label %if.end.720

if.else.701:                                      ; preds = %if.end.688
  store i32 0, i32* %j, align 4
  br label %for.cond.702

for.cond.702:                                     ; preds = %for.inc.708, %if.else.701
  %574 = load i32, i32* %j, align 4
  %575 = load i32, i32* %clus1.addr, align 4
  %cmp703 = icmp slt i32 %574, %575
  br i1 %cmp703, label %for.body.705, label %for.end.710

for.body.705:                                     ; preds = %for.cond.702
  %576 = load i32, i32* %j, align 4
  %idxprom706 = sext i32 %576 to i64
  %577 = load i8*, i8** @Falign_udpari_long.egap1, align 8
  %arrayidx707 = getelementptr inbounds i8, i8* %577, i64 %idxprom706
  store i8 111, i8* %arrayidx707, align 1
  br label %for.inc.708

for.inc.708:                                      ; preds = %for.body.705
  %578 = load i32, i32* %j, align 4
  %inc709 = add nsw i32 %578, 1
  store i32 %inc709, i32* %j, align 4
  br label %for.cond.702

for.end.710:                                      ; preds = %for.cond.702
  store i32 0, i32* %j, align 4
  br label %for.cond.711

for.cond.711:                                     ; preds = %for.inc.717, %for.end.710
  %579 = load i32, i32* %j, align 4
  %580 = load i32, i32* %clus2.addr, align 4
  %cmp712 = icmp slt i32 %579, %580
  br i1 %cmp712, label %for.body.714, label %for.end.719

for.body.714:                                     ; preds = %for.cond.711
  %581 = load i32, i32* %j, align 4
  %idxprom715 = sext i32 %581 to i64
  %582 = load i8*, i8** @Falign_udpari_long.egap2, align 8
  %arrayidx716 = getelementptr inbounds i8, i8* %582, i64 %idxprom715
  store i8 111, i8* %arrayidx716, align 1
  br label %for.inc.717

for.inc.717:                                      ; preds = %for.body.714
  %583 = load i32, i32* %j, align 4
  %inc718 = add nsw i32 %583, 1
  store i32 %inc718, i32* %j, align 4
  br label %for.cond.711

for.end.719:                                      ; preds = %for.cond.711
  br label %if.end.720

if.end.720:                                       ; preds = %for.end.719, %if.then.694
  %584 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %585 = load i32, i32* %i, align 4
  %add721 = add nsw i32 %585, 1
  %586 = load i32, i32* %count, align 4
  %sub722 = sub nsw i32 %586, 1
  %call723 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %584, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %add721, i32 %sub722)
  store i32 0, i32* %j, align 4
  br label %for.cond.724

for.cond.724:                                     ; preds = %for.inc.754, %if.end.720
  %587 = load i32, i32* %j, align 4
  %588 = load i32, i32* %clus1.addr, align 4
  %cmp725 = icmp slt i32 %587, %588
  br i1 %cmp725, label %for.body.727, label %for.end.756

for.body.727:                                     ; preds = %for.cond.724
  %589 = load i32, i32* %j, align 4
  %idxprom728 = sext i32 %589 to i64
  %590 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  %arrayidx729 = getelementptr inbounds i8*, i8** %590, i64 %idxprom728
  %591 = load i8*, i8** %arrayidx729, align 8
  %592 = load i32, i32* %j, align 4
  %idxprom730 = sext i32 %592 to i64
  %593 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx731 = getelementptr inbounds i8*, i8** %593, i64 %idxprom730
  %594 = load i8*, i8** %arrayidx731, align 8
  %595 = load i32, i32* %i, align 4
  %idxprom732 = sext i32 %595 to i64
  %596 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx733 = getelementptr inbounds i32, i32* %596, i64 %idxprom732
  %597 = load i32, i32* %arrayidx733, align 4
  %idx.ext734 = sext i32 %597 to i64
  %add.ptr735 = getelementptr inbounds i8, i8* %594, i64 %idx.ext734
  %598 = load i32, i32* %i, align 4
  %add736 = add nsw i32 %598, 1
  %idxprom737 = sext i32 %add736 to i64
  %599 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx738 = getelementptr inbounds i32, i32* %599, i64 %idxprom737
  %600 = load i32, i32* %arrayidx738, align 4
  %601 = load i32, i32* %i, align 4
  %idxprom739 = sext i32 %601 to i64
  %602 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx740 = getelementptr inbounds i32, i32* %602, i64 %idxprom739
  %603 = load i32, i32* %arrayidx740, align 4
  %sub741 = sub nsw i32 %600, %603
  %conv742 = sext i32 %sub741 to i64
  %call743 = call i8* @strncpy(i8* %591, i8* %add.ptr735, i64 %conv742) #6
  %604 = load i32, i32* %i, align 4
  %add744 = add nsw i32 %604, 1
  %idxprom745 = sext i32 %add744 to i64
  %605 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx746 = getelementptr inbounds i32, i32* %605, i64 %idxprom745
  %606 = load i32, i32* %arrayidx746, align 4
  %607 = load i32, i32* %i, align 4
  %idxprom747 = sext i32 %607 to i64
  %608 = load i32*, i32** @Falign_udpari_long.cut1, align 8
  %arrayidx748 = getelementptr inbounds i32, i32* %608, i64 %idxprom747
  %609 = load i32, i32* %arrayidx748, align 4
  %sub749 = sub nsw i32 %606, %609
  %idxprom750 = sext i32 %sub749 to i64
  %610 = load i32, i32* %j, align 4
  %idxprom751 = sext i32 %610 to i64
  %611 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  %arrayidx752 = getelementptr inbounds i8*, i8** %611, i64 %idxprom751
  %612 = load i8*, i8** %arrayidx752, align 8
  %arrayidx753 = getelementptr inbounds i8, i8* %612, i64 %idxprom750
  store i8 0, i8* %arrayidx753, align 1
  br label %for.inc.754

for.inc.754:                                      ; preds = %for.body.727
  %613 = load i32, i32* %j, align 4
  %inc755 = add nsw i32 %613, 1
  store i32 %inc755, i32* %j, align 4
  br label %for.cond.724

for.end.756:                                      ; preds = %for.cond.724
  %614 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool757 = icmp ne i32 %614, 0
  br i1 %tobool757, label %land.lhs.true.758, label %if.end.761

land.lhs.true.758:                                ; preds = %for.end.756
  %615 = load i32, i32* @fftkeika, align 4
  %tobool759 = icmp ne i32 %615, 0
  br i1 %tobool759, label %if.then.760, label %if.end.761

if.then.760:                                      ; preds = %land.lhs.true.758
  %616 = load i32, i32* %clus1.addr, align 4
  %617 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  call void @commongappick(i32 %616, i8** %617)
  br label %if.end.761

if.end.761:                                       ; preds = %if.then.760, %land.lhs.true.758, %for.end.756
  store i32 0, i32* %j, align 4
  br label %for.cond.762

for.cond.762:                                     ; preds = %for.inc.808, %if.end.761
  %618 = load i32, i32* %j, align 4
  %619 = load i32, i32* %clus2.addr, align 4
  %cmp763 = icmp slt i32 %618, %619
  br i1 %cmp763, label %for.body.765, label %for.end.810

for.body.765:                                     ; preds = %for.cond.762
  %620 = load i32, i32* %i, align 4
  %add766 = add nsw i32 %620, 1
  %idxprom767 = sext i32 %add766 to i64
  %621 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx768 = getelementptr inbounds i32, i32* %621, i64 %idxprom767
  %622 = load i32, i32* %arrayidx768, align 4
  %623 = load i32, i32* %i, align 4
  %idxprom769 = sext i32 %623 to i64
  %624 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx770 = getelementptr inbounds i32, i32* %624, i64 %idxprom769
  %625 = load i32, i32* %arrayidx770, align 4
  %sub771 = sub nsw i32 %622, %625
  %cmp772 = icmp sle i32 %sub771, 0
  br i1 %cmp772, label %if.then.774, label %if.end.781

if.then.774:                                      ; preds = %for.body.765
  %626 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %627 = load i32, i32* %i, align 4
  %add775 = add nsw i32 %627, 1
  %idxprom776 = sext i32 %add775 to i64
  %628 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx777 = getelementptr inbounds i32, i32* %628, i64 %idxprom776
  %629 = load i32, i32* %arrayidx777, align 4
  %630 = load i32, i32* %i, align 4
  %idxprom778 = sext i32 %630 to i64
  %631 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx779 = getelementptr inbounds i32, i32* %631, i64 %idxprom778
  %632 = load i32, i32* %arrayidx779, align 4
  %call780 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %626, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 %629, i32 %632)
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.774, %for.body.765
  %633 = load i32, i32* %j, align 4
  %idxprom782 = sext i32 %633 to i64
  %634 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  %arrayidx783 = getelementptr inbounds i8*, i8** %634, i64 %idxprom782
  %635 = load i8*, i8** %arrayidx783, align 8
  %636 = load i32, i32* %j, align 4
  %idxprom784 = sext i32 %636 to i64
  %637 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx785 = getelementptr inbounds i8*, i8** %637, i64 %idxprom784
  %638 = load i8*, i8** %arrayidx785, align 8
  %639 = load i32, i32* %i, align 4
  %idxprom786 = sext i32 %639 to i64
  %640 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx787 = getelementptr inbounds i32, i32* %640, i64 %idxprom786
  %641 = load i32, i32* %arrayidx787, align 4
  %idx.ext788 = sext i32 %641 to i64
  %add.ptr789 = getelementptr inbounds i8, i8* %638, i64 %idx.ext788
  %642 = load i32, i32* %i, align 4
  %add790 = add nsw i32 %642, 1
  %idxprom791 = sext i32 %add790 to i64
  %643 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx792 = getelementptr inbounds i32, i32* %643, i64 %idxprom791
  %644 = load i32, i32* %arrayidx792, align 4
  %645 = load i32, i32* %i, align 4
  %idxprom793 = sext i32 %645 to i64
  %646 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx794 = getelementptr inbounds i32, i32* %646, i64 %idxprom793
  %647 = load i32, i32* %arrayidx794, align 4
  %sub795 = sub nsw i32 %644, %647
  %conv796 = sext i32 %sub795 to i64
  %call797 = call i8* @strncpy(i8* %635, i8* %add.ptr789, i64 %conv796) #6
  %648 = load i32, i32* %i, align 4
  %add798 = add nsw i32 %648, 1
  %idxprom799 = sext i32 %add798 to i64
  %649 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx800 = getelementptr inbounds i32, i32* %649, i64 %idxprom799
  %650 = load i32, i32* %arrayidx800, align 4
  %651 = load i32, i32* %i, align 4
  %idxprom801 = sext i32 %651 to i64
  %652 = load i32*, i32** @Falign_udpari_long.cut2, align 8
  %arrayidx802 = getelementptr inbounds i32, i32* %652, i64 %idxprom801
  %653 = load i32, i32* %arrayidx802, align 4
  %sub803 = sub nsw i32 %650, %653
  %idxprom804 = sext i32 %sub803 to i64
  %654 = load i32, i32* %j, align 4
  %idxprom805 = sext i32 %654 to i64
  %655 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  %arrayidx806 = getelementptr inbounds i8*, i8** %655, i64 %idxprom805
  %656 = load i8*, i8** %arrayidx806, align 8
  %arrayidx807 = getelementptr inbounds i8, i8* %656, i64 %idxprom804
  store i8 0, i8* %arrayidx807, align 1
  br label %for.inc.808

for.inc.808:                                      ; preds = %if.end.781
  %657 = load i32, i32* %j, align 4
  %inc809 = add nsw i32 %657, 1
  store i32 %inc809, i32* %j, align 4
  br label %for.cond.762

for.end.810:                                      ; preds = %for.cond.762
  %658 = load i32, i32* @kobetsubunkatsu, align 4
  %tobool811 = icmp ne i32 %658, 0
  br i1 %tobool811, label %land.lhs.true.812, label %if.end.815

land.lhs.true.812:                                ; preds = %for.end.810
  %659 = load i32, i32* @fftkeika, align 4
  %tobool813 = icmp ne i32 %659, 0
  br i1 %tobool813, label %if.then.814, label %if.end.815

if.then.814:                                      ; preds = %land.lhs.true.812
  %660 = load i32, i32* %clus2.addr, align 4
  %661 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  call void @commongappick(i32 %660, i8** %661)
  br label %if.end.815

if.end.815:                                       ; preds = %if.then.814, %land.lhs.true.812, %for.end.810
  %662 = load i32, i32* @constraint, align 4
  %tobool816 = icmp ne i32 %662, 0
  br i1 %tobool816, label %if.then.817, label %if.end.819

if.then.817:                                      ; preds = %if.end.815
  %663 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call818 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %663, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.819:                                       ; preds = %if.end.815
  %664 = load i8, i8* @alg, align 1
  %conv820 = sext i8 %664 to i32
  switch i32 %conv820, label %sw.default [
    i32 77, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.819
  %665 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  %666 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  %667 = load double*, double** %eff1.addr, align 8
  %668 = load double*, double** %eff2.addr, align 8
  %669 = load i32, i32* %clus1.addr, align 4
  %670 = load i32, i32* %clus2.addr, align 4
  %671 = load i32, i32* %alloclen.addr, align 4
  %672 = load i8*, i8** @Falign_udpari_long.sgap1, align 8
  %673 = load i8*, i8** @Falign_udpari_long.sgap2, align 8
  %674 = load i8*, i8** @Falign_udpari_long.egap1, align 8
  %675 = load i8*, i8** @Falign_udpari_long.egap2, align 8
  %call821 = call float @MSalignmm(i8** %665, i8** %666, double* %667, double* %668, i32 %669, i32 %670, i32 %671, i8* %672, i8* %673, i8* %674, i8* %675)
  %676 = load float, float* %totalscore, align 4
  %add822 = fadd float %676, %call821
  store float %add822, float* %totalscore, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.819
  %677 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %678 = load i8, i8* @alg, align 1
  %conv823 = sext i8 %678 to i32
  %call824 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %677, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %conv823)
  call void @ErrorExit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %679 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  %arrayidx825 = getelementptr inbounds i8*, i8** %679, i64 0
  %680 = load i8*, i8** %arrayidx825, align 8
  %call826 = call i64 @strlen(i8* %680) #5
  %conv827 = trunc i64 %call826 to i32
  store i32 %conv827, i32* %nlen, align 4
  %681 = load i32, i32* %totallen, align 4
  %682 = load i32, i32* %nlen, align 4
  %add828 = add nsw i32 %681, %682
  %683 = load i32, i32* %alloclen.addr, align 4
  %cmp829 = icmp sgt i32 %add828, %683
  br i1 %cmp829, label %if.then.831, label %if.end.833

if.then.831:                                      ; preds = %sw.epilog
  %684 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %685 = load i32, i32* %totallen, align 4
  %686 = load i32, i32* %nlen, align 4
  %687 = load i32, i32* %alloclen.addr, align 4
  %call832 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %684, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 %685, i32 %686, i32 %687)
  call void @ErrorExit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.833

if.end.833:                                       ; preds = %if.then.831, %sw.epilog
  store i32 0, i32* %j, align 4
  br label %for.cond.834

for.cond.834:                                     ; preds = %for.inc.843, %if.end.833
  %688 = load i32, i32* %j, align 4
  %689 = load i32, i32* %clus1.addr, align 4
  %cmp835 = icmp slt i32 %688, %689
  br i1 %cmp835, label %for.body.837, label %for.end.845

for.body.837:                                     ; preds = %for.cond.834
  %690 = load i32, i32* %j, align 4
  %idxprom838 = sext i32 %690 to i64
  %691 = load i8**, i8*** @Falign_udpari_long.result1, align 8
  %arrayidx839 = getelementptr inbounds i8*, i8** %691, i64 %idxprom838
  %692 = load i8*, i8** %arrayidx839, align 8
  %693 = load i32, i32* %j, align 4
  %idxprom840 = sext i32 %693 to i64
  %694 = load i8**, i8*** @Falign_udpari_long.tmpres1, align 8
  %arrayidx841 = getelementptr inbounds i8*, i8** %694, i64 %idxprom840
  %695 = load i8*, i8** %arrayidx841, align 8
  %call842 = call i8* @strcat(i8* %692, i8* %695) #6
  br label %for.inc.843

for.inc.843:                                      ; preds = %for.body.837
  %696 = load i32, i32* %j, align 4
  %inc844 = add nsw i32 %696, 1
  store i32 %inc844, i32* %j, align 4
  br label %for.cond.834

for.end.845:                                      ; preds = %for.cond.834
  store i32 0, i32* %j, align 4
  br label %for.cond.846

for.cond.846:                                     ; preds = %for.inc.855, %for.end.845
  %697 = load i32, i32* %j, align 4
  %698 = load i32, i32* %clus2.addr, align 4
  %cmp847 = icmp slt i32 %697, %698
  br i1 %cmp847, label %for.body.849, label %for.end.857

for.body.849:                                     ; preds = %for.cond.846
  %699 = load i32, i32* %j, align 4
  %idxprom850 = sext i32 %699 to i64
  %700 = load i8**, i8*** @Falign_udpari_long.result2, align 8
  %arrayidx851 = getelementptr inbounds i8*, i8** %700, i64 %idxprom850
  %701 = load i8*, i8** %arrayidx851, align 8
  %702 = load i32, i32* %j, align 4
  %idxprom852 = sext i32 %702 to i64
  %703 = load i8**, i8*** @Falign_udpari_long.tmpres2, align 8
  %arrayidx853 = getelementptr inbounds i8*, i8** %703, i64 %idxprom852
  %704 = load i8*, i8** %arrayidx853, align 8
  %call854 = call i8* @strcat(i8* %701, i8* %704) #6
  br label %for.inc.855

for.inc.855:                                      ; preds = %for.body.849
  %705 = load i32, i32* %j, align 4
  %inc856 = add nsw i32 %705, 1
  store i32 %inc856, i32* %j, align 4
  br label %for.cond.846

for.end.857:                                      ; preds = %for.cond.846
  %706 = load i32, i32* %nlen, align 4
  %707 = load i32, i32* %totallen, align 4
  %add858 = add nsw i32 %707, %706
  store i32 %add858, i32* %totallen, align 4
  br label %for.inc.859

for.inc.859:                                      ; preds = %for.end.857
  %708 = load i32, i32* %i, align 4
  %inc860 = add nsw i32 %708, 1
  store i32 %inc860, i32* %i, align 4
  br label %for.cond.657

for.end.861:                                      ; preds = %for.cond.657
  store i32 0, i32* %j, align 4
  br label %for.cond.862

for.cond.862:                                     ; preds = %for.inc.871, %for.end.861
  %709 = load i32, i32* %j, align 4
  %710 = load i32, i32* %clus1.addr, align 4
  %cmp863 = icmp slt i32 %709, %710
  br i1 %cmp863, label %for.body.865, label %for.end.873

for.body.865:                                     ; preds = %for.cond.862
  %711 = load i32, i32* %j, align 4
  %idxprom866 = sext i32 %711 to i64
  %712 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx867 = getelementptr inbounds i8*, i8** %712, i64 %idxprom866
  %713 = load i8*, i8** %arrayidx867, align 8
  %714 = load i32, i32* %j, align 4
  %idxprom868 = sext i32 %714 to i64
  %715 = load i8**, i8*** @Falign_udpari_long.result1, align 8
  %arrayidx869 = getelementptr inbounds i8*, i8** %715, i64 %idxprom868
  %716 = load i8*, i8** %arrayidx869, align 8
  %call870 = call i8* @strcpy(i8* %713, i8* %716) #6
  br label %for.inc.871

for.inc.871:                                      ; preds = %for.body.865
  %717 = load i32, i32* %j, align 4
  %inc872 = add nsw i32 %717, 1
  store i32 %inc872, i32* %j, align 4
  br label %for.cond.862

for.end.873:                                      ; preds = %for.cond.862
  store i32 0, i32* %j, align 4
  br label %for.cond.874

for.cond.874:                                     ; preds = %for.inc.883, %for.end.873
  %718 = load i32, i32* %j, align 4
  %719 = load i32, i32* %clus2.addr, align 4
  %cmp875 = icmp slt i32 %718, %719
  br i1 %cmp875, label %for.body.877, label %for.end.885

for.body.877:                                     ; preds = %for.cond.874
  %720 = load i32, i32* %j, align 4
  %idxprom878 = sext i32 %720 to i64
  %721 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx879 = getelementptr inbounds i8*, i8** %721, i64 %idxprom878
  %722 = load i8*, i8** %arrayidx879, align 8
  %723 = load i32, i32* %j, align 4
  %idxprom880 = sext i32 %723 to i64
  %724 = load i8**, i8*** @Falign_udpari_long.result2, align 8
  %arrayidx881 = getelementptr inbounds i8*, i8** %724, i64 %idxprom880
  %725 = load i8*, i8** %arrayidx881, align 8
  %call882 = call i8* @strcpy(i8* %722, i8* %725) #6
  br label %for.inc.883

for.inc.883:                                      ; preds = %for.body.877
  %726 = load i32, i32* %j, align 4
  %inc884 = add nsw i32 %726, 1
  store i32 %inc884, i32* %j, align 4
  br label %for.cond.874

for.end.885:                                      ; preds = %for.cond.874
  %727 = load float, float* %totalscore, align 4
  ret float %727
}

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
