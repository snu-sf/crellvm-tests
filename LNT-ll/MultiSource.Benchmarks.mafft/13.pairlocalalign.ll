; ModuleID = './MultiSource.Benchmarks.mafft/13.pairlocalalign.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@foldalignopt = internal global [1000 x i8] zeroinitializer, align 16
@laraparams = internal global i8* null, align 8
@inputfile = external global i8*, align 8
@fftkeika = external global i32, align 4
@pslocal = external global i32, align 4
@constraint = external global i32, align 4
@nblosum = external global i32, align 4
@fmodel = external global i32, align 4
@calledByXced = external global i32, align 4
@devide = external global i32, align 4
@use_fft = external global i8, align 1
@fftscore = external global i32, align 4
@fftRepeatStop = external global i32, align 4
@fftNoAnchStop = external global i32, align 4
@weight = external global i32, align 4
@utree = external global i32, align 4
@tbutree = external global i32, align 4
@refine = external global i32, align 4
@check = external global i32, align 4
@cut = external global double, align 8
@disp = external global i32, align 4
@outgap = external global i32, align 4
@alg = external global i8, align 1
@mix = external global i32, align 4
@tbitr = external global i32, align 4
@scmtd = external global i32, align 4
@tbweight = external global i32, align 4
@tbrweight = external global i32, align 4
@checkC = external global i32, align 4
@treemethod = external global i32, align 4
@contin = external global i32, align 4
@scoremtx = external global i32, align 4
@kobetsubunkatsu = external global i32, align 4
@divpairscore = external global i32, align 4
@out_align_instead_of_hat3 = internal global i32 0, align 4
@dorp = external global i32, align 4
@ppenalty = external global i32, align 4
@ppenalty_OP = external global i32, align 4
@ppenalty_ex = external global i32, align 4
@ppenalty_EX = external global i32, align 4
@poffset = external global i32, align 4
@kimuraR = external global i32, align 4
@pamN = external global i32, align 4
@geta2 = external global float, align 4
@fftWinSize = external global i32, align 4
@fftThreshold = external global i32, align 4
@RNAppenalty = external global i32, align 4
@RNApthr = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"inputfile = %s\0A\00", align 1
@TMorJTT = external global i32, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"jtt %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TM %d\0A\00", align 1
@ppslocal = external global i32, align 4
@whereispairalign = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"whereispairalign = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"laraparams = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"foldalignopt = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"illegal option %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"options: Check source file !\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"conflicting options : o, m or u\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"conflicting options : C, o\0A\00", align 1
@main.nlen = internal global [50000 x i32] zeroinitializer, align 16
@main.name = internal global [50000 x [256 x i8]] zeroinitializer, align 16
@main.seq = internal global i8** null, align 8
@main.mseq1 = internal global i8** null, align 8
@main.mseq2 = internal global i8** null, align 8
@main.aseq = internal global i8** null, align 8
@main.bseq = internal global i8** null, align 8
@main.eff = internal global double* null, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Cannot open %s\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@njob = external global i32, align 4
@.str.13 = private unnamed_addr constant [63 x i8] c"At least 2 sequences should be input!\0AOnly %d sequence found.\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"The number of sequences must be < %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"Please try the splittbfast program for such large data.\0A\00", align 1
@nlenmax = external global i32, align 4
@trap_g = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"Illegal character %c\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"%s (%s) Version 6.624b alg=%c, model=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"<progname>\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"nuc\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@modelname = external global [100 x i8], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"DNA\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"JTT %dPAM\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"BLOSUM %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"M-Y\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Gap Penalty = %+5.2f, %+5.2f, %+5.2f\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"FFT on\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"tree-base method\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"unweighted\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"clustalw-like weighting\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"iterate at each step\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"  unweighted\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"  reversely weighted\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"  weighted\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Algorithm A\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Algorithm A+\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Apgorithm S\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"Apgorithm A+/C\0A\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Unknown algorithm\0A\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"Basis : 4 nucleotides\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"Basis : Polarity and Volume\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Basis : 20 amino acids\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Threshold   of anchors = %d%%\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"window size of anchors = %dsites\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"FFT off\0A\00", align 1
@pairalign.indication1 = internal global i8* null, align 8
@pairalign.indication2 = internal global i8* null, align 8
@pairalign.distancemtx = internal global double** null, align 8
@pairalign.effarr1 = internal global double* null, align 8
@pairalign.effarr2 = internal global double* null, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"hat2\00", align 1
@pairalign.pair = internal global i8** null, align 8
@.str.48 = private unnamed_addr constant [36 x i8] c"Calling FOLDALIGN with option '%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"Running LARA (Bauer et al. http://www.planet-lisa.net/)\0A\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [58 x i8] c"Running SLARA (Bauer et al. http://www.planet-lisa.net/)\0A\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"Preparing bpp\0A\00", align 1
@.str.54 = private unnamed_addr constant [72 x i8] c"Running MXSCARNA (Tabei et al. http://www.ncrna.org/software/mxscarna)\0A\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"% 5d / %d\0D\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@penalty = external global i32, align 4
@penalty_ex = external global i32, align 4
@.str.56 = private unnamed_addr constant [50 x i8] c"sequence %d - sequence %d, pairwise score = %.0f\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c">%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Cannot open hat2.\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"##### writing hat3\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"%d %d %d %7.5f %d %d %d %d\0A\00", align 1
@callfoldalign.com = internal global [10000 x i8] zeroinitializer, align 16
@.str.62 = private unnamed_addr constant [13 x i8] c"_foldalignin\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"Cannot open _foldalignin\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c">%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [59 x i8] c"env PATH=%s  foldalign210 %s _foldalignin > _foldalignout \00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"Error in foldalign\0A\00", align 1
@calllara.com = internal global [10000 x i8] zeroinitializer, align 16
@.str.68 = private unnamed_addr constant [8 x i8] c"_larain\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Cannot open _larain\0A\00", align 1
@.str.70 = private unnamed_addr constant [79 x i8] c"env PATH=%s:/bin:/usr/bin mafft_lara -i _larain -w _laraout -o _lara.params %s\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"Error in lara\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"hat4\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"Cannot open hat4\0A\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"Format error\0A\00", align 1
@recallpairfoldalign.fp = internal global %struct._IO_FILE* null, align 8
@.str.75 = private unnamed_addr constant [14 x i8] c"_foldalignout\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Cannot open _foldalignout\0A\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"-global\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"Calling G__align11\0A\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"Calling L__align11\0A\00", align 1
@.str.80 = private unnamed_addr constant [89 x i8] c"FOLDALIGN returned no alignment between %d and %d.  Sequence alignment is used instead.\0A\00", align 1
@recalllara.fp = internal global %struct._IO_FILE* null, align 8
@recalllara.ungap1 = internal global i8* null, align 8
@recalllara.ungap2 = internal global i8* null, align 8
@recalllara.ori1 = internal global i8* null, align 8
@recalllara.ori2 = internal global i8* null, align 8
@recalllara.com = internal global [10000 x i8] zeroinitializer, align 16
@.str.81 = private unnamed_addr constant [9 x i8] c"_laraout\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"Cannot open _laraout\0A\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"SEQUENCE CHANGED!!\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"*mseq1  = %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"ungap1  = %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"ori1    = %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"*mseq2  = %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"ungap2  = %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"ori2    = %s\0A\00", align 1
@callmxscarna_giving_bpp.com = internal global [10000 x i8] zeroinitializer, align 16
@.str.90 = private unnamed_addr constant [8 x i8] c"_bpporg\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Cannot write to _bpporg\0A\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c">a\0A\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c">b\0A\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"tr -d '\5Cr' < _bpporg > _bpp\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"_mxscarnainorg\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Cannot open _mxscarnainorg\0A\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c">1\0A\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c">2\0A\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"tr -d '\5Cr' < _mxscarnainorg > _mxscarnain\00", align 1
@.str.100 = private unnamed_addr constant [67 x i8] c"env PATH=%s mxscarnamod -readbpp _mxscarnain > _mxscarnaout 2>_dum\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"Error in mxscarna\0A\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"_mxscarnaout\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"Cannot open _mxscarnaout\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @arguments(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i64 0), align 1
  store i8* null, i8** @laraparams, align 8
  store i8* null, i8** @inputfile, align 8
  store i32 0, i32* @fftkeika, align 4
  store i32 -1000, i32* @pslocal, align 4
  store i32 0, i32* @constraint, align 4
  store i32 62, i32* @nblosum, align 4
  store i32 0, i32* @fmodel, align 4
  store i32 0, i32* @calledByXced, align 4
  store i32 0, i32* @devide, align 4
  store i8 0, i8* @use_fft, align 1
  store i32 1, i32* @fftscore, align 4
  store i32 0, i32* @fftRepeatStop, align 4
  store i32 0, i32* @fftNoAnchStop, align 4
  store i32 3, i32* @weight, align 4
  store i32 1, i32* @utree, align 4
  store i32 1, i32* @tbutree, align 4
  store i32 0, i32* @refine, align 4
  store i32 1, i32* @check, align 4
  store double 0.000000e+00, double* @cut, align 8
  store i32 0, i32* @disp, align 4
  store i32 1, i32* @outgap, align 4
  store i8 65, i8* @alg, align 1
  store i32 0, i32* @mix, align 4
  store i32 0, i32* @tbitr, align 4
  store i32 5, i32* @scmtd, align 4
  store i32 0, i32* @tbweight, align 4
  store i32 3, i32* @tbrweight, align 4
  store i32 0, i32* @checkC, align 4
  store i32 120, i32* @treemethod, align 4
  store i32 0, i32* @contin, align 4
  store i32 1, i32* @scoremtx, align 4
  store i32 0, i32* @kobetsubunkatsu, align 4
  store i32 0, i32* @divpairscore, align 4
  store i32 0, i32* @out_align_instead_of_hat3, align 4
  store i32 100009, i32* @dorp, align 4
  store i32 100009, i32* @ppenalty, align 4
  store i32 100009, i32* @ppenalty_OP, align 4
  store i32 100009, i32* @ppenalty_ex, align 4
  store i32 100009, i32* @ppenalty_EX, align 4
  store i32 100009, i32* @poffset, align 4
  store i32 100009, i32* @kimuraR, align 4
  store i32 100009, i32* @pamN, align 4
  store float 0x3F50624DE0000000, float* @geta2, align 4
  store i32 100009, i32* @fftWinSize, align 4
  store i32 100009, i32* @fftThreshold, align 4
  store i32 100009, i32* @RNAppenalty, align 4
  store i32 100009, i32* @RNApthr, align 4
  br label %while.cond

while.cond:                                       ; preds = %nextoption, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %incdec.ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end.121

while.body:                                       ; preds = %land.end
  br label %while.cond.3

while.cond.3:                                     ; preds = %sw.epilog, %while.body
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx4, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr5, i8** %arrayidx4, align 8
  %7 = load i8, i8* %incdec.ptr5, align 1
  %conv6 = sext i8 %7 to i32
  store i32 %conv6, i32* %c, align 4
  %tobool = icmp ne i32 %conv6, 0
  br i1 %tobool, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.3
  %8 = load i32, i32* %c, align 4
  switch i32 %8, label %sw.default [
    i32 105, label %sw.bb
    i32 102, label %sw.bb.10
    i32 103, label %sw.bb.15
    i32 79, label %sw.bb.22
    i32 69, label %sw.bb.29
    i32 104, label %sw.bb.36
    i32 107, label %sw.bb.43
    i32 98, label %sw.bb.47
    i32 106, label %sw.bb.51
    i32 109, label %sw.bb.56
    i32 108, label %sw.bb.61
    i32 100, label %sw.bb.71
    i32 112, label %sw.bb.75
    i32 110, label %sw.bb.79
    i32 97, label %sw.bb.80
    i32 114, label %sw.bb.81
    i32 68, label %sw.bb.82
    i32 80, label %sw.bb.83
    i32 101, label %sw.bb.84
    i32 81, label %sw.bb.85
    i32 120, label %sw.bb.86
    i32 83, label %sw.bb.87
    i32 116, label %sw.bb.88
    i32 76, label %sw.bb.89
    i32 115, label %sw.bb.90
    i32 66, label %sw.bb.91
    i32 84, label %sw.bb.92
    i32 72, label %sw.bb.93
    i32 77, label %sw.bb.94
    i32 82, label %sw.bb.95
    i32 78, label %sw.bb.96
    i32 75, label %sw.bb.97
    i32 65, label %sw.bb.98
    i32 86, label %sw.bb.99
    i32 67, label %sw.bb.100
    i32 70, label %sw.bb.101
    i32 118, label %sw.bb.102
    i32 121, label %sw.bb.103
    i32 74, label %sw.bb.104
    i32 111, label %sw.bb.105
    i32 122, label %sw.bb.111
    i32 119, label %sw.bb.115
    i32 90, label %sw.bb.119
  ]

sw.bb:                                            ; preds = %while.body.7
  %9 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr8, i8*** %argv.addr, align 8
  %10 = load i8*, i8** %incdec.ptr8, align 8
  store i8* %10, i8** @inputfile, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** @inputfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %12)
  %13 = load i32, i32* %argc.addr, align 4
  %dec9 = add nsw i32 %13, -1
  store i32 %dec9, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.10:                                         ; preds = %while.body.7
  %14 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr11, i8*** %argv.addr, align 8
  %15 = load i8*, i8** %incdec.ptr11, align 8
  %call12 = call double @atof(i8* %15) #5
  %mul = fmul double %call12, 1.000000e+03
  %sub = fsub double %mul, 5.000000e-01
  %conv13 = fptosi double %sub to i32
  store i32 %conv13, i32* @ppenalty, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %dec14 = add nsw i32 %16, -1
  store i32 %dec14, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.15:                                         ; preds = %while.body.7
  %17 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr16, i8*** %argv.addr, align 8
  %18 = load i8*, i8** %incdec.ptr16, align 8
  %call17 = call double @atof(i8* %18) #5
  %mul18 = fmul double %call17, 1.000000e+03
  %sub19 = fsub double %mul18, 5.000000e-01
  %conv20 = fptosi double %sub19 to i32
  store i32 %conv20, i32* @ppenalty_ex, align 4
  %19 = load i32, i32* %argc.addr, align 4
  %dec21 = add nsw i32 %19, -1
  store i32 %dec21, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.22:                                         ; preds = %while.body.7
  %20 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %incdec.ptr23, i8*** %argv.addr, align 8
  %21 = load i8*, i8** %incdec.ptr23, align 8
  %call24 = call double @atof(i8* %21) #5
  %mul25 = fmul double %call24, 1.000000e+03
  %sub26 = fsub double %mul25, 5.000000e-01
  %conv27 = fptosi double %sub26 to i32
  store i32 %conv27, i32* @ppenalty_OP, align 4
  %22 = load i32, i32* %argc.addr, align 4
  %dec28 = add nsw i32 %22, -1
  store i32 %dec28, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.29:                                         ; preds = %while.body.7
  %23 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %incdec.ptr30, i8*** %argv.addr, align 8
  %24 = load i8*, i8** %incdec.ptr30, align 8
  %call31 = call double @atof(i8* %24) #5
  %mul32 = fmul double %call31, 1.000000e+03
  %sub33 = fsub double %mul32, 5.000000e-01
  %conv34 = fptosi double %sub33 to i32
  store i32 %conv34, i32* @ppenalty_EX, align 4
  %25 = load i32, i32* %argc.addr, align 4
  %dec35 = add nsw i32 %25, -1
  store i32 %dec35, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.36:                                         ; preds = %while.body.7
  %26 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr37, i8*** %argv.addr, align 8
  %27 = load i8*, i8** %incdec.ptr37, align 8
  %call38 = call double @atof(i8* %27) #5
  %mul39 = fmul double %call38, 1.000000e+03
  %sub40 = fsub double %mul39, 5.000000e-01
  %conv41 = fptosi double %sub40 to i32
  store i32 %conv41, i32* @poffset, align 4
  %28 = load i32, i32* %argc.addr, align 4
  %dec42 = add nsw i32 %28, -1
  store i32 %dec42, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.43:                                         ; preds = %while.body.7
  %29 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr44, i8*** %argv.addr, align 8
  %30 = load i8*, i8** %incdec.ptr44, align 8
  %call45 = call i32 @atoi(i8* %30) #5
  store i32 %call45, i32* @kimuraR, align 4
  %31 = load i32, i32* %argc.addr, align 4
  %dec46 = add nsw i32 %31, -1
  store i32 %dec46, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.47:                                         ; preds = %while.body.7
  %32 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %incdec.ptr48, i8*** %argv.addr, align 8
  %33 = load i8*, i8** %incdec.ptr48, align 8
  %call49 = call i32 @atoi(i8* %33) #5
  store i32 %call49, i32* @nblosum, align 4
  store i32 1, i32* @scoremtx, align 4
  %34 = load i32, i32* %argc.addr, align 4
  %dec50 = add nsw i32 %34, -1
  store i32 %dec50, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.51:                                         ; preds = %while.body.7
  %35 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr52, i8*** %argv.addr, align 8
  %36 = load i8*, i8** %incdec.ptr52, align 8
  %call53 = call i32 @atoi(i8* %36) #5
  store i32 %call53, i32* @pamN, align 4
  store i32 0, i32* @scoremtx, align 4
  store i32 201, i32* @TMorJTT, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* @pamN, align 4
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %38)
  %39 = load i32, i32* %argc.addr, align 4
  %dec55 = add nsw i32 %39, -1
  store i32 %dec55, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.56:                                         ; preds = %while.body.7
  %40 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %incdec.ptr57, i8*** %argv.addr, align 8
  %41 = load i8*, i8** %incdec.ptr57, align 8
  %call58 = call i32 @atoi(i8* %41) #5
  store i32 %call58, i32* @pamN, align 4
  store i32 0, i32* @scoremtx, align 4
  store i32 202, i32* @TMorJTT, align 4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* @pamN, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %43)
  %44 = load i32, i32* %argc.addr, align 4
  %dec60 = add nsw i32 %44, -1
  store i32 %dec60, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.61:                                         ; preds = %while.body.7
  %45 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr62, i8*** %argv.addr, align 8
  %46 = load i8*, i8** %incdec.ptr62, align 8
  %call63 = call double @atof(i8* %46) #5
  %mul64 = fmul double %call63, 1.000000e+03
  %add = fadd double %mul64, 5.000000e-01
  %conv65 = fptosi double %add to i32
  store i32 %conv65, i32* @ppslocal, align 4
  %47 = load i32, i32* @ppslocal, align 4
  %conv66 = sitofp i32 %47 to double
  %mul67 = fmul double 6.000000e-01, %conv66
  %add68 = fadd double %mul67, 5.000000e-01
  %conv69 = fptosi double %add68 to i32
  store i32 %conv69, i32* @pslocal, align 4
  %48 = load i32, i32* %argc.addr, align 4
  %dec70 = add nsw i32 %48, -1
  store i32 %dec70, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.71:                                         ; preds = %while.body.7
  %49 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr72, i8*** %argv.addr, align 8
  %50 = load i8*, i8** %incdec.ptr72, align 8
  store i8* %50, i8** @whereispairalign, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i8*, i8** @whereispairalign, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %52)
  %53 = load i32, i32* %argc.addr, align 4
  %dec74 = add nsw i32 %53, -1
  store i32 %dec74, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.75:                                         ; preds = %while.body.7
  %54 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %incdec.ptr76, i8*** %argv.addr, align 8
  %55 = load i8*, i8** %incdec.ptr76, align 8
  store i8* %55, i8** @laraparams, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load i8*, i8** @laraparams, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* %57)
  %58 = load i32, i32* %argc.addr, align 4
  %dec78 = add nsw i32 %58, -1
  store i32 %dec78, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.79:                                         ; preds = %while.body.7
  store i32 1, i32* @out_align_instead_of_hat3, align 4
  br label %sw.epilog

