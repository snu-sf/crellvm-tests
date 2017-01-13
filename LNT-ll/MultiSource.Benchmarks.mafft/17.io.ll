; ModuleID = './MultiSource.Benchmarks.mafft/17.io.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }
%struct._RNApair = type { i32, float, i32, float, i32, float }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"localhompt = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"tmppt = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"subnosento = %p\0A\00", align 1
@divpairscore = external global i32, align 4
@amino_n = external global [128 x i32], align 16
@n_dis = external global [26 x [26 x i32]], align 16
@.str.3 = private unnamed_addr constant [15 x i8] c"sumscore = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"tmpptr->opt = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@dorp = external global i32, align 4
@upperCase = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"TOO LONG SEQUENCE!\0A\00", align 1
@njob = external global i32, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"TOO MANY SEQUENCE!\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%d > %d\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"onnet\00", align 1
@scoremtx = external global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"DnA\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dna\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"M-Y\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"iyata\00", align 1
@geta2 = external global float, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"reallocating...\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Allocation error in load1SeqWithoutName_realloc \0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@readDataforgaln.tmpseq = internal global i8* null, align 8
@readData_varlen.tmpseq = internal global i8* null, align 8
@readData_pointer.tmpseq = internal global i8* null, align 8
@readData.tmpseq = internal global i8* null, align 8
@nlenmax = external global i32, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"##### atgcfreq = %f\0A\00", align 1
@WriteGapFill.b = internal global [5000000 x i8] zeroinitializer, align 16
@WriteGapFill.gap = internal global [5000000 x i8] zeroinitializer, align 16
@WriteGapFill.buff = internal global [5000000 x i8] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%5d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c">%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"hat2 is wrong.\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c" %#6.3f\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%4d. %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%#6.3f\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%d-%d d=%.3f\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"+==========+\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ReadBlastm7_avscore.qal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7_avscore.tal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7_avscore.al = internal global [5000000 x i8] zeroinitializer, align 16
@.str.32 = private unnamed_addr constant [20 x i8] c"          <Hit_def>\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"              <Hsp_num>\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"              <Hsp_score>\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"              <Hsp_query-from>\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"              <Hsp_query-to>\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"              <Hsp_hit-from>\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"              <Hsp_hit-to>\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"              <Hsp_align-len>\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"              <Hsp_qseq>\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"              <Hsp_hseq>\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"            </Hsp>:\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"          </Hit_hsps>\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"ERROR! sumscore=%f, sumlen=%f, and scorepersite=%f\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"      </Iteration_hits>\00", align 1
@ReadBlastm7_scoreonly.qal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7_scoreonly.tal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7_scoreonly.al = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7.junban = internal global [50000 x i32] zeroinitializer, align 16
@ReadBlastm7.qal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7.tal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadBlastm7.al = internal global [5000000 x i8] zeroinitializer, align 16
@ReadFasta34noalign.junban = internal global [50000 x i32] zeroinitializer, align 16
@.str.46 = private unnamed_addr constant [11 x i8] c"%d %lf %lf\00", align 1
@ReadFasta34m10_nuc.junban = internal global [50000 x i32] zeroinitializer, align 16
@ReadFasta34m10_nuc.qal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadFasta34m10_nuc.tal = internal global [5000000 x i8] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [15 x i8] c">>+==========+\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"; fa_opt:\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"; sw_s-w opt:\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"_overlap:\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"_start:\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"_stop:\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"_display_start:\00", align 1
@ReadFasta34m10.junban = internal global [50000 x i32] zeroinitializer, align 16
@ReadFasta34m10.qal = internal global [5000000 x i8] zeroinitializer, align 16
@ReadFasta34m10.tal = internal global [5000000 x i8] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [14 x i8] c"+===========+\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c">>><<<\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@ReadFasta34.junban = internal global [50000 x i32] zeroinitializer, align 16
@.str.58 = private unnamed_addr constant [6 x i8] c"opt: \00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"ungapped) in \00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"pt = %s, overlapaa = %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"overlap (\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"(%d-%d:%d-%d)\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"count = %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"%d %d %d %lf\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@prep_g = external global %struct._IO_FILE*, align 8
@calledByXced = external global i32, align 4
@.str.66 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Cannot open pre.\0A\00", align 1
@ppid = external global i32, align 4
@signalSM = external global i8*, align 8
@.str.69 = private unnamed_addr constant [12 x i8] c"/tmp/pre.%d\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Cannot open pre\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@trap_g = external global %struct._IO_FILE*, align 8
@.str.73 = private unnamed_addr constant [18 x i8] c"cannot open trace\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"PID = %d\0A\00", align 1
@WriteForFasta.b = internal global [5000000 x i8] zeroinitializer, align 16
@readlocalhomtable2.buff = internal global [256 x i8] zeroinitializer, align 16
@.str.75 = private unnamed_addr constant [25 x i8] c"%d %d %d %lf %d %d %d %d\00", align 1
@readlocalhomtable.buff = internal global [256 x i8] zeroinitializer, align 16
@.str.76 = private unnamed_addr constant [7 x i8] c"%d-%d\0A\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"reg1=%d-%d, reg2=%d-%d, imp=%f, opt=%f\0A\00", align 1
@.str.78 = private unnamed_addr constant [49 x i8] c"reg1=%d-%d, reg2=%d-%d, imp=%f, opt=%f, wimp=%f\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.79 = private unnamed_addr constant [18 x i8] c"freeing localhom\0A\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"CLUSTAL format alignment by MAFFT (v%s)\0A\0A\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"6.624b\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"CLUSTAL format alignment by MAFFT %s (v%s)\0A\0A\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"%-15.15s \00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"%.60s\0A\00", align 1
@.str.85 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"ARNDCQEGHILKMFPSTWYV\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"_aamtx\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"User-defined matrix is not supported for DNA\0A\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"Cannot open the _aamtx file\0A\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"%c: not found in the first 20 letters.\0A\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"inorder = %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"%5d%5d\0A\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"=%s\0A%d\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"format error in hat4\0A\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"%d %d %f\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"; ALIGNING\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"; ALIGNING            %d against %d\0A\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"Error in FOLDALIGN\0A\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"qstr = %s, but gett = %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"; --------\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"; ********\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"%c %c %s %s %d %d\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"Error in foldalign?\0A\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"pt1 = \0A%s\0A, pt2 = \0A%s\0A\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"tmppt = %p, localhompt = %p\0A\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"In in while loop\0A\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"pt = %c, %c, st=%d\0A\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"score (1)= %f\0A\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"al1: %d - %d\0A\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"al2: %d - %d\0A\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"score (2)= %f\0A\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"Format error in aa matrix\0A\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"# Example:\0A\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"# comment\0A\00", align 1
@.str.115 = private unnamed_addr constant [63 x i8] c"   A  R  N  D  C  Q  E  G  H  I  L  K  M  F  P  S  T  W  Y  V\0A\00", align 1
@.str.116 = private unnamed_addr constant [63 x i8] c"A  4 -1 -2 -2  0 -1 -1  0 -2 -1 -1 -1 -1 -2 -1  1  0 -3 -2  0\0A\00", align 1
@.str.117 = private unnamed_addr constant [63 x i8] c"R -1  5  0 -2 -3  1  0 -2  0 -3 -2  2 -1 -3 -2 -1 -1 -3 -2 -3\0A\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.119 = private unnamed_addr constant [63 x i8] c"V  0 -3 -3 -3 -1 -2 -2 -3 -3  3  1 -2  1 -1 -2 -2  0 -3 -1  4\0A\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"frequency 0.07 0.05 0.04 0.05 0.02 .. \0A\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"# Example end\0A\00", align 1
@.str.122 = private unnamed_addr constant [31 x i8] c"Only the lower half is loaded\0A\00", align 1
@.str.123 = private unnamed_addr constant [40 x i8] c"The last line (frequency) is optional.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @putlocalhom3(i8* %al1, i8* %al2, %struct._LocalHom* %localhompt, i32 %off1, i32 %off2, i32 %opt, i32 %overlapaa) #0 {
entry:
  %al1.addr = alloca i8*, align 8
  %al2.addr = alloca i8*, align 8
  %localhompt.addr = alloca %struct._LocalHom*, align 8
  %off1.addr = alloca i32, align 4
  %off2.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  %overlapaa.addr = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %pt1 = alloca i8*, align 8
  %pt2 = alloca i8*, align 8
  %score = alloca double, align 8
  %sumscore = alloca double, align 8
  %sumoverlap = alloca i32, align 4
  %tmppt = alloca %struct._LocalHom*, align 8
  %subnosento = alloca %struct._LocalHom*, align 8
  %st = alloca i32, align 4
  %saisho = alloca i32, align 4
  store i8* %al1, i8** %al1.addr, align 8
  store i8* %al2, i8** %al2.addr, align 8
  store %struct._LocalHom* %localhompt, %struct._LocalHom** %localhompt.addr, align 8
  store i32 %off1, i32* %off1.addr, align 4
  store i32 %off2, i32* %off2.addr, align 4
  store i32 %opt, i32* %opt.addr, align 4
  store i32 %overlapaa, i32* %overlapaa.addr, align 4
  %0 = load i8*, i8** %al1.addr, align 8
  store i8* %0, i8** %pt1, align 8
  %1 = load i8*, i8** %al2.addr, align 8
  store i8* %1, i8** %pt2, align 8
  %2 = load i32, i32* %off1.addr, align 4
  store i32 %2, i32* %pos1, align 4
  %3 = load i32, i32* %off2.addr, align 4
  store i32 %3, i32* %pos2, align 4
  store double 0.000000e+00, double* %sumscore, align 8
  store i32 0, i32* %sumoverlap, align 4
  store i32 0, i32* %start1, align 4
  store i32 0, i32* %start2, align 4
  %4 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %4, %struct._LocalHom** %subnosento, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._LocalHom*, %struct._LocalHom** %subnosento, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %5, i32 0, i32 1
  %6 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  %tobool = icmp ne %struct._LocalHom* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._LocalHom*, %struct._LocalHom** %subnosento, align 8
  %next1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %7, i32 0, i32 1
  %8 = load %struct._LocalHom*, %struct._LocalHom** %next1, align 8
  store %struct._LocalHom* %8, %struct._LocalHom** %subnosento, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct._LocalHom*, %struct._LocalHom** %subnosento, align 8
  store %struct._LocalHom* %9, %struct._LocalHom** %tmppt, align 8
  %10 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %nokori = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %10, i32 0, i32 0
  %11 = load i32, i32* %nokori, align 4
  %cmp = icmp eq i32 %11, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %saisho, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %14 = bitcast %struct._LocalHom* %13 to i8*
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %17 = bitcast %struct._LocalHom* %16 to i8*
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %struct._LocalHom*, %struct._LocalHom** %subnosento, align 8
  %20 = bitcast %struct._LocalHom* %19 to i8*
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* %20)
  store i32 0, i32* %st, align 4
  store double 0.000000e+00, double* %score, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.80, %while.end
  %21 = load i8*, i8** %pt1, align 8
  %22 = load i8, i8* %21, align 1
  %conv5 = sext i8 %22 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %while.body.8, label %while.end.81

while.body.8:                                     ; preds = %while.cond.4
  %23 = load i32, i32* %st, align 4
  %cmp9 = icmp eq i32 %23, 1
  br i1 %cmp9, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %while.body.8
  %24 = load i8*, i8** %pt1, align 8
  %25 = load i8, i8* %24, align 1
  %conv11 = sext i8 %25 to i32
  %cmp12 = icmp eq i32 %conv11, 45
  br i1 %cmp12, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %26 = load i8*, i8** %pt2, align 8
  %27 = load i8, i8* %26, align 1
  %conv14 = sext i8 %27 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then, label %if.else.43

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i32, i32* %pos1, align 4
  %sub = sub nsw i32 %28, 1
  store i32 %sub, i32* %end1, align 4
  %29 = load i32, i32* %pos2, align 4
  %sub17 = sub nsw i32 %29, 1
  store i32 %sub17, i32* %end2, align 4
  %30 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %nokori18 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %30, i32 0, i32 0
  %31 = load i32, i32* %nokori18, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %nokori18, align 4
  %cmp19 = icmp sgt i32 %31, 0
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %call22 = call noalias i8* @calloc(i64 1, i64 80) #6
  %32 = bitcast i8* %call22 to %struct._LocalHom*
  %33 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next23 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i32 0, i32 1
  store %struct._LocalHom* %32, %struct._LocalHom** %next23, align 8
  %34 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next24 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %34, i32 0, i32 1
  %35 = load %struct._LocalHom*, %struct._LocalHom** %next24, align 8
  store %struct._LocalHom* %35, %struct._LocalHom** %tmppt, align 8
  %36 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next25 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %36, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  %37 = load i32, i32* %start1, align 4
  %38 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start126 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %38, i32 0, i32 3
  store i32 %37, i32* %start126, align 4
  %39 = load i32, i32* %start2, align 4
  %40 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start227 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %40, i32 0, i32 5
  store i32 %39, i32* %start227, align 4
  %41 = load i32, i32* %end1, align 4
  %42 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end128 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %42, i32 0, i32 4
  store i32 %41, i32* %end128, align 4
  %43 = load i32, i32* %end2, align 4
  %44 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end229 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %44, i32 0, i32 6
  store i32 %43, i32* %end229, align 4
  %45 = load i32, i32* @divpairscore, align 4
  %tobool30 = icmp ne i32 %45, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end
  %46 = load i32, i32* %end2, align 4
  %47 = load i32, i32* %start2, align 4
  %sub32 = sub nsw i32 %46, %47
  %add = add nsw i32 %sub32, 1
  %48 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa33 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %48, i32 0, i32 8
  store i32 %add, i32* %overlapaa33, align 4
  %49 = load double, double* %score, align 8
  %50 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa34 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %50, i32 0, i32 8
  %51 = load i32, i32* %overlapaa34, align 4
  %conv35 = sitofp i32 %51 to double
  %div = fdiv double %49, %conv35
  %mul = fmul double %div, 5.800000e+00
  %div36 = fdiv double %mul, 6.000000e+02
  %52 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt37 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %52, i32 0, i32 7
  store double %div36, double* %opt37, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.end
  %53 = load double, double* %score, align 8
  %54 = load double, double* %sumscore, align 8
  %add38 = fadd double %54, %53
  store double %add38, double* %sumscore, align 8
  %55 = load i32, i32* %end2, align 4
  %56 = load i32, i32* %start2, align 4
  %sub39 = sub nsw i32 %55, %56
  %add40 = add nsw i32 %sub39, 1
  %57 = load i32, i32* %sumoverlap, align 4
  %add41 = add nsw i32 %57, %add40
  store i32 %add41, i32* %sumoverlap, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.31
  store double 0.000000e+00, double* %score, align 8
  store i32 0, i32* %st, align 4
  br label %if.end.67

if.else.43:                                       ; preds = %lor.lhs.false, %while.body.8
  %58 = load i8*, i8** %pt1, align 8
  %59 = load i8, i8* %58, align 1
  %conv44 = sext i8 %59 to i32
  %cmp45 = icmp ne i32 %conv44, 45
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.66

land.lhs.true.47:                                 ; preds = %if.else.43
  %60 = load i8*, i8** %pt2, align 8
  %61 = load i8, i8* %60, align 1
  %conv48 = sext i8 %61 to i32
  %cmp49 = icmp ne i32 %conv48, 45
  br i1 %cmp49, label %if.then.51, label %if.end.66

if.then.51:                                       ; preds = %land.lhs.true.47
  %62 = load i32, i32* %st, align 4
  %cmp52 = icmp eq i32 %62, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  %63 = load i32, i32* %pos1, align 4
  store i32 %63, i32* %start1, align 4
  %64 = load i32, i32* %pos2, align 4
  store i32 %64, i32* %start2, align 4
  store i32 1, i32* %st, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  %65 = load i8*, i8** %pt2, align 8
  %66 = load i8, i8* %65, align 1
  %conv56 = sext i8 %66 to i32
  %idxprom = sext i32 %conv56 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %67 = load i32, i32* %arrayidx, align 4
  %idxprom57 = sext i32 %67 to i64
  %68 = load i8*, i8** %pt1, align 8
  %69 = load i8, i8* %68, align 1
  %conv58 = sext i8 %69 to i32
  %idxprom59 = sext i32 %conv58 to i64
  %arrayidx60 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom59
  %70 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %70 to i64
  %arrayidx62 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx62, i32 0, i64 %idxprom57
  %71 = load i32, i32* %arrayidx63, align 4
  %conv64 = sitofp i32 %71 to double
  %72 = load double, double* %score, align 8
  %add65 = fadd double %72, %conv64
  store double %add65, double* %score, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.55, %land.lhs.true.47, %if.else.43
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.42
  %73 = load i8*, i8** %pt1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr, i8** %pt1, align 8
  %74 = load i8, i8* %73, align 1
  %conv68 = sext i8 %74 to i32
  %cmp69 = icmp ne i32 %conv68, 45
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.67
  %75 = load i32, i32* %pos1, align 4
  %inc72 = add nsw i32 %75, 1
  store i32 %inc72, i32* %pos1, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.67
  %76 = load i8*, i8** %pt2, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr74, i8** %pt2, align 8
  %77 = load i8, i8* %76, align 1
  %conv75 = sext i8 %77 to i32
  %cmp76 = icmp ne i32 %conv75, 45
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.73
  %78 = load i32, i32* %pos2, align 4
  %inc79 = add nsw i32 %78, 1
  store i32 %inc79, i32* %pos2, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.73
  br label %while.cond.4

while.end.81:                                     ; preds = %while.cond.4
  %79 = load i8*, i8** %pt1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %79, i64 -1
  %80 = load i8, i8* %add.ptr, align 1
  %conv82 = sext i8 %80 to i32
  %cmp83 = icmp ne i32 %conv82, 45
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.124

land.lhs.true.85:                                 ; preds = %while.end.81
  %81 = load i8*, i8** %pt2, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %81, i64 -1
  %82 = load i8, i8* %add.ptr86, align 1
  %conv87 = sext i8 %82 to i32
  %cmp88 = icmp ne i32 %conv87, 45
  br i1 %cmp88, label %if.then.90, label %if.end.124

if.then.90:                                       ; preds = %land.lhs.true.85
  %83 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %nokori91 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %83, i32 0, i32 0
  %84 = load i32, i32* %nokori91, align 4
  %inc92 = add nsw i32 %84, 1
  store i32 %inc92, i32* %nokori91, align 4
  %cmp93 = icmp sgt i32 %84, 0
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %if.then.90
  %call96 = call noalias i8* @calloc(i64 1, i64 80) #6
  %85 = bitcast i8* %call96 to %struct._LocalHom*
  %86 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next97 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %86, i32 0, i32 1
  store %struct._LocalHom* %85, %struct._LocalHom** %next97, align 8
  %87 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next98 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %87, i32 0, i32 1
  %88 = load %struct._LocalHom*, %struct._LocalHom** %next98, align 8
  store %struct._LocalHom* %88, %struct._LocalHom** %tmppt, align 8
  %89 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next99 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %89, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %if.then.90
  %90 = load i32, i32* %pos1, align 4
  %sub101 = sub nsw i32 %90, 1
  store i32 %sub101, i32* %end1, align 4
  %91 = load i32, i32* %pos2, align 4
  %sub102 = sub nsw i32 %91, 1
  store i32 %sub102, i32* %end2, align 4
  %92 = load i32, i32* %start1, align 4
  %93 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start1103 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %93, i32 0, i32 3
  store i32 %92, i32* %start1103, align 4
  %94 = load i32, i32* %start2, align 4
  %95 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start2104 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %95, i32 0, i32 5
  store i32 %94, i32* %start2104, align 4
  %96 = load i32, i32* %end1, align 4
  %97 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end1105 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %97, i32 0, i32 4
  store i32 %96, i32* %end1105, align 4
  %98 = load i32, i32* %end2, align 4
  %99 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end2106 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %99, i32 0, i32 6
  store i32 %98, i32* %end2106, align 4
  %100 = load i32, i32* @divpairscore, align 4
  %tobool107 = icmp ne i32 %100, 0
  br i1 %tobool107, label %if.then.108, label %if.else.118

if.then.108:                                      ; preds = %if.end.100
  %101 = load i32, i32* %end2, align 4
  %102 = load i32, i32* %start2, align 4
  %sub109 = sub nsw i32 %101, %102
  %add110 = add nsw i32 %sub109, 1
  %103 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa111 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %103, i32 0, i32 8
  store i32 %add110, i32* %overlapaa111, align 4
  %104 = load double, double* %score, align 8
  %105 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa112 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %105, i32 0, i32 8
  %106 = load i32, i32* %overlapaa112, align 4
  %conv113 = sitofp i32 %106 to double
  %div114 = fdiv double %104, %conv113
  %mul115 = fmul double %div114, 5.800000e+00
  %div116 = fdiv double %mul115, 6.000000e+02
  %107 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt117 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %107, i32 0, i32 7
  store double %div116, double* %opt117, align 8
  br label %if.end.123

if.else.118:                                      ; preds = %if.end.100
  %108 = load double, double* %score, align 8
  %109 = load double, double* %sumscore, align 8
  %add119 = fadd double %109, %108
  store double %add119, double* %sumscore, align 8
  %110 = load i32, i32* %end2, align 4
  %111 = load i32, i32* %start2, align 4
  %sub120 = sub nsw i32 %110, %111
  %add121 = add nsw i32 %sub120, 1
  %112 = load i32, i32* %sumoverlap, align 4
  %add122 = add nsw i32 %112, %add121
  store i32 %add122, i32* %sumoverlap, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.118, %if.then.108
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %land.lhs.true.85, %while.end.81
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = load double, double* %sumscore, align 8
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), double %114)
  %115 = load i32, i32* @divpairscore, align 4
  %tobool126 = icmp ne i32 %115, 0
  br i1 %tobool126, label %if.end.142, label %if.then.127

if.then.127:                                      ; preds = %if.end.124
  %116 = load i32, i32* %saisho, align 4
  %tobool128 = icmp ne i32 %116, 0
  br i1 %tobool128, label %if.end.131, label %if.then.129

if.then.129:                                      ; preds = %if.then.127
  %117 = load %struct._LocalHom*, %struct._LocalHom** %subnosento, align 8
  %next130 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %117, i32 0, i32 1
  %118 = load %struct._LocalHom*, %struct._LocalHom** %next130, align 8
  store %struct._LocalHom* %118, %struct._LocalHom** %subnosento, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.then.127
  %119 = load %struct._LocalHom*, %struct._LocalHom** %subnosento, align 8
  store %struct._LocalHom* %119, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.131
  %120 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %tobool132 = icmp ne %struct._LocalHom* %120, null
  br i1 %tobool132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %121 = load i32, i32* %sumoverlap, align 4
  %122 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa133 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %122, i32 0, i32 8
  store i32 %121, i32* %overlapaa133, align 4
  %123 = load double, double* %sumscore, align 8
  %mul134 = fmul double %123, 5.800000e+00
  %div135 = fdiv double %mul134, 6.000000e+02
  %124 = load i32, i32* %sumoverlap, align 4
  %conv136 = sitofp i32 %124 to double
  %div137 = fdiv double %div135, %conv136
  %125 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt138 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %125, i32 0, i32 7
  store double %div137, double* %opt138, align 8
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt139 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %127, i32 0, i32 7
  %128 = load double, double* %opt139, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), double %128)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %129 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next141 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %129, i32 0, i32 1
  %130 = load %struct._LocalHom*, %struct._LocalHom** %next141, align 8
  store %struct._LocalHom* %130, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.142

if.end.142:                                       ; preds = %for.end, %if.end.124
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @putlocalhom_ext(i8* %al1, i8* %al2, %struct._LocalHom* %localhompt, i32 %off1, i32 %off2, i32 %opt, i32 %overlapaa) #0 {
entry:
  %al1.addr = alloca i8*, align 8
  %al2.addr = alloca i8*, align 8
  %localhompt.addr = alloca %struct._LocalHom*, align 8
  %off1.addr = alloca i32, align 4
  %off2.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  %overlapaa.addr = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %pt1 = alloca i8*, align 8
  %pt2 = alloca i8*, align 8
  %iscore = alloca i32, align 4
  %isumscore = alloca i32, align 4
  %sumoverlap = alloca i32, align 4
  %tmppt = alloca %struct._LocalHom*, align 8
  %nlocalhom = alloca i32, align 4
  %st = alloca i32, align 4
  store i8* %al1, i8** %al1.addr, align 8
  store i8* %al2, i8** %al2.addr, align 8
  store %struct._LocalHom* %localhompt, %struct._LocalHom** %localhompt.addr, align 8
  store i32 %off1, i32* %off1.addr, align 4
  store i32 %off2, i32* %off2.addr, align 4
  store i32 %opt, i32* %opt.addr, align 4
  store i32 %overlapaa, i32* %overlapaa.addr, align 4
  %0 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %0, %struct._LocalHom** %tmppt, align 8
  store i32 0, i32* %nlocalhom, align 4
  %1 = load i8*, i8** %al1.addr, align 8
  store i8* %1, i8** %pt1, align 8
  %2 = load i8*, i8** %al2.addr, align 8
  store i8* %2, i8** %pt2, align 8
  %3 = load i32, i32* %off1.addr, align 4
  store i32 %3, i32* %pos1, align 4
  %4 = load i32, i32* %off2.addr, align 4
  store i32 %4, i32* %pos2, align 4
  store i32 0, i32* %isumscore, align 4
  store i32 0, i32* %sumoverlap, align 4
  store i32 0, i32* %start1, align 4
  store i32 0, i32* %start2, align 4
  store i32 0, i32* %st, align 4
  store i32 0, i32* %iscore, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %entry
  %5 = load i8*, i8** %pt1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %st, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8*, i8** %pt1, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8*, i8** %pt2, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then, label %if.else.33

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load i32, i32* %pos1, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %end1, align 4
  %13 = load i32, i32* %pos2, align 4
  %sub10 = sub nsw i32 %13, 1
  store i32 %sub10, i32* %end2, align 4
  %14 = load i32, i32* %nlocalhom, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %nlocalhom, align 4
  %cmp11 = icmp sgt i32 %14, 0
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %call = call noalias i8* @calloc(i64 1, i64 80) #6
  %15 = bitcast i8* %call to %struct._LocalHom*
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %16, i32 0, i32 1
  store %struct._LocalHom* %15, %struct._LocalHom** %next, align 8
  %17 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next14 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i32 0, i32 1
  %18 = load %struct._LocalHom*, %struct._LocalHom** %next14, align 8
  store %struct._LocalHom* %18, %struct._LocalHom** %tmppt, align 8
  %19 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next15 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %19, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %20 = load i32, i32* %start1, align 4
  %21 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start116 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %21, i32 0, i32 3
  store i32 %20, i32* %start116, align 4
  %22 = load i32, i32* %start2, align 4
  %23 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start217 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %23, i32 0, i32 5
  store i32 %22, i32* %start217, align 4
  %24 = load i32, i32* %end1, align 4
  %25 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end118 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i32 0, i32 4
  store i32 %24, i32* %end118, align 4
  %26 = load i32, i32* %end2, align 4
  %27 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end219 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i32 0, i32 6
  store i32 %26, i32* %end219, align 4
  %28 = load i32, i32* @divpairscore, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %29 = load i32, i32* %end2, align 4
  %30 = load i32, i32* %start2, align 4
  %sub21 = sub nsw i32 %29, %30
  %add = add nsw i32 %sub21, 1
  %31 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa22 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %31, i32 0, i32 8
  store i32 %add, i32* %overlapaa22, align 4
  %32 = load i32, i32* %iscore, align 4
  %conv23 = sitofp i32 %32 to double
  %33 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa24 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i32 0, i32 8
  %34 = load i32, i32* %overlapaa24, align 4
  %conv25 = sitofp i32 %34 to double
  %div = fdiv double %conv23, %conv25
  %mul = fmul double %div, 5.800000e+00
  %div26 = fdiv double %mul, 6.000000e+02
  %35 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt27 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %35, i32 0, i32 7
  store double %div26, double* %opt27, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %36 = load i32, i32* %iscore, align 4
  %37 = load i32, i32* %isumscore, align 4
  %add28 = add nsw i32 %37, %36
  store i32 %add28, i32* %isumscore, align 4
  %38 = load i32, i32* %end2, align 4
  %39 = load i32, i32* %start2, align 4
  %sub29 = sub nsw i32 %38, %39
  %add30 = add nsw i32 %sub29, 1
  %40 = load i32, i32* %sumoverlap, align 4
  %add31 = add nsw i32 %40, %add30
  store i32 %add31, i32* %sumoverlap, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.20
  store i32 0, i32* %iscore, align 4
  store i32 0, i32* %st, align 4
  br label %if.end.56

if.else.33:                                       ; preds = %lor.lhs.false, %while.body
  %41 = load i8*, i8** %pt1, align 8
  %42 = load i8, i8* %41, align 1
  %conv34 = sext i8 %42 to i32
  %cmp35 = icmp ne i32 %conv34, 45
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.55

land.lhs.true.37:                                 ; preds = %if.else.33
  %43 = load i8*, i8** %pt2, align 8
  %44 = load i8, i8* %43, align 1
  %conv38 = sext i8 %44 to i32
  %cmp39 = icmp ne i32 %conv38, 45
  br i1 %cmp39, label %if.then.41, label %if.end.55

if.then.41:                                       ; preds = %land.lhs.true.37
  %45 = load i32, i32* %st, align 4
  %cmp42 = icmp eq i32 %45, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  %46 = load i32, i32* %pos1, align 4
  store i32 %46, i32* %start1, align 4
  %47 = load i32, i32* %pos2, align 4
  store i32 %47, i32* %start2, align 4
  store i32 1, i32* %st, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.41
  %48 = load i8*, i8** %pt2, align 8
  %49 = load i8, i8* %48, align 1
  %conv46 = sext i8 %49 to i32
  %idxprom = sext i32 %conv46 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %50 = load i32, i32* %arrayidx, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i8*, i8** %pt1, align 8
  %52 = load i8, i8* %51, align 1
  %conv48 = sext i8 %52 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %arrayidx50 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom49
  %53 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %53 to i64
  %arrayidx52 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx52, i32 0, i64 %idxprom47
  %54 = load i32, i32* %arrayidx53, align 4
  %55 = load i32, i32* %iscore, align 4
  %add54 = add nsw i32 %55, %54
  store i32 %add54, i32* %iscore, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.45, %land.lhs.true.37, %if.else.33
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.32
  %56 = load i8*, i8** %pt1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %pt1, align 8
  %57 = load i8, i8* %56, align 1
  %conv57 = sext i8 %57 to i32
  %cmp58 = icmp ne i32 %conv57, 45
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %58 = load i32, i32* %pos1, align 4
  %inc61 = add nsw i32 %58, 1
  store i32 %inc61, i32* %pos1, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.56
  %59 = load i8*, i8** %pt2, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr63, i8** %pt2, align 8
  %60 = load i8, i8* %59, align 1
  %conv64 = sext i8 %60 to i32
  %cmp65 = icmp ne i32 %conv64, 45
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.62
  %61 = load i32, i32* %pos2, align 4
  %inc68 = add nsw i32 %61, 1
  store i32 %inc68, i32* %pos2, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.62
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i8*, i8** %pt1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 -1
  %63 = load i8, i8* %add.ptr, align 1
  %conv70 = sext i8 %63 to i32
  %cmp71 = icmp ne i32 %conv70, 45
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.112

land.lhs.true.73:                                 ; preds = %while.end
  %64 = load i8*, i8** %pt2, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %64, i64 -1
  %65 = load i8, i8* %add.ptr74, align 1
  %conv75 = sext i8 %65 to i32
  %cmp76 = icmp ne i32 %conv75, 45
  br i1 %cmp76, label %if.then.78, label %if.end.112

if.then.78:                                       ; preds = %land.lhs.true.73
  %66 = load i32, i32* %nlocalhom, align 4
  %inc79 = add nsw i32 %66, 1
  store i32 %inc79, i32* %nlocalhom, align 4
  %cmp80 = icmp sgt i32 %66, 0
  br i1 %cmp80, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %if.then.78
  %call83 = call noalias i8* @calloc(i64 1, i64 80) #6
  %67 = bitcast i8* %call83 to %struct._LocalHom*
  %68 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next84 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %68, i32 0, i32 1
  store %struct._LocalHom* %67, %struct._LocalHom** %next84, align 8
  %69 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next85 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %69, i32 0, i32 1
  %70 = load %struct._LocalHom*, %struct._LocalHom** %next85, align 8
  store %struct._LocalHom* %70, %struct._LocalHom** %tmppt, align 8
  %71 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next86 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %71, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %if.then.78
  %72 = load i32, i32* %pos1, align 4
  %sub88 = sub nsw i32 %72, 1
  store i32 %sub88, i32* %end1, align 4
  %73 = load i32, i32* %pos2, align 4
  %sub89 = sub nsw i32 %73, 1
  store i32 %sub89, i32* %end2, align 4
  %74 = load i32, i32* %start1, align 4
  %75 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start190 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %75, i32 0, i32 3
  store i32 %74, i32* %start190, align 4
  %76 = load i32, i32* %start2, align 4
  %77 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start291 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %77, i32 0, i32 5
  store i32 %76, i32* %start291, align 4
  %78 = load i32, i32* %end1, align 4
  %79 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end192 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %79, i32 0, i32 4
  store i32 %78, i32* %end192, align 4
  %80 = load i32, i32* %end2, align 4
  %81 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end293 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %81, i32 0, i32 6
  store i32 %80, i32* %end293, align 4
  %82 = load i32, i32* @divpairscore, align 4
  %tobool94 = icmp ne i32 %82, 0
  br i1 %tobool94, label %if.then.95, label %if.else.106

if.then.95:                                       ; preds = %if.end.87
  %83 = load i32, i32* %end2, align 4
  %84 = load i32, i32* %start2, align 4
  %sub96 = sub nsw i32 %83, %84
  %add97 = add nsw i32 %sub96, 1
  %85 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa98 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %85, i32 0, i32 8
  store i32 %add97, i32* %overlapaa98, align 4
  %86 = load i32, i32* %iscore, align 4
  %conv99 = sitofp i32 %86 to double
  %87 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa100 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %87, i32 0, i32 8
  %88 = load i32, i32* %overlapaa100, align 4
  %conv101 = sitofp i32 %88 to double
  %div102 = fdiv double %conv99, %conv101
  %mul103 = fmul double %div102, 5.800000e+00
  %div104 = fdiv double %mul103, 6.000000e+02
  %89 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt105 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %89, i32 0, i32 7
  store double %div104, double* %opt105, align 8
  br label %if.end.111

if.else.106:                                      ; preds = %if.end.87
  %90 = load i32, i32* %iscore, align 4
  %91 = load i32, i32* %isumscore, align 4
  %add107 = add nsw i32 %91, %90
  store i32 %add107, i32* %isumscore, align 4
  %92 = load i32, i32* %end2, align 4
  %93 = load i32, i32* %start2, align 4
  %sub108 = sub nsw i32 %92, %93
  %add109 = add nsw i32 %sub108, 1
  %94 = load i32, i32* %sumoverlap, align 4
  %add110 = add nsw i32 %94, %add109
  store i32 %add110, i32* %sumoverlap, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.95
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %land.lhs.true.73, %while.end
  %95 = load i32, i32* @divpairscore, align 4
  %tobool113 = icmp ne i32 %95, 0
  br i1 %tobool113, label %if.end.119, label %if.then.114

if.then.114:                                      ; preds = %if.end.112
  %96 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %96, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.114
  %97 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %tobool115 = icmp ne %struct._LocalHom* %97, null
  br i1 %tobool115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %sumoverlap, align 4
  %99 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa116 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %99, i32 0, i32 8
  store i32 %98, i32* %overlapaa116, align 4
  %100 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt117 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %100, i32 0, i32 7
  store double 5.800000e+00, double* %opt117, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next118 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %101, i32 0, i32 1
  %102 = load %struct._LocalHom*, %struct._LocalHom** %next118, align 8
  store %struct._LocalHom* %102, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.119