sw.bb.80:                                         ; preds = %while.body.7
  store i32 1, i32* @fmodel, align 4
  br label %sw.epilog

sw.bb.81:                                         ; preds = %while.body.7
  store i32 -1, i32* @fmodel, align 4
  br label %sw.epilog

sw.bb.82:                                         ; preds = %while.body.7
  store i32 100, i32* @dorp, align 4
  br label %sw.epilog

sw.bb.83:                                         ; preds = %while.body.7
  store i32 112, i32* @dorp, align 4
  br label %sw.epilog

sw.bb.84:                                         ; preds = %while.body.7
  store i32 0, i32* @fftscore, align 4
  br label %sw.epilog

sw.bb.85:                                         ; preds = %while.body.7
  store i32 1, i32* @calledByXced, align 4
  br label %sw.epilog

sw.bb.86:                                         ; preds = %while.body.7
  store i32 1, i32* @disp, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %while.body.7
  store i8 83, i8* @alg, align 1
  br label %sw.epilog

sw.bb.88:                                         ; preds = %while.body.7
  store i8 116, i8* @alg, align 1
  br label %sw.epilog

sw.bb.89:                                         ; preds = %while.body.7
  store i8 76, i8* @alg, align 1
  br label %sw.epilog

sw.bb.90:                                         ; preds = %while.body.7
  store i8 115, i8* @alg, align 1
  br label %sw.epilog

sw.bb.91:                                         ; preds = %while.body.7
  store i8 66, i8* @alg, align 1
  br label %sw.epilog

sw.bb.92:                                         ; preds = %while.body.7
  store i8 84, i8* @alg, align 1
  br label %sw.epilog

sw.bb.93:                                         ; preds = %while.body.7
  store i8 72, i8* @alg, align 1
  br label %sw.epilog

sw.bb.94:                                         ; preds = %while.body.7
  store i8 77, i8* @alg, align 1
  br label %sw.epilog

sw.bb.95:                                         ; preds = %while.body.7
  store i8 82, i8* @alg, align 1
  br label %sw.epilog

sw.bb.96:                                         ; preds = %while.body.7
  store i8 78, i8* @alg, align 1
  br label %sw.epilog

sw.bb.97:                                         ; preds = %while.body.7
  store i8 75, i8* @alg, align 1
  br label %sw.epilog

sw.bb.98:                                         ; preds = %while.body.7
  store i8 65, i8* @alg, align 1
  br label %sw.epilog

sw.bb.99:                                         ; preds = %while.body.7
  store i8 86, i8* @alg, align 1
  br label %sw.epilog

sw.bb.100:                                        ; preds = %while.body.7
  store i8 67, i8* @alg, align 1
  br label %sw.epilog

sw.bb.101:                                        ; preds = %while.body.7
  store i8 1, i8* @use_fft, align 1
  br label %sw.epilog

sw.bb.102:                                        ; preds = %while.body.7
  store i32 3, i32* @tbrweight, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %while.body.7
  store i32 1, i32* @divpairscore, align 4
  br label %sw.epilog

sw.bb.104:                                        ; preds = %while.body.7
  store i32 0, i32* @tbutree, align 4
  br label %sw.epilog

sw.bb.105:                                        ; preds = %while.body.7
  %call106 = call i8* @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #6
  %59 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr107 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %incdec.ptr107, i8*** %argv.addr, align 8
  %60 = load i8*, i8** %incdec.ptr107, align 8
  %call108 = call i8* @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i32 0), i8* %60) #6
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i32 0))
  %62 = load i32, i32* %argc.addr, align 4
  %dec110 = add nsw i32 %62, -1
  store i32 %dec110, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.111:                                        ; preds = %while.body.7
  %63 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr112 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %incdec.ptr112, i8*** %argv.addr, align 8
  %64 = load i8*, i8** %incdec.ptr112, align 8
  %call113 = call i32 @atoi(i8* %64) #5
  store i32 %call113, i32* @fftThreshold, align 4
  %65 = load i32, i32* %argc.addr, align 4
  %dec114 = add nsw i32 %65, -1
  store i32 %dec114, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.115:                                        ; preds = %while.body.7
  %66 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %incdec.ptr116, i8*** %argv.addr, align 8
  %67 = load i8*, i8** %incdec.ptr116, align 8
  %call117 = call i32 @atoi(i8* %67) #5
  store i32 %call117, i32* @fftWinSize, align 4
  %68 = load i32, i32* %argc.addr, align 4
  %dec118 = add nsw i32 %68, -1
  store i32 %dec118, i32* %argc.addr, align 4
  br label %nextoption

sw.bb.119:                                        ; preds = %while.body.7
  store i32 1, i32* @checkC, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.7
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load i32, i32* %c, align 4
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 %70)
  store i32 0, i32* %argc.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.119, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb.101, %sw.bb.100, %sw.bb.99, %sw.bb.98, %sw.bb.97, %sw.bb.96, %sw.bb.95, %sw.bb.94, %sw.bb.93, %sw.bb.92, %sw.bb.91, %sw.bb.90, %sw.bb.89, %sw.bb.88, %sw.bb.87, %sw.bb.86, %sw.bb.85, %sw.bb.84, %sw.bb.83, %sw.bb.82, %sw.bb.81, %sw.bb.80, %sw.bb.79
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  br label %nextoption

nextoption:                                       ; preds = %while.end, %sw.bb.115, %sw.bb.111, %sw.bb.105, %sw.bb.75, %sw.bb.71, %sw.bb.61, %sw.bb.56, %sw.bb.51, %sw.bb.47, %sw.bb.43, %sw.bb.36, %sw.bb.29, %sw.bb.22, %sw.bb.15, %sw.bb.10, %sw.bb
  br label %while.cond

while.end.121:                                    ; preds = %land.end
  %71 = load i32, i32* %argc.addr, align 4
  %cmp122 = icmp eq i32 %71, 1
  br i1 %cmp122, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.121
  %72 = load i8**, i8*** %argv.addr, align 8
  %73 = load i8*, i8** %72, align 8
  %call124 = call double @atof(i8* %73) #5
  store double %call124, double* @cut, align 8
  %74 = load i32, i32* %argc.addr, align 4
  %dec125 = add nsw i32 %74, -1
  store i32 %dec125, i32* %argc.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.121
  %75 = load i32, i32* %argc.addr, align 4
  %cmp126 = icmp ne i32 %75, 0
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.130:                                       ; preds = %if.end
  %77 = load i32, i32* @tbitr, align 4
  %cmp131 = icmp eq i32 %77, 1
  br i1 %cmp131, label %land.lhs.true, label %if.end.137

land.lhs.true:                                    ; preds = %if.end.130
  %78 = load i32, i32* @outgap, align 4
  %cmp133 = icmp eq i32 %78, 0
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %land.lhs.true
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.137:                                       ; preds = %land.lhs.true, %if.end.130
  %80 = load i8, i8* @alg, align 1
  %conv138 = sext i8 %80 to i32
  %cmp139 = icmp eq i32 %conv138, 67
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.146

land.lhs.true.141:                                ; preds = %if.end.137
  %81 = load i32, i32* @outgap, align 4
  %cmp142 = icmp eq i32 %81, 0
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %land.lhs.true.141
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.146:                                       ; preds = %land.lhs.true.141, %if.end.137
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @countamino(i8* %s, i32 %end) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %end.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %end, i32* %end.addr, align 4
  store i32 0, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %end.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %end.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %val, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %val, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %infp = alloca %struct._IO_FILE*, align 8
  %c = alloca i8, align 1
  %alloclen = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @arguments(i32 %0, i8** %1)
  %2 = load i8*, i8** @inputfile, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @inputfile, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %infp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %infp, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @inputfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* %6)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %infp, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %infp, align 8
  call void @getnumlen(%struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %infp, align 8
  call void @rewind(%struct._IO_FILE* %9)
  %10 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %10, 2
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* @njob, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i32 0, i32 0), i32 %12)
  call void @exit(i32 1) #7
  unreachable

if.end.7:                                         ; preds = %if.end.4
  %13 = load i32, i32* @njob, align 4
  %cmp8 = icmp sgt i32 %13, 50000
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i32 50000)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.12:                                        ; preds = %if.end.7
  %16 = load i32, i32* @njob, align 4
  %17 = load i32, i32* @nlenmax, align 4
  %mul = mul nsw i32 %17, 9
  %add = add nsw i32 %mul, 1
  %call13 = call i8** @AllocateCharMtx(i32 %16, i32 %add)
  store i8** %call13, i8*** @main.seq, align 8
  %18 = load i32, i32* @njob, align 4
  %19 = load i32, i32* @nlenmax, align 4
  %mul14 = mul nsw i32 %19, 9
  %add15 = add nsw i32 %mul14, 1
  %call16 = call i8** @AllocateCharMtx(i32 %18, i32 %add15)
  store i8** %call16, i8*** @main.aseq, align 8
  %20 = load i32, i32* @njob, align 4
  %21 = load i32, i32* @nlenmax, align 4
  %mul17 = mul nsw i32 %21, 9
  %add18 = add nsw i32 %mul17, 1
  %call19 = call i8** @AllocateCharMtx(i32 %20, i32 %add18)
  store i8** %call19, i8*** @main.bseq, align 8
  %22 = load i32, i32* @njob, align 4
  %call20 = call i8** @AllocateCharMtx(i32 %22, i32 0)
  store i8** %call20, i8*** @main.mseq1, align 8
  %23 = load i32, i32* @njob, align 4
  %call21 = call i8** @AllocateCharMtx(i32 %23, i32 0)
  store i8** %call21, i8*** @main.mseq2, align 8
  %24 = load i32, i32* @nlenmax, align 4
  %mul22 = mul nsw i32 %24, 9
  store i32 %mul22, i32* %alloclen, align 4
  %25 = load i32, i32* @njob, align 4
  %call23 = call double* @AllocateDoubleVec(i32 %25)
  store double* %call23, double** @main.eff, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %infp, align 8
  %27 = load i8**, i8*** @main.seq, align 8
  call void @readData(%struct._IO_FILE* %26, [256 x i8]* getelementptr inbounds ([50000 x [256 x i8]], [50000 x [256 x i8]]* @main.name, i32 0, i32 0), i32* getelementptr inbounds ([50000 x i32], [50000 x i32]* @main.nlen, i32 0, i32 0), i8** %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %infp, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load i32, i32* @njob, align 4
  %30 = load i8**, i8*** @main.seq, align 8
  call void @constants(i32 %29, i8** %30)
  call void @initSignalSM()
  call void @initFiles()
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @trap_g, align 8
  call void @WriteOptions(%struct._IO_FILE* %31)
  %32 = load i8**, i8*** @main.seq, align 8
  %call25 = call signext i8 @seqcheck(i8** %32)
  store i8 %call25, i8* %c, align 1
  %33 = load i8, i8* %c, align 1
  %tobool26 = icmp ne i8 %33, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8, i8* %c, align 1
  %conv = sext i8 %35 to i32
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %conv)
  call void @exit(i32 1) #7
  unreachable

if.end.29:                                        ; preds = %if.end.12
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* @njob, align 4
  %cmp30 = icmp slt i32 %36, %37
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load double*, double** @main.eff, align 8
  %arrayidx = getelementptr inbounds double, double* %39, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.40, %for.end
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @njob, align 4
  %cmp33 = icmp slt i32 %41, %42
  br i1 %cmp33, label %for.body.35, label %for.end.42

for.body.35:                                      ; preds = %for.cond.32
  %43 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load i8**, i8*** @main.bseq, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %44, i64 %idxprom36
  %45 = load i8*, i8** %arrayidx37, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %46 to i64
  %47 = load i8**, i8*** @main.seq, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %47, i64 %idxprom38
  %48 = load i8*, i8** %arrayidx39, align 8
  call void @gappick0(i8* %45, i8* %48)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %49 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %49, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.32

for.end.42:                                       ; preds = %for.cond.32
  %50 = load i8**, i8*** @main.bseq, align 8
  %51 = load i8**, i8*** @main.aseq, align 8
  %52 = load i8**, i8*** @main.mseq1, align 8
  %53 = load i8**, i8*** @main.mseq2, align 8
  %54 = load double*, double** @main.eff, align 8
  %55 = load i32, i32* %alloclen, align 4
  call void @pairalign([256 x i8]* getelementptr inbounds ([50000 x [256 x i8]], [50000 x [256 x i8]]* @main.name, i32 0, i32 0), i32* getelementptr inbounds ([50000 x i32], [50000 x i32]* @main.nlen, i32 0, i32 0), i8** %50, i8** %51, i8** %52, i8** %53, double* %54, i32 %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @trap_g, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @trap_g, align 8
  %call44 = call i32 @fclose(%struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = load i32, i32* @dorp, align 4
  %cmp45 = icmp eq i32 %59, 100
  %cond = select i1 %cmp45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)
  %60 = load i8, i8* @alg, align 1
  %conv47 = sext i8 %60 to i32
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %cond, i32 %conv47, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @modelname, i32 0, i32 0))
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @getnumlen(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i8** @AllocateCharMtx(i32, i32) #1

declare double* @AllocateDoubleVec(i32) #1

declare void @readData(%struct._IO_FILE*, [256 x i8]*, i32*, i8**) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @constants(i32, i8**) #1

declare void @initSignalSM() #1

declare void @initFiles() #1

; Function Attrs: nounwind uwtable
define internal void @WriteOptions(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32, i32* @dorp, align 4
  %cmp = icmp eq i32 %0, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @scoremtx, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i32, i32* @pamN, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 %4)
  br label %if.end.13

if.else.4:                                        ; preds = %if.else
  %5 = load i32, i32* @scoremtx, align 4
  %cmp5 = icmp eq i32 %5, 1
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* @nblosum, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 %7)
  br label %if.end.12

if.else.8:                                        ; preds = %if.else.4
  %8 = load i32, i32* @scoremtx, align 4
  %cmp9 = icmp eq i32 %8, 2
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* @ppenalty, align 4
  %conv = sitofp i32 %11 to double
  %div = fdiv double %conv, 1.000000e+03
  %12 = load i32, i32* @ppenalty_ex, align 4
  %conv15 = sitofp i32 %12 to double
  %div16 = fdiv double %conv15, 1.000000e+03
  %13 = load i32, i32* @poffset, align 4
  %conv17 = sitofp i32 %13 to double
  %div18 = fdiv double %conv17, 1.000000e+03
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), double %div, double %div16, double %div18)
  %14 = load i8, i8* @use_fft, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0))
  %17 = load i32, i32* @tbrweight, align 4
  %cmp24 = icmp eq i32 %17, 0
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.34

if.else.28:                                       ; preds = %if.end.22
  %19 = load i32, i32* @tbrweight, align 4
  %cmp29 = icmp eq i32 %19, 3
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else.28
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.else.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.26
  %21 = load i32, i32* @tbitr, align 4
  %tobool35 = icmp ne i32 %21, 0
  br i1 %tobool35, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %22 = load i32, i32* @tbweight, align 4
  %tobool36 = icmp ne i32 %22, 0
  br i1 %tobool36, label %if.then.37, label %if.end.57

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.34
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0))
  %24 = load i32, i32* @tbitr, align 4
  %tobool39 = icmp ne i32 %24, 0
  br i1 %tobool39, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.then.37
  %25 = load i32, i32* @tbrweight, align 4
  %cmp40 = icmp eq i32 %25, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true, %if.then.37
  %27 = load i32, i32* @tbitr, align 4
  %tobool45 = icmp ne i32 %27, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %if.end.44
  %28 = load i32, i32* @tbrweight, align 4
  %cmp47 = icmp eq i32 %28, 3
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true.46
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.lhs.true.46, %if.end.44
  %30 = load i32, i32* @tbweight, align 4
  %tobool52 = icmp ne i32 %30, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.51
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.51
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.55, %lor.lhs.false
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %34 = load i32, i32* @ppenalty, align 4
  %conv58 = sitofp i32 %34 to double
  %div59 = fdiv double %conv58, 1.000000e+03
  %35 = load i32, i32* @ppenalty_ex, align 4
  %conv60 = sitofp i32 %35 to double
  %div61 = fdiv double %conv60, 1.000000e+03
  %36 = load i32, i32* @poffset, align 4
  %conv62 = sitofp i32 %36 to double
  %div63 = fdiv double %conv62, 1.000000e+03
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), double %div59, double %div61, double %div63)
  %37 = load i8, i8* @alg, align 1
  %conv65 = sext i8 %37 to i32
  %cmp66 = icmp eq i32 %conv65, 97
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.end.57
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.93

if.else.70:                                       ; preds = %if.end.57
  %39 = load i8, i8* @alg, align 1
  %conv71 = sext i8 %39 to i32
  %cmp72 = icmp eq i32 %conv71, 65
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.else.70
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.92

if.else.76:                                       ; preds = %if.else.70
  %41 = load i8, i8* @alg, align 1
  %conv77 = sext i8 %41 to i32
  %cmp78 = icmp eq i32 %conv77, 83
  br i1 %cmp78, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %if.else.76
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.91

if.else.82:                                       ; preds = %if.else.76
  %43 = load i8, i8* @alg, align 1
  %conv83 = sext i8 %43 to i32
  %cmp84 = icmp eq i32 %conv83, 67
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.else.82
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.90

if.else.88:                                       ; preds = %if.else.82
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.then.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.80
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.74
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.68
  %46 = load i8, i8* @use_fft, align 1
  %tobool94 = icmp ne i8 %46, 0
  br i1 %tobool94, label %if.then.95, label %if.else.111

if.then.95:                                       ; preds = %if.end.93
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  %48 = load i32, i32* @dorp, align 4
  %cmp97 = icmp eq i32 %48, 100
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.then.95
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.108

if.else.101:                                      ; preds = %if.then.95
  %50 = load i32, i32* @fftscore, align 4
  %tobool102 = icmp ne i32 %50, 0
  br i1 %tobool102, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.else.101
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.107

if.else.105:                                      ; preds = %if.else.101
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.then.103
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.99
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %54 = load i32, i32* @fftThreshold, align 4
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0), i32 %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %56 = load i32, i32* @fftWinSize, align 4
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i32 %56)
  br label %if.end.113

if.else.111:                                      ; preds = %if.end.93
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.end.108
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call114 = call i32 @fflush(%struct._IO_FILE* %58)
  ret void
}

declare signext i8 @seqcheck(i8**) #1