if.end.119:                                       ; preds = %for.end, %if.end.112
  ret void
}

; Function Attrs: nounwind uwtable
define void @putlocalhom2(i8* %al1, i8* %al2, %struct._LocalHom* %localhompt, i32 %off1, i32 %off2, i32 %opt, i32 %overlapaa) #0 {
entry:
  %al1.addr = alloca i8*, align 8
  %al2.addr = alloca i8*, align 8
  %localhompt.addr = alloca %struct._LocalHom*, align 8
  %off1.addr = alloca i32, align 4
  %off2.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  %overlapaa.addr = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %pt1 = alloca i8*, align 8
  %pt2 = alloca i8*, align 8
  %iscore = alloca i32, align 4
  %isumscore = alloca i32, align 4
  %sumoverlap = alloca i32, align 4
  %tmppt = alloca %struct._LocalHom*, align 8
  %nlocalhom = alloca i32, align 4
  %st = alloca i32, align 4
  store i8* %al1, i8** %al1.addr, align 8
  store i8* %al2, i8** %al2.addr, align 8
  store %struct._LocalHom* %localhompt, %struct._LocalHom** %localhompt.addr, align 8
  store i32 %off1, i32* %off1.addr, align 4
  store i32 %off2, i32* %off2.addr, align 4
  store i32 %opt, i32* %opt.addr, align 4
  store i32 %overlapaa, i32* %overlapaa.addr, align 4
  %0 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %0, %struct._LocalHom** %tmppt, align 8
  store i32 0, i32* %nlocalhom, align 4
  %1 = load i8*, i8** %al1.addr, align 8
  store i8* %1, i8** %pt1, align 8
  %2 = load i8*, i8** %al2.addr, align 8
  store i8* %2, i8** %pt2, align 8
  %3 = load i32, i32* %off1.addr, align 4
  store i32 %3, i32* %pos1, align 4
  %4 = load i32, i32* %off2.addr, align 4
  store i32 %4, i32* %pos2, align 4
  store i32 0, i32* %isumscore, align 4
  store i32 0, i32* %sumoverlap, align 4
  store i32 0, i32* %start1, align 4
  store i32 0, i32* %start2, align 4
  store i32 0, i32* %st, align 4
  store i32 0, i32* %iscore, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %entry
  %5 = load i8*, i8** %pt1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %st, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8*, i8** %pt1, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8*, i8** %pt2, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then, label %if.else.33

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load i32, i32* %pos1, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %end1, align 4
  %13 = load i32, i32* %pos2, align 4
  %sub10 = sub nsw i32 %13, 1
  store i32 %sub10, i32* %end2, align 4
  %14 = load i32, i32* %nlocalhom, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %nlocalhom, align 4
  %cmp11 = icmp sgt i32 %14, 0
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %call = call noalias i8* @calloc(i64 1, i64 80) #6
  %15 = bitcast i8* %call to %struct._LocalHom*
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %16, i32 0, i32 1
  store %struct._LocalHom* %15, %struct._LocalHom** %next, align 8
  %17 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next14 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i32 0, i32 1
  %18 = load %struct._LocalHom*, %struct._LocalHom** %next14, align 8
  store %struct._LocalHom* %18, %struct._LocalHom** %tmppt, align 8
  %19 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next15 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %19, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %20 = load i32, i32* %start1, align 4
  %21 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start116 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %21, i32 0, i32 3
  store i32 %20, i32* %start116, align 4
  %22 = load i32, i32* %start2, align 4
  %23 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start217 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %23, i32 0, i32 5
  store i32 %22, i32* %start217, align 4
  %24 = load i32, i32* %end1, align 4
  %25 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end118 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i32 0, i32 4
  store i32 %24, i32* %end118, align 4
  %26 = load i32, i32* %end2, align 4
  %27 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end219 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i32 0, i32 6
  store i32 %26, i32* %end219, align 4
  %28 = load i32, i32* @divpairscore, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %29 = load i32, i32* %end2, align 4
  %30 = load i32, i32* %start2, align 4
  %sub21 = sub nsw i32 %29, %30
  %add = add nsw i32 %sub21, 1
  %31 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa22 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %31, i32 0, i32 8
  store i32 %add, i32* %overlapaa22, align 4
  %32 = load i32, i32* %iscore, align 4
  %conv23 = sitofp i32 %32 to double
  %33 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa24 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i32 0, i32 8
  %34 = load i32, i32* %overlapaa24, align 4
  %conv25 = sitofp i32 %34 to double
  %div = fdiv double %conv23, %conv25
  %mul = fmul double %div, 5.800000e+00
  %div26 = fdiv double %mul, 6.000000e+02
  %35 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt27 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %35, i32 0, i32 7
  store double %div26, double* %opt27, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %36 = load i32, i32* %iscore, align 4
  %37 = load i32, i32* %isumscore, align 4
  %add28 = add nsw i32 %37, %36
  store i32 %add28, i32* %isumscore, align 4
  %38 = load i32, i32* %end2, align 4
  %39 = load i32, i32* %start2, align 4
  %sub29 = sub nsw i32 %38, %39
  %add30 = add nsw i32 %sub29, 1
  %40 = load i32, i32* %sumoverlap, align 4
  %add31 = add nsw i32 %40, %add30
  store i32 %add31, i32* %sumoverlap, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.20
  store i32 0, i32* %iscore, align 4
  store i32 0, i32* %st, align 4
  br label %if.end.56

if.else.33:                                       ; preds = %lor.lhs.false, %while.body
  %41 = load i8*, i8** %pt1, align 8
  %42 = load i8, i8* %41, align 1
  %conv34 = sext i8 %42 to i32
  %cmp35 = icmp ne i32 %conv34, 45
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.55

land.lhs.true.37:                                 ; preds = %if.else.33
  %43 = load i8*, i8** %pt2, align 8
  %44 = load i8, i8* %43, align 1
  %conv38 = sext i8 %44 to i32
  %cmp39 = icmp ne i32 %conv38, 45
  br i1 %cmp39, label %if.then.41, label %if.end.55

if.then.41:                                       ; preds = %land.lhs.true.37
  %45 = load i32, i32* %st, align 4
  %cmp42 = icmp eq i32 %45, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  %46 = load i32, i32* %pos1, align 4
  store i32 %46, i32* %start1, align 4
  %47 = load i32, i32* %pos2, align 4
  store i32 %47, i32* %start2, align 4
  store i32 1, i32* %st, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.41
  %48 = load i8*, i8** %pt2, align 8
  %49 = load i8, i8* %48, align 1
  %conv46 = sext i8 %49 to i32
  %idxprom = sext i32 %conv46 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %50 = load i32, i32* %arrayidx, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i8*, i8** %pt1, align 8
  %52 = load i8, i8* %51, align 1
  %conv48 = sext i8 %52 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %arrayidx50 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom49
  %53 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %53 to i64
  %arrayidx52 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx52, i32 0, i64 %idxprom47
  %54 = load i32, i32* %arrayidx53, align 4
  %55 = load i32, i32* %iscore, align 4
  %add54 = add nsw i32 %55, %54
  store i32 %add54, i32* %iscore, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.45, %land.lhs.true.37, %if.else.33
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.32
  %56 = load i8*, i8** %pt1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %pt1, align 8
  %57 = load i8, i8* %56, align 1
  %conv57 = sext i8 %57 to i32
  %cmp58 = icmp ne i32 %conv57, 45
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %58 = load i32, i32* %pos1, align 4
  %inc61 = add nsw i32 %58, 1
  store i32 %inc61, i32* %pos1, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.56
  %59 = load i8*, i8** %pt2, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr63, i8** %pt2, align 8
  %60 = load i8, i8* %59, align 1
  %conv64 = sext i8 %60 to i32
  %cmp65 = icmp ne i32 %conv64, 45
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.62
  %61 = load i32, i32* %pos2, align 4
  %inc68 = add nsw i32 %61, 1
  store i32 %inc68, i32* %pos2, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.62
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i8*, i8** %pt1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 -1
  %63 = load i8, i8* %add.ptr, align 1
  %conv70 = sext i8 %63 to i32
  %cmp71 = icmp ne i32 %conv70, 45
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.112

land.lhs.true.73:                                 ; preds = %while.end
  %64 = load i8*, i8** %pt2, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %64, i64 -1
  %65 = load i8, i8* %add.ptr74, align 1
  %conv75 = sext i8 %65 to i32
  %cmp76 = icmp ne i32 %conv75, 45
  br i1 %cmp76, label %if.then.78, label %if.end.112

if.then.78:                                       ; preds = %land.lhs.true.73
  %66 = load i32, i32* %nlocalhom, align 4
  %inc79 = add nsw i32 %66, 1
  store i32 %inc79, i32* %nlocalhom, align 4
  %cmp80 = icmp sgt i32 %66, 0
  br i1 %cmp80, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %if.then.78
  %call83 = call noalias i8* @calloc(i64 1, i64 80) #6
  %67 = bitcast i8* %call83 to %struct._LocalHom*
  %68 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next84 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %68, i32 0, i32 1
  store %struct._LocalHom* %67, %struct._LocalHom** %next84, align 8
  %69 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next85 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %69, i32 0, i32 1
  %70 = load %struct._LocalHom*, %struct._LocalHom** %next85, align 8
  store %struct._LocalHom* %70, %struct._LocalHom** %tmppt, align 8
  %71 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next86 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %71, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %if.then.78
  %72 = load i32, i32* %pos1, align 4
  %sub88 = sub nsw i32 %72, 1
  store i32 %sub88, i32* %end1, align 4
  %73 = load i32, i32* %pos2, align 4
  %sub89 = sub nsw i32 %73, 1
  store i32 %sub89, i32* %end2, align 4
  %74 = load i32, i32* %start1, align 4
  %75 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start190 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %75, i32 0, i32 3
  store i32 %74, i32* %start190, align 4
  %76 = load i32, i32* %start2, align 4
  %77 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start291 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %77, i32 0, i32 5
  store i32 %76, i32* %start291, align 4
  %78 = load i32, i32* %end1, align 4
  %79 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end192 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %79, i32 0, i32 4
  store i32 %78, i32* %end192, align 4
  %80 = load i32, i32* %end2, align 4
  %81 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end293 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %81, i32 0, i32 6
  store i32 %80, i32* %end293, align 4
  %82 = load i32, i32* @divpairscore, align 4
  %tobool94 = icmp ne i32 %82, 0
  br i1 %tobool94, label %if.then.95, label %if.else.106

if.then.95:                                       ; preds = %if.end.87
  %83 = load i32, i32* %end2, align 4
  %84 = load i32, i32* %start2, align 4
  %sub96 = sub nsw i32 %83, %84
  %add97 = add nsw i32 %sub96, 1
  %85 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa98 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %85, i32 0, i32 8
  store i32 %add97, i32* %overlapaa98, align 4
  %86 = load i32, i32* %iscore, align 4
  %conv99 = sitofp i32 %86 to double
  %87 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa100 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %87, i32 0, i32 8
  %88 = load i32, i32* %overlapaa100, align 4
  %conv101 = sitofp i32 %88 to double
  %div102 = fdiv double %conv99, %conv101
  %mul103 = fmul double %div102, 5.800000e+00
  %div104 = fdiv double %mul103, 6.000000e+02
  %89 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt105 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %89, i32 0, i32 7
  store double %div104, double* %opt105, align 8
  br label %if.end.111

if.else.106:                                      ; preds = %if.end.87
  %90 = load i32, i32* %iscore, align 4
  %91 = load i32, i32* %isumscore, align 4
  %add107 = add nsw i32 %91, %90
  store i32 %add107, i32* %isumscore, align 4
  %92 = load i32, i32* %end2, align 4
  %93 = load i32, i32* %start2, align 4
  %sub108 = sub nsw i32 %92, %93
  %add109 = add nsw i32 %sub108, 1
  %94 = load i32, i32* %sumoverlap, align 4
  %add110 = add nsw i32 %94, %add109
  store i32 %add110, i32* %sumoverlap, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.95
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %land.lhs.true.73, %while.end
  %95 = load i32, i32* @divpairscore, align 4
  %tobool113 = icmp ne i32 %95, 0
  br i1 %tobool113, label %if.end.124, label %if.then.114

if.then.114:                                      ; preds = %if.end.112
  %96 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %96, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.114
  %97 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %tobool115 = icmp ne %struct._LocalHom* %97, null
  br i1 %tobool115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %sumoverlap, align 4
  %99 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa116 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %99, i32 0, i32 8
  store i32 %98, i32* %overlapaa116, align 4
  %100 = load i32, i32* %isumscore, align 4
  %conv117 = sitofp i32 %100 to double
  %mul118 = fmul double %conv117, 5.800000e+00
  %101 = load i32, i32* %sumoverlap, align 4
  %mul119 = mul nsw i32 600, %101
  %conv120 = sitofp i32 %mul119 to double
  %div121 = fdiv double %mul118, %conv120
  %102 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt122 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %102, i32 0, i32 7
  store double %div121, double* %opt122, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %103 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next123 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %103, i32 0, i32 1
  %104 = load %struct._LocalHom*, %struct._LocalHom** %next123, align 8
  store %struct._LocalHom* %104, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.124

if.end.124:                                       ; preds = %for.end, %if.end.112
  ret void
}

; Function Attrs: nounwind uwtable
define void @putlocalhom(i8* %al1, i8* %al2, %struct._LocalHom* %localhompt, i32 %off1, i32 %off2, i32 %opt, i32 %overlapaa) #0 {
entry:
  %al1.addr = alloca i8*, align 8
  %al2.addr = alloca i8*, align 8
  %localhompt.addr = alloca %struct._LocalHom*, align 8
  %off1.addr = alloca i32, align 4
  %off2.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  %overlapaa.addr = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %pt1 = alloca i8*, align 8
  %pt2 = alloca i8*, align 8
  %score = alloca double, align 8
  %sumscore = alloca double, align 8
  %sumoverlap = alloca i32, align 4
  %tmppt = alloca %struct._LocalHom*, align 8
  %nlocalhom = alloca i32, align 4
  %st = alloca i32, align 4
  store i8* %al1, i8** %al1.addr, align 8
  store i8* %al2, i8** %al2.addr, align 8
  store %struct._LocalHom* %localhompt, %struct._LocalHom** %localhompt.addr, align 8
  store i32 %off1, i32* %off1.addr, align 4
  store i32 %off2, i32* %off2.addr, align 4
  store i32 %opt, i32* %opt.addr, align 4
  store i32 %overlapaa, i32* %overlapaa.addr, align 4
  %0 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %0, %struct._LocalHom** %tmppt, align 8
  store i32 0, i32* %nlocalhom, align 4
  %1 = load i8*, i8** %al1.addr, align 8
  store i8* %1, i8** %pt1, align 8
  %2 = load i8*, i8** %al2.addr, align 8
  store i8* %2, i8** %pt2, align 8
  %3 = load i32, i32* %off1.addr, align 4
  store i32 %3, i32* %pos1, align 4
  %4 = load i32, i32* %off2.addr, align 4
  store i32 %4, i32* %pos2, align 4
  store double 0.000000e+00, double* %sumscore, align 8
  store i32 0, i32* %sumoverlap, align 4
  store i32 0, i32* %start1, align 4
  store i32 0, i32* %start2, align 4
  store i32 0, i32* %st, align 4
  store double 0.000000e+00, double* %score, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %entry
  %5 = load i8*, i8** %pt1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %st, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8*, i8** %pt1, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8*, i8** %pt2, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then, label %if.else.32

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load i32, i32* %pos1, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %end1, align 4
  %13 = load i32, i32* %pos2, align 4
  %sub10 = sub nsw i32 %13, 1
  store i32 %sub10, i32* %end2, align 4
  %14 = load i32, i32* %nlocalhom, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %nlocalhom, align 4
  %cmp11 = icmp sgt i32 %14, 0
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %call = call noalias i8* @calloc(i64 1, i64 80) #6
  %15 = bitcast i8* %call to %struct._LocalHom*
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %16, i32 0, i32 1
  store %struct._LocalHom* %15, %struct._LocalHom** %next, align 8
  %17 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next14 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i32 0, i32 1
  %18 = load %struct._LocalHom*, %struct._LocalHom** %next14, align 8
  store %struct._LocalHom* %18, %struct._LocalHom** %tmppt, align 8
  %19 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next15 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %19, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %20 = load i32, i32* %start1, align 4
  %21 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start116 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %21, i32 0, i32 3
  store i32 %20, i32* %start116, align 4
  %22 = load i32, i32* %start2, align 4
  %23 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start217 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %23, i32 0, i32 5
  store i32 %22, i32* %start217, align 4
  %24 = load i32, i32* %end1, align 4
  %25 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end118 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i32 0, i32 4
  store i32 %24, i32* %end118, align 4
  %26 = load i32, i32* %end2, align 4
  %27 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end219 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i32 0, i32 6
  store i32 %26, i32* %end219, align 4
  %28 = load i32, i32* @divpairscore, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %29 = load i32, i32* %end2, align 4
  %30 = load i32, i32* %start2, align 4
  %sub21 = sub nsw i32 %29, %30
  %add = add nsw i32 %sub21, 1
  %31 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa22 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %31, i32 0, i32 8
  store i32 %add, i32* %overlapaa22, align 4
  %32 = load double, double* %score, align 8
  %33 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa23 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i32 0, i32 8
  %34 = load i32, i32* %overlapaa23, align 4
  %conv24 = sitofp i32 %34 to double
  %div = fdiv double %32, %conv24
  %mul = fmul double %div, 5.800000e+00
  %div25 = fdiv double %mul, 6.000000e+02
  %35 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt26 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %35, i32 0, i32 7
  store double %div25, double* %opt26, align 8
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %36 = load double, double* %score, align 8
  %37 = load double, double* %sumscore, align 8
  %add27 = fadd double %37, %36
  store double %add27, double* %sumscore, align 8
  %38 = load i32, i32* %end2, align 4
  %39 = load i32, i32* %start2, align 4
  %sub28 = sub nsw i32 %38, %39
  %add29 = add nsw i32 %sub28, 1
  %40 = load i32, i32* %sumoverlap, align 4
  %add30 = add nsw i32 %40, %add29
  store i32 %add30, i32* %sumoverlap, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.20
  store double 0.000000e+00, double* %score, align 8
  store i32 0, i32* %st, align 4
  br label %if.end.56

if.else.32:                                       ; preds = %lor.lhs.false, %while.body
  %41 = load i8*, i8** %pt1, align 8
  %42 = load i8, i8* %41, align 1
  %conv33 = sext i8 %42 to i32
  %cmp34 = icmp ne i32 %conv33, 45
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.55

land.lhs.true.36:                                 ; preds = %if.else.32
  %43 = load i8*, i8** %pt2, align 8
  %44 = load i8, i8* %43, align 1
  %conv37 = sext i8 %44 to i32
  %cmp38 = icmp ne i32 %conv37, 45
  br i1 %cmp38, label %if.then.40, label %if.end.55

if.then.40:                                       ; preds = %land.lhs.true.36
  %45 = load i32, i32* %st, align 4
  %cmp41 = icmp eq i32 %45, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %46 = load i32, i32* %pos1, align 4
  store i32 %46, i32* %start1, align 4
  %47 = load i32, i32* %pos2, align 4
  store i32 %47, i32* %start2, align 4
  store i32 1, i32* %st, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.40
  %48 = load i8*, i8** %pt2, align 8
  %49 = load i8, i8* %48, align 1
  %conv45 = sext i8 %49 to i32
  %idxprom = sext i32 %conv45 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %50 = load i32, i32* %arrayidx, align 4
  %idxprom46 = sext i32 %50 to i64
  %51 = load i8*, i8** %pt1, align 8
  %52 = load i8, i8* %51, align 1
  %conv47 = sext i8 %52 to i32
  %idxprom48 = sext i32 %conv47 to i64
  %arrayidx49 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom48
  %53 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %53 to i64
  %arrayidx51 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx51, i32 0, i64 %idxprom46
  %54 = load i32, i32* %arrayidx52, align 4
  %conv53 = sitofp i32 %54 to double
  %55 = load double, double* %score, align 8
  %add54 = fadd double %55, %conv53
  store double %add54, double* %score, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.44, %land.lhs.true.36, %if.else.32
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.31
  %56 = load i8*, i8** %pt1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %pt1, align 8
  %57 = load i8, i8* %56, align 1
  %conv57 = sext i8 %57 to i32
  %cmp58 = icmp ne i32 %conv57, 45
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %58 = load i32, i32* %pos1, align 4
  %inc61 = add nsw i32 %58, 1
  store i32 %inc61, i32* %pos1, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.56
  %59 = load i8*, i8** %pt2, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr63, i8** %pt2, align 8
  %60 = load i8, i8* %59, align 1
  %conv64 = sext i8 %60 to i32
  %cmp65 = icmp ne i32 %conv64, 45
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.62
  %61 = load i32, i32* %pos2, align 4
  %inc68 = add nsw i32 %61, 1
  store i32 %inc68, i32* %pos2, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.62
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i32, i32* %nlocalhom, align 4
  %inc70 = add nsw i32 %62, 1
  store i32 %inc70, i32* %nlocalhom, align 4
  %cmp71 = icmp sgt i32 %62, 0
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %while.end
  %call74 = call noalias i8* @calloc(i64 1, i64 80) #6
  %63 = bitcast i8* %call74 to %struct._LocalHom*
  %64 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next75 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %64, i32 0, i32 1
  store %struct._LocalHom* %63, %struct._LocalHom** %next75, align 8
  %65 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next76 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %65, i32 0, i32 1
  %66 = load %struct._LocalHom*, %struct._LocalHom** %next76, align 8
  store %struct._LocalHom* %66, %struct._LocalHom** %tmppt, align 8
  %67 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next77 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %67, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %while.end
  %68 = load i32, i32* %pos1, align 4
  %sub79 = sub nsw i32 %68, 1
  store i32 %sub79, i32* %end1, align 4
  %69 = load i32, i32* %pos2, align 4
  %sub80 = sub nsw i32 %69, 1
  store i32 %sub80, i32* %end2, align 4
  %70 = load i32, i32* %start1, align 4
  %71 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start181 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %71, i32 0, i32 3
  store i32 %70, i32* %start181, align 4
  %72 = load i32, i32* %start2, align 4
  %73 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start282 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %73, i32 0, i32 5
  store i32 %72, i32* %start282, align 4
  %74 = load i32, i32* %end1, align 4
  %75 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end183 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %75, i32 0, i32 4
  store i32 %74, i32* %end183, align 4
  %76 = load i32, i32* %end2, align 4
  %77 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end284 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %77, i32 0, i32 6
  store i32 %76, i32* %end284, align 4
  %78 = load i32, i32* @divpairscore, align 4
  %tobool85 = icmp ne i32 %78, 0
  br i1 %tobool85, label %if.then.86, label %if.else.96

if.then.86:                                       ; preds = %if.end.78
  %79 = load i32, i32* %end2, align 4
  %80 = load i32, i32* %start2, align 4
  %sub87 = sub nsw i32 %79, %80
  %add88 = add nsw i32 %sub87, 1
  %81 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa89 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %81, i32 0, i32 8
  store i32 %add88, i32* %overlapaa89, align 4
  %82 = load double, double* %score, align 8
  %83 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa90 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %83, i32 0, i32 8
  %84 = load i32, i32* %overlapaa90, align 4
  %conv91 = sitofp i32 %84 to double
  %div92 = fdiv double %82, %conv91
  %mul93 = fmul double %div92, 5.800000e+00
  %div94 = fdiv double %mul93, 6.000000e+02
  %85 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt95 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %85, i32 0, i32 7
  store double %div94, double* %opt95, align 8
  br label %if.end.101

if.else.96:                                       ; preds = %if.end.78
  %86 = load double, double* %score, align 8
  %87 = load double, double* %sumscore, align 8
  %add97 = fadd double %87, %86
  store double %add97, double* %sumscore, align 8
  %88 = load i32, i32* %end2, align 4
  %89 = load i32, i32* %start2, align 4
  %sub98 = sub nsw i32 %88, %89
  %add99 = add nsw i32 %sub98, 1
  %90 = load i32, i32* %sumoverlap, align 4
  %add100 = add nsw i32 %90, %add99
  store i32 %add100, i32* %sumoverlap, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.96, %if.then.86
  %91 = load i32, i32* @divpairscore, align 4
  %tobool102 = icmp ne i32 %91, 0
  br i1 %tobool102, label %if.end.112, label %if.then.103

if.then.103:                                      ; preds = %if.end.101
  %92 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %92, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.103
  %93 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %tobool104 = icmp ne %struct._LocalHom* %93, null
  br i1 %tobool104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load i32, i32* %sumoverlap, align 4
  %95 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa105 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %95, i32 0, i32 8
  store i32 %94, i32* %overlapaa105, align 4
  %96 = load double, double* %sumscore, align 8
  %mul106 = fmul double %96, 5.800000e+00
  %div107 = fdiv double %mul106, 6.000000e+02
  %97 = load i32, i32* %sumoverlap, align 4
  %conv108 = sitofp i32 %97 to double
  %div109 = fdiv double %div107, %conv108
  %98 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt110 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %98, i32 0, i32 7
  store double %div109, double* %opt110, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next111 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %99, i32 0, i32 1
  %100 = load %struct._LocalHom*, %struct._LocalHom** %next111, align 8
  store %struct._LocalHom* %100, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.112

if.end.112:                                       ; preds = %for.end, %if.end.101
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @cutal(i8* %al, i32 %al_display_start, i32 %start, i32 %end) #0 {
entry:
  %al.addr = alloca i8*, align 8
  %al_display_start.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %pt = alloca i8*, align 8
  %val = alloca i8*, align 8
  store i8* %al, i8** %al.addr, align 8
  store i32 %al_display_start, i32* %al_display_start.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i8*, i8** %al.addr, align 8
  store i8* %0, i8** %pt, align 8
  store i8* null, i8** %val, align 8
  %1 = load i32, i32* %al_display_start.addr, align 4
  store i32 %1, i32* %pos, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %start.addr, align 4
  %3 = load i32, i32* %pos, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %pt, align 8
  store i8* %4, i8** %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i32, i32* %end.addr, align 4
  %6 = load i32, i32* %pos, align 4
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %do.end

if.end.3:                                         ; preds = %if.end
  %7 = load i8*, i8** %pt, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv, 45
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %9 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %pos, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %10 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.2
  %12 = load i8*, i8** %pt, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %add.ptr, align 1
  %13 = load i8*, i8** %val, align 8
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define void @ErrorExit(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %message.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @strncpy_caseC(i8* %str1, i8* %str2, i32 %len) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* @dorp, align 4
  %cmp = icmp eq i32 %0, 100
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @upperCase, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %str2.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @toupper(i32 %conv) #6
  %conv2 = trunc i32 %call to i8
  %5 = load i8*, i8** %str1.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %str1.addr, align 8
  store i8 %conv2, i8* %5, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %str1.addr, align 8
  %7 = load i8*, i8** %str2.addr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %conv4 = sext i32 %8 to i64
  %call5 = call i8* @strncpy(i8* %6, i8* %7, i64 %conv4) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @seqUpper(i32 %nseq, i8** %seq) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i8**, i8*** %seq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %9, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %call10 = call i32 @toupper(i32 %conv9) #6
  %conv11 = trunc i32 %call10 to i8
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i8**, i8*** %seq.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %14, i64 %idxprom13
  %15 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @seqLower(i32 %nseq, i8** %seq) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i8**, i8*** %seq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %9, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %call10 = call i32 @tolower(i32 %conv9) #6
  %conv11 = trunc i32 %call10 to i8
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i8**, i8*** %seq.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %14, i64 %idxprom13
  %15 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind uwtable
define i32 @getaline_fp_eof(i8* %s, i32 %l, %struct._IO_FILE* %fp) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %noteofflag = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %noteofflag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %cmp1 = icmp ne i32 %call, -1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %noteofflag, align 4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %3, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %c, align 4
  %conv4 = trunc i32 %5 to i8
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 %conv4, i8* %6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %noteofflag, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @getaline_fp_eof_new(i8* %s, i32 %l, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %noteofflag = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %noteofflag, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %noteofflag, align 4
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %4, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %conv5 = trunc i32 %6 to i8
  %7 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 %conv5, i8* %7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %9, align 1
  %10 = load i32, i32* %c, align 4
  %cmp6 = icmp ne i32 %10, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.15

land.lhs.true.8:                                  ; preds = %for.end
  %11 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %11, -1
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %land.lhs.true.8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.11
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  %cmp13 = icmp ne i32 %call12, 10
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %land.lhs.true.8, %for.end
  %13 = load i32, i32* %noteofflag, align 4
  %tobool16 = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @myfgets(i8* %s, i32 %l, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %c, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 %conv, i8* %6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %9, 10
  br i1 %cmp3, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  %cmp7 = icmp ne i32 %call6, 10
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.9

if.end.9:                                         ; preds = %while.end, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define float @input_new(%struct._IO_FILE* %fp, i32 %d) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %d.addr = alloca i32, align 4
  %mojiretsu = alloca [10 x i8], align 1
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %d.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  %conv = trunc i32 %call3 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %mojiretsu, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [10 x i8], [10 x i8]* %mojiretsu, i32 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %mojiretsu, i32 0, i32 0
  %call6 = call double @atof(i8* %arraydecay) #8
  %conv7 = fptrunc double %call6 to float
  ret float %conv7
}

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8*) #4

; Function Attrs: nounwind uwtable
define void @PreRead(%struct._IO_FILE* %fp, i32* %locnjob, i32* %locnlenmax) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32*, align 8
  %locnlenmax.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %nleni = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %locnjob, i32** %locnjob.addr, align 8
  store i32* %locnlenmax, i32** %locnlenmax.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call2 = call i32 @atoi(i8* %arraydecay1) #8
  %1 = load i32*, i32** %locnjob.addr, align 8
  store i32 %call2, i32* %1, align 4
  %2 = load i32*, i32** %locnlenmax.addr, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** %locnjob.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i8* @fgets(i8* %arraydecay3, i32 255, %struct._IO_FILE* %6)
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call6 = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1) #8
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i8* @fgets(i8* %arraydecay7, i32 255, %struct._IO_FILE* %8)
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call10 = call i32 @atoi(i8* %arraydecay9) #8
  store i32 %call10, i32* %nleni, align 4
  %9 = load i32, i32* %nleni, align 4
  %10 = load i32*, i32** %locnlenmax.addr, align 8
  %11 = load i32, i32* %10, align 4
  %cmp11 = icmp sgt i32 %9, %11
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %12 = load i32, i32* %nleni, align 4
  %13 = load i32*, i32** %locnlenmax.addr, align 8
  store i32 %12, i32* %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32*, i32** %locnlenmax.addr, align 8
  %15 = load i32, i32* %14, align 4
  %cmp14 = icmp sgt i32 %15, 5000000
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %while.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.17:                                        ; preds = %while.end
  %17 = load i32, i32* @njob, align 4
  %cmp18 = icmp sgt i32 %17, 50000
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* @njob, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %20, i32 50000)
  call void @exit(i32 1) #7
  unreachable