declare void @gappick0(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @pairalign([256 x i8]* %name, i32* %nlen, i8** %seq, i8** %aseq, i8** %mseq1, i8** %mseq2, double* %effarr, i32 %alloclen) #0 {
entry:
  %name.addr = alloca [256 x i8]*, align 8
  %nlen.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %effarr.addr = alloca double*, align 8
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ilim = alloca i32, align 4
  %clus1 = alloca i32, align 4
  %clus2 = alloca i32, align 4
  %off1 = alloca i32, align 4
  %off2 = alloca i32, align 4
  %pscore = alloca float, align 4
  %hat2p = alloca %struct._IO_FILE*, align 8
  %hat3p = alloca %struct._IO_FILE*, align 8
  %pt = alloca i8*, align 8
  %hat2file = alloca i8*, align 8
  %localhomtable = alloca %struct._LocalHom**, align 8
  %tmpptr = alloca %struct._LocalHom*, align 8
  %intdum = alloca i32, align 4
  %bunbo = alloca double, align 8
  %bpp = alloca i8***, align 8
  %ptpt = alloca i8**, align 8
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store i32* %nlen, i32** %nlen.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store double* %effarr, double** %effarr.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store float 0.000000e+00, float* %pscore, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8** %hat2file, align 8
  %0 = load i32, i32* @njob, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #6
  %1 = bitcast i8* %call to %struct._LocalHom**
  store %struct._LocalHom** %1, %struct._LocalHom*** %localhomtable, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @njob, align 4
  %conv2 = sext i32 %4 to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 80) #6
  %5 = bitcast i8* %call3 to %struct._LocalHom*
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %7, i64 %idxprom
  store %struct._LocalHom* %5, %struct._LocalHom** %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* @njob, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx10 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %12, i64 %idxprom9
  %13 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %13, i64 %idxprom8
  %start1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx11, i32 0, i32 3
  store i32 -1, i32* %start1, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx14 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %16, i64 %idxprom13
  %17 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %17, i64 %idxprom12
  %end1 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx15, i32 0, i32 4
  store i32 -1, i32* %end1, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx18 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %20, i64 %idxprom17
  %21 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %21, i64 %idxprom16
  %start2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx19, i32 0, i32 5
  store i32 -1, i32* %start2, align 4
  %22 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx22 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %24, i64 %idxprom21
  %25 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i64 %idxprom20
  %end2 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx23, i32 0, i32 6
  store i32 -1, i32* %end2, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx26 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %28, i64 %idxprom25
  %29 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %29, i64 %idxprom24
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx27, i32 0, i32 7
  store double -1.000000e+00, double* %opt, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %31 to i64
  %32 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx30 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %32, i64 %idxprom29
  %33 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i64 %idxprom28
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx31, i32 0, i32 1
  store %struct._LocalHom* null, %struct._LocalHom** %next, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx34 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %36, i64 %idxprom33
  %37 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %37, i64 %idxprom32
  %nokori = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx35, i32 0, i32 0
  store i32 0, i32* %nokori, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %39, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %40 = load double*, double** @pairalign.effarr1, align 8
  %cmp39 = icmp eq double* %40, null
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.38
  %41 = load i32, i32* @njob, align 4
  %42 = load i32, i32* @njob, align 4
  %call41 = call double** @AllocateDoubleMtx(i32 %41, i32 %42)
  store double** %call41, double*** @pairalign.distancemtx, align 8
  %43 = load i32, i32* @njob, align 4
  %call42 = call double* @AllocateDoubleVec(i32 %43)
  store double* %call42, double** @pairalign.effarr1, align 8
  %44 = load i32, i32* @njob, align 4
  %call43 = call double* @AllocateDoubleVec(i32 %44)
  store double* %call43, double** @pairalign.effarr2, align 8
  %call44 = call i8* @AllocateCharVec(i32 150)
  store i8* %call44, i8** @pairalign.indication1, align 8
  %call45 = call i8* @AllocateCharVec(i32 150)
  store i8* %call45, i8** @pairalign.indication2, align 8
  %45 = load i32, i32* @njob, align 4
  %46 = load i32, i32* @njob, align 4
  %call46 = call i8** @AllocateCharMtx(i32 %45, i32 %46)
  store i8** %call46, i8*** @pairalign.pair, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.38
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.62, %if.end
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* @njob, align 4
  %cmp48 = icmp slt i32 %47, %48
  br i1 %cmp48, label %for.body.50, label %for.end.64

for.body.50:                                      ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %for.body.50
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* @njob, align 4
  %cmp52 = icmp slt i32 %49, %50
  br i1 %cmp52, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.51
  %51 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %52 to i64
  %53 = load i8**, i8*** @pairalign.pair, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %53, i64 %idxprom56
  %54 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %54, i64 %idxprom55
  store i8 0, i8* %arrayidx58, align 1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %55 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %55, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond.51

for.end.61:                                       ; preds = %for.cond.51
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %56 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %56, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.47

for.end.64:                                       ; preds = %for.cond.47
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.73, %for.end.64
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* @njob, align 4
  %cmp66 = icmp slt i32 %57, %58
  br i1 %cmp66, label %for.body.68, label %for.end.75

for.body.68:                                      ; preds = %for.cond.65
  %59 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %60 to i64
  %61 = load i8**, i8*** @pairalign.pair, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %61, i64 %idxprom70
  %62 = load i8*, i8** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %62, i64 %idxprom69
  store i8 1, i8* %arrayidx72, align 1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.68
  %63 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %63, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.65

for.end.75:                                       ; preds = %for.cond.65
  %64 = load i8, i8* @alg, align 1
  %conv76 = sext i8 %64 to i32
  %cmp77 = icmp eq i32 %conv76, 72
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %for.end.75
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i32 0))
  %66 = load i32, i32* @njob, align 4
  %67 = load i8**, i8*** %seq.addr, align 8
  call void @callfoldalign(i32 %66, i8** %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %for.end.75
  %69 = load i8, i8* @alg, align 1
  %conv83 = sext i8 %69 to i32
  %cmp84 = icmp eq i32 %conv83, 66
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.82
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.49, i32 0, i32 0))
  %71 = load i32, i32* @njob, align 4
  %72 = load i8**, i8*** %seq.addr, align 8
  call void @calllara(i32 %71, i8** %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.50, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.82
  %74 = load i8, i8* @alg, align 1
  %conv90 = sext i8 %74 to i32
  %cmp91 = icmp eq i32 %conv90, 84
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.89
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.51, i32 0, i32 0))
  %76 = load i32, i32* @njob, align 4
  %77 = load i8**, i8*** %seq.addr, align 8
  call void @calllara(i32 %76, i8** %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0))
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.89
  %79 = load i8, i8* @alg, align 1
  %conv97 = sext i8 %79 to i32
  %cmp98 = icmp eq i32 %conv97, 115
  br i1 %cmp98, label %if.then.100, label %if.end.106

if.then.100:                                      ; preds = %if.end.96
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0))
  %81 = load i32, i32* @njob, align 4
  %conv102 = sext i32 %81 to i64
  %call103 = call noalias i8* @calloc(i64 %conv102, i64 8) #6
  %82 = bitcast i8* %call103 to i8***
  store i8*** %82, i8**** %bpp, align 8
  %83 = load i32, i32* @njob, align 4
  %84 = load i8***, i8**** %bpp, align 8
  call void @preparebpp(i32 %83, i8*** %84)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.100, %if.end.96
  %87 = load i32, i32* @njob, align 4
  %sub = sub nsw i32 %87, 1
  store i32 %sub, i32* %ilim, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.265, %if.end.106
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %ilim, align 4
  %cmp108 = icmp slt i32 %88, %89
  br i1 %cmp108, label %for.body.110, label %for.end.267

for.body.110:                                     ; preds = %for.cond.107
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* @njob, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 %91, i32 %92)
  %93 = load i32, i32* %i, align 4
  %add = add nsw i32 %93, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.262, %for.body.110
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* @njob, align 4
  %cmp113 = icmp slt i32 %94, %95
  br i1 %cmp113, label %for.body.115, label %for.end.264

for.body.115:                                     ; preds = %for.cond.112
  %96 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %96 to i64
  %97 = load i8**, i8*** %seq.addr, align 8
  %arrayidx117 = getelementptr inbounds i8*, i8** %97, i64 %idxprom116
  %98 = load i8*, i8** %arrayidx117, align 8
  %call118 = call i64 @strlen(i8* %98) #5
  %cmp119 = icmp eq i64 %call118, 0
  br i1 %cmp119, label %if.then.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.115
  %99 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %99 to i64
  %100 = load i8**, i8*** %seq.addr, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %100, i64 %idxprom121
  %101 = load i8*, i8** %arrayidx122, align 8
  %call123 = call i64 @strlen(i8* %101) #5
  %cmp124 = icmp eq i64 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %lor.lhs.false, %for.body.115
  %102 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %102 to i64
  %103 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %103 to i64
  %104 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx129 = getelementptr inbounds double*, double** %104, i64 %idxprom128
  %105 = load double*, double** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds double, double* %105, i64 %idxprom127
  store double -9.999000e+03, double* %arrayidx130, align 8
  br label %for.inc.262

if.end.131:                                       ; preds = %lor.lhs.false
  %106 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %106 to i64
  %107 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %107, i64 %idxprom132
  %108 = load i8*, i8** %arrayidx133, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %109 to i64
  %110 = load i8**, i8*** %seq.addr, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %110, i64 %idxprom134
  %111 = load i8*, i8** %arrayidx135, align 8
  %call136 = call i8* @strcpy(i8* %108, i8* %111) #6
  %112 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %112 to i64
  %113 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %113, i64 %idxprom137
  %114 = load i8*, i8** %arrayidx138, align 8
  %115 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %115 to i64
  %116 = load i8**, i8*** %seq.addr, align 8
  %arrayidx140 = getelementptr inbounds i8*, i8** %116, i64 %idxprom139
  %117 = load i8*, i8** %arrayidx140, align 8
  %call141 = call i8* @strcpy(i8* %114, i8* %117) #6
  %118 = load i8**, i8*** @pairalign.pair, align 8
  %119 = load i32, i32* %i, align 4
  %120 = load i8**, i8*** %aseq.addr, align 8
  %121 = load i8**, i8*** %mseq1.addr, align 8
  %122 = load double*, double** @pairalign.effarr1, align 8
  %123 = load double*, double** %effarr.addr, align 8
  %124 = load i8*, i8** @pairalign.indication1, align 8
  %call142 = call i32 @conjuctionfortbfast(i8** %118, i32 %119, i8** %120, i8** %121, double* %122, double* %123, i8* %124)
  store i32 %call142, i32* %clus1, align 4
  %125 = load i8**, i8*** @pairalign.pair, align 8
  %126 = load i32, i32* %j, align 4
  %127 = load i8**, i8*** %aseq.addr, align 8
  %128 = load i8**, i8*** %mseq2.addr, align 8
  %129 = load double*, double** @pairalign.effarr2, align 8
  %130 = load double*, double** %effarr.addr, align 8
  %131 = load i8*, i8** @pairalign.indication2, align 8
  %call143 = call i32 @conjuctionfortbfast(i8** %125, i32 %126, i8** %127, i8** %128, double* %129, double* %130, i8* %131)
  store i32 %call143, i32* %clus2, align 4
  %132 = load i8, i8* @use_fft, align 1
  %tobool = icmp ne i8 %132, 0
  br i1 %tobool, label %if.then.144, label %if.else

if.then.144:                                      ; preds = %if.end.131
  %133 = load i8**, i8*** %mseq1.addr, align 8
  %134 = load i8**, i8*** %mseq2.addr, align 8
  %135 = load double*, double** @pairalign.effarr1, align 8
  %136 = load double*, double** @pairalign.effarr2, align 8
  %137 = load i32, i32* %clus1, align 4
  %138 = load i32, i32* %clus2, align 4
  %139 = load i32, i32* %alloclen.addr, align 4
  %call145 = call float @Falign(i8** %133, i8** %134, double* %135, double* %136, i32 %137, i32 %138, i32 %139, i32* %intdum)
  store float %call145, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %if.end.172

if.else:                                          ; preds = %if.end.131
  %140 = load i8, i8* @alg, align 1
  %conv146 = sext i8 %140 to i32
  switch i32 %conv146, label %sw.epilog [
    i32 97, label %sw.bb
    i32 116, label %sw.bb.148
    i32 65, label %sw.bb.150
    i32 78, label %sw.bb.152
    i32 75, label %sw.bb.155
    i32 76, label %sw.bb.157
    i32 72, label %sw.bb.160
    i32 66, label %sw.bb.162
    i32 84, label %sw.bb.162
    i32 115, label %sw.bb.164
    i32 77, label %sw.bb.170
  ]

sw.bb:                                            ; preds = %if.else
  %141 = load i8**, i8*** %mseq1.addr, align 8
  %142 = load i8**, i8*** %mseq2.addr, align 8
  %143 = load double*, double** @pairalign.effarr1, align 8
  %144 = load double*, double** @pairalign.effarr2, align 8
  %145 = load i32, i32* %clus1, align 4
  %146 = load i32, i32* %clus2, align 4
  %147 = load i32, i32* %alloclen.addr, align 4
  %call147 = call float (i8**, i8**, double*, double*, i32, i32, i32, ...) bitcast (float (...)* @Aalign to float (i8**, i8**, double*, double*, i32, i32, i32, ...)*)(i8** %141, i8** %142, double* %143, double* %144, i32 %145, i32 %146, i32 %147)
  store float %call147, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.else
  %148 = load i32, i32* @penalty, align 4
  %149 = load i32, i32* @penalty_ex, align 4
  %150 = load i8**, i8*** %mseq1.addr, align 8
  %151 = load i8**, i8*** %mseq2.addr, align 8
  %152 = load i32, i32* %alloclen.addr, align 4
  %call149 = call float @G__align11_noalign([128 x i32]* getelementptr inbounds ([128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i32 0), i32 %148, i32 %149, i8** %150, i8** %151, i32 %152)
  store float %call149, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.else
  %153 = load i8**, i8*** %mseq1.addr, align 8
  %154 = load i8**, i8*** %mseq2.addr, align 8
  %155 = load i32, i32* %alloclen.addr, align 4
  %call151 = call float @G__align11(i8** %153, i8** %154, i32 %155)
  store float %call151, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %sw.epilog

sw.bb.152:                                        ; preds = %if.else
  %156 = load i32, i32* @penalty, align 4
  %157 = load i32, i32* @penalty_ex, align 4
  %158 = load i8**, i8*** %mseq1.addr, align 8
  %159 = load i8**, i8*** %mseq2.addr, align 8
  %160 = load i32, i32* %alloclen.addr, align 4
  %call153 = call float @G__align11_noalign([128 x i32]* getelementptr inbounds ([128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i32 0), i32 %156, i32 %157, i8** %158, i8** %159, i32 %160)
  store float %call153, float* %pscore, align 4
  %161 = load i8**, i8*** %mseq1.addr, align 8
  %162 = load i8**, i8*** %mseq2.addr, align 8
  %163 = load i32, i32* %alloclen.addr, align 4
  %call154 = call float @genL__align11(i8** %161, i8** %162, i32 %163, i32* %off1, i32* %off2)
  br label %sw.epilog

sw.bb.155:                                        ; preds = %if.else
  %164 = load i8**, i8*** %mseq1.addr, align 8
  %165 = load i8**, i8*** %mseq2.addr, align 8
  %166 = load i32, i32* %alloclen.addr, align 4
  %call156 = call float @genG__align11(i8** %164, i8** %165, i32 %166)
  store float %call156, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %sw.epilog

sw.bb.157:                                        ; preds = %if.else
  %167 = load i32, i32* @penalty, align 4
  %168 = load i32, i32* @penalty_ex, align 4
  %169 = load i8**, i8*** %mseq1.addr, align 8
  %170 = load i8**, i8*** %mseq2.addr, align 8
  %171 = load i32, i32* %alloclen.addr, align 4
  %call158 = call float @G__align11_noalign([128 x i32]* getelementptr inbounds ([128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i32 0), i32 %167, i32 %168, i8** %169, i8** %170, i32 %171)
  store float %call158, float* %pscore, align 4
  %172 = load i8**, i8*** %mseq1.addr, align 8
  %173 = load i8**, i8*** %mseq2.addr, align 8
  %174 = load i32, i32* %alloclen.addr, align 4
  %call159 = call float @L__align11(i8** %172, i8** %173, i32 %174, i32* %off1, i32* %off2)
  br label %sw.epilog

sw.bb.160:                                        ; preds = %if.else
  %175 = load i8**, i8*** %mseq1.addr, align 8
  %176 = load i8**, i8*** %mseq2.addr, align 8
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %j, align 4
  %179 = load i32, i32* %alloclen.addr, align 4
  %call161 = call float @recallpairfoldalign(i8** %175, i8** %176, i32 %177, i32 %178, i32* %off1, i32* %off2, i32 %179)
  store float %call161, float* %pscore, align 4
  br label %sw.epilog

sw.bb.162:                                        ; preds = %if.else, %if.else
  %180 = load i8**, i8*** %mseq1.addr, align 8
  %181 = load i8**, i8*** %mseq2.addr, align 8
  %182 = load i32, i32* %alloclen.addr, align 4
  %call163 = call float @recalllara(i8** %180, i8** %181, i32 %182)
  store float %call163, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.else
  %183 = load i8**, i8*** %mseq1.addr, align 8
  %184 = load i8**, i8*** %mseq2.addr, align 8
  %185 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %185 to i64
  %186 = load i8***, i8**** %bpp, align 8
  %arrayidx166 = getelementptr inbounds i8**, i8*** %186, i64 %idxprom165
  %187 = load i8**, i8*** %arrayidx166, align 8
  %188 = load i32, i32* %j, align 4
  %idxprom167 = sext i32 %188 to i64
  %189 = load i8***, i8**** %bpp, align 8
  %arrayidx168 = getelementptr inbounds i8**, i8*** %189, i64 %idxprom167
  %190 = load i8**, i8*** %arrayidx168, align 8
  %191 = load i32, i32* %alloclen.addr, align 4
  %call169 = call float @callmxscarna_giving_bpp(i8** %183, i8** %184, i8** %187, i8** %190, i32 %191)
  store float %call169, float* %pscore, align 4
  store i32 0, i32* %off2, align 4
  store i32 0, i32* %off1, align 4
  br label %sw.epilog

sw.bb.170:                                        ; preds = %if.else
  %192 = load i8**, i8*** %mseq1.addr, align 8
  %193 = load i8**, i8*** %mseq2.addr, align 8
  %194 = load i32, i32* %alloclen.addr, align 4
  %call171 = call float @MSalign11(i8** %192, i8** %193, i32 %194)
  store float %call171, float* %pscore, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.170, %sw.bb.164, %sw.bb.162, %sw.bb.160, %sw.bb.157, %sw.bb.155, %sw.bb.152, %sw.bb.150, %sw.bb.148, %sw.bb
  br label %if.end.172

if.end.172:                                       ; preds = %sw.epilog, %if.then.144
  %195 = load i8, i8* @alg, align 1
  %conv173 = sext i8 %195 to i32
  %cmp174 = icmp eq i32 %conv173, 116
  br i1 %cmp174, label %if.then.187, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.end.172
  %196 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx177 = getelementptr inbounds i8*, i8** %196, i64 0
  %197 = load i8*, i8** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %197, i64 0
  %198 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %198 to i32
  %cmp180 = icmp ne i32 %conv179, 0
  br i1 %cmp180, label %land.lhs.true, label %if.else.235

land.lhs.true:                                    ; preds = %lor.lhs.false.176
  %199 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %199, i64 0
  %200 = load i8*, i8** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %200, i64 0
  %201 = load i8, i8* %arrayidx183, align 1
  %conv184 = sext i8 %201 to i32
  %cmp185 = icmp ne i32 %conv184, 0
  br i1 %cmp185, label %if.then.187, label %if.else.235

if.then.187:                                      ; preds = %land.lhs.true, %if.end.172
  %202 = load float, float* %pscore, align 4
  %conv188 = fpext float %202 to double
  %203 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %203 to i64
  %204 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %204 to i64
  %205 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx191 = getelementptr inbounds double*, double** %205, i64 %idxprom190
  %206 = load double*, double** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds double, double* %206, i64 %idxprom189
  store double %conv188, double* %arrayidx192, align 8
  %207 = load i8, i8* @alg, align 1
  %conv193 = sext i8 %207 to i32
  %cmp194 = icmp eq i32 %conv193, 116
  br i1 %cmp194, label %if.then.199, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %if.then.187
  %208 = load i32, i32* @out_align_instead_of_hat3, align 4
  %cmp197 = icmp eq i32 %208, 1
  br i1 %cmp197, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %lor.lhs.false.196, %if.then.187
  br label %if.end.234

if.else.200:                                      ; preds = %lor.lhs.false.196
  %209 = load i8, i8* @alg, align 1
  %conv201 = sext i8 %209 to i32
  %cmp202 = icmp eq i32 %conv201, 72
  br i1 %cmp202, label %if.then.204, label %if.else.213

if.then.204:                                      ; preds = %if.else.200
  %210 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %210, i64 0
  %211 = load i8*, i8** %arrayidx205, align 8
  %212 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx206 = getelementptr inbounds i8*, i8** %212, i64 0
  %213 = load i8*, i8** %arrayidx206, align 8
  %214 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %214 to i64
  %215 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx208 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %215, i64 %idxprom207
  %216 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx208, align 8
  %217 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %217 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %216, i64 %idx.ext
  %218 = load i32, i32* %off1, align 4
  %219 = load i32, i32* %off2, align 4
  %220 = load float, float* %pscore, align 4
  %conv209 = fptosi float %220 to i32
  %221 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx210 = getelementptr inbounds i8*, i8** %221, i64 0
  %222 = load i8*, i8** %arrayidx210, align 8
  %call211 = call i64 @strlen(i8* %222) #5
  %conv212 = trunc i64 %call211 to i32
  call void @putlocalhom_ext(i8* %211, i8* %213, %struct._LocalHom* %add.ptr, i32 %218, i32 %219, i32 %conv209, i32 %conv212)
  br label %if.end.233

if.else.213:                                      ; preds = %if.else.200
  %223 = load i8, i8* @alg, align 1
  %conv214 = sext i8 %223 to i32
  %cmp215 = icmp ne i32 %conv214, 83
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.232

land.lhs.true.217:                                ; preds = %if.else.213
  %224 = load i8, i8* @alg, align 1
  %conv218 = sext i8 %224 to i32
  %cmp219 = icmp ne i32 %conv218, 86
  br i1 %cmp219, label %if.then.221, label %if.end.232

if.then.221:                                      ; preds = %land.lhs.true.217
  %225 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx222 = getelementptr inbounds i8*, i8** %225, i64 0
  %226 = load i8*, i8** %arrayidx222, align 8
  %227 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx223 = getelementptr inbounds i8*, i8** %227, i64 0
  %228 = load i8*, i8** %arrayidx223, align 8
  %229 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %229 to i64
  %230 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx225 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %230, i64 %idxprom224
  %231 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx225, align 8
  %232 = load i32, i32* %j, align 4
  %idx.ext226 = sext i32 %232 to i64
  %add.ptr227 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %231, i64 %idx.ext226
  %233 = load i32, i32* %off1, align 4
  %234 = load i32, i32* %off2, align 4
  %235 = load float, float* %pscore, align 4
  %conv228 = fptosi float %235 to i32
  %236 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %236, i64 0
  %237 = load i8*, i8** %arrayidx229, align 8
  %call230 = call i64 @strlen(i8* %237) #5
  %conv231 = trunc i64 %call230 to i32
  call void @putlocalhom2(i8* %226, i8* %228, %struct._LocalHom* %add.ptr227, i32 %233, i32 %234, i32 %conv228, i32 %conv231)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.221, %land.lhs.true.217, %if.else.213
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.204
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.199
  br label %if.end.240

if.else.235:                                      ; preds = %land.lhs.true, %lor.lhs.false.176
  %238 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %238 to i64
  %239 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %239 to i64
  %240 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx238 = getelementptr inbounds double*, double** %240, i64 %idxprom237
  %241 = load double*, double** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds double, double* %241, i64 %idxprom236
  store double -9.999000e+03, double* %arrayidx239, align 8
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.235, %if.end.234
  %242 = load i32, i32* @out_align_instead_of_hat3, align 4
  %tobool241 = icmp ne i32 %242, 0
  br i1 %tobool241, label %land.lhs.true.242, label %if.end.261

land.lhs.true.242:                                ; preds = %if.end.240
  %243 = load i8, i8* @alg, align 1
  %conv243 = sext i8 %243 to i32
  %cmp244 = icmp ne i32 %conv243, 116
  br i1 %cmp244, label %if.then.246, label %if.end.261

if.then.246:                                      ; preds = %land.lhs.true.242
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %245 = load i32, i32* %i, align 4
  %add247 = add nsw i32 %245, 1
  %246 = load i32, i32* %j, align 4
  %add248 = add nsw i32 %246, 1
  %247 = load float, float* %pscore, align 4
  %conv249 = fpext float %247 to double
  %call250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i32 0, i32 0), i32 %add247, i32 %add248, double %conv249)
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %249 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %249 to i64
  %250 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx252 = getelementptr inbounds [256 x i8], [256 x i8]* %250, i64 %idxprom251
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx252, i32 0, i32 0
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay)
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %252 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx254 = getelementptr inbounds i8*, i8** %252, i64 0
  %253 = load i8*, i8** %arrayidx254, align 8
  call void @write1seq(%struct._IO_FILE* %251, i8* %253)
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %255 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %255 to i64
  %256 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %arrayidx256 = getelementptr inbounds [256 x i8], [256 x i8]* %256, i64 %idxprom255
  %arraydecay257 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx256, i32 0, i32 0
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay257)
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %258 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx259 = getelementptr inbounds i8*, i8** %258, i64 0
  %259 = load i8*, i8** %arrayidx259, align 8
  call void @write1seq(%struct._IO_FILE* %257, i8* %259)
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.246, %land.lhs.true.242, %if.end.240
  br label %for.inc.262