if.end.22:                                        ; preds = %if.end.17
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @allSpace(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 1, i32* %value, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  %6 = load i32, i32* %value, align 4
  %mul = mul nsw i32 %6, %lnot.ext
  store i32 %mul, i32* %value, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %value, align 4
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define void @Read([256 x i8]* %name, i32* %nlen, i8** %seq) #0 {
entry:
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %1 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %2 = load i32*, i32** %nlen.addr, align 8
  %3 = load i8**, i8*** %seq.addr, align 8
  call void @FRead(%struct._IO_FILE* %0, [256 x i8]* %1, i32* %2, i8** %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @FRead(%struct._IO_FILE* %fp, [256 x i8]* %name, i32* %nlen, i8** %seq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call2 = call i8* @strstr(i8* %arraydecay1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @scoremtx, align 4
  br label %if.end.29

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i8* @strstr(i8* %arraydecay3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #8
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* @scoremtx, align 4
  store i32 -1, i32* @upperCase, align 4
  br label %if.end.28

if.else.7:                                        ; preds = %if.else
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call9 = call i8* @strstr(i8* %arraydecay8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #8
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.7
  store i32 -1, i32* @scoremtx, align 4
  store i32 0, i32* @upperCase, align 4
  br label %if.end.27

if.else.12:                                       ; preds = %if.else.7
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call14 = call i8* @strstr(i8* %arraydecay13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #8
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.12
  store i32 -1, i32* @scoremtx, align 4
  store i32 1, i32* @upperCase, align 4
  br label %if.end.26

if.else.17:                                       ; preds = %if.else.12
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call19 = call i8* @strstr(i8* %arraydecay18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.17
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call22 = call i8* @strstr(i8* %arraydecay21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.else.17
  store i32 2, i32* @scoremtx, align 4
  br label %if.end

if.else.25:                                       ; preds = %lor.lhs.false
  store i32 0, i32* @scoremtx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.11
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.6
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  store float 0x3F50624DE0000000, float* @geta2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %if.end.29
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i32 @getaline_fp_eof_new(i8* %arraydecay30, i32 255, %struct._IO_FILE* %3)
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 %idxprom
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call34 = call i8* @strcpy(i8* %arraydecay32, i8* %arraydecay33) #6
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i8* @fgets(i8* %arraydecay35, i32 255, %struct._IO_FILE* %6)
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call38 = call i32 @atoi(i8* %arraydecay37) #8
  %7 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %7 to i64
  %8 = load i32*, i32** %nlen.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %8, i64 %idxprom39
  store i32 %call38, i32* %arrayidx40, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %9 to i64
  %10 = load i8**, i8*** %seq.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %10, i64 %idxprom41
  %11 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %arrayidx43, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %12 to i64
  %13 = load i32*, i32** %nlen.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %13, i64 %idxprom44
  %14 = load i32, i32* %arrayidx45, align 4
  %tobool46 = icmp ne i32 %14, 0
  br i1 %tobool46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %if.then.47
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %16 to i64
  %17 = load i32*, i32** %nlen.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %17, i64 %idxprom49
  %18 = load i32, i32* %arrayidx50, align 4
  %sub = sub nsw i32 %18, 1
  %div = sdiv i32 %sub, 60
  %cmp51 = icmp sle i32 %15, %div
  br i1 %cmp51, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.48
  %arraydecay53 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call54 = call i32 @getaline_fp_eof_new(i8* %arraydecay53, i32 255, %struct._IO_FILE* %19)
  %20 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %20 to i64
  %21 = load i8**, i8*** %seq.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %21, i64 %idxprom55
  %22 = load i8*, i8** %arrayidx56, align 8
  %arraydecay57 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call58 = call i8* @strcat(i8* %22, i8* %arraydecay57) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body.52
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  br label %if.end.59

if.end.59:                                        ; preds = %for.end, %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %24 to i64
  %25 = load i32*, i32** %nlen.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %25, i64 %idxprom60
  %26 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %27 to i64
  %28 = load i8**, i8*** %seq.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %28, i64 %idxprom63
  %29 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %29, i64 %idxprom62
  store i8 0, i8* %arrayidx65, align 1
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.59
  %30 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %30, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %31 = load i32, i32* @scoremtx, align 4
  %cmp69 = icmp eq i32 %31, -1
  br i1 %cmp69, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %for.end.68
  %32 = load i32, i32* @upperCase, align 4
  %cmp70 = icmp ne i32 %32, -1
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* @njob, align 4
  %34 = load i8**, i8*** %seq.addr, align 8
  call void @seqLower(i32 %33, i8** %34)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true, %for.end.68
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @searchKUorWA(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 10, i32* %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, 62
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, 61
  br i1 %cmp1, label %land.rhs, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %2, -1
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.2, %lor.lhs.false, %while.cond
  %3 = load i32, i32* %b, align 4
  %cmp4 = icmp eq i32 %3, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.2
  %4 = phi i1 [ false, %lor.lhs.false.2 ], [ %cmp4, %land.rhs ]
  %lnot = xor i1 %4, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %c, align 4
  store i32 %5, i32* %b, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @ungetc(i32 %6, %struct._IO_FILE* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @kake2hiku(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i8*, i8** %str.addr, align 8
  store i8 45, i8* %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %fpp) #0 {
entry:
  %fpp.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  %cbuf = alloca i8*, align 8
  %size = alloca i32, align 4
  %val = alloca i8*, align 8
  store %struct._IO_FILE* %fpp, %struct._IO_FILE** %fpp.addr, align 8
  store i32 5000000, i32* %size, align 4
  %0 = load i32, i32* %size, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul) #6
  store i8* %call, i8** %val, align 8
  %1 = load i8*, i8** %val, align 8
  store i8* %1, i8** %cbuf, align 8
  store i32 10, i32* %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fpp.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call1, i32* %c, align 4
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %land.rhs, label %land.end.16

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %3, 62
  br i1 %cmp3, label %land.rhs.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %4, 61
  br i1 %cmp5, label %land.rhs.13, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %5, 40
  br i1 %cmp8, label %land.rhs.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %6 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %6, -1
  br i1 %cmp11, label %land.rhs.13, label %land.end

land.rhs.13:                                      ; preds = %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false, %land.rhs
  %7 = load i32, i32* %b, align 4
  %cmp14 = icmp eq i32 %7, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs.13, %lor.lhs.false.10
  %8 = phi i1 [ false, %lor.lhs.false.10 ], [ %cmp14, %land.rhs.13 ]
  %lnot = xor i1 %8, true
  br label %land.end.16

land.end.16:                                      ; preds = %land.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.16
  %10 = load i32, i32* %c, align 4
  %conv17 = trunc i32 %10 to i8
  %11 = load i8*, i8** %cbuf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cbuf, align 8
  store i8 %conv17, i8* %11, align 1
  %12 = load i8*, i8** %cbuf, align 8
  %13 = load i8*, i8** %val, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = load i32, i32* %size, align 4
  %conv18 = sext i32 %14 to i64
  %cmp19 = icmp eq i64 %sub.ptr.sub, %conv18
  br i1 %cmp19, label %if.then, label %if.end.31

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %size, align 4
  %add21 = add nsw i32 %15, 5000000
  store i32 %add21, i32* %size, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %17 = load i8*, i8** %val, align 8
  %18 = load i32, i32* %size, align 4
  %add23 = add nsw i32 %18, 1
  %conv24 = sext i32 %add23 to i64
  %mul25 = mul i64 %conv24, 1
  %call26 = call i8* @realloc(i8* %17, i64 %mul25) #6
  store i8* %call26, i8** %val, align 8
  %19 = load i8*, i8** %val, align 8
  %tobool = icmp ne i8* %19, null
  br i1 %tobool, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %if.then
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  %22 = load i8*, i8** %val, align 8
  %23 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 -5000000
  store i8* %add.ptr30, i8** %cbuf, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %while.body
  %24 = load i32, i32* %c, align 4
  store i32 %24, i32* %b, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.16
  %25 = load i32, i32* %c, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fpp.addr, align 8
  %call32 = call i32 @ungetc(i32 %25, %struct._IO_FILE* %26)
  %27 = load i8*, i8** %cbuf, align 8
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* @dorp, align 4
  %cmp33 = icmp eq i32 %28, 100
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %while.end
  %29 = load i8*, i8** %val, align 8
  %call36 = call i32 @onlyAlpha_lower(i8* %29)
  br label %if.end.38

if.else:                                          ; preds = %while.end
  %30 = load i8*, i8** %val, align 8
  %call37 = call i32 @onlyAlpha_upper(i8* %30)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.35
  %31 = load i8*, i8** %val, align 8
  call void @kake2hiku(i8* %31)
  %32 = load i8*, i8** %val, align 8
  ret i8* %32
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @onlyAlpha_lower(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %tmp = alloca i8, align 1
  %res = alloca i8*, align 8
  %bk = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %res, align 8
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %bk, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %tmp, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %tmp, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %5 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %6 to i32
  %and = and i32 %conv3, 1024
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i8, i8* %tmp, align 1
  %conv5 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv5, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load i8, i8* %tmp, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 42
  br i1 %cmp9, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %9 = load i8, i8* %tmp, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.7, %lor.lhs.false, %while.body
  %10 = load i8, i8* %tmp, align 1
  %conv15 = sext i8 %10 to i32
  %call16 = call i32 @tolower(i32 %conv15) #6
  %conv17 = trunc i32 %call16 to i8
  %11 = load i8*, i8** %res, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr18, i8** %res, align 8
  store i8 %conv17, i8* %11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %res, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %res, align 8
  %14 = load i8*, i8** %bk, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv19
}

; Function Attrs: nounwind uwtable
define internal i32 @onlyAlpha_upper(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %tmp = alloca i8, align 1
  %res = alloca i8*, align 8
  %bk = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %res, align 8
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %bk, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %tmp, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %tmp, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %5 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %6 to i32
  %and = and i32 %conv3, 1024
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i8, i8* %tmp, align 1
  %conv5 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv5, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load i8, i8* %tmp, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 42
  br i1 %cmp9, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %9 = load i8, i8* %tmp, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.7, %lor.lhs.false, %while.body
  %10 = load i8, i8* %tmp, align 1
  %conv15 = sext i8 %10 to i32
  %call16 = call i32 @toupper(i32 %conv15) #6
  %conv17 = trunc i32 %call16 to i8
  %11 = load i8*, i8** %res, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr18, i8** %res, align 8
  store i8 %conv17, i8* %11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %res, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %res, align 8
  %14 = load i8*, i8** %bk, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv19
}

; Function Attrs: nounwind uwtable
define i32 @load1SeqWithoutName_new(%struct._IO_FILE* %fpp, i8* %cbuf) #0 {
entry:
  %fpp.addr = alloca %struct._IO_FILE*, align 8
  %cbuf.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  %bk = alloca i8*, align 8
  store %struct._IO_FILE* %fpp, %struct._IO_FILE** %fpp.addr, align 8
  store i8* %cbuf, i8** %cbuf.addr, align 8
  %0 = load i8*, i8** %cbuf.addr, align 8
  store i8* %0, i8** %bk, align 8
  store i32 10, i32* %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fpp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %land.rhs, label %land.end.9

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 62
  br i1 %cmp1, label %land.rhs.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 61
  br i1 %cmp2, label %land.rhs.7, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %4, 40
  br i1 %cmp4, label %land.rhs.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %5 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %5, -1
  br i1 %cmp6, label %land.rhs.7, label %land.end

land.rhs.7:                                       ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %land.rhs
  %6 = load i32, i32* %b, align 4
  %cmp8 = icmp eq i32 %6, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs.7, %lor.lhs.false.5
  %7 = phi i1 [ false, %lor.lhs.false.5 ], [ %cmp8, %land.rhs.7 ]
  %lnot = xor i1 %7, true
  br label %land.end.9

land.end.9:                                       ; preds = %land.end, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.9
  %9 = load i32, i32* %c, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i8*, i8** %cbuf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %cbuf.addr, align 8
  store i8 %conv, i8* %10, align 1
  %11 = load i32, i32* %c, align 4
  store i32 %11, i32* %b, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.9
  %12 = load i32, i32* %c, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fpp.addr, align 8
  %call10 = call i32 @ungetc(i32 %12, %struct._IO_FILE* %13)
  %14 = load i8*, i8** %cbuf.addr, align 8
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* @dorp, align 4
  %cmp11 = icmp eq i32 %15, 100
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %16 = load i8*, i8** %bk, align 8
  %call13 = call i32 @onlyAlpha_lower(i8* %16)
  br label %if.end

if.else:                                          ; preds = %while.end
  %17 = load i8*, i8** %bk, align 8
  %call14 = call i32 @onlyAlpha_upper(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i8*, i8** %bk, align 8
  call void @kake2hiku(i8* %18)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @readDataforgaln(%struct._IO_FILE* %fp, i8** %name, i32* %nlen, i8** %seq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @searchKUorWA(%struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 61, i8* %arrayidx1, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i8**, i8*** %name.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @myfgets(i8* %add.ptr, i32 254, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %12)
  store i8* %call5, i8** @readDataforgaln.tmpseq, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8**, i8*** %seq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 %idxprom6
  %15 = load i8*, i8** %arrayidx7, align 8
  %16 = load i8*, i8** @readDataforgaln.tmpseq, align 8
  %call8 = call i8* @strcpy(i8* %15, i8* %16) #6
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i8**, i8*** %seq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 %idxprom9
  %19 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %19) #8
  %conv = trunc i64 %call11 to i32
  %20 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load i32*, i32** %nlen.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  store i32 %conv, i32* %arrayidx13, align 4
  %22 = load i8*, i8** @readDataforgaln.tmpseq, align 8
  call void @free(i8* %22) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* @dorp, align 4
  %cmp14 = icmp eq i32 %24, 100
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %25 = load i32, i32* @upperCase, align 4
  %cmp16 = icmp ne i32 %25, -1
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, i32* @njob, align 4
  %27 = load i8**, i8*** %seq.addr, align 8
  call void @seqLower(i32 %26, i8** %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  ret void
}

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @readData_varlen(%struct._IO_FILE* %fp, i8** %name, i32* %nlen, i8** %seq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @searchKUorWA(%struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 61, i8* %arrayidx1, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i8**, i8*** %name.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @myfgets(i8* %add.ptr, i32 254, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %12)
  store i8* %call5, i8** @readData_varlen.tmpseq, align 8
  %13 = load i8*, i8** @readData_varlen.tmpseq, align 8
  %call6 = call i64 @strlen(i8* %13) #8
  %conv = trunc i64 %call6 to i32
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32*, i32** %nlen.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  store i32 %conv, i32* %arrayidx8, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i32*, i32** %nlen.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %add = add nsw i32 %18, 1
  %conv11 = sext i32 %add to i64
  %call12 = call noalias i8* @calloc(i64 %conv11, i64 1) #6
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i8**, i8*** %seq.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %20, i64 %idxprom13
  store i8* %call12, i8** %arrayidx14, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i8**, i8*** %seq.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %22, i64 %idxprom15
  %23 = load i8*, i8** %arrayidx16, align 8
  %24 = load i8*, i8** @readData_varlen.tmpseq, align 8
  %call17 = call i8* @strcpy(i8* %23, i8* %24) #6
  %25 = load i8*, i8** @readData_varlen.tmpseq, align 8
  call void @free(i8* %25) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* @dorp, align 4
  %cmp18 = icmp eq i32 %27, 100
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %28 = load i32, i32* @upperCase, align 4
  %cmp20 = icmp ne i32 %28, -1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %29 = load i32, i32* @njob, align 4
  %30 = load i8**, i8*** %seq.addr, align 8
  call void @seqLower(i32 %29, i8** %30)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @readData_pointer(%struct._IO_FILE* %fp, i8** %name, i32* %nlen, i8** %seq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @searchKUorWA(%struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 61, i8* %arrayidx1, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i8**, i8*** %name.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @myfgets(i8* %add.ptr, i32 254, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %12)
  store i8* %call5, i8** @readData_pointer.tmpseq, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8**, i8*** %seq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 %idxprom6
  %15 = load i8*, i8** %arrayidx7, align 8
  %16 = load i8*, i8** @readData_pointer.tmpseq, align 8
  %call8 = call i8* @strcpy(i8* %15, i8* %16) #6
  %17 = load i8*, i8** @readData_pointer.tmpseq, align 8
  call void @free(i8* %17) #6
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i8**, i8*** %seq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 %idxprom9
  %20 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %20) #8
  %conv = trunc i64 %call11 to i32
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load i32*, i32** %nlen.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 %idxprom12
  store i32 %conv, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* @dorp, align 4
  %cmp14 = icmp eq i32 %24, 100
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %25 = load i32, i32* @upperCase, align 4
  %cmp16 = icmp ne i32 %25, -1
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, i32* @njob, align 4
  %27 = load i8**, i8*** %seq.addr, align 8
  call void @seqLower(i32 %26, i8** %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @readData(%struct._IO_FILE* %fp, [256 x i8]* %name, i32* %nlen, i8** %seq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @searchKUorWA(%struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 0
  store i8 61, i8* %arrayidx1, align 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %6)
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 %idxprom2
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx3, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @myfgets(i8* %add.ptr, i32 254, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %10)
  store i8* %call5, i8** @readData.tmpseq, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i8**, i8*** %seq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %12, i64 %idxprom6
  %13 = load i8*, i8** %arrayidx7, align 8
  %14 = load i8*, i8** @readData.tmpseq, align 8
  %call8 = call i8* @strcpy(i8* %13, i8* %14) #6
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8**, i8*** %seq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %16, i64 %idxprom9
  %17 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %17) #8
  %conv = trunc i64 %call11 to i32
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i32*, i32** %nlen.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  store i32 %conv, i32* %arrayidx13, align 4
  %20 = load i8*, i8** @readData.tmpseq, align 8
  call void @free(i8* %20) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* @dorp, align 4
  %cmp14 = icmp eq i32 %22, 100
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %23 = load i32, i32* @upperCase, align 4
  %cmp16 = icmp ne i32 %23, -1
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %24 = load i32, i32* @njob, align 4
  %25 = load i8**, i8*** %seq.addr, align 8
  call void @seqLower(i32 %24, i8** %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @countATGC(i8* %s, i32* %total) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %total.addr = alloca i32*, align 8
  %nATGC = alloca i32, align 4
  %nChar = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i32* %total, i32** %total.addr, align 8
  store i32 0, i32* %nChar, align 4
  store i32 0, i32* %nATGC, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %total.addr, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @tolower(i32 %conv2) #6
  %conv3 = trunc i32 %call to i8
  store i8 %conv3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv4 = sext i8 %4 to i32
  %idxprom = sext i32 %conv4 to i64
  %call5 = call i16** @__ctype_b_loc() #9
  %5 = load i16*, i16** %call5, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %6 to i32
  %and = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.7, label %if.end.33

if.then.7:                                        ; preds = %do.body
  %7 = load i32, i32* %nChar, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nChar, align 4
  %8 = load i8, i8* %c, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 97
  br i1 %cmp9, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %9 = load i8, i8* %c, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 116
  br i1 %cmp12, label %if.then.30, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %10 = load i8, i8* %c, align 1
  %conv15 = sext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 103
  br i1 %cmp16, label %if.then.30, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %11 = load i8, i8* %c, align 1
  %conv19 = sext i8 %11 to i32
  %cmp20 = icmp eq i32 %conv19, 99
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.18
  %12 = load i8, i8* %c, align 1
  %conv23 = sext i8 %12 to i32
  %cmp24 = icmp eq i32 %conv23, 117
  br i1 %cmp24, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.22
  %13 = load i8, i8* %c, align 1
  %conv27 = sext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 110
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.22, %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false, %if.then.7
  %14 = load i32, i32* %nATGC, align 4
  %inc31 = add nsw i32 %14, 1
  store i32 %inc31, i32* %nATGC, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %lor.lhs.false.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  %15 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %16 = load i8, i8* %incdec.ptr, align 1
  %tobool34 = icmp ne i8 %16, 0
  br i1 %tobool34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i32, i32* %nChar, align 4
  %18 = load i32*, i32** %total.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %nATGC, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define double @countATGCbk(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %nATGC = alloca i32, align 4
  %nChar = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %nChar, align 4
  store i32 0, i32* %nATGC, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @tolower(i32 %conv) #6
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %conv2 = sext i8 %2 to i32
  %idxprom = sext i32 %conv2 to i64
  %call3 = call i16** @__ctype_b_loc() #9
  %3 = load i16*, i16** %call3, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %4 to i32
  %and = and i32 %conv4, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %nChar, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nChar, align 4
  %6 = load i8, i8* %c, align 1
  %conv5 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv5, 97
  br i1 %cmp, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i8, i8* %c, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 116
  br i1 %cmp8, label %if.then.26, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %8 = load i8, i8* %c, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 103
  br i1 %cmp12, label %if.then.26, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %9 = load i8, i8* %c, align 1
  %conv15 = sext i8 %9 to i32
  %cmp16 = icmp eq i32 %conv15, 99
  br i1 %cmp16, label %if.then.26, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %10 = load i8, i8* %c, align 1
  %conv19 = sext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 117
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.18
  %11 = load i8, i8* %c, align 1
  %conv23 = sext i8 %11 to i32
  %cmp24 = icmp eq i32 %conv23, 110
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false, %if.then
  %12 = load i32, i32* %nATGC, align 4
  %inc27 = add nsw i32 %12, 1
  store i32 %inc27, i32* %nATGC, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %lor.lhs.false.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %14 = load i8, i8* %incdec.ptr, align 1
  %tobool29 = icmp ne i8 %14, 0
  br i1 %tobool29, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %nATGC, align 4
  %conv30 = sitofp i32 %15 to double
  %16 = load i32, i32* %nChar, align 4
  %conv31 = sitofp i32 %16 to double
  %div = fdiv double %conv30, %conv31
  ret double %div
}

; Function Attrs: nounwind uwtable
define i32 @countalpha(i8* %seq) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 0, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %and = and i32 %conv1, 1024
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %val, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %val, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @getnumlen_nogap(%struct._IO_FILE* %fp, i32* %nlenminpt) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nlenminpt.addr = alloca i32*, align 8
  %total = alloca i32, align 4
  %nsite = alloca i32, align 4
  %atgcnum = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmpseq = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  %atgcfreq = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %nlenminpt, i32** %nlenminpt.addr, align 8
  %call = call i8* @AllocateCharVec(i32 5000000)
  store i8* %call, i8** %tmpname, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @countKUorWA(%struct._IO_FILE* %0)
  store i32 %call4, i32* @njob, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @searchKUorWA(%struct._IO_FILE* %1)
  store i32 0, i32* @nlenmax, align 4
  %2 = load i32*, i32** %nlenminpt.addr, align 8
  store i32 99999999, i32* %2, align 4
  store i32 0, i32* %atgcnum, align 4
  store i32 0, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %tmpname, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @myfgets(i8* %5, i32 4999999, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %7)
  store i8* %call6, i8** %tmpseq, align 8
  %8 = load i8*, i8** %tmpseq, align 8
  %call7 = call i32 @countalpha(i8* %8)
  store i32 %call7, i32* %tmp, align 4
  %9 = load i32, i32* %tmp, align 4
  %10 = load i32, i32* @nlenmax, align 4
  %cmp8 = icmp sgt i32 %9, %10
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %tmp, align 4
  store i32 %11, i32* @nlenmax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i32, i32* %tmp, align 4
  %13 = load i32*, i32** %nlenminpt.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp9 = icmp slt i32 %12, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %tmp, align 4
  %16 = load i32*, i32** %nlenminpt.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %17 = load i8*, i8** %tmpseq, align 8
  %call12 = call i32 @countATGC(i8* %17, i32* %nsite)
  %18 = load i32, i32* %atgcnum, align 4
  %add = add nsw i32 %18, %call12
  store i32 %add, i32* %atgcnum, align 4
  %19 = load i32, i32* %nsite, align 4
  %20 = load i32, i32* %total, align 4
  %add13 = add nsw i32 %20, %19
  store i32 %add13, i32* %total, align 4
  %21 = load i8*, i8** %tmpseq, align 8
  call void @free(i8* %21) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %23) #6
  %24 = load i32, i32* %atgcnum, align 4
  %conv = sitofp i32 %24 to double
  %25 = load i32, i32* %total, align 4
  %conv14 = sitofp i32 %25 to double
  %div = fdiv double %conv, %conv14
  store double %div, double* %atgcfreq, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load double, double* %atgcfreq, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), double %27)
  %28 = load i32, i32* @dorp, align 4
  %cmp16 = icmp eq i32 %28, 100009
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %for.end
  %29 = load double, double* %atgcfreq, align 8
  %cmp19 = fcmp ogt double %29, 7.500000e-01
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  store i32 100, i32* @dorp, align 4
  store i32 -1, i32* @upperCase, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.then.18
  store i32 112, i32* @dorp, align 4
  store i32 0, i32* @upperCase, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.end
  ret void
}

declare i8* @AllocateCharVec(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @countKUorWA(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %value = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %value, align 4
  store i32 10, i32* %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %b, align 4
  %cmp1 = icmp eq i32 %1, 10
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %2, 61
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %3, 62
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, i32* %value, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.body
  %5 = load i32, i32* %c, align 4
  store i32 %5, i32* %b, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %6)
  %7 = load i32, i32* %value, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @getnumlen(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %total = alloca i32, align 4
  %nsite = alloca i32, align 4
  %atgcnum = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmpseq = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  %atgcfreq = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @AllocateCharVec(i32 5000000)
  store i8* %call, i8** %tmpname, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @countKUorWA(%struct._IO_FILE* %0)
  store i32 %call4, i32* @njob, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @searchKUorWA(%struct._IO_FILE* %1)
  store i32 0, i32* @nlenmax, align 4
  store i32 0, i32* %atgcnum, align 4
  store i32 0, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %tmpname, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @myfgets(i8* %4, i32 4999999, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @load1SeqWithoutName_realloc(%struct._IO_FILE* %6)
  store i8* %call6, i8** %tmpseq, align 8
  %7 = load i8*, i8** %tmpseq, align 8
  %call7 = call i64 @strlen(i8* %7) #8
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %tmp, align 4
  %8 = load i32, i32* %tmp, align 4
  %9 = load i32, i32* @nlenmax, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %tmp, align 4
  store i32 %10, i32* @nlenmax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i8*, i8** %tmpseq, align 8
  %call10 = call i32 @countATGC(i8* %11, i32* %nsite)
  %12 = load i32, i32* %atgcnum, align 4
  %add = add nsw i32 %12, %call10
  store i32 %add, i32* %atgcnum, align 4
  %13 = load i32, i32* %nsite, align 4
  %14 = load i32, i32* %total, align 4
  %add11 = add nsw i32 %14, %13
  store i32 %add11, i32* %total, align 4
  %15 = load i8*, i8** %tmpseq, align 8
  call void @free(i8* %15) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %atgcnum, align 4
  %conv12 = sitofp i32 %17 to double
  %18 = load i32, i32* %total, align 4
  %conv13 = sitofp i32 %18 to double
  %div = fdiv double %conv12, %conv13
  store double %div, double* %atgcfreq, align 8
  %19 = load i32, i32* @dorp, align 4
  %cmp14 = icmp eq i32 %19, 100009
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %for.end
  %20 = load double, double* %atgcfreq, align 8
  %cmp17 = fcmp ogt double %20, 7.500000e-01
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  store i32 100, i32* @dorp, align 4
  store i32 -1, i32* @upperCase, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.then.16
  store i32 112, i32* @dorp, align 4
  store i32 0, i32* @upperCase, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.end
  %21 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %21) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteGapFill(%struct._IO_FILE* %fp, i32 %locnjob, [256 x i8]* %name, i32* %nlen, i8** %aseq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nalen = alloca [50000 x i32], align 16
  %len = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 0, i32* @nlenmax, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* @nlenmax, align 4
  %6 = load i32, i32* %len, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %len, align 4
  store i32 %7, i32* @nlenmax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @nlenmax, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [5000000 x i8], [5000000 x i8]* @WriteGapFill.gap, i32 0, i64 %idxprom7
  store i8 45, i8* %arrayidx8, align 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %12 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  %13 = load i32, i32* @nlenmax, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [5000000 x i8], [5000000 x i8]* @WriteGapFill.gap, i32 0, i64 %idxprom12
  store i8 0, i8* %arrayidx13, align 1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32, i32* %locnjob.addr, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.49, %for.end.11
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %locnjob.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body.19, label %for.end.51

for.body.19:                                      ; preds = %for.cond.16
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %20, i64 %idxprom20
  %21 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.buff, i32 0, i32 0), i8* %21) #6
  %22 = load i32, i32* @nlenmax, align 4
  %conv23 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %24, i64 %idxprom24
  %25 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i64 @strlen(i8* %25) #8
  %sub = sub i64 %conv23, %call26
  %call27 = call i8* @strncat(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.buff, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.gap, i32 0, i32 0), i64 %sub) #6
  %26 = load i32, i32* @nlenmax, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [5000000 x i8], [5000000 x i8]* @WriteGapFill.buff, i32 0, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  %call30 = call i64 @strlen(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.buff, i32 0, i32 0)) #8
  %conv31 = trunc i64 %call30 to i32
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [50000 x i32], [50000 x i32]* %nalen, i32 0, i64 %idxprom32
  store i32 %conv31, i32* %arrayidx33, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 %idxprom34
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx35, i32 0, i32 0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [50000 x i32], [50000 x i32]* %nalen, i32 0, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %33)
  store i32 0, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %for.body.19
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds [50000 x i32], [50000 x i32]* %nalen, i32 0, i64 %idxprom41
  %36 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp slt i32 %34, %36
  br i1 %cmp43, label %for.body.45, label %for.end.48

for.body.45:                                      ; preds = %for.cond.40
  %37 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.buff, i32 0, i32 0), i64 %idx.ext
  call void @strncpy_caseC(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.b, i32 0, i32 0), i8* %add.ptr, i32 60)
  store i8 0, i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.b, i32 0, i64 60), align 1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteGapFill.b, i32 0, i32 0))
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.45
  %39 = load i32, i32* %j, align 4
  %add = add nsw i32 %39, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.40

for.end.48:                                       ; preds = %for.cond.40
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %40 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %40, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.16

for.end.51:                                       ; preds = %for.cond.16
  ret void
}

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @writeDataforgaln(%struct._IO_FILE* %fp, i32 %locnjob, i8** %name, i32* %nlen, i8** %aseq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nalen, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8**, i8*** %name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %add.ptr)
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %nalen, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx9, align 8
  %15 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr10)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %16 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeData_pointer(%struct._IO_FILE* %fp, i32 %locnjob, i8** %name, i32* %nlen, i8** %aseq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nalen, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8**, i8*** %name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %add.ptr)
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %nalen, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx9, align 8
  %15 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr10)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %16 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeData(%struct._IO_FILE* %fp, i32 %locnjob, [256 x i8]* %name, i32* %nlen, i8** %aseq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nalen, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 %idxprom1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx2, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %add.ptr)
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %nalen, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %12, i64 %idxprom8
  %13 = load i8*, i8** %arrayidx9, align 8
  %14 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr10)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %15 = load i32, i32* %j, align 4
  %add = add nsw i32 %15, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @write1seq(%struct._IO_FILE* %fp, i8* %aseq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %aseq.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %aseq, i8** %aseq.addr, align 8
  %0 = load i8*, i8** %aseq.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nalen, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nalen, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i8*, i8** %aseq.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @readhat2_floathalf_pointer(%struct._IO_FILE* %fp, i32 %nseq, i8** %name, float** %mtx) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %mtx.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nseq0 = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  store float** %mtx, float*** %mtx.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 256, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i64 5
  store i8 0, i8* %arrayidx, align 1
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i32 @atoi(i8* %arraydecay3) #8
  store i32 %call4, i32* %nseq0, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %3 = load i32, i32* %nseq0, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ErrorExit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay5, i32 256, %struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @myfgets(i8* %arraydecay8, i32 254, %struct._IO_FILE* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %10, 1
  %cmp11 = icmp slt i32 %9, %sub
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.body.12
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call float @input_new(%struct._IO_FILE* %14, i32 6)
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %15, %16
  %idxprom = sext i32 %sub17 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load float**, float*** %mtx.addr, align 8
  %arrayidx19 = getelementptr inbounds float*, float** %18, i64 %idxprom18
  %19 = load float*, float** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds float, float* %19, i64 %idxprom
  store float %call16, float* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.15
  %20 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %21 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @readhat2_floathalf(%struct._IO_FILE* %fp, i32 %nseq, [256 x i8]* %name, float** %mtx) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nseq0 = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store float** %mtx, float*** %mtx.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 256, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i64 5
  store i8 0, i8* %arrayidx, align 1
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i32 @atoi(i8* %arraydecay3) #8
  store i32 %call4, i32* %nseq0, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %3 = load i32, i32* %nseq0, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ErrorExit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay5, i32 256, %struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @myfgets(i8* %arraydecay8, i32 254, %struct._IO_FILE* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %10, 1
  %cmp11 = icmp slt i32 %9, %sub
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.body.12
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call float @input_new(%struct._IO_FILE* %14, i32 6)
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %15, %16
  %idxprom = sext i32 %sub17 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load float**, float*** %mtx.addr, align 8
  %arrayidx19 = getelementptr inbounds float*, float** %18, i64 %idxprom18
  %19 = load float*, float** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds float, float* %19, i64 %idxprom
  store float %call16, float* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.15
  %20 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %21 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @readhat2_float(%struct._IO_FILE* %fp, i32 %nseq, [256 x i8]* %name, float** %mtx) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nseq0 = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store float** %mtx, float*** %mtx.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 256, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i64 5
  store i8 0, i8* %arrayidx, align 1
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i32 @atoi(i8* %arraydecay3) #8
  store i32 %call4, i32* %nseq0, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %3 = load i32, i32* %nseq0, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ErrorExit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay5, i32 256, %struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @myfgets(i8* %arraydecay8, i32 254, %struct._IO_FILE* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %10, 1
  %cmp11 = icmp slt i32 %9, %sub
  br i1 %cmp11, label %for.body.12, label %for.end.25

for.body.12:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.body.12
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call float @input_new(%struct._IO_FILE* %14, i32 6)
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load float**, float*** %mtx.addr, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %17, i64 %idxprom17
  %18 = load float*, float** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %18, i64 %idxprom
  store float %call16, float* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %19 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %20 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @readhat2_int(%struct._IO_FILE* %fp, i32 %nseq, [256 x i8]* %name, i32** %mtx) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nseq0 = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32** %mtx, i32*** %mtx.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 256, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i64 5
  store i8 0, i8* %arrayidx, align 1
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i32 @atoi(i8* %arraydecay3) #8
  store i32 %call4, i32* %nseq0, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %3 = load i32, i32* %nseq0, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ErrorExit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay5, i32 256, %struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @myfgets(i8* %arraydecay8, i32 254, %struct._IO_FILE* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.25, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %10, 1
  %cmp11 = icmp slt i32 %9, %sub
  br i1 %cmp11, label %for.body.12, label %for.end.27

for.body.12:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.22, %for.body.12
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.24

for.body.15:                                      ; preds = %for.cond.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call float @input_new(%struct._IO_FILE* %14, i32 6)
  %conv = fpext float %call16 to double
  %mul = fmul double %conv, 1.000000e+06
  %add17 = fadd double %mul, 5.000000e-01
  %conv18 = fptosi double %add17 to i32
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %17, i64 %idxprom19
  %18 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  store i32 %conv18, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.15
  %19 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond.13

for.end.24:                                       ; preds = %for.cond.13
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %20 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.10

for.end.27:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @readhat2(%struct._IO_FILE* %fp, i32 %nseq, [256 x i8]* %name, double** %mtx) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nseq0 = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store double** %mtx, double*** %mtx.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 256, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i64 5
  store i8 0, i8* %arrayidx, align 1
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i32 @atoi(i8* %arraydecay3) #8
  store i32 %call4, i32* %nseq0, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %3 = load i32, i32* %nseq0, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ErrorExit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay5, i32 256, %struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @myfgets(i8* %arraydecay8, i32 254, %struct._IO_FILE* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %10, 1
  %cmp11 = icmp slt i32 %9, %sub
  br i1 %cmp11, label %for.body.12, label %for.end.25

for.body.12:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.body.12
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call float @input_new(%struct._IO_FILE* %14, i32 6)
  %conv = fpext float %call16 to double
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load double**, double*** %mtx.addr, align 8
  %arrayidx18 = getelementptr inbounds double*, double** %17, i64 %idxprom17
  %18 = load double*, double** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds double, double* %18, i64 %idxprom
  store double %conv, double* %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %19 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %20 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteFloatHat2_pointer(%struct._IO_FILE* %hat2p, i32 %locnjob, i8** %name, float** %mtx) #0 {
entry:
  %hat2p.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %mtx.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca double, align 8
  store %struct._IO_FILE* %hat2p, %struct._IO_FILE** %hat2p.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  store float** %mtx, float*** %mtx.addr, align 8
  store double 0.000000e+00, double* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %locnjob.addr, align 4
  %4 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %3, %4
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load float**, float*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %7, i64 %idxprom5
  %8 = load float*, float** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom
  %9 = load float, float* %arrayidx6, align 4
  %conv = fpext float %9 to double
  %10 = load double, double* %max, align 8
  %cmp7 = fcmp ogt double %conv, %10
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load float**, float*** %mtx.addr, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %13, i64 %idxprom10
  %14 = load float*, float** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 %idxprom9
  %15 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %15 to double
  store double %conv13, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %20 = load i32, i32* %locnjob.addr, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %22 = load double, double* %max, align 8
  %mul = fmul double %22, 2.500000e+00
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), double %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.26, %for.end.16
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %locnjob.addr, align 4
  %cmp20 = icmp slt i32 %23, %24
  br i1 %cmp20, label %for.body.22, label %for.end.28

for.body.22:                                      ; preds = %for.cond.19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, 1
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load i8**, i8*** %name.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %28, i64 %idxprom23
  %29 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %add, i8* %29)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %30 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.19

for.end.28:                                       ; preds = %for.cond.19
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.56, %for.end.28
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %locnjob.addr, align 4
  %cmp30 = icmp slt i32 %31, %32
  br i1 %cmp30, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.29
  store i32 1, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %for.body.32
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %locnjob.addr, align 4
  %35 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 %34, %35
  %cmp35 = icmp slt i32 %33, %sub34
  br i1 %cmp35, label %for.body.37, label %for.end.55

for.body.37:                                      ; preds = %for.cond.33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load float**, float*** %mtx.addr, align 8
  %arrayidx40 = getelementptr inbounds float*, float** %39, i64 %idxprom39
  %40 = load float*, float** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %40, i64 %idxprom38
  %41 = load float, float* %arrayidx41, align 4
  %conv42 = fpext float %41 to double
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %conv42)
  %42 = load i32, i32* %j, align 4
  %rem = srem i32 %42, 12
  %cmp44 = icmp eq i32 %rem, 0
  br i1 %cmp44, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.37
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %locnjob.addr, align 4
  %45 = load i32, i32* %i, align 4
  %sub46 = sub nsw i32 %44, %45
  %sub47 = sub nsw i32 %sub46, 1
  %cmp48 = icmp eq i32 %43, %sub47
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %lor.lhs.false, %for.body.37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %lor.lhs.false
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %47 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %47, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %48 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %48, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.29

for.end.58:                                       ; preds = %for.cond.29
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteFloatHat2(%struct._IO_FILE* %hat2p, i32 %locnjob, [256 x i8]* %name, float** %mtx) #0 {
entry:
  %hat2p.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca double, align 8
  store %struct._IO_FILE* %hat2p, %struct._IO_FILE** %hat2p.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store float** %mtx, float*** %mtx.addr, align 8
  store double 0.000000e+00, double* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %locnjob.addr, align 4
  %4 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %3, %4
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load float**, float*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %7, i64 %idxprom5
  %8 = load float*, float** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom
  %9 = load float, float* %arrayidx6, align 4
  %conv = fpext float %9 to double
  %10 = load double, double* %max, align 8
  %cmp7 = fcmp ogt double %conv, %10
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load float**, float*** %mtx.addr, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %13, i64 %idxprom10
  %14 = load float*, float** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 %idxprom9
  %15 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %15 to double
  store double %conv13, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %20 = load i32, i32* %locnjob.addr, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %22 = load double, double* %max, align 8
  %mul = fmul double %22, 2.500000e+00
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), double %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.26, %for.end.16
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %locnjob.addr, align 4
  %cmp20 = icmp slt i32 %23, %24
  br i1 %cmp20, label %for.body.22, label %for.end.28

for.body.22:                                      ; preds = %for.cond.19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, 1
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 %idxprom23
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx24, i32 0, i32 0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %add, i8* %arraydecay)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %29 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.19

for.end.28:                                       ; preds = %for.cond.19
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.56, %for.end.28
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %locnjob.addr, align 4
  %cmp30 = icmp slt i32 %30, %31
  br i1 %cmp30, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.29
  store i32 1, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %for.body.32
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %locnjob.addr, align 4
  %34 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 %33, %34
  %cmp35 = icmp slt i32 %32, %sub34
  br i1 %cmp35, label %for.body.37, label %for.end.55

for.body.37:                                      ; preds = %for.cond.33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %37 to i64
  %38 = load float**, float*** %mtx.addr, align 8
  %arrayidx40 = getelementptr inbounds float*, float** %38, i64 %idxprom39
  %39 = load float*, float** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %39, i64 %idxprom38
  %40 = load float, float* %arrayidx41, align 4
  %conv42 = fpext float %40 to double
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %conv42)
  %41 = load i32, i32* %j, align 4
  %rem = srem i32 %41, 12
  %cmp44 = icmp eq i32 %rem, 0
  br i1 %cmp44, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.37
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %locnjob.addr, align 4
  %44 = load i32, i32* %i, align 4
  %sub46 = sub nsw i32 %43, %44
  %sub47 = sub nsw i32 %sub46, 1
  %cmp48 = icmp eq i32 %42, %sub47
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %lor.lhs.false, %for.body.37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %lor.lhs.false
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %46 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %47 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.29

for.end.58:                                       ; preds = %for.cond.29
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteHat2_int(%struct._IO_FILE* %hat2p, i32 %locnjob, [256 x i8]* %name, i32** %mtx) #0 {
entry:
  %hat2p.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca double, align 8
  store %struct._IO_FILE* %hat2p, %struct._IO_FILE** %hat2p.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32** %mtx, i32*** %mtx.addr, align 8
  store double 0.000000e+00, double* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %locnjob.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 %idxprom4
  %8 = load i32*, i32** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx5, align 4
  %conv = sitofp i32 %9 to double
  %10 = load double, double* %max, align 8
  %cmp6 = fcmp ogt double %conv, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %13, i64 %idxprom9
  %14 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx11, align 4
  %conv12 = sitofp i32 %15 to double
  store double %conv12, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %18 = load double, double* %max, align 8
  %div = fdiv double %18, 1.000000e+06
  store double %div, double* %max, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %21 = load i32, i32* %locnjob.addr, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %23 = load double, double* %max, align 8
  %mul = fmul double %23, 2.500000e+00
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), double %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end.15
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %locnjob.addr, align 4
  %cmp19 = icmp slt i32 %24, %25
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %27 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %27, 1
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 %idxprom23
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx24, i32 0, i32 0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %add22, i8* %arraydecay)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %30 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.59, %for.end.28
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %locnjob.addr, align 4
  %sub30 = sub nsw i32 %32, 1
  %cmp31 = icmp slt i32 %31, %sub30
  br i1 %cmp31, label %for.body.33, label %for.end.61

for.body.33:                                      ; preds = %for.cond.29
  %33 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %33, 1
  store i32 %add34, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.56, %for.body.33
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %locnjob.addr, align 4
  %cmp36 = icmp slt i32 %34, %35
  br i1 %cmp36, label %for.body.38, label %for.end.58

for.body.38:                                      ; preds = %for.cond.35
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %39, i64 %idxprom40
  %40 = load i32*, i32** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %40, i64 %idxprom39
  %41 = load i32, i32* %arrayidx42, align 4
  %conv43 = sitofp i32 %41 to float
  %conv44 = fpext float %conv43 to double
  %div45 = fdiv double %conv44, 1.000000e+06
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %div45)
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %i, align 4
  %sub47 = sub nsw i32 %42, %43
  %rem = srem i32 %sub47, 12
  %cmp48 = icmp eq i32 %rem, 0
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.38
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %locnjob.addr, align 4
  %sub50 = sub nsw i32 %45, 1
  %cmp51 = icmp eq i32 %44, %sub50
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %lor.lhs.false, %for.body.38
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %lor.lhs.false
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %47 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond.35

for.end.58:                                       ; preds = %for.cond.35
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %48 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %48, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.29

for.end.61:                                       ; preds = %for.cond.29
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteHat2(%struct._IO_FILE* %hat2p, i32 %locnjob, [256 x i8]* %name, double** %mtx) #0 {
entry:
  %hat2p.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %mtx.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca double, align 8
  store %struct._IO_FILE* %hat2p, %struct._IO_FILE** %hat2p.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store double** %mtx, double*** %mtx.addr, align 8
  store double 0.000000e+00, double* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %locnjob.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load double**, double*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %7, i64 %idxprom4
  %8 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx5, align 8
  %10 = load double, double* %max, align 8
  %cmp6 = fcmp ogt double %9, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load double**, double*** %mtx.addr, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %13, i64 %idxprom8
  %14 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 %idxprom7
  %15 = load double, double* %arrayidx10, align 8
  store double %15, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %20 = load i32, i32* %locnjob.addr, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %22 = load double, double* %max, align 8
  %mul = fmul double %22, 2.500000e+00
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), double %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.23, %for.end.13
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %locnjob.addr, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %26 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %26, 1
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 %idxprom20
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx21, i32 0, i32 0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %add19, i8* %arraydecay)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %29 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.16

for.end.25:                                       ; preds = %for.cond.16
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.49, %for.end.25
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %locnjob.addr, align 4
  %sub27 = sub nsw i32 %31, 1
  %cmp28 = icmp slt i32 %30, %sub27
  br i1 %cmp28, label %for.body.29, label %for.end.51

for.body.29:                                      ; preds = %for.cond.26
  %32 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %32, 1
  store i32 %add30, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.46, %for.body.29
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %locnjob.addr, align 4
  %cmp32 = icmp slt i32 %33, %34
  br i1 %cmp32, label %for.body.33, label %for.end.48

for.body.33:                                      ; preds = %for.cond.31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load double**, double*** %mtx.addr, align 8
  %arrayidx36 = getelementptr inbounds double*, double** %38, i64 %idxprom35
  %39 = load double*, double** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds double, double* %39, i64 %idxprom34
  %40 = load double, double* %arrayidx37, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %40)
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %i, align 4
  %sub39 = sub nsw i32 %41, %42
  %rem = srem i32 %sub39, 12
  %cmp40 = icmp eq i32 %rem, 0
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.33
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %locnjob.addr, align 4
  %sub41 = sub nsw i32 %44, 1
  %cmp42 = icmp eq i32 %43, %sub41
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %lor.lhs.false, %for.body.33
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %lor.lhs.false
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %46 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %46, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.31

for.end.48:                                       ; preds = %for.cond.31
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %47 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %47, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.26

for.end.51:                                       ; preds = %for.cond.26
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteHat2plain(%struct._IO_FILE* %hat2p, i32 %locnjob, double** %mtx) #0 {
entry:
  %hat2p.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %mtx.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %hat2p, %struct._IO_FILE** %hat2p.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store double** %mtx, double*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %locnjob.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p.addr, align 8
  %6 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %6, 1
  %7 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %7, 1
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load double**, double*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %10, i64 %idxprom6
  %11 = load double*, double** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx7, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %add4, i32 %add5, double %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta_sub(%struct._IO_FILE* %fp, double* %dis, i32 %nseq, [256 x i8]* %name) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %junban = alloca [50000 x i32], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %4)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 12
  %call5 = call i32 @atoi(i8* %add.ptr) #8
  %5 = load i32, i32* %count, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom
  store i32 %call5, i32* %arrayidx, align 4
  %6 = load i32, i32* %count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.12, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nseq.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.7
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load double*, double** %dis.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %11, i64 %idxprom10
  store double 0.000000e+00, double* %arrayidx11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.9
  %12 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.45, %for.end.14
  %13 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %13, 100000
  br i1 %cmp16, label %land.rhs.17, label %land.end.19

land.rhs.17:                                      ; preds = %for.cond.15
  %14 = load i32, i32* %count, align 4
  %15 = load i32, i32* %nseq.addr, align 4
  %cmp18 = icmp slt i32 %14, %15
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.17, %for.cond.15
  %16 = phi i1 [ false, %for.cond.15 ], [ %cmp18, %land.rhs.17 ]
  br i1 %16, label %for.body.20, label %for.end.47

for.body.20:                                      ; preds = %land.end.19
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i8* @fgets(i8* %arraydecay21, i32 255, %struct._IO_FILE* %17)
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.20
  br label %for.end.47

if.end.25:                                        ; preds = %for.body.20
  %18 = load i32, i32* %count, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom26
  %19 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %19 to i64
  %20 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx29, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call32 = call i32 @strncmp(i8* %arraydecay30, i8* %arraydecay31, i64 20) #8
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.44, label %if.then.34

if.then.34:                                       ; preds = %if.end.25
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i8* @fgets(i8* %arraydecay35, i32 255, %struct._IO_FILE* %21)
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call38 = call double @atof(i8* %arraydecay37) #8
  %22 = load i32, i32* %count, align 4
  %idxprom39 = sext i32 %22 to i64
  %arrayidx40 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom39
  %23 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = sext i32 %23 to i64
  %24 = load double*, double** %dis.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %24, i64 %idxprom41
  store double %call38, double* %arrayidx42, align 8
  %25 = load i32, i32* %count, align 4
  %inc43 = add nsw i32 %25, 1
  store i32 %inc43, i32* %count, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.34, %if.end.25
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %26 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %26, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.15

for.end.47:                                       ; preds = %if.then.24, %land.end.19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ReadSsearch(%struct._IO_FILE* %fp, double* %dis, i32 %nseq, [256 x i8]* %name) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %junban = alloca [50000 x i32], align 16
  %opt = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %4)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 12
  %call5 = call i32 @atoi(i8* %add.ptr) #8
  %5 = load i32, i32* %count, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom
  store i32 %call5, i32* %arrayidx, align 4
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay6, i64 75
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32* %opt) #6
  %6 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom9
  %8 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load double*, double** %dis.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %9, i64 %idxprom11
  store double %conv, double* %arrayidx12, align 8
  %10 = load i32, i32* %count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @ReadBlastm7_avscore(%struct._IO_FILE* %fp, double* %dis, i32 %nin) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nin.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %junban = alloca i32*, align 8
  %score = alloca double, align 8
  %sumscore = alloca double, align 8
  %len = alloca double, align 8
  %sumlen = alloca double, align 8
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %scorepersite = alloca double, align 8
  %nlocalhom = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nin, i32* %nin.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %nin.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %junban, align 8
  store i32 0, i32* %count, align 4
  store double 0.000000e+00, double* %sumscore, align 8
  store double 0.000000e+00, double* %sumlen, align 8
  store double 0.000000e+00, double* %score, align 8
  store double 0.000000e+00, double* %len, align 8
  store double 0.000000e+00, double* %scorepersite, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.179
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %2) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end.180

if.end:                                           ; preds = %while.body
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end.13, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %3)
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.2
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call7 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay6, i64 19) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %while.body.5
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call10 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay9, i64 23) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %while.body.5
  br label %while.end

if.end.13:                                        ; preds = %lor.lhs.false
  br label %while.cond.2

while.end:                                        ; preds = %if.then.12, %while.cond.2
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call15 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay14, i64 19) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %while.end
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 31
  %call19 = call i32 @atoi(i8* %add.ptr) #8
  %4 = load i32, i32* %count, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %junban, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %call19, i32* %arrayidx, align 4
  store i32 0, i32* %nlocalhom, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %while.end
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.30, %if.end.20
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i8* @fgets(i8* %arraydecay22, i32 255, %struct._IO_FILE* %6)
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %while.body.25, label %while.end.31

while.body.25:                                    ; preds = %while.cond.21
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call27 = call i32 @strncmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay26, i64 25) #8
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %while.body.25
  br label %while.end.31

if.end.30:                                        ; preds = %while.body.25
  br label %while.cond.21

while.end.31:                                     ; preds = %if.then.29, %while.cond.21
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay32, i64 25
  store i8* %add.ptr33, i8** %pt, align 8
  %7 = load i8*, i8** %pt, align 8
  %call34 = call double @atof(i8* %7) #8
  store double %call34, double* %score, align 8
  %8 = load double, double* %score, align 8
  %9 = load double, double* %sumscore, align 8
  %add = fadd double %9, %8
  store double %add, double* %sumscore, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %if.end.44, %while.end.31
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call37 = call i8* @fgets(i8* %arraydecay36, i32 255, %struct._IO_FILE* %10)
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %while.body.39, label %while.end.45

while.body.39:                                    ; preds = %while.cond.35
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call41 = call i32 @strncmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay40, i64 30) #8
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %while.body.39
  br label %while.end.45

if.end.44:                                        ; preds = %while.body.39
  br label %while.cond.35

while.end.45:                                     ; preds = %if.then.43, %while.cond.35
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr47 = getelementptr inbounds i8, i8* %arraydecay46, i64 30
  store i8* %add.ptr47, i8** %pt, align 8
  %11 = load i8*, i8** %pt, align 8
  %call48 = call i32 @atoi(i8* %11) #8
  %sub = sub nsw i32 %call48, 1
  store i32 %sub, i32* %qstart, align 4
  br label %while.cond.49

while.cond.49:                                    ; preds = %if.end.58, %while.end.45
  %arraydecay50 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call51 = call i8* @fgets(i8* %arraydecay50, i32 255, %struct._IO_FILE* %12)
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %while.body.53, label %while.end.59

while.body.53:                                    ; preds = %while.cond.49
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call55 = call i32 @strncmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay54, i64 28) #8
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %while.body.53
  br label %while.end.59

if.end.58:                                        ; preds = %while.body.53
  br label %while.cond.49

while.end.59:                                     ; preds = %if.then.57, %while.cond.49
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr61 = getelementptr inbounds i8, i8* %arraydecay60, i64 28
  store i8* %add.ptr61, i8** %pt, align 8
  %13 = load i8*, i8** %pt, align 8
  %call62 = call i32 @atoi(i8* %13) #8
  %sub63 = sub nsw i32 %call62, 1
  store i32 %sub63, i32* %qend, align 4
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.73, %while.end.59
  %arraydecay65 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call66 = call i8* @fgets(i8* %arraydecay65, i32 255, %struct._IO_FILE* %14)
  %tobool67 = icmp ne i8* %call66, null
  br i1 %tobool67, label %while.body.68, label %while.end.74

while.body.68:                                    ; preds = %while.cond.64
  %arraydecay69 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call70 = call i32 @strncmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay69, i64 28) #8
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %while.body.68
  br label %while.end.74

if.end.73:                                        ; preds = %while.body.68
  br label %while.cond.64

while.end.74:                                     ; preds = %if.then.72, %while.cond.64
  %arraydecay75 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr76 = getelementptr inbounds i8, i8* %arraydecay75, i64 28
  store i8* %add.ptr76, i8** %pt, align 8
  %15 = load i8*, i8** %pt, align 8
  %call77 = call i32 @atoi(i8* %15) #8
  %sub78 = sub nsw i32 %call77, 1
  store i32 %sub78, i32* %tstart, align 4
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.88, %while.end.74
  %arraydecay80 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call81 = call i8* @fgets(i8* %arraydecay80, i32 255, %struct._IO_FILE* %16)
  %tobool82 = icmp ne i8* %call81, null
  br i1 %tobool82, label %while.body.83, label %while.end.89

while.body.83:                                    ; preds = %while.cond.79
  %arraydecay84 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call85 = call i32 @strncmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* %arraydecay84, i64 26) #8
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %while.body.83
  br label %while.end.89

if.end.88:                                        ; preds = %while.body.83
  br label %while.cond.79

while.end.89:                                     ; preds = %if.then.87, %while.cond.79
  %arraydecay90 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr91 = getelementptr inbounds i8, i8* %arraydecay90, i64 26
  store i8* %add.ptr91, i8** %pt, align 8
  %17 = load i8*, i8** %pt, align 8
  %call92 = call i32 @atoi(i8* %17) #8
  %sub93 = sub nsw i32 %call92, 1
  store i32 %sub93, i32* %tend, align 4
  br label %while.cond.94

while.cond.94:                                    ; preds = %if.end.103, %while.end.89
  %arraydecay95 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call96 = call i8* @fgets(i8* %arraydecay95, i32 255, %struct._IO_FILE* %18)
  %tobool97 = icmp ne i8* %call96, null
  br i1 %tobool97, label %while.body.98, label %while.end.104

while.body.98:                                    ; preds = %while.cond.94
  %arraydecay99 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call100 = call i32 @strncmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay99, i64 29) #8
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %while.body.98
  br label %while.end.104

if.end.103:                                       ; preds = %while.body.98
  br label %while.cond.94

while.end.104:                                    ; preds = %if.then.102, %while.cond.94
  %arraydecay105 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr106 = getelementptr inbounds i8, i8* %arraydecay105, i64 29
  store i8* %add.ptr106, i8** %pt, align 8
  %19 = load i8*, i8** %pt, align 8
  %call107 = call i32 @atoi(i8* %19) #8
  %conv108 = sitofp i32 %call107 to double
  store double %conv108, double* %len, align 8
  %20 = load double, double* %len, align 8
  %21 = load double, double* %sumlen, align 8
  %add109 = fadd double %21, %20
  store double %add109, double* %sumlen, align 8
  br label %while.cond.110

while.cond.110:                                   ; preds = %if.end.117, %while.end.104
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call111 = call i8* @fgets(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.al, i32 0, i32 0), i32 4999900, %struct._IO_FILE* %22)
  %tobool112 = icmp ne i8* %call111, null
  br i1 %tobool112, label %while.body.113, label %while.end.118

while.body.113:                                   ; preds = %while.cond.110
  %call114 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.al, i32 0, i32 0), i64 24) #8
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %while.body.113
  br label %while.end.118

if.end.117:                                       ; preds = %while.body.113
  br label %while.cond.110

while.end.118:                                    ; preds = %if.then.116, %while.cond.110
  %call119 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.qal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.al, i32 0, i64 24)) #6
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.qal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.123, %while.end.118
  %23 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %24 = load i8, i8* %incdec.ptr, align 1
  %conv121 = sext i8 %24 to i32
  %cmp = icmp ne i32 %conv121, 60
  br i1 %cmp, label %while.body.123, label %while.end.124

while.body.123:                                   ; preds = %while.cond.120
  br label %while.cond.120

while.end.124:                                    ; preds = %while.cond.120
  %25 = load i8*, i8** %pt, align 8
  store i8 0, i8* %25, align 1
  br label %while.cond.125

while.cond.125:                                   ; preds = %if.end.132, %while.end.124
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call126 = call i8* @fgets(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.al, i32 0, i32 0), i32 4999900, %struct._IO_FILE* %26)
  %tobool127 = icmp ne i8* %call126, null
  br i1 %tobool127, label %while.body.128, label %while.end.133

while.body.128:                                   ; preds = %while.cond.125
  %call129 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.al, i32 0, i32 0), i64 24) #8
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %while.body.128
  br label %while.end.133

if.end.132:                                       ; preds = %while.body.128
  br label %while.cond.125

while.end.133:                                    ; preds = %if.then.131, %while.cond.125
  %call134 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.tal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.al, i32 0, i64 24)) #6
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_avscore.tal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.140, %while.end.133
  %27 = load i8*, i8** %pt, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr136, i8** %pt, align 8
  %28 = load i8, i8* %incdec.ptr136, align 1
  %conv137 = sext i8 %28 to i32
  %cmp138 = icmp ne i32 %conv137, 60
  br i1 %cmp138, label %while.body.140, label %while.end.141

while.body.140:                                   ; preds = %while.cond.135
  br label %while.cond.135

while.end.141:                                    ; preds = %while.cond.135
  %29 = load i8*, i8** %pt, align 8
  store i8 0, i8* %29, align 1
  br label %while.cond.142

while.cond.142:                                   ; preds = %if.end.151, %while.end.141
  %arraydecay143 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call144 = call i8* @fgets(i8* %arraydecay143, i32 255, %struct._IO_FILE* %30)
  %tobool145 = icmp ne i8* %call144, null
  br i1 %tobool145, label %while.body.146, label %while.end.152

while.body.146:                                   ; preds = %while.cond.142
  %arraydecay147 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call148 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay147, i64 18) #8
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %while.body.146
  br label %while.end.152

if.end.151:                                       ; preds = %while.body.146
  br label %while.cond.142

while.end.152:                                    ; preds = %if.then.150, %while.cond.142
  %arraydecay153 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call154 = call i8* @fgets(i8* %arraydecay153, i32 255, %struct._IO_FILE* %31)
  %arraydecay155 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call156 = call i32 @strncmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay155, i64 21) #8
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.end.179, label %if.then.158

if.then.158:                                      ; preds = %while.end.152
  %32 = load double, double* %sumscore, align 8
  %33 = load i32, i32* %count, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %count, align 4
  %idxprom159 = sext i32 %33 to i64
  %34 = load i32*, i32** %junban, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %34, i64 %idxprom159
  %35 = load i32, i32* %arrayidx160, align 4
  %idxprom161 = sext i32 %35 to i64
  %36 = load double*, double** %dis.addr, align 8
  %arrayidx162 = getelementptr inbounds double, double* %36, i64 %idxprom161
  store double %32, double* %arrayidx162, align 8
  store double 0.000000e+00, double* %sumscore, align 8
  %arraydecay163 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call164 = call i8* @fgets(i8* %arraydecay163, i32 255, %struct._IO_FILE* %37)
  %arraydecay165 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call166 = call i8* @fgets(i8* %arraydecay165, i32 255, %struct._IO_FILE* %38)
  %39 = load double, double* %sumscore, align 8
  %40 = load double, double* %sumlen, align 8
  %div = fdiv double %39, %40
  store double %div, double* %scorepersite, align 8
  %41 = load double, double* %scorepersite, align 8
  %42 = load double, double* %scorepersite, align 8
  %conv167 = fptosi double %42 to i32
  %conv168 = sitofp i32 %conv167 to double
  %cmp169 = fcmp une double %41, %conv168
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.then.158
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load double, double* %sumscore, align 8
  %45 = load double, double* %sumlen, align 8
  %46 = load double, double* %scorepersite, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44, i32 0, i32 0), double %44, double %45, double %46)
  call void @exit(i32 1) #7
  unreachable

if.end.173:                                       ; preds = %if.then.158
  %arraydecay174 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call175 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay174, i64 23) #8
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.end.178, label %if.then.177

if.then.177:                                      ; preds = %if.end.173
  br label %while.end.180

if.end.178:                                       ; preds = %if.end.173
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %while.end.152
  br label %while.body

while.end.180:                                    ; preds = %if.then.177, %if.then
  %47 = load i32*, i32** %junban, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #6
  %49 = load double, double* %scorepersite, align 8
  %conv181 = fptosi double %49 to i32
  ret i32 %conv181
}

; Function Attrs: nounwind uwtable
define i32 @ReadBlastm7_scoreonly(%struct._IO_FILE* %fp, double* %dis, i32 %nin) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nin.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %junban = alloca i32*, align 8
  %overlapaa = alloca i32, align 4
  %score = alloca double, align 8
  %sumscore = alloca double, align 8
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %nlocalhom = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nin, i32* %nin.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %nin.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %junban, align 8
  store i32 0, i32* %count, align 4
  store double 0.000000e+00, double* %sumscore, align 8
  store double 0.000000e+00, double* %score, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.170
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %2) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end.171

if.end:                                           ; preds = %while.body
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end.13, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %3)
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.2
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call7 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay6, i64 19) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %while.body.5
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call10 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay9, i64 23) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %while.body.5
  br label %while.end

if.end.13:                                        ; preds = %lor.lhs.false
  br label %while.cond.2

while.end:                                        ; preds = %if.then.12, %while.cond.2
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call15 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay14, i64 19) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %while.end
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 31
  %call19 = call i32 @atoi(i8* %add.ptr) #8
  %4 = load i32, i32* %count, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %junban, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %call19, i32* %arrayidx, align 4
  store i32 0, i32* %nlocalhom, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %while.end
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.30, %if.end.20
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i8* @fgets(i8* %arraydecay22, i32 255, %struct._IO_FILE* %6)
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %while.body.25, label %while.end.31

while.body.25:                                    ; preds = %while.cond.21
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call27 = call i32 @strncmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay26, i64 25) #8
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %while.body.25
  br label %while.end.31

if.end.30:                                        ; preds = %while.body.25
  br label %while.cond.21

while.end.31:                                     ; preds = %if.then.29, %while.cond.21
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay32, i64 25
  store i8* %add.ptr33, i8** %pt, align 8
  %7 = load i8*, i8** %pt, align 8
  %call34 = call double @atof(i8* %7) #8
  store double %call34, double* %score, align 8
  %8 = load double, double* %score, align 8
  %9 = load double, double* %sumscore, align 8
  %add = fadd double %9, %8
  store double %add, double* %sumscore, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %if.end.44, %while.end.31
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call37 = call i8* @fgets(i8* %arraydecay36, i32 255, %struct._IO_FILE* %10)
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %while.body.39, label %while.end.45

while.body.39:                                    ; preds = %while.cond.35
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call41 = call i32 @strncmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay40, i64 30) #8
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %while.body.39
  br label %while.end.45

if.end.44:                                        ; preds = %while.body.39
  br label %while.cond.35

while.end.45:                                     ; preds = %if.then.43, %while.cond.35
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr47 = getelementptr inbounds i8, i8* %arraydecay46, i64 30
  store i8* %add.ptr47, i8** %pt, align 8
  %11 = load i8*, i8** %pt, align 8
  %call48 = call i32 @atoi(i8* %11) #8
  %sub = sub nsw i32 %call48, 1
  store i32 %sub, i32* %qstart, align 4
  br label %while.cond.49

while.cond.49:                                    ; preds = %if.end.58, %while.end.45
  %arraydecay50 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call51 = call i8* @fgets(i8* %arraydecay50, i32 255, %struct._IO_FILE* %12)
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %while.body.53, label %while.end.59

while.body.53:                                    ; preds = %while.cond.49
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call55 = call i32 @strncmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay54, i64 28) #8
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %while.body.53
  br label %while.end.59

if.end.58:                                        ; preds = %while.body.53
  br label %while.cond.49

while.end.59:                                     ; preds = %if.then.57, %while.cond.49
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr61 = getelementptr inbounds i8, i8* %arraydecay60, i64 28
  store i8* %add.ptr61, i8** %pt, align 8
  %13 = load i8*, i8** %pt, align 8
  %call62 = call i32 @atoi(i8* %13) #8
  %sub63 = sub nsw i32 %call62, 1
  store i32 %sub63, i32* %qend, align 4
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.73, %while.end.59
  %arraydecay65 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call66 = call i8* @fgets(i8* %arraydecay65, i32 255, %struct._IO_FILE* %14)
  %tobool67 = icmp ne i8* %call66, null
  br i1 %tobool67, label %while.body.68, label %while.end.74

while.body.68:                                    ; preds = %while.cond.64
  %arraydecay69 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call70 = call i32 @strncmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay69, i64 28) #8
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %while.body.68
  br label %while.end.74

if.end.73:                                        ; preds = %while.body.68
  br label %while.cond.64

while.end.74:                                     ; preds = %if.then.72, %while.cond.64
  %arraydecay75 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr76 = getelementptr inbounds i8, i8* %arraydecay75, i64 28
  store i8* %add.ptr76, i8** %pt, align 8
  %15 = load i8*, i8** %pt, align 8
  %call77 = call i32 @atoi(i8* %15) #8
  %sub78 = sub nsw i32 %call77, 1
  store i32 %sub78, i32* %tstart, align 4
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.88, %while.end.74
  %arraydecay80 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call81 = call i8* @fgets(i8* %arraydecay80, i32 255, %struct._IO_FILE* %16)
  %tobool82 = icmp ne i8* %call81, null
  br i1 %tobool82, label %while.body.83, label %while.end.89

while.body.83:                                    ; preds = %while.cond.79
  %arraydecay84 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call85 = call i32 @strncmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* %arraydecay84, i64 26) #8
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %while.body.83
  br label %while.end.89

if.end.88:                                        ; preds = %while.body.83
  br label %while.cond.79

while.end.89:                                     ; preds = %if.then.87, %while.cond.79
  %arraydecay90 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr91 = getelementptr inbounds i8, i8* %arraydecay90, i64 26
  store i8* %add.ptr91, i8** %pt, align 8
  %17 = load i8*, i8** %pt, align 8
  %call92 = call i32 @atoi(i8* %17) #8
  %sub93 = sub nsw i32 %call92, 1
  store i32 %sub93, i32* %tend, align 4
  br label %while.cond.94

while.cond.94:                                    ; preds = %if.end.103, %while.end.89
  %arraydecay95 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call96 = call i8* @fgets(i8* %arraydecay95, i32 255, %struct._IO_FILE* %18)
  %tobool97 = icmp ne i8* %call96, null
  br i1 %tobool97, label %while.body.98, label %while.end.104

while.body.98:                                    ; preds = %while.cond.94
  %arraydecay99 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call100 = call i32 @strncmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay99, i64 29) #8
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %while.body.98
  br label %while.end.104

if.end.103:                                       ; preds = %while.body.98
  br label %while.cond.94

while.end.104:                                    ; preds = %if.then.102, %while.cond.94
  %arraydecay105 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr106 = getelementptr inbounds i8, i8* %arraydecay105, i64 29
  store i8* %add.ptr106, i8** %pt, align 8
  %19 = load i8*, i8** %pt, align 8
  %call107 = call i32 @atoi(i8* %19) #8
  store i32 %call107, i32* %overlapaa, align 4
  br label %while.cond.108

while.cond.108:                                   ; preds = %if.end.115, %while.end.104
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call109 = call i8* @fgets(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.al, i32 0, i32 0), i32 4999900, %struct._IO_FILE* %20)
  %tobool110 = icmp ne i8* %call109, null
  br i1 %tobool110, label %while.body.111, label %while.end.116

while.body.111:                                   ; preds = %while.cond.108
  %call112 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.al, i32 0, i32 0), i64 24) #8
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %while.body.111
  br label %while.end.116

if.end.115:                                       ; preds = %while.body.111
  br label %while.cond.108

while.end.116:                                    ; preds = %if.then.114, %while.cond.108
  %call117 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.qal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.al, i32 0, i64 24)) #6
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.qal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.118

while.cond.118:                                   ; preds = %while.body.121, %while.end.116
  %21 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %22 = load i8, i8* %incdec.ptr, align 1
  %conv119 = sext i8 %22 to i32
  %cmp = icmp ne i32 %conv119, 60
  br i1 %cmp, label %while.body.121, label %while.end.122

while.body.121:                                   ; preds = %while.cond.118
  br label %while.cond.118

while.end.122:                                    ; preds = %while.cond.118
  %23 = load i8*, i8** %pt, align 8
  store i8 0, i8* %23, align 1
  br label %while.cond.123

while.cond.123:                                   ; preds = %if.end.130, %while.end.122
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call124 = call i8* @fgets(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.al, i32 0, i32 0), i32 4999900, %struct._IO_FILE* %24)
  %tobool125 = icmp ne i8* %call124, null
  br i1 %tobool125, label %while.body.126, label %while.end.131

while.body.126:                                   ; preds = %while.cond.123
  %call127 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.al, i32 0, i32 0), i64 24) #8
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %while.body.126
  br label %while.end.131

if.end.130:                                       ; preds = %while.body.126
  br label %while.cond.123

while.end.131:                                    ; preds = %if.then.129, %while.cond.123
  %call132 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.tal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.al, i32 0, i64 24)) #6
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7_scoreonly.tal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.133

while.cond.133:                                   ; preds = %while.body.138, %while.end.131
  %25 = load i8*, i8** %pt, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr134, i8** %pt, align 8
  %26 = load i8, i8* %incdec.ptr134, align 1
  %conv135 = sext i8 %26 to i32
  %cmp136 = icmp ne i32 %conv135, 60
  br i1 %cmp136, label %while.body.138, label %while.end.139

while.body.138:                                   ; preds = %while.cond.133
  br label %while.cond.133

while.end.139:                                    ; preds = %while.cond.133
  %27 = load i8*, i8** %pt, align 8
  store i8 0, i8* %27, align 1
  br label %while.cond.140

while.cond.140:                                   ; preds = %if.end.149, %while.end.139
  %arraydecay141 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call142 = call i8* @fgets(i8* %arraydecay141, i32 255, %struct._IO_FILE* %28)
  %tobool143 = icmp ne i8* %call142, null
  br i1 %tobool143, label %while.body.144, label %while.end.150

while.body.144:                                   ; preds = %while.cond.140
  %arraydecay145 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call146 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay145, i64 18) #8
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %while.body.144
  br label %while.end.150

if.end.149:                                       ; preds = %while.body.144
  br label %while.cond.140

while.end.150:                                    ; preds = %if.then.148, %while.cond.140
  %arraydecay151 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call152 = call i8* @fgets(i8* %arraydecay151, i32 255, %struct._IO_FILE* %29)
  %arraydecay153 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call154 = call i32 @strncmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay153, i64 21) #8
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.170, label %if.then.156

if.then.156:                                      ; preds = %while.end.150
  %30 = load double, double* %sumscore, align 8
  %31 = load i32, i32* %count, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %count, align 4
  %idxprom157 = sext i32 %31 to i64
  %32 = load i32*, i32** %junban, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %32, i64 %idxprom157
  %33 = load i32, i32* %arrayidx158, align 4
  %idxprom159 = sext i32 %33 to i64
  %34 = load double*, double** %dis.addr, align 8
  %arrayidx160 = getelementptr inbounds double, double* %34, i64 %idxprom159
  store double %30, double* %arrayidx160, align 8
  store double 0.000000e+00, double* %sumscore, align 8
  %arraydecay161 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call162 = call i8* @fgets(i8* %arraydecay161, i32 255, %struct._IO_FILE* %35)
  %arraydecay163 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call164 = call i8* @fgets(i8* %arraydecay163, i32 255, %struct._IO_FILE* %36)
  %arraydecay165 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call166 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay165, i64 23) #8
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %if.then.156
  br label %while.end.171

if.end.169:                                       ; preds = %if.then.156
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %while.end.150
  br label %while.body

while.end.171:                                    ; preds = %if.then.168, %if.then
  %37 = load i32*, i32** %junban, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #6
  %39 = load i32, i32* %count, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @ReadBlastm7(%struct._IO_FILE* %fp, double* %dis, i32 %qmem, [256 x i8]* %name, %struct._LocalHom* %localhomlist) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %qmem.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %localhomlist.addr = alloca %struct._LocalHom*, align 8
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %overlapaa = alloca i32, align 4
  %score = alloca double, align 8
  %sumscore = alloca double, align 8
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %nlocalhom = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %qmem, i32* %qmem.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store %struct._LocalHom* %localhomlist, %struct._LocalHom** %localhomlist.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  store double 0.000000e+00, double* %sumscore, align 8
  store double 0.000000e+00, double* %score, align 8
  store i32 0, i32* %nlocalhom, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.174
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end.175

if.end:                                           ; preds = %while.body
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.12, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.1
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call6 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay5, i64 19) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %while.body.4
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call9 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay8, i64 23) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %while.body.4
  br label %while.end

if.end.12:                                        ; preds = %lor.lhs.false
  br label %while.cond.1

while.end:                                        ; preds = %if.then.11, %while.cond.1
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call14 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay13, i64 19) #8
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i64 31
  %call18 = call i32 @atoi(i8* %add.ptr) #8
  %2 = load i32, i32* %count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadBlastm7.junban, i32 0, i64 %idxprom
  store i32 %call18, i32* %arrayidx, align 4
  store i32 0, i32* %nlocalhom, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %while.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.29, %if.end.19
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i8* @fgets(i8* %arraydecay21, i32 255, %struct._IO_FILE* %3)
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %while.body.24, label %while.end.30