for.inc.262:                                      ; preds = %if.end.261, %if.then.126
  %261 = load i32, i32* %j, align 4
  %inc263 = add nsw i32 %261, 1
  store i32 %inc263, i32* %j, align 4
  br label %for.cond.112

for.end.264:                                      ; preds = %for.cond.112
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.end.264
  %262 = load i32, i32* %i, align 4
  %inc266 = add nsw i32 %262, 1
  store i32 %inc266, i32* %i, align 4
  br label %for.cond.107

for.end.267:                                      ; preds = %for.cond.107
  store i32 0, i32* %i, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.292, %for.end.267
  %263 = load i32, i32* %i, align 4
  %264 = load i32, i32* @njob, align 4
  %cmp269 = icmp slt i32 %263, %264
  br i1 %cmp269, label %for.body.271, label %for.end.294

for.body.271:                                     ; preds = %for.cond.268
  store float 0.000000e+00, float* %pscore, align 4
  %265 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %265 to i64
  %266 = load i8**, i8*** %seq.addr, align 8
  %arrayidx273 = getelementptr inbounds i8*, i8** %266, i64 %idxprom272
  %267 = load i8*, i8** %arrayidx273, align 8
  store i8* %267, i8** %pt, align 8
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.285, %for.body.271
  %268 = load i8*, i8** %pt, align 8
  %269 = load i8, i8* %268, align 1
  %tobool275 = icmp ne i8 %269, 0
  br i1 %tobool275, label %for.body.276, label %for.end.286

for.body.276:                                     ; preds = %for.cond.274
  %270 = load i8*, i8** %pt, align 8
  %271 = load i8, i8* %270, align 1
  %conv277 = sext i8 %271 to i32
  %idxprom278 = sext i32 %conv277 to i64
  %272 = load i8*, i8** %pt, align 8
  %273 = load i8, i8* %272, align 1
  %conv279 = sext i8 %273 to i32
  %idxprom280 = sext i32 %conv279 to i64
  %arrayidx281 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom280
  %arrayidx282 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx281, i32 0, i64 %idxprom278
  %274 = load i32, i32* %arrayidx282, align 4
  %conv283 = sitofp i32 %274 to float
  %275 = load float, float* %pscore, align 4
  %add284 = fadd float %275, %conv283
  store float %add284, float* %pscore, align 4
  br label %for.inc.285

for.inc.285:                                      ; preds = %for.body.276
  %276 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  br label %for.cond.274

for.end.286:                                      ; preds = %for.cond.274
  %277 = load float, float* %pscore, align 4
  %conv287 = fpext float %277 to double
  %278 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %278 to i64
  %279 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %279 to i64
  %280 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx290 = getelementptr inbounds double*, double** %280, i64 %idxprom289
  %281 = load double*, double** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds double, double* %281, i64 %idxprom288
  store double %conv287, double* %arrayidx291, align 8
  br label %for.inc.292

for.inc.292:                                      ; preds = %for.end.286
  %282 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %282, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond.268

for.end.294:                                      ; preds = %for.cond.268
  %283 = load i32, i32* @njob, align 4
  %sub295 = sub nsw i32 %283, 1
  store i32 %sub295, i32* %ilim, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.358, %for.end.294
  %284 = load i32, i32* %i, align 4
  %285 = load i32, i32* %ilim, align 4
  %cmp297 = icmp slt i32 %284, %285
  br i1 %cmp297, label %for.body.299, label %for.end.360

for.body.299:                                     ; preds = %for.cond.296
  %286 = load i32, i32* %i, align 4
  %add300 = add nsw i32 %286, 1
  store i32 %add300, i32* %j, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.355, %for.body.299
  %287 = load i32, i32* %j, align 4
  %288 = load i32, i32* @njob, align 4
  %cmp302 = icmp slt i32 %287, %288
  br i1 %cmp302, label %for.body.304, label %for.end.357

for.body.304:                                     ; preds = %for.cond.301
  %289 = load i32, i32* %j, align 4
  %idxprom305 = sext i32 %289 to i64
  %290 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %290 to i64
  %291 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx307 = getelementptr inbounds double*, double** %291, i64 %idxprom306
  %292 = load double*, double** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds double, double* %292, i64 %idxprom305
  %293 = load double, double* %arrayidx308, align 8
  %cmp309 = fcmp oeq double %293, -9.999000e+03
  br i1 %cmp309, label %if.then.339, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %for.body.304
  %294 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %294 to i64
  %295 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %295 to i64
  %296 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx314 = getelementptr inbounds double*, double** %296, i64 %idxprom313
  %297 = load double*, double** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds double, double* %297, i64 %idxprom312
  %298 = load double, double* %arrayidx315, align 8
  %299 = load i32, i32* %j, align 4
  %idxprom316 = sext i32 %299 to i64
  %300 = load i32, i32* %j, align 4
  %idxprom317 = sext i32 %300 to i64
  %301 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx318 = getelementptr inbounds double*, double** %301, i64 %idxprom317
  %302 = load double*, double** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds double, double* %302, i64 %idxprom316
  %303 = load double, double* %arrayidx319, align 8
  %cmp320 = fcmp olt double %298, %303
  br i1 %cmp320, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.311
  %304 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %304 to i64
  %305 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %305 to i64
  %306 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx324 = getelementptr inbounds double*, double** %306, i64 %idxprom323
  %307 = load double*, double** %arrayidx324, align 8
  %arrayidx325 = getelementptr inbounds double, double* %307, i64 %idxprom322
  %308 = load double, double* %arrayidx325, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.311
  %309 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %309 to i64
  %310 = load i32, i32* %j, align 4
  %idxprom327 = sext i32 %310 to i64
  %311 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx328 = getelementptr inbounds double*, double** %311, i64 %idxprom327
  %312 = load double*, double** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds double, double* %312, i64 %idxprom326
  %313 = load double, double* %arrayidx329, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %308, %cond.true ], [ %313, %cond.false ]
  store double %cond, double* %bunbo, align 8
  %cmp330 = fcmp oeq double %cond, 0.000000e+00
  br i1 %cmp330, label %if.then.339, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %cond.end
  %314 = load double, double* %bunbo, align 8
  %315 = load i32, i32* %j, align 4
  %idxprom333 = sext i32 %315 to i64
  %316 = load i32, i32* %i, align 4
  %idxprom334 = sext i32 %316 to i64
  %317 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx335 = getelementptr inbounds double*, double** %317, i64 %idxprom334
  %318 = load double*, double** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds double, double* %318, i64 %idxprom333
  %319 = load double, double* %arrayidx336, align 8
  %cmp337 = fcmp olt double %314, %319
  br i1 %cmp337, label %if.then.339, label %if.else.344

if.then.339:                                      ; preds = %lor.lhs.false.332, %cond.end, %for.body.304
  %320 = load i32, i32* %j, align 4
  %idxprom340 = sext i32 %320 to i64
  %321 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %321 to i64
  %322 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx342 = getelementptr inbounds double*, double** %322, i64 %idxprom341
  %323 = load double*, double** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds double, double* %323, i64 %idxprom340
  store double 2.000000e+00, double* %arrayidx343, align 8
  br label %if.end.354

if.else.344:                                      ; preds = %lor.lhs.false.332
  %324 = load i32, i32* %j, align 4
  %idxprom345 = sext i32 %324 to i64
  %325 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %325 to i64
  %326 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx347 = getelementptr inbounds double*, double** %326, i64 %idxprom346
  %327 = load double*, double** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds double, double* %327, i64 %idxprom345
  %328 = load double, double* %arrayidx348, align 8
  %329 = load double, double* %bunbo, align 8
  %div = fdiv double %328, %329
  %sub349 = fsub double 1.000000e+00, %div
  %mul = fmul double %sub349, 2.000000e+00
  %330 = load i32, i32* %j, align 4
  %idxprom350 = sext i32 %330 to i64
  %331 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %331 to i64
  %332 = load double**, double*** @pairalign.distancemtx, align 8
  %arrayidx352 = getelementptr inbounds double*, double** %332, i64 %idxprom351
  %333 = load double*, double** %arrayidx352, align 8
  %arrayidx353 = getelementptr inbounds double, double* %333, i64 %idxprom350
  store double %mul, double* %arrayidx353, align 8
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.344, %if.then.339
  br label %for.inc.355

for.inc.355:                                      ; preds = %if.end.354
  %334 = load i32, i32* %j, align 4
  %inc356 = add nsw i32 %334, 1
  store i32 %inc356, i32* %j, align 4
  br label %for.cond.301

for.end.357:                                      ; preds = %for.cond.301
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.end.357
  %335 = load i32, i32* %i, align 4
  %inc359 = add nsw i32 %335, 1
  store i32 %inc359, i32* %i, align 4
  br label %for.cond.296

for.end.360:                                      ; preds = %for.cond.296
  %336 = load i8*, i8** %hat2file, align 8
  %call361 = call %struct._IO_FILE* @fopen(i8* %336, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0))
  store %struct._IO_FILE* %call361, %struct._IO_FILE** %hat2p, align 8
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p, align 8
  %tobool362 = icmp ne %struct._IO_FILE* %337, null
  br i1 %tobool362, label %if.end.364, label %if.then.363

if.then.363:                                      ; preds = %for.end.360
  call void @ErrorExit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.363, %for.end.360
  %338 = load i32, i32* @out_align_instead_of_hat3, align 4
  %cmp365 = icmp eq i32 %338, 0
  br i1 %cmp365, label %if.then.367, label %if.else.368

if.then.367:                                      ; preds = %if.end.364
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p, align 8
  %340 = load i32, i32* @njob, align 4
  %341 = load [256 x i8]*, [256 x i8]** %name.addr, align 8
  %342 = load double**, double*** @pairalign.distancemtx, align 8
  call void @WriteHat2(%struct._IO_FILE* %339, i32 %340, [256 x i8]* %341, double** %342)
  br label %if.end.369

if.else.368:                                      ; preds = %if.end.364
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p, align 8
  %344 = load i32, i32* @njob, align 4
  %345 = load double**, double*** @pairalign.distancemtx, align 8
  call void @WriteHat2plain(%struct._IO_FILE* %343, i32 %344, double** %345)
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.368, %if.then.367
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** %hat2p, align 8
  %call370 = call i32 @fclose(%struct._IO_FILE* %346)
  %347 = load i32, i32* @out_align_instead_of_hat3, align 4
  %cmp371 = icmp eq i32 %347, 0
  br i1 %cmp371, label %if.then.373, label %if.end.412

if.then.373:                                      ; preds = %if.end.369
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call374 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0))
  %349 = load i32, i32* @njob, align 4
  %sub375 = sub nsw i32 %349, 1
  store i32 %sub375, i32* %ilim, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.inc.409, %if.then.373
  %350 = load i32, i32* %i, align 4
  %351 = load i32, i32* %ilim, align 4
  %cmp377 = icmp slt i32 %350, %351
  br i1 %cmp377, label %for.body.379, label %for.end.411

for.body.379:                                     ; preds = %for.cond.376
  %352 = load i32, i32* %i, align 4
  %add380 = add nsw i32 %352, 1
  store i32 %add380, i32* %j, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.406, %for.body.379
  %353 = load i32, i32* %j, align 4
  %354 = load i32, i32* @njob, align 4
  %cmp382 = icmp slt i32 %353, %354
  br i1 %cmp382, label %for.body.384, label %for.end.408

for.body.384:                                     ; preds = %for.cond.381
  %355 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %355 to i64
  %356 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %arrayidx386 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %356, i64 %idxprom385
  %357 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx386, align 8
  %358 = load i32, i32* %j, align 4
  %idx.ext387 = sext i32 %358 to i64
  %add.ptr388 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %357, i64 %idx.ext387
  store %struct._LocalHom* %add.ptr388, %struct._LocalHom** %tmpptr, align 8
  br label %for.cond.389

for.cond.389:                                     ; preds = %for.inc.403, %for.body.384
  %359 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %tobool390 = icmp ne %struct._LocalHom* %359, null
  br i1 %tobool390, label %for.body.391, label %for.end.405

for.body.391:                                     ; preds = %for.cond.389
  %360 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %opt392 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %360, i32 0, i32 7
  %361 = load double, double* %opt392, align 8
  %cmp393 = fcmp oeq double %361, -1.000000e+00
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %for.body.391
  br label %for.inc.403

if.end.396:                                       ; preds = %for.body.391
  %362 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %363 = load i32, i32* %i, align 4
  %364 = load i32, i32* %j, align 4
  %365 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %overlapaa = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %365, i32 0, i32 8
  %366 = load i32, i32* %overlapaa, align 4
  %367 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %opt397 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %367, i32 0, i32 7
  %368 = load double, double* %opt397, align 8
  %369 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start1398 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %369, i32 0, i32 3
  %370 = load i32, i32* %start1398, align 4
  %371 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end1399 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %371, i32 0, i32 4
  %372 = load i32, i32* %end1399, align 4
  %373 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2400 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %373, i32 0, i32 5
  %374 = load i32, i32* %start2400, align 4
  %375 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2401 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %375, i32 0, i32 6
  %376 = load i32, i32* %end2401, align 4
  %call402 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %362, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0), i32 %363, i32 %364, i32 %366, double %368, i32 %370, i32 %372, i32 %374, i32 %376)
  br label %for.inc.403