while.body.24:                                    ; preds = %while.cond.20
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call26 = call i32 @strncmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay25, i64 25) #8
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %while.body.24
  br label %while.end.30

if.end.29:                                        ; preds = %while.body.24
  br label %while.cond.20

while.end.30:                                     ; preds = %if.then.28, %while.cond.20
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr32 = getelementptr inbounds i8, i8* %arraydecay31, i64 25
  store i8* %add.ptr32, i8** %pt, align 8
  %4 = load i8*, i8** %pt, align 8
  %call33 = call double @atof(i8* %4) #8
  store double %call33, double* %score, align 8
  %5 = load double, double* %score, align 8
  %6 = load double, double* %sumscore, align 8
  %add = fadd double %6, %5
  store double %add, double* %sumscore, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %if.end.43, %while.end.30
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i8* @fgets(i8* %arraydecay35, i32 255, %struct._IO_FILE* %7)
  %tobool37 = icmp ne i8* %call36, null
  br i1 %tobool37, label %while.body.38, label %while.end.44

while.body.38:                                    ; preds = %while.cond.34
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call40 = call i32 @strncmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay39, i64 30) #8
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %while.body.38
  br label %while.end.44

if.end.43:                                        ; preds = %while.body.38
  br label %while.cond.34

while.end.44:                                     ; preds = %if.then.42, %while.cond.34
  %arraydecay45 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr46 = getelementptr inbounds i8, i8* %arraydecay45, i64 30
  store i8* %add.ptr46, i8** %pt, align 8
  %8 = load i8*, i8** %pt, align 8
  %call47 = call i32 @atoi(i8* %8) #8
  %sub = sub nsw i32 %call47, 1
  store i32 %sub, i32* %qstart, align 4
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.57, %while.end.44
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i8* @fgets(i8* %arraydecay49, i32 255, %struct._IO_FILE* %9)
  %tobool51 = icmp ne i8* %call50, null
  br i1 %tobool51, label %while.body.52, label %while.end.58

while.body.52:                                    ; preds = %while.cond.48
  %arraydecay53 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call54 = call i32 @strncmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay53, i64 28) #8
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %while.body.52
  br label %while.end.58

if.end.57:                                        ; preds = %while.body.52
  br label %while.cond.48

while.end.58:                                     ; preds = %if.then.56, %while.cond.48
  %arraydecay59 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr60 = getelementptr inbounds i8, i8* %arraydecay59, i64 28
  store i8* %add.ptr60, i8** %pt, align 8
  %10 = load i8*, i8** %pt, align 8
  %call61 = call i32 @atoi(i8* %10) #8
  %sub62 = sub nsw i32 %call61, 1
  store i32 %sub62, i32* %qend, align 4
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.72, %while.end.58
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call65 = call i8* @fgets(i8* %arraydecay64, i32 255, %struct._IO_FILE* %11)
  %tobool66 = icmp ne i8* %call65, null
  br i1 %tobool66, label %while.body.67, label %while.end.73

while.body.67:                                    ; preds = %while.cond.63
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call69 = call i32 @strncmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay68, i64 28) #8
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %while.body.67
  br label %while.end.73

if.end.72:                                        ; preds = %while.body.67
  br label %while.cond.63

while.end.73:                                     ; preds = %if.then.71, %while.cond.63
  %arraydecay74 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr75 = getelementptr inbounds i8, i8* %arraydecay74, i64 28
  store i8* %add.ptr75, i8** %pt, align 8
  %12 = load i8*, i8** %pt, align 8
  %call76 = call i32 @atoi(i8* %12) #8
  %sub77 = sub nsw i32 %call76, 1
  store i32 %sub77, i32* %tstart, align 4
  br label %while.cond.78

while.cond.78:                                    ; preds = %if.end.87, %while.end.73
  %arraydecay79 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call80 = call i8* @fgets(i8* %arraydecay79, i32 255, %struct._IO_FILE* %13)
  %tobool81 = icmp ne i8* %call80, null
  br i1 %tobool81, label %while.body.82, label %while.end.88

while.body.82:                                    ; preds = %while.cond.78
  %arraydecay83 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call84 = call i32 @strncmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* %arraydecay83, i64 26) #8
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %while.body.82
  br label %while.end.88

if.end.87:                                        ; preds = %while.body.82
  br label %while.cond.78

while.end.88:                                     ; preds = %if.then.86, %while.cond.78
  %arraydecay89 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr90 = getelementptr inbounds i8, i8* %arraydecay89, i64 26
  store i8* %add.ptr90, i8** %pt, align 8
  %14 = load i8*, i8** %pt, align 8
  %call91 = call i32 @atoi(i8* %14) #8
  %sub92 = sub nsw i32 %call91, 1
  store i32 %sub92, i32* %tend, align 4
  br label %while.cond.93

while.cond.93:                                    ; preds = %if.end.102, %while.end.88
  %arraydecay94 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call95 = call i8* @fgets(i8* %arraydecay94, i32 255, %struct._IO_FILE* %15)
  %tobool96 = icmp ne i8* %call95, null
  br i1 %tobool96, label %while.body.97, label %while.end.103

while.body.97:                                    ; preds = %while.cond.93
  %arraydecay98 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call99 = call i32 @strncmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay98, i64 29) #8
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %while.body.97
  br label %while.end.103

if.end.102:                                       ; preds = %while.body.97
  br label %while.cond.93

while.end.103:                                    ; preds = %if.then.101, %while.cond.93
  %arraydecay104 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr105 = getelementptr inbounds i8, i8* %arraydecay104, i64 29
  store i8* %add.ptr105, i8** %pt, align 8
  %16 = load i8*, i8** %pt, align 8
  %call106 = call i32 @atoi(i8* %16) #8
  store i32 %call106, i32* %overlapaa, align 4
  br label %while.cond.107

while.cond.107:                                   ; preds = %if.end.114, %while.end.103
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call108 = call i8* @fgets(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.al, i32 0, i32 0), i32 4999900, %struct._IO_FILE* %17)
  %tobool109 = icmp ne i8* %call108, null
  br i1 %tobool109, label %while.body.110, label %while.end.115

while.body.110:                                   ; preds = %while.cond.107
  %call111 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.al, i32 0, i32 0), i64 24) #8
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %while.body.110
  br label %while.end.115

if.end.114:                                       ; preds = %while.body.110
  br label %while.cond.107

while.end.115:                                    ; preds = %if.then.113, %while.cond.107
  %call116 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.qal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.al, i32 0, i64 24)) #6
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.qal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.117

while.cond.117:                                   ; preds = %while.body.119, %while.end.115
  %18 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %19 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %19 to i32
  %cmp = icmp ne i32 %conv, 60
  br i1 %cmp, label %while.body.119, label %while.end.120

while.body.119:                                   ; preds = %while.cond.117
  br label %while.cond.117

while.end.120:                                    ; preds = %while.cond.117
  %20 = load i8*, i8** %pt, align 8
  store i8 0, i8* %20, align 1
  br label %while.cond.121

while.cond.121:                                   ; preds = %if.end.128, %while.end.120
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call122 = call i8* @fgets(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.al, i32 0, i32 0), i32 4999900, %struct._IO_FILE* %21)
  %tobool123 = icmp ne i8* %call122, null
  br i1 %tobool123, label %while.body.124, label %while.end.129

while.body.124:                                   ; preds = %while.cond.121
  %call125 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.al, i32 0, i32 0), i64 24) #8
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %while.body.124
  br label %while.end.129

if.end.128:                                       ; preds = %while.body.124
  br label %while.cond.121

while.end.129:                                    ; preds = %if.then.127, %while.cond.121
  %call130 = call i8* @strcpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.tal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.al, i32 0, i64 24)) #6
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.tal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.131

while.cond.131:                                   ; preds = %while.body.136, %while.end.129
  %22 = load i8*, i8** %pt, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr132, i8** %pt, align 8
  %23 = load i8, i8* %incdec.ptr132, align 1
  %conv133 = sext i8 %23 to i32
  %cmp134 = icmp ne i32 %conv133, 60
  br i1 %cmp134, label %while.body.136, label %while.end.137

while.body.136:                                   ; preds = %while.cond.131
  br label %while.cond.131

while.end.137:                                    ; preds = %while.cond.131
  %24 = load i8*, i8** %pt, align 8
  store i8 0, i8* %24, align 1
  %25 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %26 = load i32, i32* %count, align 4
  %idxprom138 = sext i32 %26 to i64
  %arrayidx139 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadBlastm7.junban, i32 0, i64 %idxprom138
  %27 = load i32, i32* %arrayidx139, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr140 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i64 %idx.ext
  %28 = load i32, i32* %qstart, align 4
  %29 = load i32, i32* %tstart, align 4
  %30 = load double, double* %score, align 8
  %conv141 = fptosi double %30 to i32
  %31 = load i32, i32* %overlapaa, align 4
  %32 = load i32, i32* %nlocalhom, align 4
  %call142 = call i32 @addlocalhom_r(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.qal, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadBlastm7.tal, i32 0, i32 0), %struct._LocalHom* %add.ptr140, i32 %28, i32 %29, i32 %conv141, i32 %31, i32 %32)
  %33 = load i32, i32* %nlocalhom, align 4
  %add143 = add nsw i32 %33, %call142
  store i32 %add143, i32* %nlocalhom, align 4
  br label %while.cond.144

while.cond.144:                                   ; preds = %if.end.153, %while.end.137
  %arraydecay145 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call146 = call i8* @fgets(i8* %arraydecay145, i32 255, %struct._IO_FILE* %34)
  %tobool147 = icmp ne i8* %call146, null
  br i1 %tobool147, label %while.body.148, label %while.end.154

while.body.148:                                   ; preds = %while.cond.144
  %arraydecay149 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call150 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay149, i64 18) #8
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %while.body.148
  br label %while.end.154

if.end.153:                                       ; preds = %while.body.148
  br label %while.cond.144

while.end.154:                                    ; preds = %if.then.152, %while.cond.144
  %arraydecay155 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call156 = call i8* @fgets(i8* %arraydecay155, i32 255, %struct._IO_FILE* %35)
  %arraydecay157 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call158 = call i32 @strncmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay157, i64 21) #8
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.end.174, label %if.then.160

if.then.160:                                      ; preds = %while.end.154
  %36 = load double, double* %sumscore, align 8
  %37 = load i32, i32* %count, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %count, align 4
  %idxprom161 = sext i32 %37 to i64
  %arrayidx162 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadBlastm7.junban, i32 0, i64 %idxprom161
  %38 = load i32, i32* %arrayidx162, align 4
  %idxprom163 = sext i32 %38 to i64
  %39 = load double*, double** %dis.addr, align 8
  %arrayidx164 = getelementptr inbounds double, double* %39, i64 %idxprom163
  store double %36, double* %arrayidx164, align 8
  store double 0.000000e+00, double* %sumscore, align 8
  %arraydecay165 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call166 = call i8* @fgets(i8* %arraydecay165, i32 255, %struct._IO_FILE* %40)
  %arraydecay167 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call168 = call i8* @fgets(i8* %arraydecay167, i32 255, %struct._IO_FILE* %41)
  %arraydecay169 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call170 = call i32 @strncmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay169, i64 23) #8
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.end.173, label %if.then.172

if.then.172:                                      ; preds = %if.then.160
  br label %while.end.175

if.end.173:                                       ; preds = %if.then.160
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %while.end.154
  br label %while.body

while.end.175:                                    ; preds = %if.then.172, %if.then
  %42 = load i32, i32* %count, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @addlocalhom_r(i8* %al1, i8* %al2, %struct._LocalHom* %localhompt, i32 %off1, i32 %off2, i32 %opt, i32 %overlapaa, i32 %skip) #0 {
entry:
  %al1.addr = alloca i8*, align 8
  %al2.addr = alloca i8*, align 8
  %localhompt.addr = alloca %struct._LocalHom*, align 8
  %off1.addr = alloca i32, align 4
  %off2.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  %overlapaa.addr = alloca i32, align 4
  %skip.addr = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %pt1 = alloca i8*, align 8
  %pt2 = alloca i8*, align 8
  %score = alloca double, align 8
  %sumscore = alloca double, align 8
  %sumoverlap = alloca i32, align 4
  %tmppt = alloca %struct._LocalHom*, align 8
  %st = alloca i32, align 4
  %nlocalhom = alloca i32, align 4
  store i8* %al1, i8** %al1.addr, align 8
  store i8* %al2, i8** %al2.addr, align 8
  store %struct._LocalHom* %localhompt, %struct._LocalHom** %localhompt.addr, align 8
  store i32 %off1, i32* %off1.addr, align 4
  store i32 %off2, i32* %off2.addr, align 4
  store i32 %opt, i32* %opt.addr, align 4
  store i32 %overlapaa, i32* %overlapaa.addr, align 4
  store i32 %skip, i32* %skip.addr, align 4
  store %struct._LocalHom* null, %struct._LocalHom** %tmppt, align 8
  store i32 0, i32* %nlocalhom, align 4
  %0 = load i8*, i8** %al1.addr, align 8
  store i8* %0, i8** %pt1, align 8
  %1 = load i8*, i8** %al2.addr, align 8
  store i8* %1, i8** %pt2, align 8
  %2 = load i32, i32* %off1.addr, align 4
  store i32 %2, i32* %pos1, align 4
  %3 = load i32, i32* %off2.addr, align 4
  store i32 %3, i32* %pos2, align 4
  store double 0.000000e+00, double* %sumscore, align 8
  store i32 0, i32* %sumoverlap, align 4
  store i32 0, i32* %start1, align 4
  store i32 0, i32* %start2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %pt1, align 8
  %6 = load i8*, i8** %pt2, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i8* %5, i8* %6)
  %7 = load i32, i32* %skip.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i32, i32* %skip.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %skip.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %9, i32 0, i32 1
  %10 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  store %struct._LocalHom* %10, %struct._LocalHom** %localhompt.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call1 = call noalias i8* @calloc(i64 1, i64 80) #6
  %11 = bitcast i8* %call1 to %struct._LocalHom*
  %12 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %next2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %12, i32 0, i32 1
  store %struct._LocalHom* %11, %struct._LocalHom** %next2, align 8
  %13 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %next3 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %13, i32 0, i32 1
  %14 = load %struct._LocalHom*, %struct._LocalHom** %next3, align 8
  store %struct._LocalHom* %14, %struct._LocalHom** %localhompt.addr, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %17 = bitcast %struct._LocalHom* %16 to i8*
  %18 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  %19 = bitcast %struct._LocalHom* %18 to i8*
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0), i8* %17, i8* %19)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %20 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %20, %struct._LocalHom** %tmppt, align 8
  store i32 0, i32* %st, align 4
  store double 0.000000e+00, double* %score, align 8
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.77, %if.end
  %21 = load i8*, i8** %pt1, align 8
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %cmp6 = icmp ne i32 %conv, 0
  br i1 %cmp6, label %while.body.8, label %while.end.78

while.body.8:                                     ; preds = %while.cond.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i8*, i8** %pt1, align 8
  %26 = load i8, i8* %25, align 1
  %conv10 = sext i8 %26 to i32
  %27 = load i8*, i8** %pt2, align 8
  %28 = load i8, i8* %27, align 1
  %conv11 = sext i8 %28 to i32
  %29 = load i32, i32* %st, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i32 0, i32 0), i32 %conv10, i32 %conv11, i32 %29)
  %30 = load i32, i32* %st, align 4
  %cmp13 = icmp eq i32 %30, 1
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.8
  %31 = load i8*, i8** %pt1, align 8
  %32 = load i8, i8* %31, align 1
  %conv15 = sext i8 %32 to i32
  %cmp16 = icmp eq i32 %conv15, 45
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = load i8*, i8** %pt2, align 8
  %34 = load i8, i8* %33, align 1
  %conv18 = sext i8 %34 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load i32, i32* %pos1, align 4
  %sub = sub nsw i32 %35, 1
  store i32 %sub, i32* %end1, align 4
  %36 = load i32, i32* %pos2, align 4
  %sub22 = sub nsw i32 %36, 1
  store i32 %sub22, i32* %end2, align 4
  %37 = load i32, i32* %nlocalhom, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %nlocalhom, align 4
  %cmp23 = icmp sgt i32 %37, 0
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.then.21
  %call26 = call noalias i8* @calloc(i64 1, i64 80) #6
  %38 = bitcast i8* %call26 to %struct._LocalHom*
  %39 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next27 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %39, i32 0, i32 1
  store %struct._LocalHom* %38, %struct._LocalHom** %next27, align 8
  %40 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next28 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %40, i32 0, i32 1
  %41 = load %struct._LocalHom*, %struct._LocalHom** %next28, align 8
  store %struct._LocalHom* %41, %struct._LocalHom** %tmppt, align 8
  %42 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next29 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %42, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.then.21
  %43 = load i32, i32* %start1, align 4
  %44 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start131 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %44, i32 0, i32 3
  store i32 %43, i32* %start131, align 4
  %45 = load i32, i32* %start2, align 4
  %46 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start232 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %46, i32 0, i32 5
  store i32 %45, i32* %start232, align 4
  %47 = load i32, i32* %end1, align 4
  %48 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end133 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %48, i32 0, i32 4
  store i32 %47, i32* %end133, align 4
  %49 = load i32, i32* %end2, align 4
  %50 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end234 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %50, i32 0, i32 6
  store i32 %49, i32* %end234, align 4
  %51 = load double, double* %score, align 8
  %52 = load double, double* %sumscore, align 8
  %add = fadd double %52, %51
  store double %add, double* %sumscore, align 8
  %53 = load i32, i32* %end2, align 4
  %54 = load i32, i32* %start2, align 4
  %sub35 = sub nsw i32 %53, %54
  %add36 = add nsw i32 %sub35, 1
  %55 = load i32, i32* %sumoverlap, align 4
  %add37 = add nsw i32 %55, %add36
  store i32 %add37, i32* %sumoverlap, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load double, double* %score, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), double %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i32, i32* %start1, align 4
  %60 = load i32, i32* %end1, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i32 %59, i32 %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i32, i32* %start2, align 4
  %63 = load i32, i32* %end2, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i32 %62, i32 %63)
  store double 0.000000e+00, double* %score, align 8
  store i32 0, i32* %st, align 4
  br label %if.end.64

if.else:                                          ; preds = %lor.lhs.false, %while.body.8
  %64 = load i8*, i8** %pt1, align 8
  %65 = load i8, i8* %64, align 1
  %conv41 = sext i8 %65 to i32
  %cmp42 = icmp ne i32 %conv41, 45
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.63

land.lhs.true.44:                                 ; preds = %if.else
  %66 = load i8*, i8** %pt2, align 8
  %67 = load i8, i8* %66, align 1
  %conv45 = sext i8 %67 to i32
  %cmp46 = icmp ne i32 %conv45, 45
  br i1 %cmp46, label %if.then.48, label %if.end.63

if.then.48:                                       ; preds = %land.lhs.true.44
  %68 = load i32, i32* %st, align 4
  %cmp49 = icmp eq i32 %68, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  %69 = load i32, i32* %pos1, align 4
  store i32 %69, i32* %start1, align 4
  %70 = load i32, i32* %pos2, align 4
  store i32 %70, i32* %start2, align 4
  store i32 1, i32* %st, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.then.48
  %71 = load i8*, i8** %pt2, align 8
  %72 = load i8, i8* %71, align 1
  %conv53 = sext i8 %72 to i32
  %idxprom = sext i32 %conv53 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom
  %73 = load i32, i32* %arrayidx, align 4
  %idxprom54 = sext i32 %73 to i64
  %74 = load i8*, i8** %pt1, align 8
  %75 = load i8, i8* %74, align 1
  %conv55 = sext i8 %75 to i32
  %idxprom56 = sext i32 %conv55 to i64
  %arrayidx57 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom56
  %76 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %76 to i64
  %arrayidx59 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx59, i32 0, i64 %idxprom54
  %77 = load i32, i32* %arrayidx60, align 4
  %conv61 = sitofp i32 %77 to double
  %78 = load double, double* %score, align 8
  %add62 = fadd double %78, %conv61
  store double %add62, double* %score, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.52, %land.lhs.true.44, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.30
  %79 = load i8*, i8** %pt1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr, i8** %pt1, align 8
  %80 = load i8, i8* %79, align 1
  %conv65 = sext i8 %80 to i32
  %cmp66 = icmp ne i32 %conv65, 45
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.64
  %81 = load i32, i32* %pos1, align 4
  %inc69 = add nsw i32 %81, 1
  store i32 %inc69, i32* %pos1, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.64
  %82 = load i8*, i8** %pt2, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr71, i8** %pt2, align 8
  %83 = load i8, i8* %82, align 1
  %conv72 = sext i8 %83 to i32
  %cmp73 = icmp ne i32 %conv72, 45
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.70
  %84 = load i32, i32* %pos2, align 4
  %inc76 = add nsw i32 %84, 1
  store i32 %inc76, i32* %pos2, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.70
  br label %while.cond.5

while.end.78:                                     ; preds = %while.cond.5
  %85 = load i32, i32* %nlocalhom, align 4
  %inc79 = add nsw i32 %85, 1
  store i32 %inc79, i32* %nlocalhom, align 4
  %cmp80 = icmp sgt i32 %85, 0
  br i1 %cmp80, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %while.end.78
  %call83 = call noalias i8* @calloc(i64 1, i64 80) #6
  %86 = bitcast i8* %call83 to %struct._LocalHom*
  %87 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next84 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %87, i32 0, i32 1
  store %struct._LocalHom* %86, %struct._LocalHom** %next84, align 8
  %88 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next85 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %88, i32 0, i32 1
  %89 = load %struct._LocalHom*, %struct._LocalHom** %next85, align 8
  store %struct._LocalHom* %89, %struct._LocalHom** %tmppt, align 8
  %90 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next86 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %90, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %while.end.78
  %91 = load i32, i32* %pos1, align 4
  %sub88 = sub nsw i32 %91, 1
  store i32 %sub88, i32* %end1, align 4
  %92 = load i32, i32* %pos2, align 4
  %sub89 = sub nsw i32 %92, 1
  store i32 %sub89, i32* %end2, align 4
  %93 = load i32, i32* %start1, align 4
  %94 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start190 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %94, i32 0, i32 3
  store i32 %93, i32* %start190, align 4
  %95 = load i32, i32* %start2, align 4
  %96 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %start291 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %96, i32 0, i32 5
  store i32 %95, i32* %start291, align 4
  %97 = load i32, i32* %end1, align 4
  %98 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end192 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %98, i32 0, i32 4
  store i32 %97, i32* %end192, align 4
  %99 = load i32, i32* %end2, align 4
  %100 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %end293 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %100, i32 0, i32 6
  store i32 %99, i32* %end293, align 4
  %101 = load double, double* %score, align 8
  %102 = load double, double* %sumscore, align 8
  %add94 = fadd double %102, %101
  store double %add94, double* %sumscore, align 8
  %103 = load i32, i32* %end2, align 4
  %104 = load i32, i32* %start2, align 4
  %sub95 = sub nsw i32 %103, %104
  %add96 = add nsw i32 %sub95, 1
  %105 = load i32, i32* %sumoverlap, align 4
  %add97 = add nsw i32 %105, %add96
  store i32 %add97, i32* %sumoverlap, align 4
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = load double, double* %score, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.111, i32 0, i32 0), double %107)
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = load i32, i32* %start1, align 4
  %110 = load i32, i32* %end1, align 4
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i32 %109, i32 %110)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = load i32, i32* %start2, align 4
  %113 = load i32, i32* %end2, align 4
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i32 %112, i32 %113)
  %114 = load %struct._LocalHom*, %struct._LocalHom** %localhompt.addr, align 8
  store %struct._LocalHom* %114, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.87
  %115 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %tobool101 = icmp ne %struct._LocalHom* %115, null
  br i1 %tobool101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %116 = load i32, i32* %sumoverlap, align 4
  %117 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %overlapaa102 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %117, i32 0, i32 8
  store i32 %116, i32* %overlapaa102, align 4
  %118 = load double, double* %sumscore, align 8
  %mul = fmul double %118, 5.800000e+00
  %div = fdiv double %mul, 6.000000e+02
  %119 = load i32, i32* %sumoverlap, align 4
  %conv103 = sitofp i32 %119 to double
  %div104 = fdiv double %div, %conv103
  %120 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %opt105 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %120, i32 0, i32 7
  store double %div104, double* %opt105, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %121 = load %struct._LocalHom*, %struct._LocalHom** %tmppt, align 8
  %next106 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %121, i32 0, i32 1
  %122 = load %struct._LocalHom*, %struct._LocalHom** %next106, align 8
  store %struct._LocalHom* %122, %struct._LocalHom** %tmppt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %123 = load i32, i32* %nlocalhom, align 4
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34noalign(%struct._IO_FILE* %fp, double* %dis, i32 %qmem, [256 x i8]* %name, %struct._LocalHom* %localhomlist) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %qmem.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %localhomlist.addr = alloca %struct._LocalHom*, align 8
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %opt = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %qmem, i32* %qmem.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store %struct._LocalHom* %localhomlist, %struct._LocalHom** %localhomlist.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 12
  %call6 = call i32 @atoi(i8* %add.ptr) #8
  %2 = load i32, i32* %count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34noalign.junban, i32 0, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 41) #8
  %add.ptr9 = getelementptr inbounds i8, i8* %call8, i64 1
  store i8* %add.ptr9, i8** %pt, align 8
  %3 = load i8*, i8** %pt, align 8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %4 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %count, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34noalign.junban, i32 0, i64 %idxprom11
  %6 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %6 to i64
  %7 = load double*, double** %dis.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %7, i64 %idxprom13
  store double %conv, double* %arrayidx14, align 8
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %count, align 4
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34m10_nuc(%struct._IO_FILE* %fp, double* %dis, i32 %qmem, [256 x i8]* %name, %struct._LocalHom* %localhomlist) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %qmem.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %localhomlist.addr = alloca %struct._LocalHom*, align 8
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %overlapaa = alloca i32, align 4
  %opt = alloca i32, align 4
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  %qal_display_start = alloca i32, align 4
  %tal_display_start = alloca i32, align 4
  %qal2 = alloca i8*, align 8
  %tal2 = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %qmem, i32* %qmem.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store %struct._LocalHom* %localhomlist, %struct._LocalHom** %localhomlist.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.then.10, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 12
  %call6 = call i32 @atoi(i8* %add.ptr) #8
  %2 = load i32, i32* %count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10_nuc.junban, i32 0, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 114) #8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call12 = call i8* @strchr(i8* %arraydecay11, i32 93) #8
  %add.ptr13 = getelementptr inbounds i8, i8* %call12, i64 1
  store i8* %add.ptr13, i8** %pt, align 8
  %3 = load i8*, i8** %pt, align 8
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %4 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %count, align 4
  %idxprom15 = sext i32 %5 to i64
  %arrayidx16 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10_nuc.junban, i32 0, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %6 to i64
  %7 = load double*, double** %dis.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %7, i64 %idxprom17
  store double %conv, double* %arrayidx18, align 8
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.24

if.else:                                          ; preds = %while.body
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call20 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay19, i64 14) #8
  %cmp = icmp eq i32 0, %call20
  br i1 %cmp, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  br label %while.end

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.22, %while.cond
  %9 = load i32, i32* %count, align 4
  %tobool25 = icmp ne i32 %9, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %while.end
  store i32 0, i32* %count, align 4
  br label %while.body.29

while.body.29:                                    ; preds = %if.end.27, %if.end.39, %while.end.225
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call31 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay30, i64 14) #8
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %while.body.29
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call35 = call i8* @fgets(i8* %arraydecay34, i32 255, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @feof(%struct._IO_FILE* %11) #6
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.33
  br label %while.end.232

if.end.39:                                        ; preds = %if.then.33
  br label %while.body.29

if.end.40:                                        ; preds = %while.body.29
  %arraydecay41 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay41, i64 14
  %call43 = call i32 @atoi(i8* %add.ptr42) #8
  %12 = load i32, i32* %count, align 4
  %inc44 = add nsw i32 %12, 1
  store i32 %inc44, i32* %count, align 4
  %idxprom45 = sext i32 %12 to i64
  %arrayidx46 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10_nuc.junban, i32 0, i64 %idxprom45
  store i32 %call43, i32* %arrayidx46, align 4
  br label %while.cond.47

while.cond.47:                                    ; preds = %if.end.59, %if.end.40
  %arraydecay48 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call49 = call i8* @fgets(i8* %arraydecay48, i32 255, %struct._IO_FILE* %13)
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %while.body.51, label %while.end.60

while.body.51:                                    ; preds = %while.cond.47
  %arraydecay52 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call53 = call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay52, i64 9) #8
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %lor.lhs.false, label %if.then.58

lor.lhs.false:                                    ; preds = %while.body.51
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call56 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay55, i64 13) #8
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %lor.lhs.false, %while.body.51
  br label %while.end.60

if.end.59:                                        ; preds = %lor.lhs.false
  br label %while.cond.47

while.end.60:                                     ; preds = %if.then.58, %while.cond.47
  %arraydecay61 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call62 = call i8* @strstr(i8* %arraydecay61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr63 = getelementptr inbounds i8, i8* %call62, i64 1
  store i8* %add.ptr63, i8** %pt, align 8
  %14 = load i8*, i8** %pt, align 8
  %call64 = call i32 @atoi(i8* %14) #8
  store i32 %call64, i32* %opt, align 4
  br label %while.cond.65

while.cond.65:                                    ; preds = %if.end.75, %while.end.60
  %arraydecay66 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call67 = call i8* @fgets(i8* %arraydecay66, i32 255, %struct._IO_FILE* %15)
  %tobool68 = icmp ne i8* %call67, null
  br i1 %tobool68, label %while.body.69, label %while.end.76

while.body.69:                                    ; preds = %while.cond.65
  %arraydecay70 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay70, i64 4
  %call72 = call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* %add.ptr71, i64 9) #8
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %while.body.69
  br label %while.end.76

if.end.75:                                        ; preds = %while.body.69
  br label %while.cond.65

while.end.76:                                     ; preds = %if.then.74, %while.cond.65
  %arraydecay77 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call78 = call i8* @strstr(i8* %arraydecay77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr79 = getelementptr inbounds i8, i8* %call78, i64 1
  store i8* %add.ptr79, i8** %pt, align 8
  %16 = load i8*, i8** %pt, align 8
  %call80 = call i32 @atoi(i8* %16) #8
  store i32 %call80, i32* %overlapaa, align 4
  br label %while.cond.81

while.cond.81:                                    ; preds = %if.end.91, %while.end.76
  %arraydecay82 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call83 = call i8* @fgets(i8* %arraydecay82, i32 255, %struct._IO_FILE* %17)
  %tobool84 = icmp ne i8* %call83, null
  br i1 %tobool84, label %while.body.85, label %while.end.92

while.body.85:                                    ; preds = %while.cond.81
  %arraydecay86 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr87 = getelementptr inbounds i8, i8* %arraydecay86, i64 4
  %call88 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* %add.ptr87, i64 7) #8
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %while.body.85
  br label %while.end.92

if.end.91:                                        ; preds = %while.body.85
  br label %while.cond.81

while.end.92:                                     ; preds = %if.then.90, %while.cond.81
  %arraydecay93 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call94 = call i8* @strstr(i8* %arraydecay93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr95 = getelementptr inbounds i8, i8* %call94, i64 1
  store i8* %add.ptr95, i8** %pt, align 8
  %18 = load i8*, i8** %pt, align 8
  %call96 = call i32 @atoi(i8* %18) #8
  %sub = sub nsw i32 %call96, 1
  store i32 %sub, i32* %qstart, align 4
  br label %while.cond.97

while.cond.97:                                    ; preds = %if.end.107, %while.end.92
  %arraydecay98 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call99 = call i8* @fgets(i8* %arraydecay98, i32 255, %struct._IO_FILE* %19)
  %tobool100 = icmp ne i8* %call99, null
  br i1 %tobool100, label %while.body.101, label %while.end.108

while.body.101:                                   ; preds = %while.cond.97
  %arraydecay102 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay102, i64 4
  %call104 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %add.ptr103, i64 6) #8
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %while.body.101
  br label %while.end.108

if.end.107:                                       ; preds = %while.body.101
  br label %while.cond.97

while.end.108:                                    ; preds = %if.then.106, %while.cond.97
  %arraydecay109 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call110 = call i8* @strstr(i8* %arraydecay109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr111 = getelementptr inbounds i8, i8* %call110, i64 1
  store i8* %add.ptr111, i8** %pt, align 8
  %20 = load i8*, i8** %pt, align 8
  %call112 = call i32 @atoi(i8* %20) #8
  %sub113 = sub nsw i32 %call112, 1
  store i32 %sub113, i32* %qend, align 4
  br label %while.cond.114

while.cond.114:                                   ; preds = %if.end.124, %while.end.108
  %arraydecay115 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call116 = call i8* @fgets(i8* %arraydecay115, i32 255, %struct._IO_FILE* %21)
  %tobool117 = icmp ne i8* %call116, null
  br i1 %tobool117, label %while.body.118, label %while.end.125

while.body.118:                                   ; preds = %while.cond.114
  %arraydecay119 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr120 = getelementptr inbounds i8, i8* %arraydecay119, i64 4
  %call121 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %add.ptr120, i64 15) #8
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %while.body.118
  br label %while.end.125

if.end.124:                                       ; preds = %while.body.118
  br label %while.cond.114

while.end.125:                                    ; preds = %if.then.123, %while.cond.114
  %arraydecay126 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call127 = call i8* @strstr(i8* %arraydecay126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr128 = getelementptr inbounds i8, i8* %call127, i64 1
  store i8* %add.ptr128, i8** %pt, align 8
  %22 = load i8*, i8** %pt, align 8
  %call129 = call i32 @atoi(i8* %22) #8
  %sub130 = sub nsw i32 %call129, 1
  store i32 %sub130, i32* %qal_display_start, align 4
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10_nuc.qal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.131

while.cond.131:                                   ; preds = %if.end.150, %while.end.125
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call132 = call i32 @fgetc(%struct._IO_FILE* %23)
  store i32 %call132, i32* %c, align 4
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %while.body.134, label %while.end.151

while.body.134:                                   ; preds = %while.cond.131
  %24 = load i32, i32* %c, align 4
  %cmp135 = icmp eq i32 %24, 62
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %while.body.134
  %25 = load i32, i32* %c, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call138 = call i32 @ungetc(i32 %25, %struct._IO_FILE* %26)
  br label %while.end.151

if.end.139:                                       ; preds = %while.body.134
  %27 = load i32, i32* %c, align 4
  %idxprom140 = sext i32 %27 to i64
  %call141 = call i16** @__ctype_b_loc() #9
  %28 = load i16*, i16** %call141, align 8
  %arrayidx142 = getelementptr inbounds i16, i16* %28, i64 %idxprom140
  %29 = load i16, i16* %arrayidx142, align 2
  %conv143 = zext i16 %29 to i32
  %and = and i32 %conv143, 1024
  %tobool144 = icmp ne i32 %and, 0
  br i1 %tobool144, label %if.then.148, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.end.139
  %30 = load i32, i32* %c, align 4
  %cmp146 = icmp eq i32 %30, 45
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %lor.lhs.false.145, %if.end.139
  %31 = load i32, i32* %c, align 4
  %conv149 = trunc i32 %31 to i8
  %32 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  store i8 %conv149, i8* %32, align 1
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %lor.lhs.false.145
  br label %while.cond.131

while.end.151:                                    ; preds = %if.then.137, %while.cond.131
  %33 = load i8*, i8** %pt, align 8
  store i8 0, i8* %33, align 1
  br label %while.cond.152

while.cond.152:                                   ; preds = %if.end.162, %while.end.151
  %arraydecay153 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call154 = call i8* @fgets(i8* %arraydecay153, i32 255, %struct._IO_FILE* %34)
  %tobool155 = icmp ne i8* %call154, null
  br i1 %tobool155, label %while.body.156, label %while.end.163

while.body.156:                                   ; preds = %while.cond.152
  %arraydecay157 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr158 = getelementptr inbounds i8, i8* %arraydecay157, i64 4
  %call159 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* %add.ptr158, i64 7) #8
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %while.body.156
  br label %while.end.163

if.end.162:                                       ; preds = %while.body.156
  br label %while.cond.152

while.end.163:                                    ; preds = %if.then.161, %while.cond.152
  %arraydecay164 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call165 = call i8* @strstr(i8* %arraydecay164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr166 = getelementptr inbounds i8, i8* %call165, i64 1
  store i8* %add.ptr166, i8** %pt, align 8
  %35 = load i8*, i8** %pt, align 8
  %call167 = call i32 @atoi(i8* %35) #8
  %sub168 = sub nsw i32 %call167, 1
  store i32 %sub168, i32* %tstart, align 4
  br label %while.cond.169

while.cond.169:                                   ; preds = %if.end.179, %while.end.163
  %arraydecay170 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call171 = call i8* @fgets(i8* %arraydecay170, i32 255, %struct._IO_FILE* %36)
  %tobool172 = icmp ne i8* %call171, null
  br i1 %tobool172, label %while.body.173, label %while.end.180

while.body.173:                                   ; preds = %while.cond.169
  %arraydecay174 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr175 = getelementptr inbounds i8, i8* %arraydecay174, i64 4
  %call176 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %add.ptr175, i64 6) #8
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %while.body.173
  br label %while.end.180

if.end.179:                                       ; preds = %while.body.173
  br label %while.cond.169

while.end.180:                                    ; preds = %if.then.178, %while.cond.169
  %arraydecay181 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call182 = call i8* @strstr(i8* %arraydecay181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr183 = getelementptr inbounds i8, i8* %call182, i64 1
  store i8* %add.ptr183, i8** %pt, align 8
  %37 = load i8*, i8** %pt, align 8
  %call184 = call i32 @atoi(i8* %37) #8
  %sub185 = sub nsw i32 %call184, 1
  store i32 %sub185, i32* %tend, align 4
  br label %while.cond.186

while.cond.186:                                   ; preds = %if.end.196, %while.end.180
  %arraydecay187 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call188 = call i8* @fgets(i8* %arraydecay187, i32 255, %struct._IO_FILE* %38)
  %tobool189 = icmp ne i8* %call188, null
  br i1 %tobool189, label %while.body.190, label %while.end.197

while.body.190:                                   ; preds = %while.cond.186
  %arraydecay191 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr192 = getelementptr inbounds i8, i8* %arraydecay191, i64 4
  %call193 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %add.ptr192, i64 15) #8
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %while.body.190
  br label %while.end.197

if.end.196:                                       ; preds = %while.body.190
  br label %while.cond.186

while.end.197:                                    ; preds = %if.then.195, %while.cond.186
  %arraydecay198 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call199 = call i8* @strstr(i8* %arraydecay198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr200 = getelementptr inbounds i8, i8* %call199, i64 1
  store i8* %add.ptr200, i8** %pt, align 8
  %39 = load i8*, i8** %pt, align 8
  %call201 = call i32 @atoi(i8* %39) #8
  %sub202 = sub nsw i32 %call201, 1
  store i32 %sub202, i32* %tal_display_start, align 4
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10_nuc.tal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.203

while.cond.203:                                   ; preds = %if.end.224, %while.end.197
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call204 = call i32 @fgetc(%struct._IO_FILE* %40)
  store i32 %call204, i32* %c, align 4
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %while.body.206, label %while.end.225

while.body.206:                                   ; preds = %while.cond.203
  %41 = load i32, i32* %c, align 4
  %cmp207 = icmp eq i32 %41, 62
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %while.body.206
  %42 = load i32, i32* %c, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call210 = call i32 @ungetc(i32 %42, %struct._IO_FILE* %43)
  br label %while.end.225

if.end.211:                                       ; preds = %while.body.206
  %44 = load i32, i32* %c, align 4
  %idxprom212 = sext i32 %44 to i64
  %call213 = call i16** @__ctype_b_loc() #9
  %45 = load i16*, i16** %call213, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %45, i64 %idxprom212
  %46 = load i16, i16* %arrayidx214, align 2
  %conv215 = zext i16 %46 to i32
  %and216 = and i32 %conv215, 1024
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then.221, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %if.end.211
  %47 = load i32, i32* %c, align 4
  %cmp219 = icmp eq i32 %47, 45
  br i1 %cmp219, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %lor.lhs.false.218, %if.end.211
  %48 = load i32, i32* %c, align 4
  %conv222 = trunc i32 %48 to i8
  %49 = load i8*, i8** %pt, align 8
  %incdec.ptr223 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr223, i8** %pt, align 8
  store i8 %conv222, i8* %49, align 1
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %lor.lhs.false.218
  br label %while.cond.203

while.end.225:                                    ; preds = %if.then.209, %while.cond.203
  %50 = load i8*, i8** %pt, align 8
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %qal_display_start, align 4
  %52 = load i32, i32* %qstart, align 4
  %53 = load i32, i32* %qend, align 4
  %call226 = call i8* @cutal(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10_nuc.qal, i32 0, i32 0), i32 %51, i32 %52, i32 %53)
  store i8* %call226, i8** %qal2, align 8
  %54 = load i32, i32* %tal_display_start, align 4
  %55 = load i32, i32* %tstart, align 4
  %56 = load i32, i32* %tend, align 4
  %call227 = call i8* @cutal(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10_nuc.tal, i32 0, i32 0), i32 %54, i32 %55, i32 %56)
  store i8* %call227, i8** %tal2, align 8
  %57 = load i8*, i8** %qal2, align 8
  %58 = load i8*, i8** %tal2, align 8
  %59 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %60 = load i32, i32* %count, align 4
  %sub228 = sub nsw i32 %60, 1
  %idxprom229 = sext i32 %sub228 to i64
  %arrayidx230 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10_nuc.junban, i32 0, i64 %idxprom229
  %61 = load i32, i32* %arrayidx230, align 4
  %idx.ext = sext i32 %61 to i64
  %add.ptr231 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %59, i64 %idx.ext
  %62 = load i32, i32* %qstart, align 4
  %63 = load i32, i32* %tstart, align 4
  %64 = load i32, i32* %opt, align 4
  %65 = load i32, i32* %overlapaa, align 4
  call void @putlocalhom(i8* %57, i8* %58, %struct._LocalHom* %add.ptr231, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %while.body.29

while.end.232:                                    ; preds = %if.then.38
  %66 = load i32, i32* %count, align 4
  store i32 %66, i32* %retval
  br label %return

return:                                           ; preds = %while.end.232, %if.then.26
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34m10(%struct._IO_FILE* %fp, double* %dis, i32 %qmem, [256 x i8]* %name, %struct._LocalHom* %localhomlist) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %qmem.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %localhomlist.addr = alloca %struct._LocalHom*, align 8
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %overlapaa = alloca i32, align 4
  %opt = alloca i32, align 4
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  %qal_display_start = alloca i32, align 4
  %tal_display_start = alloca i32, align 4
  %qal2 = alloca i8*, align 8
  %tal2 = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %qmem, i32* %qmem.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store %struct._LocalHom* %localhomlist, %struct._LocalHom** %localhomlist.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 12
  %call6 = call i32 @atoi(i8* %add.ptr) #8
  %2 = load i32, i32* %count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10.junban, i32 0, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 41) #8
  %add.ptr9 = getelementptr inbounds i8, i8* %call8, i64 1
  store i8* %add.ptr9, i8** %pt, align 8
  %3 = load i8*, i8** %pt, align 8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %4 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %count, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10.junban, i32 0, i64 %idxprom11
  %6 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %6 to i64
  %7 = load double*, double** %dis.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %7, i64 %idxprom13
  store double %conv, double* %arrayidx14, align 8
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.19

if.else:                                          ; preds = %while.body
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call16 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay15, i64 14) #8
  %cmp = icmp eq i32 0, %call16
  br i1 %cmp, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %9 = load i32, i32* %count, align 4
  %tobool20 = icmp ne i32 %9, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %while.end
  store i32 0, i32* %count, align 4
  br label %while.body.24

while.body.24:                                    ; preds = %if.end.22, %if.end.34, %while.end.220
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call26 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay25, i64 14) #8
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %while.body.24
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i8* @fgets(i8* %arraydecay29, i32 255, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i32 @feof(%struct._IO_FILE* %11) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.28
  br label %while.end.227

if.end.34:                                        ; preds = %if.then.28
  br label %while.body.24

if.end.35:                                        ; preds = %while.body.24
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr37 = getelementptr inbounds i8, i8* %arraydecay36, i64 14
  %call38 = call i32 @atoi(i8* %add.ptr37) #8
  %12 = load i32, i32* %count, align 4
  %inc39 = add nsw i32 %12, 1
  store i32 %inc39, i32* %count, align 4
  %idxprom40 = sext i32 %12 to i64
  %arrayidx41 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10.junban, i32 0, i64 %idxprom40
  store i32 %call38, i32* %arrayidx41, align 4
  br label %while.cond.42

while.cond.42:                                    ; preds = %if.end.54, %if.end.35
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call44 = call i8* @fgets(i8* %arraydecay43, i32 255, %struct._IO_FILE* %13)
  %tobool45 = icmp ne i8* %call44, null
  br i1 %tobool45, label %while.body.46, label %while.end.55

while.body.46:                                    ; preds = %while.cond.42
  %arraydecay47 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call48 = call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay47, i64 9) #8
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %lor.lhs.false, label %if.then.53

lor.lhs.false:                                    ; preds = %while.body.46
  %arraydecay50 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call51 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay50, i64 13) #8
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false, %while.body.46
  br label %while.end.55

if.end.54:                                        ; preds = %lor.lhs.false
  br label %while.cond.42

while.end.55:                                     ; preds = %if.then.53, %while.cond.42
  %arraydecay56 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call57 = call i8* @strstr(i8* %arraydecay56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr58 = getelementptr inbounds i8, i8* %call57, i64 1
  store i8* %add.ptr58, i8** %pt, align 8
  %14 = load i8*, i8** %pt, align 8
  %call59 = call i32 @atoi(i8* %14) #8
  store i32 %call59, i32* %opt, align 4
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.70, %while.end.55
  %arraydecay61 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call62 = call i8* @fgets(i8* %arraydecay61, i32 255, %struct._IO_FILE* %15)
  %tobool63 = icmp ne i8* %call62, null
  br i1 %tobool63, label %while.body.64, label %while.end.71

while.body.64:                                    ; preds = %while.cond.60
  %arraydecay65 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr66 = getelementptr inbounds i8, i8* %arraydecay65, i64 4
  %call67 = call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* %add.ptr66, i64 9) #8
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %while.body.64
  br label %while.end.71

if.end.70:                                        ; preds = %while.body.64
  br label %while.cond.60

while.end.71:                                     ; preds = %if.then.69, %while.cond.60
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call73 = call i8* @strstr(i8* %arraydecay72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr74 = getelementptr inbounds i8, i8* %call73, i64 1
  store i8* %add.ptr74, i8** %pt, align 8
  %16 = load i8*, i8** %pt, align 8
  %call75 = call i32 @atoi(i8* %16) #8
  store i32 %call75, i32* %overlapaa, align 4
  br label %while.cond.76

while.cond.76:                                    ; preds = %if.end.86, %while.end.71
  %arraydecay77 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call78 = call i8* @fgets(i8* %arraydecay77, i32 255, %struct._IO_FILE* %17)
  %tobool79 = icmp ne i8* %call78, null
  br i1 %tobool79, label %while.body.80, label %while.end.87

while.body.80:                                    ; preds = %while.cond.76
  %arraydecay81 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr82 = getelementptr inbounds i8, i8* %arraydecay81, i64 4
  %call83 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* %add.ptr82, i64 7) #8
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %while.body.80
  br label %while.end.87

if.end.86:                                        ; preds = %while.body.80
  br label %while.cond.76

while.end.87:                                     ; preds = %if.then.85, %while.cond.76
  %arraydecay88 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call89 = call i8* @strstr(i8* %arraydecay88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr90 = getelementptr inbounds i8, i8* %call89, i64 1
  store i8* %add.ptr90, i8** %pt, align 8
  %18 = load i8*, i8** %pt, align 8
  %call91 = call i32 @atoi(i8* %18) #8
  %sub = sub nsw i32 %call91, 1
  store i32 %sub, i32* %qstart, align 4
  br label %while.cond.92

while.cond.92:                                    ; preds = %if.end.102, %while.end.87
  %arraydecay93 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call94 = call i8* @fgets(i8* %arraydecay93, i32 255, %struct._IO_FILE* %19)
  %tobool95 = icmp ne i8* %call94, null
  br i1 %tobool95, label %while.body.96, label %while.end.103

while.body.96:                                    ; preds = %while.cond.92
  %arraydecay97 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr98 = getelementptr inbounds i8, i8* %arraydecay97, i64 4
  %call99 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %add.ptr98, i64 6) #8
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %while.body.96
  br label %while.end.103

if.end.102:                                       ; preds = %while.body.96
  br label %while.cond.92

while.end.103:                                    ; preds = %if.then.101, %while.cond.92
  %arraydecay104 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call105 = call i8* @strstr(i8* %arraydecay104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr106 = getelementptr inbounds i8, i8* %call105, i64 1
  store i8* %add.ptr106, i8** %pt, align 8
  %20 = load i8*, i8** %pt, align 8
  %call107 = call i32 @atoi(i8* %20) #8
  %sub108 = sub nsw i32 %call107, 1
  store i32 %sub108, i32* %qend, align 4
  br label %while.cond.109

while.cond.109:                                   ; preds = %if.end.119, %while.end.103
  %arraydecay110 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call111 = call i8* @fgets(i8* %arraydecay110, i32 255, %struct._IO_FILE* %21)
  %tobool112 = icmp ne i8* %call111, null
  br i1 %tobool112, label %while.body.113, label %while.end.120

while.body.113:                                   ; preds = %while.cond.109
  %arraydecay114 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay114, i64 4
  %call116 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %add.ptr115, i64 15) #8
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %while.body.113
  br label %while.end.120

if.end.119:                                       ; preds = %while.body.113
  br label %while.cond.109

while.end.120:                                    ; preds = %if.then.118, %while.cond.109
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call122 = call i8* @strstr(i8* %arraydecay121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr123 = getelementptr inbounds i8, i8* %call122, i64 1
  store i8* %add.ptr123, i8** %pt, align 8
  %22 = load i8*, i8** %pt, align 8
  %call124 = call i32 @atoi(i8* %22) #8
  %sub125 = sub nsw i32 %call124, 1
  store i32 %sub125, i32* %qal_display_start, align 4
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10.qal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.126

while.cond.126:                                   ; preds = %if.end.145, %while.end.120
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call127 = call i32 @fgetc(%struct._IO_FILE* %23)
  store i32 %call127, i32* %c, align 4
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %while.body.129, label %while.end.146

while.body.129:                                   ; preds = %while.cond.126
  %24 = load i32, i32* %c, align 4
  %cmp130 = icmp eq i32 %24, 62
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %while.body.129
  %25 = load i32, i32* %c, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call133 = call i32 @ungetc(i32 %25, %struct._IO_FILE* %26)
  br label %while.end.146

if.end.134:                                       ; preds = %while.body.129
  %27 = load i32, i32* %c, align 4
  %idxprom135 = sext i32 %27 to i64
  %call136 = call i16** @__ctype_b_loc() #9
  %28 = load i16*, i16** %call136, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %28, i64 %idxprom135
  %29 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %29 to i32
  %and = and i32 %conv138, 1024
  %tobool139 = icmp ne i32 %and, 0
  br i1 %tobool139, label %if.then.143, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.end.134
  %30 = load i32, i32* %c, align 4
  %cmp141 = icmp eq i32 %30, 45
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %lor.lhs.false.140, %if.end.134
  %31 = load i32, i32* %c, align 4
  %conv144 = trunc i32 %31 to i8
  %32 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  store i8 %conv144, i8* %32, align 1
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %lor.lhs.false.140
  br label %while.cond.126

while.end.146:                                    ; preds = %if.then.132, %while.cond.126
  %33 = load i8*, i8** %pt, align 8
  store i8 0, i8* %33, align 1
  br label %while.cond.147

while.cond.147:                                   ; preds = %if.end.157, %while.end.146
  %arraydecay148 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call149 = call i8* @fgets(i8* %arraydecay148, i32 255, %struct._IO_FILE* %34)
  %tobool150 = icmp ne i8* %call149, null
  br i1 %tobool150, label %while.body.151, label %while.end.158

while.body.151:                                   ; preds = %while.cond.147
  %arraydecay152 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr153 = getelementptr inbounds i8, i8* %arraydecay152, i64 4
  %call154 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* %add.ptr153, i64 7) #8
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %while.body.151
  br label %while.end.158

if.end.157:                                       ; preds = %while.body.151
  br label %while.cond.147

while.end.158:                                    ; preds = %if.then.156, %while.cond.147
  %arraydecay159 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call160 = call i8* @strstr(i8* %arraydecay159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr161 = getelementptr inbounds i8, i8* %call160, i64 1
  store i8* %add.ptr161, i8** %pt, align 8
  %35 = load i8*, i8** %pt, align 8
  %call162 = call i32 @atoi(i8* %35) #8
  %sub163 = sub nsw i32 %call162, 1
  store i32 %sub163, i32* %tstart, align 4
  br label %while.cond.164

while.cond.164:                                   ; preds = %if.end.174, %while.end.158
  %arraydecay165 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call166 = call i8* @fgets(i8* %arraydecay165, i32 255, %struct._IO_FILE* %36)
  %tobool167 = icmp ne i8* %call166, null
  br i1 %tobool167, label %while.body.168, label %while.end.175

while.body.168:                                   ; preds = %while.cond.164
  %arraydecay169 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr170 = getelementptr inbounds i8, i8* %arraydecay169, i64 4
  %call171 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %add.ptr170, i64 6) #8
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.end.174, label %if.then.173

if.then.173:                                      ; preds = %while.body.168
  br label %while.end.175

if.end.174:                                       ; preds = %while.body.168
  br label %while.cond.164

while.end.175:                                    ; preds = %if.then.173, %while.cond.164
  %arraydecay176 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call177 = call i8* @strstr(i8* %arraydecay176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr178 = getelementptr inbounds i8, i8* %call177, i64 1
  store i8* %add.ptr178, i8** %pt, align 8
  %37 = load i8*, i8** %pt, align 8
  %call179 = call i32 @atoi(i8* %37) #8
  %sub180 = sub nsw i32 %call179, 1
  store i32 %sub180, i32* %tend, align 4
  br label %while.cond.181

while.cond.181:                                   ; preds = %if.end.191, %while.end.175
  %arraydecay182 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call183 = call i8* @fgets(i8* %arraydecay182, i32 255, %struct._IO_FILE* %38)
  %tobool184 = icmp ne i8* %call183, null
  br i1 %tobool184, label %while.body.185, label %while.end.192

while.body.185:                                   ; preds = %while.cond.181
  %arraydecay186 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr187 = getelementptr inbounds i8, i8* %arraydecay186, i64 4
  %call188 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %add.ptr187, i64 15) #8
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.end.191, label %if.then.190

if.then.190:                                      ; preds = %while.body.185
  br label %while.end.192

if.end.191:                                       ; preds = %while.body.185
  br label %while.cond.181

while.end.192:                                    ; preds = %if.then.190, %while.cond.181
  %arraydecay193 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call194 = call i8* @strstr(i8* %arraydecay193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %add.ptr195 = getelementptr inbounds i8, i8* %call194, i64 1
  store i8* %add.ptr195, i8** %pt, align 8
  %39 = load i8*, i8** %pt, align 8
  %call196 = call i32 @atoi(i8* %39) #8
  %sub197 = sub nsw i32 %call196, 1
  store i32 %sub197, i32* %tal_display_start, align 4
  store i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10.tal, i32 0, i32 0), i8** %pt, align 8
  br label %while.cond.198

while.cond.198:                                   ; preds = %if.end.219, %while.end.192
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call199 = call i32 @fgetc(%struct._IO_FILE* %40)
  store i32 %call199, i32* %c, align 4
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %while.body.201, label %while.end.220

while.body.201:                                   ; preds = %while.cond.198
  %41 = load i32, i32* %c, align 4
  %cmp202 = icmp eq i32 %41, 62
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %while.body.201
  %42 = load i32, i32* %c, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call205 = call i32 @ungetc(i32 %42, %struct._IO_FILE* %43)
  br label %while.end.220

if.end.206:                                       ; preds = %while.body.201
  %44 = load i32, i32* %c, align 4
  %idxprom207 = sext i32 %44 to i64
  %call208 = call i16** @__ctype_b_loc() #9
  %45 = load i16*, i16** %call208, align 8
  %arrayidx209 = getelementptr inbounds i16, i16* %45, i64 %idxprom207
  %46 = load i16, i16* %arrayidx209, align 2
  %conv210 = zext i16 %46 to i32
  %and211 = and i32 %conv210, 1024
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then.216, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %if.end.206
  %47 = load i32, i32* %c, align 4
  %cmp214 = icmp eq i32 %47, 45
  br i1 %cmp214, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %lor.lhs.false.213, %if.end.206
  %48 = load i32, i32* %c, align 4
  %conv217 = trunc i32 %48 to i8
  %49 = load i8*, i8** %pt, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr218, i8** %pt, align 8
  store i8 %conv217, i8* %49, align 1
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %lor.lhs.false.213
  br label %while.cond.198

while.end.220:                                    ; preds = %if.then.204, %while.cond.198
  %50 = load i8*, i8** %pt, align 8
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %qal_display_start, align 4
  %52 = load i32, i32* %qstart, align 4
  %53 = load i32, i32* %qend, align 4
  %call221 = call i8* @cutal(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10.qal, i32 0, i32 0), i32 %51, i32 %52, i32 %53)
  store i8* %call221, i8** %qal2, align 8
  %54 = load i32, i32* %tal_display_start, align 4
  %55 = load i32, i32* %tstart, align 4
  %56 = load i32, i32* %tend, align 4
  %call222 = call i8* @cutal(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @ReadFasta34m10.tal, i32 0, i32 0), i32 %54, i32 %55, i32 %56)
  store i8* %call222, i8** %tal2, align 8
  %57 = load i8*, i8** %qal2, align 8
  %58 = load i8*, i8** %tal2, align 8
  %59 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %60 = load i32, i32* %count, align 4
  %sub223 = sub nsw i32 %60, 1
  %idxprom224 = sext i32 %sub223 to i64
  %arrayidx225 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34m10.junban, i32 0, i64 %idxprom224
  %61 = load i32, i32* %arrayidx225, align 4
  %idx.ext = sext i32 %61 to i64
  %add.ptr226 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %59, i64 %idx.ext
  %62 = load i32, i32* %qstart, align 4
  %63 = load i32, i32* %tstart, align 4
  %64 = load i32, i32* %opt, align 4
  %65 = load i32, i32* %overlapaa, align 4
  call void @putlocalhom(i8* %57, i8* %58, %struct._LocalHom* %add.ptr226, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %while.body.24

while.end.227:                                    ; preds = %if.then.33
  %66 = load i32, i32* %count, align 4
  store i32 %66, i32* %retval
  br label %return

return:                                           ; preds = %while.end.227, %if.then.21
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34m10_scoreonly_nucbk(%struct._IO_FILE* %fp, double* %dis, i32 %nin) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nin.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %pos = alloca i32, align 4
  %opt = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nin, i32* %nin.addr, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.then.10, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay2, i64 13) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 13
  %call6 = call i32 @atoi(i8* %add.ptr) #8
  store i32 %call6, i32* %pos, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 114) #8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call12 = call i8* @strchr(i8* %arraydecay11, i32 93) #8
  %add.ptr13 = getelementptr inbounds i8, i8* %call12, i64 1
  store i8* %add.ptr13, i8** %pt, align 8
  %2 = load i8*, i8** %pt, align 8
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %3 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %dis.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %add = fadd double %6, %conv
  store double %add, double* %arrayidx, align 8
  %7 = load i32, i32* %count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.20

if.else:                                          ; preds = %while.body
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call16 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay15, i64 6) #8
  %cmp = icmp eq i32 0, %call16
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  br label %while.end

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %8 = load i32, i32* %count, align 4
  %tobool21 = icmp ne i32 %8, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %while.end
  %9 = load i32, i32* %count, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34m10_scoreonly_nuc(%struct._IO_FILE* %fp, double* %dis, i32 %nin) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nin.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %pos = alloca i32, align 4
  %opt = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  %c = alloca i32, align 4
  %yonda = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nin, i32* %nin.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %nin.addr, align 4
  %call = call i32* @AllocateIntVec(i32 %0)
  store i32* %call, i32** %yonda, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %c, align 4
  %2 = load i32, i32* %nin.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %yonda, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %c, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %6 = load i32, i32* %c, align 4
  %7 = load i32, i32* %nin.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %dis.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %10 = load i32, i32* %c, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %c, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.then.19, %for.end.8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @feof(%struct._IO_FILE* %11) #6
  %tobool = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %12)
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call12 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay11, i64 13) #8
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay14, i64 13
  %call15 = call i32 @atoi(i8* %add.ptr) #8
  store i32 %call15, i32* %pos, align 4
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call17 = call i8* @strchr(i8* %arraydecay16, i32 114) #8
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call21 = call i8* @strchr(i8* %arraydecay20, i32 93) #8
  %add.ptr22 = getelementptr inbounds i8, i8* %call21, i64 1
  store i8* %add.ptr22, i8** %pt, align 8
  %13 = load i8*, i8** %pt, align 8
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %14 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %14 to i64
  %15 = load i32*, i32** %yonda, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %15, i64 %idxprom24
  %16 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %16, 0
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end
  %17 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %17 to double
  %18 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %18 to i64
  %19 = load double*, double** %dis.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %19, i64 %idxprom28
  %20 = load double, double* %arrayidx29, align 8
  %add = fadd double %20, %conv
  store double %add, double* %arrayidx29, align 8
  %21 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i32*, i32** %yonda, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %22, i64 %idxprom30
  store i32 1, i32* %arrayidx31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %if.end
  %23 = load i32, i32* %count, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, i32* %count, align 4
  br label %if.end.55

if.else:                                          ; preds = %while.body
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call35 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay34, i64 3) #8
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.47, label %if.then.37

if.then.37:                                       ; preds = %if.else
  store i32 0, i32* %c, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.44, %if.then.37
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %nin.addr, align 4
  %cmp39 = icmp slt i32 %24, %25
  br i1 %cmp39, label %for.body.41, label %for.end.46

for.body.41:                                      ; preds = %for.cond.38
  %26 = load i32, i32* %c, align 4
  %idxprom42 = sext i32 %26 to i64
  %27 = load i32*, i32** %yonda, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %27, i64 %idxprom42
  store i32 0, i32* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.41
  %28 = load i32, i32* %c, align 4
  %inc45 = add nsw i32 %28, 1
  store i32 %inc45, i32* %c, align 4
  br label %for.cond.38

for.end.46:                                       ; preds = %for.cond.38
  br label %if.end.54

if.else.47:                                       ; preds = %if.else
  %arraydecay48 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call49 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay48, i64 6) #8
  %cmp50 = icmp eq i32 0, %call49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.47
  br label %while.end

if.end.53:                                        ; preds = %if.else.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.end.46
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %if.then.52, %while.cond
  %29 = load i32*, i32** %yonda, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* %30) #6
  %31 = load i32, i32* %count, align 4
  %tobool56 = icmp ne i32 %31, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %while.end
  %32 = load i32, i32* %count, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.57
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32* @AllocateIntVec(i32) #1

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34m10_scoreonly(%struct._IO_FILE* %fp, double* %dis, i32 %nin) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nin.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %pos = alloca i32, align 4
  %opt = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  %c = alloca i32, align 4
  %yonda = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nin, i32* %nin.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %nin.addr, align 4
  %call = call i32* @AllocateIntVec(i32 %0)
  store i32* %call, i32** %yonda, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %c, align 4
  %2 = load i32, i32* %nin.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %yonda, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %c, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %6 = load i32, i32* %c, align 4
  %7 = load i32, i32* %nin.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %dis.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %10 = load i32, i32* %c, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %c, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %for.end.8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @feof(%struct._IO_FILE* %11) #6
  %tobool = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %12)
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call12 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay11, i64 13) #8
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay14, i64 13
  %call15 = call i32 @atoi(i8* %add.ptr) #8
  store i32 %call15, i32* %pos, align 4
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call17 = call i8* @strchr(i8* %arraydecay16, i32 41) #8
  %add.ptr18 = getelementptr inbounds i8, i8* %call17, i64 1
  store i8* %add.ptr18, i8** %pt, align 8
  %13 = load i8*, i8** %pt, align 8
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %14 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %14 to i64
  %15 = load i32*, i32** %yonda, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %15, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %17 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %17 to double
  %18 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %18 to i64
  %19 = load double*, double** %dis.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %19, i64 %idxprom24
  %20 = load double, double* %arrayidx25, align 8
  %add = fadd double %20, %conv
  store double %add, double* %arrayidx25, align 8
  %21 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load i32*, i32** %yonda, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %22, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  %23 = load i32, i32* %count, align 4
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, i32* %count, align 4
  br label %if.end.50

if.else:                                          ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call30 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay29, i64 3) #8
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else.42, label %if.then.32

if.then.32:                                       ; preds = %if.else
  store i32 0, i32* %c, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.39, %if.then.32
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %nin.addr, align 4
  %cmp34 = icmp slt i32 %24, %25
  br i1 %cmp34, label %for.body.36, label %for.end.41

for.body.36:                                      ; preds = %for.cond.33
  %26 = load i32, i32* %c, align 4
  %idxprom37 = sext i32 %26 to i64
  %27 = load i32*, i32** %yonda, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %27, i64 %idxprom37
  store i32 0, i32* %arrayidx38, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %28 = load i32, i32* %c, align 4
  %inc40 = add nsw i32 %28, 1
  store i32 %inc40, i32* %c, align 4
  br label %for.cond.33

for.end.41:                                       ; preds = %for.cond.33
  br label %if.end.49

if.else.42:                                       ; preds = %if.else
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call44 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay43, i64 6) #8
  %cmp45 = icmp eq i32 0, %call44
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else.42
  br label %while.end

if.end.48:                                        ; preds = %if.else.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end.41
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.47, %while.cond
  %29 = load i32*, i32** %yonda, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* %30) #6
  %31 = load i32, i32* %count, align 4
  %tobool51 = icmp ne i32 %31, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %while.end
  %32 = load i32, i32* %count, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta34(%struct._IO_FILE* %fp, double* %dis, i32 %nseq, [256 x i8]* %name, %struct._LocalHom* %localhomlist) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %localhomlist.addr = alloca %struct._LocalHom*, align 8
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %overlapaa = alloca i32, align 4
  %opt = alloca i32, align 4
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %z = alloca double, align 8
  %bits = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store %struct._LocalHom* %localhomlist, %struct._LocalHom** %localhomlist.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 12
  %call6 = call i32 @atoi(i8* %add.ptr) #8
  %2 = load i32, i32* %count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 41) #8
  %add.ptr9 = getelementptr inbounds i8, i8* %call8, i64 1
  store i8* %add.ptr9, i8** %pt, align 8
  %3 = load i8*, i8** %pt, align 8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32* %opt, double* %bits, double* %z) #6
  %4 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %count, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom11
  %6 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %6 to i64
  %7 = load double*, double** %dis.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %7, i64 %idxprom13
  store double %conv, double* %arrayidx14, align 8
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.19

if.else:                                          ; preds = %while.body
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call16 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay15, i64 14) #8
  %cmp = icmp eq i32 0, %call16
  br i1 %cmp, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %9 = load i32, i32* %count, align 4
  %tobool20 = icmp ne i32 %9, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %while.end
  store i32 0, i32* %count, align 4
  br label %while.cond.23

while.cond.23:                                    ; preds = %if.end.90, %if.end.22
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i32 @feof(%struct._IO_FILE* %10) #6
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  br i1 %lnot26, label %while.body.27, label %while.end.93

while.body.27:                                    ; preds = %while.cond.23
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call29 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay28, i64 14) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.90, label %if.then.31

if.then.31:                                       ; preds = %while.body.27
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay32, i64 14
  %call34 = call i32 @atoi(i8* %add.ptr33) #8
  %11 = load i32, i32* %count, align 4
  %idxprom35 = sext i32 %11 to i64
  %arrayidx36 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom35
  store i32 %call34, i32* %arrayidx36, align 4
  %12 = load i32, i32* %count, align 4
  %inc37 = add nsw i32 %12, 1
  store i32 %inc37, i32* %count, align 4
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call39 = call i8* @fgets(i8* %arraydecay38, i32 255, %struct._IO_FILE* %13)
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call41 = call i8* @strstr(i8* %arraydecay40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #8
  %add.ptr42 = getelementptr inbounds i8, i8* %call41, i64 5
  store i8* %add.ptr42, i8** %pt, align 8
  %14 = load i8*, i8** %pt, align 8
  %call43 = call double @atof(i8* %14) #8
  %15 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom44 = sext i32 %sub to i64
  %arrayidx45 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom44
  %16 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %16 to i64
  %17 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i64 %idxprom46
  %opt48 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx47, i32 0, i32 7
  store double %call43, double* %opt48, align 8
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i8* @fgets(i8* %arraydecay49, i32 255, %struct._IO_FILE* %18)
  %arraydecay51 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call52 = call i8* @strstr(i8* %arraydecay51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)) #8
  %add.ptr53 = getelementptr inbounds i8, i8* %call52, i64 13
  store i8* %add.ptr53, i8** %pt, align 8
  %19 = load i8*, i8** %pt, align 8
  %call54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32* %overlapaa) #6
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** %pt, align 8
  %22 = load i32, i32* %overlapaa, align 4
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), i8* %21, i32 %22)
  %arraydecay56 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call57 = call i8* @strstr(i8* %arraydecay56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #8
  %add.ptr58 = getelementptr inbounds i8, i8* %call57, i64 8
  store i8* %add.ptr58, i8** %pt, align 8
  %23 = load i8*, i8** %pt, align 8
  %call59 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i32* %qstart, i32* %qend, i32* %tstart, i32* %tend) #6
  %24 = load i32, i32* %overlapaa, align 4
  %25 = load i32, i32* %count, align 4
  %sub60 = sub nsw i32 %25, 1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom61
  %26 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %26 to i64
  %27 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i64 %idxprom63
  %overlapaa65 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx64, i32 0, i32 8
  store i32 %24, i32* %overlapaa65, align 4
  %28 = load i32, i32* %qstart, align 4
  %sub66 = sub nsw i32 %28, 1
  %29 = load i32, i32* %count, align 4
  %sub67 = sub nsw i32 %29, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom68
  %30 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %30 to i64
  %31 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %31, i64 %idxprom70
  %start1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx71, i32 0, i32 3
  store i32 %sub66, i32* %start1, align 4
  %32 = load i32, i32* %qend, align 4
  %sub72 = sub nsw i32 %32, 1
  %33 = load i32, i32* %count, align 4
  %sub73 = sub nsw i32 %33, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom74
  %34 = load i32, i32* %arrayidx75, align 4
  %idxprom76 = sext i32 %34 to i64
  %35 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %35, i64 %idxprom76
  %end1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx77, i32 0, i32 4
  store i32 %sub72, i32* %end1, align 4
  %36 = load i32, i32* %tstart, align 4
  %sub78 = sub nsw i32 %36, 1
  %37 = load i32, i32* %count, align 4
  %sub79 = sub nsw i32 %37, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom80
  %38 = load i32, i32* %arrayidx81, align 4
  %idxprom82 = sext i32 %38 to i64
  %39 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %39, i64 %idxprom82
  %start2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx83, i32 0, i32 5
  store i32 %sub78, i32* %start2, align 4
  %40 = load i32, i32* %tend, align 4
  %sub84 = sub nsw i32 %40, 1
  %41 = load i32, i32* %count, align 4
  %sub85 = sub nsw i32 %41, 1
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds [50000 x i32], [50000 x i32]* @ReadFasta34.junban, i32 0, i64 %idxprom86
  %42 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %42 to i64
  %43 = load %struct._LocalHom*, %struct._LocalHom** %localhomlist.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %43, i64 %idxprom88
  %end2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx89, i32 0, i32 6
  store i32 %sub84, i32* %end2, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.31, %while.body.27
  %arraydecay91 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call92 = call i8* @fgets(i8* %arraydecay91, i32 255, %struct._IO_FILE* %44)
  br label %while.cond.23