for.inc.403:                                      ; preds = %if.end.396, %if.then.395
  %377 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next404 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %377, i32 0, i32 1
  %378 = load %struct._LocalHom*, %struct._LocalHom** %next404, align 8
  store %struct._LocalHom* %378, %struct._LocalHom** %tmpptr, align 8
  br label %for.cond.389

for.end.405:                                      ; preds = %for.cond.389
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.end.405
  %379 = load i32, i32* %j, align 4
  %inc407 = add nsw i32 %379, 1
  store i32 %inc407, i32* %j, align 4
  br label %for.cond.381

for.end.408:                                      ; preds = %for.cond.381
  br label %for.inc.409

for.inc.409:                                      ; preds = %for.end.408
  %380 = load i32, i32* %i, align 4
  %inc410 = add nsw i32 %380, 1
  store i32 %inc410, i32* %i, align 4
  br label %for.cond.376

for.end.411:                                      ; preds = %for.cond.376
  br label %if.end.412

if.end.412:                                       ; preds = %for.end.411, %if.end.369
  %381 = load %struct._LocalHom**, %struct._LocalHom*** %localhomtable, align 8
  %382 = load i32, i32* @njob, align 4
  call void @FreeLocalHomTable(%struct._LocalHom** %381, i32 %382)
  %383 = load i8, i8* @alg, align 1
  %conv413 = sext i8 %383 to i32
  %cmp414 = icmp eq i32 %conv413, 115
  br i1 %cmp414, label %if.then.416, label %if.end.433

if.then.416:                                      ; preds = %if.end.412
  store i32 0, i32* %i, align 4
  br label %for.cond.417

for.cond.417:                                     ; preds = %for.inc.430, %if.then.416
  %384 = load i32, i32* %i, align 4
  %385 = load i32, i32* @njob, align 4
  %cmp418 = icmp slt i32 %384, %385
  br i1 %cmp418, label %for.body.420, label %for.end.432

for.body.420:                                     ; preds = %for.cond.417
  %386 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %386 to i64
  %387 = load i8***, i8**** %bpp, align 8
  %arrayidx422 = getelementptr inbounds i8**, i8*** %387, i64 %idxprom421
  %388 = load i8**, i8*** %arrayidx422, align 8
  store i8** %388, i8*** %ptpt, align 8
  br label %while.body

while.body:                                       ; preds = %for.body.420, %if.end.426
  %389 = load i8**, i8*** %ptpt, align 8
  %390 = load i8*, i8** %389, align 8
  %tobool423 = icmp ne i8* %390, null
  br i1 %tobool423, label %if.then.424, label %if.else.425

if.then.424:                                      ; preds = %while.body
  %391 = load i8**, i8*** %ptpt, align 8
  %392 = load i8*, i8** %391, align 8
  call void @free(i8* %392) #6
  br label %if.end.426

if.else.425:                                      ; preds = %while.body
  br label %while.end

if.end.426:                                       ; preds = %if.then.424
  %393 = load i8**, i8*** %ptpt, align 8
  %incdec.ptr427 = getelementptr inbounds i8*, i8** %393, i32 1
  store i8** %incdec.ptr427, i8*** %ptpt, align 8
  br label %while.body

while.end:                                        ; preds = %if.else.425
  %394 = load i32, i32* %i, align 4
  %idxprom428 = sext i32 %394 to i64
  %395 = load i8***, i8**** %bpp, align 8
  %arrayidx429 = getelementptr inbounds i8**, i8*** %395, i64 %idxprom428
  %396 = load i8**, i8*** %arrayidx429, align 8
  %397 = bitcast i8** %396 to i8*
  call void @free(i8* %397) #6
  br label %for.inc.430

for.inc.430:                                      ; preds = %while.end
  %398 = load i32, i32* %i, align 4
  %inc431 = add nsw i32 %398, 1
  store i32 %inc431, i32* %i, align 4
  br label %for.cond.417

for.end.432:                                      ; preds = %for.cond.417
  %399 = load i8***, i8**** %bpp, align 8
  %400 = bitcast i8*** %399 to i8*
  call void @free(i8* %400) #6
  br label %if.end.433

if.end.433:                                       ; preds = %for.end.432, %if.end.412
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare double** @AllocateDoubleMtx(i32, i32) #1

declare i8* @AllocateCharVec(i32) #1

; Function Attrs: nounwind uwtable
define internal void @callfoldalign(i32 %nseq, i8** %mseq) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %mseq.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %mseq, i8*** %mseq.addr, align 8
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
  %3 = load i8**, i8*** %mseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  call void @t2u(i8* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.9, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nseq.addr, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body.4, label %for.end.11

for.body.4:                                       ; preds = %for.cond.2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 %add)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8**, i8*** %mseq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 %idxprom6
  %15 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* %15)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.4
  %16 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.2

for.end.11:                                       ; preds = %for.cond.2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load i8*, i8** @whereispairalign, align 8
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @callfoldalign.com, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.66, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i32 0)) #6
  %call14 = call i32 @system(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @callfoldalign.com, i32 0, i32 0))
  store i32 %call14, i32* %res, align 4
  %19 = load i32, i32* %res, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end.11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.18:                                        ; preds = %for.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calllara(i32 %nseq, i8** %mseq, i8* %laraarg) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %mseq.addr = alloca i8**, align 8
  %laraarg.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %mseq, i8*** %mseq.addr, align 8
  store i8* %laraarg, i8** %laraarg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.7, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end.9

for.body.4:                                       ; preds = %for.cond.2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 %add)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %mseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* %12)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.4
  %13 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.2

for.end.9:                                        ; preds = %for.cond.2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %14)
  %15 = load i8*, i8** @whereispairalign, align 8
  %16 = load i8*, i8** %laraarg.addr, align 8
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @calllara.com, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.70, i32 0, i32 0), i8* %15, i8* %16) #6
  %call12 = call i32 @system(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @calllara.com, i32 0, i32 0))
  store i32 %call12, i32* %res, align 4
  %17 = load i32, i32* %res, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.end.9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.16:                                        ; preds = %for.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @preparebpp(i32 %nseq, i8*** %bpp) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %bpp.addr = alloca i8***, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8*** %bpp, i8**** %bpp.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %5 = load i8***, i8**** %bpp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %5, i64 %idx.ext
  call void @readhat4(%struct._IO_FILE* %4, i8*** %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %8)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @conjuctionfortbfast(i8**, i32, i8**, i8**, double*, double*, i8*) #1

declare float @Falign(i8**, i8**, double*, double*, i32, i32, i32, i32*) #1

declare float @Aalign(...) #1

declare float @G__align11_noalign([128 x i32]*, i32, i32, i8**, i8**, i32) #1

declare float @G__align11(i8**, i8**, i32) #1

declare float @genL__align11(i8**, i8**, i32, i32*, i32*) #1

declare float @genG__align11(i8**, i8**, i32) #1

declare float @L__align11(i8**, i8**, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal float @recallpairfoldalign(i8** %mseq1, i8** %mseq2, i32 %m1, i32 %m2, i32* %of1pt, i32* %of2pt, i32 %alloclen) #0 {
entry:
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %m1.addr = alloca i32, align 4
  %m2.addr = alloca i32, align 4
  %of1pt.addr = alloca i32*, align 8
  %of2pt.addr = alloca i32*, align 8
  %alloclen.addr = alloca i32, align 4
  %value = alloca float, align 4
  %aln1 = alloca i8*, align 8
  %aln2 = alloca i8*, align 8
  %of1tmp = alloca i32, align 4
  %of2tmp = alloca i32, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i32 %m1, i32* %m1.addr, align 4
  store i32 %m2, i32* %m2.addr, align 4
  store i32* %of1pt, i32** %of1pt.addr, align 8
  store i32* %of2pt, i32** %of2pt.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @recallpairfoldalign.fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @recallpairfoldalign.fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @recallpairfoldalign.fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %3 = load i32, i32* %alloclen.addr, align 4
  %conv = sext i32 %3 to i64
  %call5 = call noalias i8* @calloc(i64 %conv, i64 1) #6
  store i8* %call5, i8** %aln1, align 8
  %4 = load i32, i32* %alloclen.addr, align 4
  %conv6 = sext i32 %4 to i64
  %call7 = call noalias i8* @calloc(i64 %conv6, i64 1) #6
  store i8* %call7, i8** %aln2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @recallpairfoldalign.fp, align 8
  %6 = load i8**, i8*** %mseq1.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8**, i8*** %mseq2.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %aln1, align 8
  %11 = load i8*, i8** %aln2, align 8
  %12 = load i32, i32* %m1.addr, align 4
  %13 = load i32, i32* %m2.addr, align 4
  %14 = load i32, i32* %alloclen.addr, align 4
  call void @readpairfoldalign(%struct._IO_FILE* %5, i8* %7, i8* %9, i8* %10, i8* %11, i32 %12, i32 %13, i32* %of1tmp, i32* %of2tmp, i32 %14)
  %call8 = call i8* @strstr(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @foldalignopt, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0)) #5
  %tobool = icmp ne i8* %call8, null
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0))
  %16 = load i8**, i8*** %mseq1.addr, align 8
  %17 = load i8**, i8*** %mseq2.addr, align 8
  %18 = load i32, i32* %alloclen.addr, align 4
  %call11 = call float @G__align11(i8** %16, i8** %17, i32 %18)
  store float %call11, float* %value, align 4
  %19 = load i32*, i32** %of1pt.addr, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %of2pt.addr, align 8
  store i32 0, i32* %20, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0))
  %22 = load i8**, i8*** %mseq1.addr, align 8
  %23 = load i8**, i8*** %mseq2.addr, align 8
  %24 = load i32, i32* %alloclen.addr, align 4
  %25 = load i32*, i32** %of1pt.addr, align 8
  %26 = load i32*, i32** %of2pt.addr, align 8
  %call13 = call float @L__align11(i8** %22, i8** %23, i32 %24, i32* %25, i32* %26)
  store float %call13, float* %value, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %27 = load i8*, i8** %aln1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx, align 1
  %conv15 = sext i8 %28 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.end.14
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* %m1.addr, align 4
  %add = add nsw i32 %30, 1
  %31 = load i32, i32* %m2.addr, align 4
  %add19 = add nsw i32 %31, 1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.80, i32 0, i32 0), i32 %add, i32 %add19)
  br label %if.end.24

if.else.21:                                       ; preds = %if.end.14
  %32 = load i8**, i8*** %mseq1.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %aln1, align 8
  %call22 = call i8* @strcpy(i8* %33, i8* %34) #6
  %35 = load i8**, i8*** %mseq2.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %aln2, align 8
  %call23 = call i8* @strcpy(i8* %36, i8* %37) #6
  %38 = load i32, i32* %of1tmp, align 4
  %39 = load i32*, i32** %of1pt.addr, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %of2tmp, align 4
  %41 = load i32*, i32** %of2pt.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.18
  %42 = load i8*, i8** %aln1, align 8
  call void @free(i8* %42) #6
  %43 = load i8*, i8** %aln2, align 8
  call void @free(i8* %43) #6
  %44 = load float, float* %value, align 4
  ret float %44
}