while.end.93:                                     ; preds = %while.cond.23
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i32, i32* %count, align 4
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i32 %46)
  %47 = load i32, i32* %count, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %while.end.93, %if.then.21
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta3(%struct._IO_FILE* %fp, double* %dis, i32 %nseq, [256 x i8]* %name) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %pt = alloca i8*, align 8
  %junban = alloca [50000 x i32], align 16
  %initn = alloca i32, align 4
  %init1 = alloca i32, align 4
  %opt = alloca i32, align 4
  %z = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 12
  %call6 = call i32 @atoi(i8* %add.ptr) #8
  %2 = load i32, i32* %count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 41) #8
  %add.ptr9 = getelementptr inbounds i8, i8* %call8, i64 1
  store i8* %add.ptr9, i8** %pt, align 8
  %3 = load i8*, i8** %pt, align 8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i32* %initn, i32* %init1, i32* %opt, double* %z) #6
  %4 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %count, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom11
  %6 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %6 to i64
  %7 = load double*, double** %dis.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %7, i64 %idxprom13
  store double %conv, double* %arrayidx14, align 8
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ReadFasta(%struct._IO_FILE* %fp, double* %dis, i32 %nseq, [256 x i8]* %name) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dis.addr = alloca double*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %junban = alloca [50000 x i32], align 16
  %initn = alloca i32, align 4
  %init1 = alloca i32, align 4
  %opt = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store double* %dis, double** %dis.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %dis.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.20, %for.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %5) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.1
  %6 = load i32, i32* %count, align 4
  %7 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %8 = phi i1 [ false, %for.cond.1 ], [ %cmp2, %land.rhs ]
  br i1 %8, label %for.body.3, label %for.end.22

for.body.3:                                       ; preds = %land.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %9)
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call6 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay5, i64 12) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.3
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 12
  %call9 = call i32 @atoi(i8* %add.ptr) #8
  %10 = load i32, i32* %count, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom10
  store i32 %call9, i32* %arrayidx11, align 4
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, i8* %arraydecay12, i64 50
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32* %initn, i32* %init1, i32* %opt) #6
  %11 = load i32, i32* %opt, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %count, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom15
  %13 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %13 to i64
  %14 = load double*, double** %dis.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %14, i64 %idxprom17
  store double %conv, double* %arrayidx18, align 8
  %15 = load i32, i32* %count, align 4
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %land.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ReadOpt(%struct._IO_FILE* %fp, i32* %opt, i32 %nseq, [256 x i8]* %name) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %opt.addr = alloca i32*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %junban = alloca [50000 x i32], align 16
  %optt = alloca i32, align 4
  %initn = alloca i32, align 4
  %init1 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %opt, i32** %opt.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %4)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 12
  %call5 = call i32 @atoi(i8* %add.ptr) #8
  %5 = load i32, i32* %count, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom
  store i32 %call5, i32* %arrayidx, align 4
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay6, i64 50
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32* %initn, i32* %init1, i32* %optt) #6
  %6 = load i32, i32* %optt, align 4
  %conv = sitofp i32 %6 to double
  %conv9 = fptosi double %conv to i32
  %7 = load i32, i32* %count, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom10
  %8 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %8 to i64
  %9 = load i32*, i32** %opt.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %9, i64 %idxprom12
  store i32 %conv9, i32* %arrayidx13, align 4
  %10 = load i32, i32* %count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ReadOpt2(%struct._IO_FILE* %fp, i32* %opt, i32 %nseq, [256 x i8]* %name) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %opt.addr = alloca i32*, align 8
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %junban = alloca [50000 x i32], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %opt, i32** %opt.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %4)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay2, i64 12) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 12
  %call5 = call i32 @atoi(i8* %add.ptr) #8
  %5 = load i32, i32* %count, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom
  store i32 %call5, i32* %arrayidx, align 4
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay6, i64 65
  %call8 = call i32 @atoi(i8* %add.ptr7) #8
  %6 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [50000 x i32], [50000 x i32]* %junban, i32 0, i64 %idxprom9
  %7 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load i32*, i32** %opt.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %8, i64 %idxprom11
  store i32 %call8, i32* %arrayidx12, align 4
  %9 = load i32, i32* %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %10, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @writePre(i32 %nseq, [256 x i8]* %name, i32* %nlen, i8** %aseq, i32 %force) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %force.addr = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load i32, i32* %force.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @prep_g, align 8
  call void @rewind(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @prep_g, align 8
  %3 = load i32, i32* %nseq.addr, align 4
  %4 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %5 = load i32*, i32** %nlen.addr, align 8
  %6 = load i8**, i8*** %aseq.addr, align 8
  call void @writeData(%struct._IO_FILE* %2, i32 %3, [256 x i8]* %4, i32* %5, i8** %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @readOtherOptions(i32* %ppidptr, i32* %fftThresholdptr, i32* %fftWinSizeptr) #0 {
entry:
  %ppidptr.addr = alloca i32*, align 8
  %fftThresholdptr.addr = alloca i32*, align 8
  %fftWinSizeptr.addr = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %b = alloca [256 x i8], align 16
  store i32* %ppidptr, i32** %ppidptr.addr, align 8
  store i32* %fftThresholdptr, i32** %fftThresholdptr.addr, align 8
  store i32* %fftWinSizeptr, i32** %fftWinSizeptr.addr, align 8
  %0 = load i32, i32* @calledByXced, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 255, %struct._IO_FILE* %2)
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %3 = load i32*, i32** %ppidptr.addr, align 8
  %4 = load i32*, i32** %fftThresholdptr.addr, align 8
  %5 = load i32*, i32** %fftWinSizeptr.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32* %3, i32* %4, i32* %5) #6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %6)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %7 = load i32*, i32** %ppidptr.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %fftThresholdptr.addr, align 8
  store i32 80, i32* %8, align 4
  %9 = load i32, i32* @dorp, align 4
  %cmp = icmp eq i32 %9, 100
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %10 = load i32*, i32** %fftWinSizeptr.addr, align 8
  store i32 100, i32* %10, align 4
  br label %if.end.9

if.else.8:                                        ; preds = %if.else
  %11 = load i32*, i32** %fftWinSizeptr.addr, align 8
  store i32 20, i32* %11, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @initSignalSM() #0 {
entry:
  %0 = load i32, i32* @ppid, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** @signalSM, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @initFiles() #0 {
entry:
  %pname = alloca [100 x i8], align 16
  %0 = load i32, i32* @ppid, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %pname, i32 0, i32 0
  %1 = load i32, i32* @ppid, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i32 %1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %pname, i32 0, i32 0
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay3 = getelementptr inbounds [100 x i8], [100 x i8]* %pname, i32 0, i32 0
  %call4 = call %struct._IO_FILE* @fopen(i8* %arraydecay3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** @prep_g, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @prep_g, align 8
  %tobool5 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  call void @ErrorExit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %call8 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** @trap_g, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @trap_g, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @trap_g, align 8
  %call12 = call i32 @getpid() #6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 %call12)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @trap_g, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @getpid() #2

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @WriteForFasta(%struct._IO_FILE* %fp, i32 %locnjob, [256 x i8]* %name, i32* %nlen, i8** %aseq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nalen = alloca [50000 x i32], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [50000 x i32], [50000 x i32]* %nalen, i32 0, i64 %idxprom1
  store i32 %conv, i32* %arrayidx2, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 %idxprom3
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx4, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay)
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [50000 x i32], [50000 x i32]* %nalen, i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp slt i32 %9, %11
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.6
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %13, i64 %idxprom12
  %14 = load i8*, i8** %arrayidx13, align 8
  %15 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %call14 = call i8* @strncpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteForFasta.b, i32 0, i32 0), i8* %add.ptr, i64 60) #6
  store i8 0, i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteForFasta.b, i32 0, i64 60), align 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @WriteForFasta.b, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %17 = load i32, i32* %j, align 4
  %add = add nsw i32 %17, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @readlocalhomtable2(%struct._IO_FILE* %fp, i32 %njob, %struct._LocalHom** %localhomtable) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %njob.addr = alloca i32, align 4
  %localhomtable.addr = alloca %struct._LocalHom**, align 8
  %opt = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %overlapaa = alloca i32, align 4
  %start1 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %tmpptr1 = alloca %struct._LocalHom*, align 8
  %tmpptr2 = alloca %struct._LocalHom*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %njob, i32* %njob.addr, align 4
  store %struct._LocalHom** %localhomtable, %struct._LocalHom*** %localhomtable.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readlocalhomtable2.buff, i32 0, i32 0), i32 255, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* null, %call
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readlocalhomtable2.buff, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0), i32* %i, i32* %j, i32* %overlapaa, double* %opt, i32* %start1, i32* %end1, i32* %start2, i32* %end2) #6
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %3 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %3, i64 %idxprom2
  %4 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %4, i64 %idxprom
  %nokori = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx3, i32 0, i32 0
  %5 = load i32, i32* %nokori, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nokori, align 4
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %8, i64 %idxprom6
  %9 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %9, i64 %idxprom5
  %last = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx8, i32 0, i32 2
  %10 = load %struct._LocalHom*, %struct._LocalHom** %last, align 8
  store %struct._LocalHom* %10, %struct._LocalHom** %tmpptr1, align 8
  %call9 = call noalias i8* @calloc(i64 1, i64 80) #6
  %11 = bitcast i8* %call9 to %struct._LocalHom*
  %12 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %12, i32 0, i32 1
  store %struct._LocalHom* %11, %struct._LocalHom** %next, align 8
  %13 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %next10 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %13, i32 0, i32 1
  %14 = load %struct._LocalHom*, %struct._LocalHom** %next10, align 8
  store %struct._LocalHom* %14, %struct._LocalHom** %tmpptr1, align 8
  %15 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %extended = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %15, i32 0, i32 9
  store i32 -1, i32* %extended, align 4
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %next11 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %16, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next11, align 8
  %17 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %20, i64 %idxprom13
  %21 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %21, i64 %idxprom12
  %last16 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx15, i32 0, i32 2
  store %struct._LocalHom* %17, %struct._LocalHom** %last16, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %23, i64 %idxprom17
  %24 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx18, align 8
  %25 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %24, i64 %idx.ext
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %tmpptr1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load i32, i32* %start1, align 4
  %27 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %start119 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i32 0, i32 3
  store i32 %26, i32* %start119, align 4
  %28 = load i32, i32* %start2, align 4
  %29 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %start220 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %29, i32 0, i32 5
  store i32 %28, i32* %start220, align 4
  %30 = load i32, i32* %end1, align 4
  %31 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %end121 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %31, i32 0, i32 4
  store i32 %30, i32* %end121, align 4
  %32 = load i32, i32* %end2, align 4
  %33 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %end222 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i32 0, i32 6
  store i32 %32, i32* %end222, align 4
  %34 = load double, double* %opt, align 8
  %add = fadd double %34, 0.000000e+00
  %div = fdiv double %add, 5.800000e+00
  %mul = fmul double %div, 6.000000e+02
  %35 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %opt23 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %35, i32 0, i32 7
  store double %mul, double* %opt23, align 8
  %36 = load i32, i32* %overlapaa, align 4
  %37 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %overlapaa24 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %37, i32 0, i32 8
  store i32 %36, i32* %overlapaa24, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %40, i64 %idxprom26
  %41 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %41, i64 %idxprom25
  %nokori29 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx28, i32 0, i32 0
  %42 = load i32, i32* %nokori29, align 4
  %inc30 = add nsw i32 %42, 1
  store i32 %inc30, i32* %nokori29, align 4
  %cmp31 = icmp sgt i32 %42, 0
  br i1 %cmp31, label %if.then.32, label %if.else.48

if.then.32:                                       ; preds = %if.end
  %43 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %45, i64 %idxprom34
  %46 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %46, i64 %idxprom33
  %last37 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx36, i32 0, i32 2
  %47 = load %struct._LocalHom*, %struct._LocalHom** %last37, align 8
  store %struct._LocalHom* %47, %struct._LocalHom** %tmpptr2, align 8
  %call38 = call noalias i8* @calloc(i64 1, i64 80) #6
  %48 = bitcast i8* %call38 to %struct._LocalHom*
  %49 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %next39 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %49, i32 0, i32 1
  store %struct._LocalHom* %48, %struct._LocalHom** %next39, align 8
  %50 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %next40 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %50, i32 0, i32 1
  %51 = load %struct._LocalHom*, %struct._LocalHom** %next40, align 8
  store %struct._LocalHom* %51, %struct._LocalHom** %tmpptr2, align 8
  %52 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %extended41 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %52, i32 0, i32 9
  store i32 -1, i32* %extended41, align 4
  %53 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %next42 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %53, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next42, align 8
  %54 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %56 to i64
  %57 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %57, i64 %idxprom44
  %58 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %58, i64 %idxprom43
  %last47 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx46, i32 0, i32 2
  store %struct._LocalHom* %54, %struct._LocalHom** %last47, align 8
  br label %if.end.53

if.else.48:                                       ; preds = %if.end
  %59 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %59 to i64
  %60 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %60, i64 %idxprom49
  %61 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx50, align 8
  %62 = load i32, i32* %i, align 4
  %idx.ext51 = sext i32 %62 to i64
  %add.ptr52 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %61, i64 %idx.ext51
  store %struct._LocalHom* %add.ptr52, %struct._LocalHom** %tmpptr2, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.32
  %63 = load i32, i32* %start1, align 4
  %64 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %start254 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %64, i32 0, i32 5
  store i32 %63, i32* %start254, align 4
  %65 = load i32, i32* %start2, align 4
  %66 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %start155 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %66, i32 0, i32 3
  store i32 %65, i32* %start155, align 4
  %67 = load i32, i32* %end1, align 4
  %68 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %end256 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %68, i32 0, i32 6
  store i32 %67, i32* %end256, align 4
  %69 = load i32, i32* %end2, align 4
  %70 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %end157 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %70, i32 0, i32 4
  store i32 %69, i32* %end157, align 4
  %71 = load double, double* %opt, align 8
  %add58 = fadd double %71, 0.000000e+00
  %div59 = fdiv double %add58, 5.800000e+00
  %mul60 = fmul double %div59, 6.000000e+02
  %72 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %opt61 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %72, i32 0, i32 7
  store double %mul60, double* %opt61, align 8
  %73 = load i32, i32* %overlapaa, align 4
  %74 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %overlapaa62 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %74, i32 0, i32 8
  store i32 %73, i32* %overlapaa62, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @readlocalhomtable(%struct._IO_FILE* %fp, i32 %njob, %struct._LocalHom** %localhomtable) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %njob.addr = alloca i32, align 4
  %localhomtable.addr = alloca %struct._LocalHom**, align 8
  %opt = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %overlapaa = alloca i32, align 4
  %start1 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %nlocalhom = alloca i32**, align 8
  %tmpptr1 = alloca %struct._LocalHom*, align 8
  %tmpptr2 = alloca %struct._LocalHom*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %njob, i32* %njob.addr, align 4
  store %struct._LocalHom** %localhomtable, %struct._LocalHom*** %localhomtable.addr, align 8
  store i32** null, i32*** %nlocalhom, align 8
  store %struct._LocalHom* null, %struct._LocalHom** %tmpptr1, align 8
  store %struct._LocalHom* null, %struct._LocalHom** %tmpptr2, align 8
  %0 = load i32, i32* %njob.addr, align 4
  %1 = load i32, i32* %njob.addr, align 4
  %call = call i32** @AllocateIntMtx(i32 %0, i32 %1)
  store i32** %call, i32*** %nlocalhom, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %njob.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %njob.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32**, i32*** %nlocalhom, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom4
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %for.end.8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i8* @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readlocalhomtable.buff, i32 0, i32 0), i32 255, %struct._IO_FILE* %12)
  %cmp10 = icmp ne i8* null, %call9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readlocalhomtable.buff, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0), i32* %i, i32* %j, i32* %overlapaa, double* %opt, i32* %start1, i32* %end1, i32* %start2, i32* %end2) #6
  %13 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load i32**, i32*** %nlocalhom, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %15, i64 %idxprom13
  %16 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  %17 = load i32, i32* %arrayidx15, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %arrayidx15, align 4
  %cmp17 = icmp sgt i32 %17, 0
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call18 = call noalias i8* @calloc(i64 1, i64 80) #6
  %18 = bitcast i8* %call18 to %struct._LocalHom*
  %19 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %19, i32 0, i32 1
  store %struct._LocalHom* %18, %struct._LocalHom** %next, align 8
  %20 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %next19 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %20, i32 0, i32 1
  %21 = load %struct._LocalHom*, %struct._LocalHom** %next19, align 8
  store %struct._LocalHom* %21, %struct._LocalHom** %tmpptr1, align 8
  %22 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %next20 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %22, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next20, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %24, i64 %idxprom21
  %25 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx22, align 8
  %26 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i64 %idx.ext
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %tmpptr1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load i32, i32* %start1, align 4
  %28 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %start123 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %28, i32 0, i32 3
  store i32 %27, i32* %start123, align 4
  %29 = load i32, i32* %start2, align 4
  %30 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %start224 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %30, i32 0, i32 5
  store i32 %29, i32* %start224, align 4
  %31 = load i32, i32* %end1, align 4
  %32 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %end125 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %32, i32 0, i32 4
  store i32 %31, i32* %end125, align 4
  %33 = load i32, i32* %end2, align 4
  %34 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %end226 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %34, i32 0, i32 6
  store i32 %33, i32* %end226, align 4
  %35 = load double, double* %opt, align 8
  %add = fadd double %35, 0.000000e+00
  %div = fdiv double %add, 5.800000e+00
  %mul = fmul double %div, 6.000000e+02
  %36 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %opt27 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %36, i32 0, i32 7
  store double %mul, double* %opt27, align 8
  %37 = load i32, i32* %overlapaa, align 4
  %38 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr1, align 8
  %overlapaa28 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %38, i32 0, i32 8
  store i32 %37, i32* %overlapaa28, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load i32**, i32*** %nlocalhom, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %41, i64 %idxprom30
  %42 = load i32*, i32** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %42, i64 %idxprom29
  %43 = load i32, i32* %arrayidx32, align 4
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %arrayidx32, align 4
  %cmp34 = icmp sgt i32 %43, 0
  br i1 %cmp34, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.end
  %call36 = call noalias i8* @calloc(i64 1, i64 80) #6
  %44 = bitcast i8* %call36 to %struct._LocalHom*
  %45 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %next37 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %45, i32 0, i32 1
  store %struct._LocalHom* %44, %struct._LocalHom** %next37, align 8
  %46 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %next38 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %46, i32 0, i32 1
  %47 = load %struct._LocalHom*, %struct._LocalHom** %next38, align 8
  store %struct._LocalHom* %47, %struct._LocalHom** %tmpptr2, align 8
  %48 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %next39 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %48, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next39, align 8
  br label %if.end.45

if.else.40:                                       ; preds = %if.end
  %49 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %50, i64 %idxprom41
  %51 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx42, align 8
  %52 = load i32, i32* %i, align 4
  %idx.ext43 = sext i32 %52 to i64
  %add.ptr44 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %51, i64 %idx.ext43
  store %struct._LocalHom* %add.ptr44, %struct._LocalHom** %tmpptr2, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.40, %if.then.35
  %53 = load i32, i32* %start1, align 4
  %54 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %start246 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %54, i32 0, i32 5
  store i32 %53, i32* %start246, align 4
  %55 = load i32, i32* %start2, align 4
  %56 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %start147 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %56, i32 0, i32 3
  store i32 %55, i32* %start147, align 4
  %57 = load i32, i32* %end1, align 4
  %58 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %end248 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %58, i32 0, i32 6
  store i32 %57, i32* %end248, align 4
  %59 = load i32, i32* %end2, align 4
  %60 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %end149 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %60, i32 0, i32 4
  store i32 %59, i32* %end149, align 4
  %61 = load double, double* %opt, align 8
  %add50 = fadd double %61, 0.000000e+00
  %div51 = fdiv double %add50, 5.800000e+00
  %mul52 = fmul double %div51, 6.000000e+02
  %62 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %opt53 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %62, i32 0, i32 7
  store double %mul52, double* %opt53, align 8
  %63 = load i32, i32* %overlapaa, align 4
  %64 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr2, align 8
  %overlapaa54 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %64, i32 0, i32 8
  store i32 %63, i32* %overlapaa54, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load i32**, i32*** %nlocalhom, align 8
  call void @FreeIntMtx(i32** %65)
  ret void
}

declare i32** @AllocateIntMtx(i32, i32) #1

declare void @FreeIntMtx(i32**) #1

; Function Attrs: nounwind uwtable
define void @outlocalhom(%struct._LocalHom** %localhom, i32 %nseq) #0 {
entry:
  %localhom.addr = alloca %struct._LocalHom**, align 8
  %nseq.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmpptr = alloca %struct._LocalHom*, align 8
  store %struct._LocalHom** %localhom, %struct._LocalHom*** %localhom.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %5, i64 %idxprom
  %6 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %6, i64 %idx.ext
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %tmpptr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %9, i32 %10)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %12, i32 0, i32 3
  %13 = load i32, i32* %start1, align 4
  %14 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %14, i32 0, i32 4
  %15 = load i32, i32* %end1, align 4
  %16 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %16, i32 0, i32 5
  %17 = load i32, i32* %start2, align 4
  %18 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %18, i32 0, i32 6
  %19 = load i32, i32* %end2, align 4
  %20 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %importance = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %20, i32 0, i32 10
  %21 = load double, double* %importance, align 8
  %22 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %22, i32 0, i32 7
  %23 = load double, double* %opt, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.77, i32 0, i32 0), i32 %13, i32 %15, i32 %17, i32 %19, double %21, double %23)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %24, i32 0, i32 1
  %25 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  store %struct._LocalHom* %25, %struct._LocalHom** %tmpptr, align 8
  %tobool = icmp ne %struct._LocalHom* %25, null
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %27, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @outlocalhompt(%struct._LocalHom*** %localhom, i32 %n1, i32 %n2) #0 {
entry:
  %localhom.addr = alloca %struct._LocalHom***, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmpptr = alloca %struct._LocalHom*, align 8
  store %struct._LocalHom*** %localhom, %struct._LocalHom**** %localhom.addr, align 8
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n2.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %6, i64 %idxprom4
  %7 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %7, i64 %idxprom
  %8 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx5, align 8
  store %struct._LocalHom* %8, %struct._LocalHom** %tmpptr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %10, i32 %11)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %13, i32 0, i32 3
  %14 = load i32, i32* %start1, align 4
  %15 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %15, i32 0, i32 4
  %16 = load i32, i32* %end1, align 4
  %17 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i32 0, i32 5
  %18 = load i32, i32* %start2, align 4
  %19 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %19, i32 0, i32 6
  %20 = load i32, i32* %end2, align 4
  %21 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %importance = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %21, i32 0, i32 10
  %22 = load double, double* %importance, align 8
  %23 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %23, i32 0, i32 7
  %24 = load double, double* %opt, align 8
  %25 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %wimportance = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i32 0, i32 12
  %26 = load double, double* %wimportance, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.78, i32 0, i32 0), i32 %14, i32 %16, i32 %18, i32 %20, double %22, double %24, double %26)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i32 0, i32 1
  %28 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  store %struct._LocalHom* %28, %struct._LocalHom** %tmpptr, align 8
  %tobool = icmp ne %struct._LocalHom* %28, null
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %30, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreeLocalHomTable(%struct._LocalHom** %localhomtable, i32 %n) #0 {
entry:
  %localhomtable.addr = alloca %struct._LocalHom**, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ppp = alloca %struct._LocalHom*, align 8
  %tmpptr = alloca %struct._LocalHom*, align 8
  store %struct._LocalHom** %localhomtable, %struct._LocalHom*** %localhomtable.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.12, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %6, i64 %idxprom
  %7 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx, align 8
  %8 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %7, i64 %idx.ext
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %tmpptr, align 8
  %9 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %9, i32 0, i32 1
  %10 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  store %struct._LocalHom* %10, %struct._LocalHom** %ppp, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %11 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %tobool = icmp ne %struct._LocalHom* %11, null
  br i1 %tobool, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %12 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next6 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %12, i32 0, i32 1
  %13 = load %struct._LocalHom*, %struct._LocalHom** %next6, align 8
  store %struct._LocalHom* %13, %struct._LocalHom** %ppp, align 8
  %14 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %16, i64 %idxprom7
  %17 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx8, align 8
  %18 = load i32, i32* %j, align 4
  %idx.ext9 = sext i32 %18 to i64
  %add.ptr10 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i64 %idx.ext9
  %cmp11 = icmp ne %struct._LocalHom* %14, %add.ptr10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %19 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %20 = bitcast %struct._LocalHom* %19 to i8*
  call void @free(i8* %20) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct._LocalHom*, %struct._LocalHom** %ppp, align 8
  store %struct._LocalHom* %21, %struct._LocalHom** %tmpptr, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %24, i64 %idxprom14
  %25 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx15, align 8
  %26 = bitcast %struct._LocalHom* %25 to i8*
  call void @free(i8* %26) #6
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.13
  %27 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %27, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %28 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable.addr, align 8
  %29 = bitcast %struct._LocalHom** %28 to i8*
  call void @free(i8* %29) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @progName(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %value = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #8
  store i8* %call, i8** %value, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %value, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %add.ptr, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  store i8* %2, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define void @clustalout_pointer(%struct._IO_FILE* %fp, i32 %nseq, i32 %maxlen, i8** %seq, i8** %name, i8* %mark, i8* %comment, i32* %order) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nseq.addr = alloca i32, align 4
  %maxlen.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %name.addr = alloca i8**, align 8
  %mark.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %order.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %maxlen, i32* %maxlen.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i8* %mark, i8** %mark.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  store i32* %order, i32** %order.addr, align 8
  store i32 0, i32* %pos, align 4
  %0 = load i8*, i8** %comment.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %comment.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.82, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.end
  %4 = load i32, i32* %pos, align 4
  %5 = load i32, i32* %maxlen.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %nseq.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %order.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i8**, i8*** %name.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 %idxprom5
  %14 = load i8*, i8** %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  %call7 = call i8* @extractfirstword(i8* %add.ptr)
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* %call7)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i32*, i32** %order.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i8**, i8*** %seq.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %19, i64 %idxprom11
  %20 = load i8*, i8** %arrayidx12, align 8
  %21 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* %add.ptr13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %mark.addr, align 8
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %26 = load i8*, i8** %mark.addr, align 8
  %27 = load i32, i32* %pos, align 4
  %idx.ext17 = sext i32 %27 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %26, i64 %idx.ext17
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* %add.ptr18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %for.end
  %28 = load i32, i32* %pos, align 4
  %add = add nsw i32 %28, 60
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @extractfirstword(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %val = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %val, align 8
  %1 = load i8*, i8** %str.addr, align 8
  call void @tabtospace(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %val, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %val, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %val, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr3, i8** %str.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %while.body
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv4 = sext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %12 = load i8*, i8** %str.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %str.addr, align 8
  br label %if.end.14

if.else.9:                                        ; preds = %if.else
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 32
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.9
  %15 = load i8*, i8** %str.addr, align 8
  store i8 0, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %val, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define void @writeData_reorder_pointer(%struct._IO_FILE* %fp, i32 %locnjob, i8** %name, i32* %nlen, i8** %aseq, i32* %order) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %order.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32* %order, i32** %order.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %order.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %k, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %7) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nalen, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i8**, i8*** %name.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %add.ptr)
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nalen, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %16, i64 %idxprom10
  %17 = load i8*, i8** %arrayidx11, align 8
  %18 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %19 = load i32, i32* %j, align 4
  %add = add nsw i32 %19, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeData_reorder(%struct._IO_FILE* %fp, i32 %locnjob, [256 x i8]* %name, i32* %nlen, i8** %aseq, i32* %order) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %order.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32* %order, i32** %order.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %order.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %k, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %7) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nalen, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 %idxprom3
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx4, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %add.ptr)
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %nalen, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 %idxprom10
  %16 = load i8*, i8** %arrayidx11, align 8
  %17 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %18 = load i32, i32* %j, align 4
  %add = add nsw i32 %18, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double* @loadaamtx() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %val = alloca double*, align 8
  %raw = alloca double**, align 8
  %map = alloca i32*, align 8
  %aaorder = alloca i8*, align 8
  %inorder = alloca i8*, align 8
  %line = alloca i8*, align 8
  %ptr1 = alloca i8*, align 8
  %ptr2 = alloca i8*, align 8
  %mtxfname = alloca i8*, align 8
  %mf = alloca %struct._IO_FILE*, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8** %aaorder, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8** %mtxfname, align 8
  %call = call double** @AllocateDoubleMtx(i32 21, i32 20)
  store double** %call, double*** %raw, align 8
  %call1 = call double* @AllocateDoubleVec(i32 420)
  store double* %call1, double** %val, align 8
  %call2 = call i32* @AllocateIntVec(i32 20)
  store i32* %call2, i32** %map, align 8
  %0 = load i32, i32* @dorp, align 4
  %cmp = icmp ne i32 %0, 112
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.88, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %mtxfname, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %mf, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.89, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.8:                                         ; preds = %if.end
  %call9 = call noalias i8* @calloc(i64 1000, i64 1) #6
  store i8* %call9, i8** %inorder, align 8
  %call10 = call noalias i8* @calloc(i64 1000, i64 1) #6
  store i8* %call10, i8** %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end.8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call11 = call i32 @feof(%struct._IO_FILE* %5) #6
  %tobool = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %inorder, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call12 = call i8* @fgets(i8* %6, i32 999, %struct._IO_FILE* %7)
  %8 = load i8*, i8** %inorder, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp13 = icmp ne i32 %conv, 35
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body
  br label %while.end

if.end.16:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %while.cond
  %10 = load i8*, i8** %inorder, align 8
  store i8* %10, i8** %ptr2, align 8
  store i8* %10, i8** %ptr1, align 8
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.29, %while.end
  %11 = load i8*, i8** %ptr2, align 8
  %12 = load i8, i8* %11, align 1
  %tobool18 = icmp ne i8 %12, 0
  br i1 %tobool18, label %while.body.19, label %while.end.31

while.body.19:                                    ; preds = %while.cond.17
  %13 = load i8*, i8** %ptr2, align 8
  %14 = load i8, i8* %13, align 1
  %conv20 = sext i8 %14 to i32
  %idxprom = sext i32 %conv20 to i64
  %call21 = call i16** @__ctype_b_loc() #9
  %15 = load i16*, i16** %call21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %16 to i32
  %and = and i32 %conv23, 1024
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %while.body.19
  %17 = load i8*, i8** %ptr2, align 8
  %18 = load i8, i8* %17, align 1
  %conv26 = sext i8 %18 to i32
  %call27 = call i32 @toupper(i32 %conv26) #6
  %conv28 = trunc i32 %call27 to i8
  %19 = load i8*, i8** %ptr1, align 8
  store i8 %conv28, i8* %19, align 1
  %20 = load i8*, i8** %ptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %ptr1, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %while.body.19
  %21 = load i8*, i8** %ptr2, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr30, i8** %ptr2, align 8
  br label %while.cond.17

while.end.31:                                     ; preds = %while.cond.17
  %22 = load i8*, i8** %inorder, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %22, i64 20
  store i8 0, i8* %arrayidx32, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.31
  %23 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %23, 20
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %inorder, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load i8*, i8** %aaorder, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 %idxprom35
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %27 to i32
  %call38 = call i8* @strchr(i8* %24, i32 %conv37) #8
  store i8* %call38, i8** %ptr2, align 8
  %28 = load i8*, i8** %ptr2, align 8
  %cmp39 = icmp eq i8* %28, null
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %for.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %30 to i64
  %31 = load i8*, i8** %aaorder, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %31, i64 %idxprom42
  %32 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %32 to i32
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i32 0, i32 0), i32 %conv44)
  call void @showaamtxexample()
  br label %if.end.49

if.else:                                          ; preds = %for.body
  %33 = load i8*, i8** %ptr2, align 8
  %34 = load i8*, i8** %inorder, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv46 = trunc i64 %sub.ptr.sub to i32
  %35 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %35 to i64
  %36 = load i32*, i32** %map, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %36, i64 %idxprom47
  store i32 %conv46, i32* %arrayidx48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.41
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.103, %if.then.60, %for.end
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call51 = call i32 @feof(%struct._IO_FILE* %38) #6
  %tobool52 = icmp ne i32 %call51, 0
  %lnot53 = xor i1 %tobool52, true
  br i1 %lnot53, label %while.body.54, label %while.end.104

while.body.54:                                    ; preds = %while.cond.50
  %39 = load i8*, i8** %line, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call55 = call i8* @fgets(i8* %39, i32 999, %struct._IO_FILE* %40)
  %41 = load i8*, i8** %line, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %42 to i32
  %cmp58 = icmp eq i32 %conv57, 35
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %while.body.54
  br label %while.cond.50

if.end.61:                                        ; preds = %while.body.54
  %43 = load i8*, i8** %line, align 8
  store i8* %43, i8** %ptr1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.96, %if.end.61
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %i, align 4
  %cmp63 = icmp sle i32 %44, %45
  br i1 %cmp63, label %for.body.65, label %for.end.98

for.body.65:                                      ; preds = %for.cond.62
  br label %while.cond.66

while.cond.66:                                    ; preds = %while.body.80, %for.body.65
  %46 = load i8*, i8** %ptr1, align 8
  %47 = load i8, i8* %46, align 1
  %conv67 = sext i8 %47 to i32
  %idxprom68 = sext i32 %conv67 to i64
  %call69 = call i16** @__ctype_b_loc() #9
  %48 = load i16*, i16** %call69, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %48, i64 %idxprom68
  %49 = load i16, i16* %arrayidx70, align 2
  %conv71 = zext i16 %49 to i32
  %and72 = and i32 %conv71, 2048
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond.66
  %50 = load i8*, i8** %ptr1, align 8
  %51 = load i8, i8* %50, align 1
  %conv74 = sext i8 %51 to i32
  %cmp75 = icmp ne i32 %conv74, 45
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %52 = load i8*, i8** %ptr1, align 8
  %53 = load i8, i8* %52, align 1
  %conv77 = sext i8 %53 to i32
  %cmp78 = icmp ne i32 %conv77, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.66
  %54 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.66 ], [ %cmp78, %land.rhs ]
  br i1 %54, label %while.body.80, label %while.end.82

while.body.80:                                    ; preds = %land.end
  %55 = load i8*, i8** %ptr1, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr81, i8** %ptr1, align 8
  br label %while.cond.66

while.end.82:                                     ; preds = %land.end
  %56 = load i8*, i8** %ptr1, align 8
  %call83 = call double @atof(i8* %56) #8
  %57 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %58 to i64
  %59 = load double**, double*** %raw, align 8
  %arrayidx86 = getelementptr inbounds double*, double** %59, i64 %idxprom85
  %60 = load double*, double** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds double, double* %60, i64 %idxprom84
  store double %call83, double* %arrayidx87, align 8
  %61 = load i8*, i8** %ptr1, align 8
  %call88 = call i8* @strchr(i8* %61, i32 32) #8
  store i8* %call88, i8** %ptr1, align 8
  %62 = load i8*, i8** %ptr1, align 8
  %cmp89 = icmp eq i8* %62, null
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.95