; Function Attrs: nounwind uwtable
define internal float @recalllara(i8** %mseq1, i8** %mseq2, i32 %alloclen) #0 {
entry:
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %value = alloca float, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @recalllara.fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @recalllara.fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @recalllara.fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %alloclen.addr, align 4
  %call4 = call i8* @AllocateCharVec(i32 %3)
  store i8* %call4, i8** @recalllara.ungap1, align 8
  %4 = load i32, i32* %alloclen.addr, align 4
  %call5 = call i8* @AllocateCharVec(i32 %4)
  store i8* %call5, i8** @recalllara.ungap2, align 8
  %5 = load i32, i32* %alloclen.addr, align 4
  %call6 = call i8* @AllocateCharVec(i32 %5)
  store i8* %call6, i8** @recalllara.ori1, align 8
  %6 = load i32, i32* %alloclen.addr, align 4
  %call7 = call i8* @AllocateCharVec(i32 %6)
  store i8* %call7, i8** @recalllara.ori2, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %7 = load i8*, i8** @recalllara.ori1, align 8
  %8 = load i8**, i8*** %mseq1.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %call9 = call i8* @strcpy(i8* %7, i8* %9) #6
  %10 = load i8*, i8** @recalllara.ori2, align 8
  %11 = load i8**, i8*** %mseq2.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %call10 = call i8* @strcpy(i8* %10, i8* %12) #6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @recalllara.fp, align 8
  %call11 = call i8* @fgets(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @recalllara.com, i32 0, i32 0), i32 999, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @recalllara.fp, align 8
  %call12 = call i32 @myfgets(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @recalllara.com, i32 0, i32 0), i32 9999, %struct._IO_FILE* %14)
  %15 = load i8**, i8*** %mseq1.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %call13 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @recalllara.com, i32 0, i32 0)) #6
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @recalllara.fp, align 8
  %call14 = call i32 @myfgets(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @recalllara.com, i32 0, i32 0), i32 9999, %struct._IO_FILE* %17)
  %18 = load i8**, i8*** %mseq2.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %call15 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @recalllara.com, i32 0, i32 0)) #6
  %20 = load i8*, i8** @recalllara.ungap1, align 8
  %21 = load i8**, i8*** %mseq1.addr, align 8
  %22 = load i8*, i8** %21, align 8
  call void @gappick0(i8* %20, i8* %22)
  %23 = load i8*, i8** @recalllara.ungap2, align 8
  %24 = load i8**, i8*** %mseq2.addr, align 8
  %25 = load i8*, i8** %24, align 8
  call void @gappick0(i8* %23, i8* %25)
  %26 = load i8*, i8** @recalllara.ungap1, align 8
  call void @t2u(i8* %26)
  %27 = load i8*, i8** @recalllara.ungap2, align 8
  call void @t2u(i8* %27)
  %28 = load i8*, i8** @recalllara.ori1, align 8
  call void @t2u(i8* %28)
  %29 = load i8*, i8** @recalllara.ori2, align 8
  call void @t2u(i8* %29)
  %30 = load i8*, i8** @recalllara.ungap1, align 8
  %31 = load i8*, i8** @recalllara.ori1, align 8
  %call16 = call i32 @strcmp(i8* %30, i8* %31) #5
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %32 = load i8*, i8** @recalllara.ungap2, align 8
  %33 = load i8*, i8** @recalllara.ori2, align 8
  %call17 = call i32 @strcmp(i8* %32, i8* %33) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8**, i8*** %mseq1.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i8* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i8*, i8** @recalllara.ungap1, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** @recalllara.ori1, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i8* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i8**, i8*** %mseq2.addr, align 8
  %44 = load i8*, i8** %43, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i8*, i8** @recalllara.ungap2, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i8* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i8*, i8** @recalllara.ori2, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i8* %48)
  call void @exit(i32 1) #7
  unreachable

if.end.27:                                        ; preds = %lor.lhs.false
  %49 = load i8**, i8*** %mseq1.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %mseq2.addr, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @penalty, align 4
  %call28 = call i32 @naivepairscore11(i8* %50, i8* %52, i32 %53)
  %conv = sitofp i32 %call28 to float
  store float %conv, float* %value, align 4
  %54 = load float, float* %value, align 4
  ret float %54
}

; Function Attrs: nounwind uwtable
define internal float @callmxscarna_giving_bpp(i8** %mseq1, i8** %mseq2, i8** %bpp1, i8** %bpp2, i32 %alloclen) #0 {
entry:
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %bpp1.addr = alloca i8**, align 8
  %bpp2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %res = alloca i32, align 4
  %value = alloca float, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i8** %bpp1, i8*** %bpp1.addr, align 8
  store i8** %bpp2, i8*** %bpp2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i8**, i8*** %bpp1.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %6 = load i8**, i8*** %bpp1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %bpp1.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0))
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.8, %while.end
  %9 = load i8**, i8*** %bpp2.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %tobool7 = icmp ne i8* %10, null
  br i1 %tobool7, label %while.body.8, label %while.end.11

while.body.8:                                     ; preds = %while.cond.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load i8**, i8*** %bpp2.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr9, i8*** %bpp2.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %13)
  br label %while.cond.6

while.end.11:                                     ; preds = %while.cond.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %14)
  %call13 = call i32 @system(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i32 0, i32 0))
  %15 = load i8**, i8*** %mseq1.addr, align 8
  %16 = load i8*, i8** %15, align 8
  call void @t2u(i8* %16)
  %17 = load i8**, i8*** %mseq2.addr, align 8
  %18 = load i8*, i8** %17, align 8
  call void @t2u(i8* %18)
  %call14 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %fp, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool15 = icmp ne %struct._IO_FILE* %19, null
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %while.end.11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.18:                                        ; preds = %while.end.11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %23 = load i8**, i8*** %mseq1.addr, align 8
  %24 = load i8*, i8** %23, align 8
  call void @write1seq(%struct._IO_FILE* %22, i8* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %27 = load i8**, i8*** %mseq2.addr, align 8
  %28 = load i8*, i8** %27, align 8
  call void @write1seq(%struct._IO_FILE* %26, i8* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* %29)
  %call22 = call i32 @system(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i32 0, i32 0))
  %30 = load i8*, i8** @whereispairalign, align 8
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @callmxscarna_giving_bpp.com, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.100, i32 0, i32 0), i8* %30) #6
  %call24 = call i32 @system(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @callmxscarna_giving_bpp.com, i32 0, i32 0))
  store i32 %call24, i32* %res, align 4
  %31 = load i32, i32* %res, align 4
  %tobool25 = icmp ne i32 %31, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.18
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.28:                                        ; preds = %if.end.18
  %call29 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %fp, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool30 = icmp ne %struct._IO_FILE* %33, null
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.33:                                        ; preds = %if.end.28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call34 = call i8* @fgets(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @callmxscarna_giving_bpp.com, i32 0, i32 0), i32 999, %struct._IO_FILE* %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %37 = load i8**, i8*** %mseq1.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %call35 = call i32 @load1SeqWithoutName_new(%struct._IO_FILE* %36, i8* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call36 = call i8* @fgets(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @callmxscarna_giving_bpp.com, i32 0, i32 0), i32 999, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %41 = load i8**, i8*** %mseq2.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %call37 = call i32 @load1SeqWithoutName_new(%struct._IO_FILE* %40, i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %43)
  %44 = load i8**, i8*** %mseq1.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %mseq2.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @penalty, align 4
  %call39 = call i32 @naivepairscore11(i8* %45, i8* %47, i32 %48)
  %conv = sitofp i32 %call39 to float
  store float %conv, float* %value, align 4
  %49 = load float, float* %value, align 4
  ret float %49
}

declare float @MSalign11(i8**, i8**, i32) #1

declare void @putlocalhom_ext(i8*, i8*, %struct._LocalHom*, i32, i32, i32, i32) #1

declare void @putlocalhom2(i8*, i8*, %struct._LocalHom*, i32, i32, i32, i32) #1

declare void @write1seq(%struct._IO_FILE*, i8*) #1

declare void @ErrorExit(i8*) #1

declare void @WriteHat2(%struct._IO_FILE*, i32, [256 x i8]*, double**) #1

declare void @WriteHat2plain(%struct._IO_FILE*, i32, double**) #1

declare void @FreeLocalHomTable(%struct._LocalHom**, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @t2u(i8* %seq) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  store i8* %seq, i8** %seq.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 65
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %seq.addr, align 8
  store i8 97, i8* %4, align 1
  br label %if.end.55

if.else:                                          ; preds = %while.body
  %5 = load i8*, i8** %seq.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 97
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %7 = load i8*, i8** %seq.addr, align 8
  store i8 97, i8* %7, align 1
  br label %if.end.54

if.else.6:                                        ; preds = %if.else
  %8 = load i8*, i8** %seq.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 84
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.6
  %10 = load i8*, i8** %seq.addr, align 8
  store i8 117, i8* %10, align 1
  br label %if.end.53

if.else.11:                                       ; preds = %if.else.6
  %11 = load i8*, i8** %seq.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 116
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.11
  %13 = load i8*, i8** %seq.addr, align 8
  store i8 117, i8* %13, align 1
  br label %if.end.52

if.else.16:                                       ; preds = %if.else.11
  %14 = load i8*, i8** %seq.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 85
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  %16 = load i8*, i8** %seq.addr, align 8
  store i8 117, i8* %16, align 1
  br label %if.end.51

if.else.21:                                       ; preds = %if.else.16
  %17 = load i8*, i8** %seq.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv22 = sext i8 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 117
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.21
  %19 = load i8*, i8** %seq.addr, align 8
  store i8 117, i8* %19, align 1
  br label %if.end.50

if.else.26:                                       ; preds = %if.else.21
  %20 = load i8*, i8** %seq.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv27 = sext i8 %21 to i32
  %cmp28 = icmp eq i32 %conv27, 71
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  %22 = load i8*, i8** %seq.addr, align 8
  store i8 103, i8* %22, align 1
  br label %if.end.49

if.else.31:                                       ; preds = %if.else.26
  %23 = load i8*, i8** %seq.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv32 = sext i8 %24 to i32
  %cmp33 = icmp eq i32 %conv32, 103
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  %25 = load i8*, i8** %seq.addr, align 8
  store i8 103, i8* %25, align 1
  br label %if.end.48

if.else.36:                                       ; preds = %if.else.31
  %26 = load i8*, i8** %seq.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv37 = sext i8 %27 to i32
  %cmp38 = icmp eq i32 %conv37, 67
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.36
  %28 = load i8*, i8** %seq.addr, align 8
  store i8 99, i8* %28, align 1
  br label %if.end.47

if.else.41:                                       ; preds = %if.else.36
  %29 = load i8*, i8** %seq.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv42 = sext i8 %30 to i32
  %cmp43 = icmp eq i32 %conv42, 99
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.41
  %31 = load i8*, i8** %seq.addr, align 8
  store i8 99, i8* %31, align 1
  br label %if.end

if.else.46:                                       ; preds = %if.else.41
  %32 = load i8*, i8** %seq.addr, align 8
  store i8 110, i8* %32, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.46, %if.then.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %if.then.40
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.35
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.30
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.25
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.20
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.15
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.10
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.5
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  %33 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @system(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @readhat4(%struct._IO_FILE* %fp, i8*** %bpp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bpp.addr = alloca i8***, align 8
  %oneline = alloca [1000 x i8], align 16
  %bppsize = alloca i32, align 4
  %onechar = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8*** %bpp, i8**** %bpp.addr, align 8
  store i32 0, i32* %bppsize, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %onechar, align 4
  %1 = load i32, i32* %onechar, align 4
  %cmp = icmp ne i32 %1, 62
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %onechar, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @ungetc(i32 %3, %struct._IO_FILE* %4)
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %oneline, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 999, %struct._IO_FILE* %5)
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call4, i32* %onechar, align 4
  %7 = load i32, i32* %onechar, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @ungetc(i32 %7, %struct._IO_FILE* %8)
  %9 = load i32, i32* %onechar, align 4
  %cmp6 = icmp eq i32 %9, 62
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load i32, i32* %onechar, align 4
  %cmp7 = icmp eq i32 %10, -1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %lor.lhs.false, %while.body
  %11 = load i8***, i8**** %bpp.addr, align 8
  %12 = load i8**, i8*** %11, align 8
  %13 = bitcast i8** %12 to i8*
  %14 = load i32, i32* %bppsize, align 4
  %add = add nsw i32 %14, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call9 = call i8* @realloc(i8* %13, i64 %mul) #6
  %15 = bitcast i8* %call9 to i8**
  %16 = load i8***, i8**** %bpp.addr, align 8
  store i8** %15, i8*** %16, align 8
  %17 = load i32, i32* %bppsize, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8***, i8**** %bpp.addr, align 8
  %19 = load i8**, i8*** %18, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %while.end

if.end.10:                                        ; preds = %lor.lhs.false
  %arraydecay11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %oneline, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i8* @fgets(i8* %arraydecay11, i32 999, %struct._IO_FILE* %20)
  %21 = load i8***, i8**** %bpp.addr, align 8
  %22 = load i8**, i8*** %21, align 8
  %23 = bitcast i8** %22 to i8*
  %24 = load i32, i32* %bppsize, align 4
  %add13 = add nsw i32 %24, 2
  %conv14 = sext i32 %add13 to i64
  %mul15 = mul i64 %conv14, 8
  %call16 = call i8* @realloc(i8* %23, i64 %mul15) #6
  %25 = bitcast i8* %call16 to i8**
  %26 = load i8***, i8**** %bpp.addr, align 8
  store i8** %25, i8*** %26, align 8
  %call17 = call noalias i8* @calloc(i64 100, i64 1) #6
  %27 = load i32, i32* %bppsize, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i8***, i8**** %bpp.addr, align 8
  %29 = load i8**, i8*** %28, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %29, i64 %idxprom18
  store i8* %call17, i8** %arrayidx19, align 8
  %30 = load i32, i32* %bppsize, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load i8***, i8**** %bpp.addr, align 8
  %32 = load i8**, i8*** %31, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %32, i64 %idxprom20
  %33 = load i8*, i8** %arrayidx21, align 8
  %arraydecay22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %oneline, i32 0, i32 0
  %call23 = call i8* @strcpy(i8* %33, i8* %arraydecay22) #6
  %34 = load i32, i32* %bppsize, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %bppsize, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.8
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

declare void @readpairfoldalign(%struct._IO_FILE*, i8*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare i32 @myfgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @naivepairscore11(i8*, i8*, i32) #1

declare i32 @load1SeqWithoutName_new(%struct._IO_FILE*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