land.lhs.true.91:                                 ; preds = %while.end.82
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %i, align 4
  %cmp92 = icmp slt i32 %63, %64
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %land.lhs.true.91
  call void @showaamtxexample()
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %land.lhs.true.91, %while.end.82
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %65 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %65, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond.62

for.end.98:                                       ; preds = %for.cond.62
  %66 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %66, 1
  store i32 %inc99, i32* %i, align 4
  %67 = load i32, i32* %i, align 4
  %cmp100 = icmp sgt i32 %67, 19
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.end.98
  br label %while.end.104

if.end.103:                                       ; preds = %for.end.98
  br label %while.cond.50

while.end.104:                                    ; preds = %if.then.102, %while.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.112, %while.end.104
  %68 = load i32, i32* %i, align 4
  %cmp106 = icmp slt i32 %68, 20
  br i1 %cmp106, label %for.body.108, label %for.end.114

for.body.108:                                     ; preds = %for.cond.105
  %69 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %69 to i64
  %70 = load double**, double*** %raw, align 8
  %arrayidx110 = getelementptr inbounds double*, double** %70, i64 20
  %71 = load double*, double** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds double, double* %71, i64 %idxprom109
  store double -1.000000e+00, double* %arrayidx111, align 8
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.108
  %72 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %72, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.105

for.end.114:                                      ; preds = %for.cond.105
  br label %while.cond.115

while.cond.115:                                   ; preds = %if.end.165, %for.end.114
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call116 = call i32 @feof(%struct._IO_FILE* %73) #6
  %tobool117 = icmp ne i32 %call116, 0
  %lnot118 = xor i1 %tobool117, true
  br i1 %lnot118, label %while.body.119, label %while.end.166

while.body.119:                                   ; preds = %while.cond.115
  %74 = load i8*, i8** %line, align 8
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call120 = call i8* @fgets(i8* %74, i32 999, %struct._IO_FILE* %75)
  %76 = load i8*, i8** %line, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %77 to i32
  %cmp123 = icmp eq i32 %conv122, 102
  br i1 %cmp123, label %if.then.125, label %if.end.165

if.then.125:                                      ; preds = %while.body.119
  %78 = load i8*, i8** %line, align 8
  store i8* %78, i8** %ptr1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.162, %if.then.125
  %79 = load i32, i32* %j, align 4
  %cmp127 = icmp slt i32 %79, 20
  br i1 %cmp127, label %for.body.129, label %for.end.164

for.body.129:                                     ; preds = %for.cond.126
  br label %while.cond.130

while.cond.130:                                   ; preds = %while.body.147, %for.body.129
  %80 = load i8*, i8** %ptr1, align 8
  %81 = load i8, i8* %80, align 1
  %conv131 = sext i8 %81 to i32
  %idxprom132 = sext i32 %conv131 to i64
  %call133 = call i16** @__ctype_b_loc() #9
  %82 = load i16*, i16** %call133, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %82, i64 %idxprom132
  %83 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %83 to i32
  %and136 = and i32 %conv135, 2048
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %land.end.146, label %land.lhs.true.138

land.lhs.true.138:                                ; preds = %while.cond.130
  %84 = load i8*, i8** %ptr1, align 8
  %85 = load i8, i8* %84, align 1
  %conv139 = sext i8 %85 to i32
  %cmp140 = icmp ne i32 %conv139, 45
  br i1 %cmp140, label %land.rhs.142, label %land.end.146

land.rhs.142:                                     ; preds = %land.lhs.true.138
  %86 = load i8*, i8** %ptr1, align 8
  %87 = load i8, i8* %86, align 1
  %conv143 = sext i8 %87 to i32
  %cmp144 = icmp ne i32 %conv143, 46
  br label %land.end.146

land.end.146:                                     ; preds = %land.rhs.142, %land.lhs.true.138, %while.cond.130
  %88 = phi i1 [ false, %land.lhs.true.138 ], [ false, %while.cond.130 ], [ %cmp144, %land.rhs.142 ]
  br i1 %88, label %while.body.147, label %while.end.149

while.body.147:                                   ; preds = %land.end.146
  %89 = load i8*, i8** %ptr1, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr148, i8** %ptr1, align 8
  br label %while.cond.130

while.end.149:                                    ; preds = %land.end.146
  %90 = load i8*, i8** %ptr1, align 8
  %call150 = call double @atof(i8* %90) #8
  %91 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %91 to i64
  %92 = load double**, double*** %raw, align 8
  %arrayidx152 = getelementptr inbounds double*, double** %92, i64 20
  %93 = load double*, double** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds double, double* %93, i64 %idxprom151
  store double %call150, double* %arrayidx153, align 8
  %94 = load i8*, i8** %ptr1, align 8
  %call154 = call i8* @strchr(i8* %94, i32 32) #8
  store i8* %call154, i8** %ptr1, align 8
  %95 = load i8*, i8** %ptr1, align 8
  %cmp155 = icmp eq i8* %95, null
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.161

land.lhs.true.157:                                ; preds = %while.end.149
  %96 = load i32, i32* %j, align 4
  %cmp158 = icmp slt i32 %96, 19
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.157
  call void @showaamtxexample()
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %land.lhs.true.157, %while.end.149
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161
  %97 = load i32, i32* %j, align 4
  %inc163 = add nsw i32 %97, 1
  store i32 %inc163, i32* %j, align 4
  br label %for.cond.126

for.end.164:                                      ; preds = %for.cond.126
  br label %while.end.166

if.end.165:                                       ; preds = %while.body.119
  br label %while.cond.115

while.end.166:                                    ; preds = %for.end.164, %while.cond.115
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.216, %while.end.166
  %98 = load i32, i32* %i, align 4
  %cmp168 = icmp slt i32 %98, 20
  br i1 %cmp168, label %for.body.170, label %for.end.218

for.body.170:                                     ; preds = %for.cond.167
  store i32 0, i32* %j, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.213, %for.body.170
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* %i, align 4
  %cmp172 = icmp sle i32 %99, %100
  br i1 %cmp172, label %for.body.174, label %for.end.215

for.body.174:                                     ; preds = %for.cond.171
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %j, align 4
  %cmp175 = icmp ne i32 %101, %102
  br i1 %cmp175, label %if.then.177, label %if.else.202

if.then.177:                                      ; preds = %for.body.174
  %103 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %103 to i64
  %104 = load i32*, i32** %map, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %104, i64 %idxprom178
  %105 = load i32, i32* %arrayidx179, align 4
  %106 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %106 to i64
  %107 = load i32*, i32** %map, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %107, i64 %idxprom180
  %108 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp sgt i32 %105, %108
  br i1 %cmp182, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.177
  %109 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %109 to i64
  %110 = load i32*, i32** %map, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %110, i64 %idxprom184
  %111 = load i32, i32* %arrayidx185, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.177
  %112 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %112 to i64
  %113 = load i32*, i32** %map, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %113, i64 %idxprom186
  %114 = load i32, i32* %arrayidx187, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %111, %cond.true ], [ %114, %cond.false ]
  store i32 %cond, i32* %ii, align 4
  %115 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %115 to i64
  %116 = load i32*, i32** %map, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %116, i64 %idxprom188
  %117 = load i32, i32* %arrayidx189, align 4
  %118 = load i32, i32* %j, align 4
  %idxprom190 = sext i32 %118 to i64
  %119 = load i32*, i32** %map, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %119, i64 %idxprom190
  %120 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp slt i32 %117, %120
  br i1 %cmp192, label %cond.true.194, label %cond.false.197

cond.true.194:                                    ; preds = %cond.end
  %121 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %121 to i64
  %122 = load i32*, i32** %map, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %122, i64 %idxprom195
  %123 = load i32, i32* %arrayidx196, align 4
  br label %cond.end.200

cond.false.197:                                   ; preds = %cond.end
  %124 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %124 to i64
  %125 = load i32*, i32** %map, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %125, i64 %idxprom198
  %126 = load i32, i32* %arrayidx199, align 4
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.197, %cond.true.194
  %cond201 = phi i32 [ %123, %cond.true.194 ], [ %126, %cond.false.197 ]
  store i32 %cond201, i32* %jj, align 4
  br label %if.end.205

if.else.202:                                      ; preds = %for.body.174
  %127 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %127 to i64
  %128 = load i32*, i32** %map, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %128, i64 %idxprom203
  %129 = load i32, i32* %arrayidx204, align 4
  store i32 %129, i32* %jj, align 4
  store i32 %129, i32* %ii, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.202, %cond.end.200
  %130 = load i32, i32* %jj, align 4
  %idxprom206 = sext i32 %130 to i64
  %131 = load i32, i32* %ii, align 4
  %idxprom207 = sext i32 %131 to i64
  %132 = load double**, double*** %raw, align 8
  %arrayidx208 = getelementptr inbounds double*, double** %132, i64 %idxprom207
  %133 = load double*, double** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds double, double* %133, i64 %idxprom206
  %134 = load double, double* %arrayidx209, align 8
  %135 = load i32, i32* %k, align 4
  %inc210 = add nsw i32 %135, 1
  store i32 %inc210, i32* %k, align 4
  %idxprom211 = sext i32 %135 to i64
  %136 = load double*, double** %val, align 8
  %arrayidx212 = getelementptr inbounds double, double* %136, i64 %idxprom211
  store double %134, double* %arrayidx212, align 8
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.205
  %137 = load i32, i32* %j, align 4
  %inc214 = add nsw i32 %137, 1
  store i32 %inc214, i32* %j, align 4
  br label %for.cond.171

for.end.215:                                      ; preds = %for.cond.171
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %138 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %138, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.167

for.end.218:                                      ; preds = %for.cond.167
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.230, %for.end.218
  %139 = load i32, i32* %i, align 4
  %cmp220 = icmp slt i32 %139, 20
  br i1 %cmp220, label %for.body.222, label %for.end.232

for.body.222:                                     ; preds = %for.cond.219
  %140 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %140 to i64
  %141 = load i32*, i32** %map, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %141, i64 %idxprom223
  %142 = load i32, i32* %arrayidx224, align 4
  %idxprom225 = sext i32 %142 to i64
  %143 = load double**, double*** %raw, align 8
  %arrayidx226 = getelementptr inbounds double*, double** %143, i64 20
  %144 = load double*, double** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds double, double* %144, i64 %idxprom225
  %145 = load double, double* %arrayidx227, align 8
  %146 = load i32, i32* %i, align 4
  %add = add nsw i32 400, %146
  %idxprom228 = sext i32 %add to i64
  %147 = load double*, double** %val, align 8
  %arrayidx229 = getelementptr inbounds double, double* %147, i64 %idxprom228
  store double %145, double* %arrayidx229, align 8
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.body.222
  %148 = load i32, i32* %i, align 4
  %inc231 = add nsw i32 %148, 1
  store i32 %inc231, i32* %i, align 4
  br label %for.cond.219

for.end.232:                                      ; preds = %for.cond.219
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = load i8*, i8** %inorder, align 8
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i8* %150)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %mf, align 8
  %call234 = call i32 @fclose(%struct._IO_FILE* %151)
  %152 = load i8*, i8** %inorder, align 8
  call void @free(i8* %152) #6
  %153 = load i8*, i8** %line, align 8
  call void @free(i8* %153) #6
  %154 = load double**, double*** %raw, align 8
  call void @FreeDoubleMtx(double** %154)
  %155 = load i32*, i32** %map, align 8
  %156 = bitcast i32* %155 to i8*
  call void @free(i8* %156) #6
  %157 = load double*, double** %val, align 8
  ret double* %157
}

declare double** @AllocateDoubleMtx(i32, i32) #1

declare double* @AllocateDoubleVec(i32) #1

declare void @FreeDoubleMtx(double**) #1

; Function Attrs: nounwind uwtable
define void @miyataout_reorder_pointer(%struct._IO_FILE* %fp, i32 %locnjob, i32 %nlenmax, i8** %name, i32* %nlen, i8** %aseq, i32* %order) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %locnjob.addr = alloca i32, align 4
  %nlenmax.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %nlen.addr = alloca i32*, align 8
  %aseq.addr = alloca i8**, align 8
  %order.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nalen = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i32 %nlenmax, i32* %nlenmax.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32* %order, i32** %order.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32, i32* %nlenmax.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i32 1, i32 %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %locnjob.addr, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %locnjob.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %order.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  store i32 %11, i32* %k, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 %idxprom5
  %14 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %14) #8
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %nalen, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i8**, i8*** %name.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %17, i64 %idxprom8
  %18 = load i8*, i8** %arrayidx9, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i32, i32* %nalen, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* %add.ptr, i32 %19)
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %nalen, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %23 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %24, i64 %idxprom15
  %25 = load i8*, i8** %arrayidx16, align 8
  %26 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 60, i8* %add.ptr17)
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %27 = load i32, i32* %j, align 4
  %add = add nsw i32 %27, 60
  store i32 %add, i32* %j, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @readmccaskill(%struct._IO_FILE* %fp, %struct._RNApair** %pairprob, i32 %length) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %pairprob.addr = alloca %struct._RNApair**, align 8
  %length.addr = alloca i32, align 4
  %gett = alloca [1000 x i8], align 16
  %pairnum = alloca i32*, align 8
  %i = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %prob = alloca float, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._RNApair** %pairprob, %struct._RNApair*** %pairprob.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %pairnum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %pairnum, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call2, i32* %c, align 4
  %8 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %8, 62
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %for.end
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay, i32 999, %struct._IO_FILE* %10)
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.30, %if.end.116
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @feof(%struct._IO_FILE* %11) #6
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.end

if.end.9:                                         ; preds = %while.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %call10, i32* %c, align 4
  %13 = load i32, i32* %c, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @ungetc(i32 %13, %struct._IO_FILE* %14)
  %15 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %15, 62
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  br label %while.end

if.end.15:                                        ; preds = %if.end.9
  %arraydecay16 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i8* @fgets(i8* %arraydecay16, i32 999, %struct._IO_FILE* %16)
  %arraydecay18 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i32* %left, i32* %right, float* %prob) #6
  %17 = load i32, i32* %left, align 4
  %18 = load i32, i32* %length.addr, align 4
  %cmp20 = icmp sge i32 %17, %18
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %19 = load i32, i32* %right, align 4
  %20 = load i32, i32* %length.addr, align 4
  %cmp22 = icmp sge i32 %19, %20
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.26:                                        ; preds = %lor.lhs.false
  %22 = load float, float* %prob, align 4
  %conv27 = fpext float %22 to double
  %cmp28 = fcmp olt double %conv27, 1.000000e-02
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  br label %while.body

if.end.31:                                        ; preds = %if.end.26
  %23 = load i32, i32* %left, align 4
  %24 = load i32, i32* %right, align 4
  %cmp32 = icmp ne i32 %23, %24
  br i1 %cmp32, label %land.lhs.true, label %if.end.116

land.lhs.true:                                    ; preds = %if.end.31
  %25 = load float, float* %prob, align 4
  %conv34 = fpext float %25 to double
  %cmp35 = fcmp ogt double %conv34, 0.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.end.116

if.then.37:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %left, align 4
  %idxprom38 = sext i32 %26 to i64
  %27 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %27, i64 %idxprom38
  %28 = load %struct._RNApair*, %struct._RNApair** %arrayidx39, align 8
  %29 = bitcast %struct._RNApair* %28 to i8*
  %30 = load i32, i32* %left, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i32*, i32** %pairnum, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %31, i64 %idxprom40
  %32 = load i32, i32* %arrayidx41, align 4
  %add = add nsw i32 %32, 2
  %conv42 = sext i32 %add to i64
  %mul = mul i64 %conv42, 24
  %call43 = call i8* @realloc(i8* %29, i64 %mul) #6
  %33 = bitcast i8* %call43 to %struct._RNApair*
  %34 = load i32, i32* %left, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %35, i64 %idxprom44
  store %struct._RNApair* %33, %struct._RNApair** %arrayidx45, align 8
  %36 = load float, float* %prob, align 4
  %37 = load i32, i32* %left, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load i32*, i32** %pairnum, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %38, i64 %idxprom46
  %39 = load i32, i32* %arrayidx47, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load i32, i32* %left, align 4
  %idxprom49 = sext i32 %40 to i64
  %41 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %41, i64 %idxprom49
  %42 = load %struct._RNApair*, %struct._RNApair** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %42, i64 %idxprom48
  %bestscore = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx51, i32 0, i32 5
  store float %36, float* %bestscore, align 4
  %43 = load i32, i32* %right, align 4
  %44 = load i32, i32* %left, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load i32*, i32** %pairnum, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %45, i64 %idxprom52
  %46 = load i32, i32* %arrayidx53, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load i32, i32* %left, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %48, i64 %idxprom55
  %49 = load %struct._RNApair*, %struct._RNApair** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %49, i64 %idxprom54
  %bestpos = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx57, i32 0, i32 4
  store i32 %43, i32* %bestpos, align 4
  %50 = load i32, i32* %left, align 4
  %idxprom58 = sext i32 %50 to i64
  %51 = load i32*, i32** %pairnum, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %51, i64 %idxprom58
  %52 = load i32, i32* %arrayidx59, align 4
  %inc60 = add nsw i32 %52, 1
  store i32 %inc60, i32* %arrayidx59, align 4
  %53 = load i32, i32* %left, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i32*, i32** %pairnum, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %54, i64 %idxprom61
  %55 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load i32, i32* %left, align 4
  %idxprom64 = sext i32 %56 to i64
  %57 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %57, i64 %idxprom64
  %58 = load %struct._RNApair*, %struct._RNApair** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %58, i64 %idxprom63
  %bestscore67 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx66, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore67, align 4
  %59 = load i32, i32* %left, align 4
  %idxprom68 = sext i32 %59 to i64
  %60 = load i32*, i32** %pairnum, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %60, i64 %idxprom68
  %61 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %61 to i64
  %62 = load i32, i32* %left, align 4
  %idxprom71 = sext i32 %62 to i64
  %63 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %63, i64 %idxprom71
  %64 = load %struct._RNApair*, %struct._RNApair** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %64, i64 %idxprom70
  %bestpos74 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx73, i32 0, i32 4
  store i32 -1, i32* %bestpos74, align 4
  %65 = load i32, i32* %right, align 4
  %idxprom75 = sext i32 %65 to i64
  %66 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %66, i64 %idxprom75
  %67 = load %struct._RNApair*, %struct._RNApair** %arrayidx76, align 8
  %68 = bitcast %struct._RNApair* %67 to i8*
  %69 = load i32, i32* %right, align 4
  %idxprom77 = sext i32 %69 to i64
  %70 = load i32*, i32** %pairnum, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %70, i64 %idxprom77
  %71 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %71, 2
  %conv80 = sext i32 %add79 to i64
  %mul81 = mul i64 %conv80, 24
  %call82 = call i8* @realloc(i8* %68, i64 %mul81) #6
  %72 = bitcast i8* %call82 to %struct._RNApair*
  %73 = load i32, i32* %right, align 4
  %idxprom83 = sext i32 %73 to i64
  %74 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %74, i64 %idxprom83
  store %struct._RNApair* %72, %struct._RNApair** %arrayidx84, align 8
  %75 = load float, float* %prob, align 4
  %76 = load i32, i32* %right, align 4
  %idxprom85 = sext i32 %76 to i64
  %77 = load i32*, i32** %pairnum, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %77, i64 %idxprom85
  %78 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %78 to i64
  %79 = load i32, i32* %right, align 4
  %idxprom88 = sext i32 %79 to i64
  %80 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %80, i64 %idxprom88
  %81 = load %struct._RNApair*, %struct._RNApair** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %81, i64 %idxprom87
  %bestscore91 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx90, i32 0, i32 5
  store float %75, float* %bestscore91, align 4
  %82 = load i32, i32* %left, align 4
  %83 = load i32, i32* %right, align 4
  %idxprom92 = sext i32 %83 to i64
  %84 = load i32*, i32** %pairnum, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %84, i64 %idxprom92
  %85 = load i32, i32* %arrayidx93, align 4
  %idxprom94 = sext i32 %85 to i64
  %86 = load i32, i32* %right, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %87, i64 %idxprom95
  %88 = load %struct._RNApair*, %struct._RNApair** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %88, i64 %idxprom94
  %bestpos98 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx97, i32 0, i32 4
  store i32 %82, i32* %bestpos98, align 4
  %89 = load i32, i32* %right, align 4
  %idxprom99 = sext i32 %89 to i64
  %90 = load i32*, i32** %pairnum, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %90, i64 %idxprom99
  %91 = load i32, i32* %arrayidx100, align 4
  %inc101 = add nsw i32 %91, 1
  store i32 %inc101, i32* %arrayidx100, align 4
  %92 = load i32, i32* %right, align 4
  %idxprom102 = sext i32 %92 to i64
  %93 = load i32*, i32** %pairnum, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %93, i64 %idxprom102
  %94 = load i32, i32* %arrayidx103, align 4
  %idxprom104 = sext i32 %94 to i64
  %95 = load i32, i32* %right, align 4
  %idxprom105 = sext i32 %95 to i64
  %96 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %96, i64 %idxprom105
  %97 = load %struct._RNApair*, %struct._RNApair** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %97, i64 %idxprom104
  %bestscore108 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx107, i32 0, i32 5
  store float -1.000000e+00, float* %bestscore108, align 4
  %98 = load i32, i32* %right, align 4
  %idxprom109 = sext i32 %98 to i64
  %99 = load i32*, i32** %pairnum, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %99, i64 %idxprom109
  %100 = load i32, i32* %arrayidx110, align 4
  %idxprom111 = sext i32 %100 to i64
  %101 = load i32, i32* %right, align 4
  %idxprom112 = sext i32 %101 to i64
  %102 = load %struct._RNApair**, %struct._RNApair*** %pairprob.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct._RNApair*, %struct._RNApair** %102, i64 %idxprom112
  %103 = load %struct._RNApair*, %struct._RNApair** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %103, i64 %idxprom111
  %bestpos115 = getelementptr inbounds %struct._RNApair, %struct._RNApair* %arrayidx114, i32 0, i32 4
  store i32 -1, i32* %bestpos115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.37, %land.lhs.true, %if.end.31
  br label %while.body

while.end:                                        ; preds = %if.then.14, %if.then.8
  %104 = load i32*, i32** %pairnum, align 8
  %105 = bitcast i32* %104 to i8*
  call void @free(i8* %105) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @readpairfoldalign(%struct._IO_FILE* %fp, i8* %s1, i8* %s2, i8* %aln1, i8* %aln2, i32 %q1, i32 %q2, i32* %of1, i32* %of2, i32 %sumlen) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %aln1.addr = alloca i8*, align 8
  %aln2.addr = alloca i8*, align 8
  %q1.addr = alloca i32, align 4
  %q2.addr = alloca i32, align 4
  %of1.addr = alloca i32*, align 8
  %of2.addr = alloca i32*, align 8
  %sumlen.addr = alloca i32, align 4
  %gett = alloca [1000 x i8], align 16
  %maptoseq1 = alloca i32*, align 8
  %maptoseq2 = alloca i32*, align 8
  %dumc = alloca i8, align 1
  %dumi = alloca i32, align 4
  %sinseq = alloca [100 x i8], align 16
  %sinaln = alloca [100 x i8], align 16
  %posinseq = alloca i32, align 4
  %posinaln = alloca i32, align 4
  %alnlen = alloca i32, align 4
  %i = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pa1 = alloca i8*, align 8
  %pa2 = alloca i8*, align 8
  %qstr = alloca [1000 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i8* %aln1, i8** %aln1.addr, align 8
  store i8* %aln2, i8** %aln2.addr, align 8
  store i32 %q1, i32* %q1.addr, align 4
  store i32 %q2, i32* %q2.addr, align 4
  store i32* %of1, i32** %of1.addr, align 8
  store i32* %of2, i32** %of2.addr, align 8
  store i32 %sumlen, i32* %sumlen.addr, align 4
  %0 = load i32*, i32** %of1.addr, align 8
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %of2.addr, align 8
  store i32 -1, i32* %1, align 4
  %2 = load i32, i32* %sumlen.addr, align 4
  %add = add nsw i32 %2, 1
  %call = call i32* @AllocateIntVec(i32 %add)
  store i32* %call, i32** %maptoseq1, align 8
  %3 = load i32, i32* %sumlen.addr, align 4
  %add1 = add nsw i32 %3, 1
  %call2 = call i32* @AllocateIntVec(i32 %add1)
  store i32* %call2, i32** %maptoseq2, align 8
  store i32 0, i32* %posinaln, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @feof(%struct._IO_FILE* %4) #6
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 999, %struct._IO_FILE* %5)
  %arraydecay5 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call6 = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i64 10) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %arraydecay8 = getelementptr inbounds [1000 x i8], [1000 x i8]* %qstr, i32 0, i32 0
  %6 = load i32, i32* %q1.addr, align 4
  %add9 = add nsw i32 %6, 1
  %7 = load i32, i32* %q2.addr, align 4
  %add10 = add nsw i32 %7, 1
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i32 0, i32 0), i32 %add9, i32 %add10) #6
  %arraydecay12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [1000 x i8], [1000 x i8]* %qstr, i32 0, i32 0
  %call14 = call i32 @strcmp(i8* %arraydecay12, i8* %arraydecay13) #8
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %while.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay18 = getelementptr inbounds [1000 x i8], [1000 x i8]* %qstr, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0), i8* %arraydecay18, i8* %arraydecay19)
  call void @exit(i32 1) #7
  unreachable

if.end.21:                                        ; preds = %while.end
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.33, %if.end.21
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 @feof(%struct._IO_FILE* %10) #6
  %tobool24 = icmp ne i32 %call23, 0
  %lnot25 = xor i1 %tobool24, true
  br i1 %lnot25, label %while.body.26, label %while.end.34

while.body.26:                                    ; preds = %while.cond.22
  %arraydecay27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call28 = call i8* @fgets(i8* %arraydecay27, i32 999, %struct._IO_FILE* %11)
  %arraydecay29 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call30 = call i32 @strncmp(i8* %arraydecay29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i64 10) #8
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %while.body.26
  br label %while.end.34

if.end.33:                                        ; preds = %while.body.26
  br label %while.cond.22

while.end.34:                                     ; preds = %if.then.32, %while.cond.22
  br label %while.cond.35

while.cond.35:                                    ; preds = %if.end.46, %while.end.34
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @feof(%struct._IO_FILE* %12) #6
  %tobool37 = icmp ne i32 %call36, 0
  %lnot38 = xor i1 %tobool37, true
  br i1 %lnot38, label %while.body.39, label %while.end.56

while.body.39:                                    ; preds = %while.cond.35
  %arraydecay40 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call41 = call i8* @fgets(i8* %arraydecay40, i32 999, %struct._IO_FILE* %13)
  %arraydecay42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call43 = call i32 @strncmp(i8* %arraydecay42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i64 10) #8
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %while.body.39
  br label %while.end.56

if.end.46:                                        ; preds = %while.body.39
  %arraydecay47 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [100 x i8], [100 x i8]* %sinseq, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [100 x i8], [100 x i8]* %sinaln, i32 0, i32 0
  %call50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i8* %dumc, i8* %dumc, i8* %arraydecay48, i8* %arraydecay49, i32* %dumi, i32* %dumi) #6
  %arraydecay51 = getelementptr inbounds [100 x i8], [100 x i8]* %sinaln, i32 0, i32 0
  %call52 = call i32 @atoi(i8* %arraydecay51) #8
  store i32 %call52, i32* %posinaln, align 4
  %arraydecay53 = getelementptr inbounds [100 x i8], [100 x i8]* %sinseq, i32 0, i32 0
  %call54 = call i32 @atoi(i8* %arraydecay53) #8
  store i32 %call54, i32* %posinseq, align 4
  %14 = load i32, i32* %posinseq, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i32, i32* %posinaln, align 4
  %sub55 = sub nsw i32 %15, 1
  %idxprom = sext i32 %sub55 to i64
  %16 = load i32*, i32** %maptoseq1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %sub, i32* %arrayidx, align 4
  br label %while.cond.35

while.end.56:                                     ; preds = %if.then.45, %while.cond.35
  %17 = load i32, i32* %posinaln, align 4
  store i32 %17, i32* %alnlen, align 4
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.68, %while.end.56
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call58 = call i32 @feof(%struct._IO_FILE* %18) #6
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  br i1 %lnot60, label %while.body.61, label %while.end.69

while.body.61:                                    ; preds = %while.cond.57
  %arraydecay62 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call63 = call i8* @fgets(i8* %arraydecay62, i32 999, %struct._IO_FILE* %19)
  %arraydecay64 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call65 = call i32 @strncmp(i8* %arraydecay64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i64 10) #8
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %while.body.61
  br label %while.end.69

if.end.68:                                        ; preds = %while.body.61
  br label %while.cond.57

while.end.69:                                     ; preds = %if.then.67, %while.cond.57
  br label %while.cond.70

while.cond.70:                                    ; preds = %if.end.81, %while.end.69
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call71 = call i32 @feof(%struct._IO_FILE* %20) #6
  %tobool72 = icmp ne i32 %call71, 0
  %lnot73 = xor i1 %tobool72, true
  br i1 %lnot73, label %while.body.74, label %while.end.95

while.body.74:                                    ; preds = %while.cond.70
  %arraydecay75 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call76 = call i8* @fgets(i8* %arraydecay75, i32 999, %struct._IO_FILE* %21)
  %arraydecay77 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %call78 = call i32 @strncmp(i8* %arraydecay77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i64 10) #8
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %while.body.74
  br label %while.end.95

if.end.81:                                        ; preds = %while.body.74
  %arraydecay82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %gett, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [100 x i8], [100 x i8]* %sinseq, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [100 x i8], [100 x i8]* %sinaln, i32 0, i32 0
  %call85 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i8* %dumc, i8* %dumc, i8* %arraydecay83, i8* %arraydecay84, i32* %dumi, i32* %dumi) #6
  %arraydecay86 = getelementptr inbounds [100 x i8], [100 x i8]* %sinaln, i32 0, i32 0
  %call87 = call double @atof(i8* %arraydecay86) #8
  %conv = fptosi double %call87 to i32
  store i32 %conv, i32* %posinaln, align 4
  %arraydecay88 = getelementptr inbounds [100 x i8], [100 x i8]* %sinseq, i32 0, i32 0
  %call89 = call double @atof(i8* %arraydecay88) #8
  %conv90 = fptosi double %call89 to i32
  store i32 %conv90, i32* %posinseq, align 4
  %22 = load i32, i32* %posinseq, align 4
  %sub91 = sub nsw i32 %22, 1
  %23 = load i32, i32* %posinaln, align 4
  %sub92 = sub nsw i32 %23, 1
  %idxprom93 = sext i32 %sub92 to i64
  %24 = load i32*, i32** %maptoseq2, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %24, i64 %idxprom93
  store i32 %sub91, i32* %arrayidx94, align 4
  br label %while.cond.70

while.end.95:                                     ; preds = %if.then.80, %while.cond.70
  %25 = load i32, i32* %alnlen, align 4
  %26 = load i32, i32* %posinaln, align 4
  %cmp = icmp ne i32 %25, %26
  br i1 %cmp, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %while.end.95
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.103, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.99:                                        ; preds = %while.end.95
  %28 = load i8*, i8** %aln1.addr, align 8
  store i8* %28, i8** %pa1, align 8
  %29 = load i8*, i8** %aln2.addr, align 8
  store i8* %29, i8** %pa2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.99
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %alnlen, align 4
  %cmp100 = icmp slt i32 %30, %31
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %32 to i64
  %33 = load i32*, i32** %maptoseq1, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %33, i64 %idxprom102
  %34 = load i32, i32* %arrayidx103, align 4
  store i32 %34, i32* %pos1, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %35 to i64
  %36 = load i32*, i32** %maptoseq2, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %36, i64 %idxprom104
  %37 = load i32, i32* %arrayidx105, align 4
  store i32 %37, i32* %pos2, align 4
  %38 = load i32, i32* %pos1, align 4
  %cmp106 = icmp sgt i32 %38, -1
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %for.body
  %39 = load i32, i32* %pos1, align 4
  %idxprom109 = sext i32 %39 to i64
  %40 = load i8*, i8** %s1.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %40, i64 %idxprom109
  %41 = load i8, i8* %arrayidx110, align 1
  %42 = load i8*, i8** %pa1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %pa1, align 8
  store i8 %41, i8* %42, align 1
  br label %if.end.112

if.else:                                          ; preds = %for.body
  %43 = load i8*, i8** %pa1, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr111, i8** %pa1, align 8
  store i8 45, i8* %43, align 1
  br label %if.end.112

if.end.112:                                       ; preds = %if.else, %if.then.108
  %44 = load i32, i32* %pos2, align 4
  %cmp113 = icmp sgt i32 %44, -1
  br i1 %cmp113, label %if.then.115, label %if.else.119

if.then.115:                                      ; preds = %if.end.112
  %45 = load i32, i32* %pos2, align 4
  %idxprom116 = sext i32 %45 to i64
  %46 = load i8*, i8** %s2.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %46, i64 %idxprom116
  %47 = load i8, i8* %arrayidx117, align 1
  %48 = load i8*, i8** %pa2, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr118, i8** %pa2, align 8
  store i8 %47, i8* %48, align 1
  br label %if.end.121

if.else.119:                                      ; preds = %if.end.112
  %49 = load i8*, i8** %pa2, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr120, i8** %pa2, align 8
  store i8 45, i8* %49, align 1
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.115
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i8*, i8** %pa1, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %pa2, align 8
  store i8 0, i8* %52, align 1
  %53 = load i32*, i32** %of1.addr, align 8
  store i32 0, i32* %53, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.132, %for.end
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %alnlen, align 4
  %cmp123 = icmp slt i32 %54, %55
  br i1 %cmp123, label %for.body.125, label %for.end.134

for.body.125:                                     ; preds = %for.cond.122
  %56 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %56 to i64
  %57 = load i32*, i32** %maptoseq1, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %57, i64 %idxprom126
  %58 = load i32, i32* %arrayidx127, align 4
  %59 = load i32*, i32** %of1.addr, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %of1.addr, align 8
  %61 = load i32, i32* %60, align 4
  %cmp128 = icmp sgt i32 %61, -1
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %for.body.125
  br label %for.end.134

if.end.131:                                       ; preds = %for.body.125
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %62 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %62, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.122

for.end.134:                                      ; preds = %if.then.130, %for.cond.122
  %63 = load i32*, i32** %of2.addr, align 8
  store i32 0, i32* %63, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.145, %for.end.134
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %alnlen, align 4
  %cmp136 = icmp slt i32 %64, %65
  br i1 %cmp136, label %for.body.138, label %for.end.147

for.body.138:                                     ; preds = %for.cond.135
  %66 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %66 to i64
  %67 = load i32*, i32** %maptoseq2, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %67, i64 %idxprom139
  %68 = load i32, i32* %arrayidx140, align 4
  %69 = load i32*, i32** %of2.addr, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %of2.addr, align 8
  %71 = load i32, i32* %70, align 4
  %cmp141 = icmp sgt i32 %71, -1
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %for.body.138
  br label %for.end.147

if.end.144:                                       ; preds = %for.body.138
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %72 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %72, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.135

for.end.147:                                      ; preds = %if.then.143, %for.cond.135
  %73 = load i32*, i32** %maptoseq1, align 8
  %74 = bitcast i32* %73 to i8*
  call void @free(i8* %74) #6
  %75 = load i32*, i32** %maptoseq2, align 8
  %76 = bitcast i32* %75 to i8*
  call void @free(i8* %76) #6
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @tabtospace(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 9) #8
  store i8* %call, i8** %p, align 8
  %cmp = icmp ne i8* null, %call
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %p, align 8
  store i8 32, i8* %1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @showaamtxexample() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.115, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.116, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.119, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.122, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.123, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
