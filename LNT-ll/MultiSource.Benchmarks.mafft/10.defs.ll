; ModuleID = './MultiSource.Benchmarks.mafft/10.defs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@commonAlloc1 = global i32 0, align 4
@commonAlloc2 = global i32 0, align 4
@commonIP = global i32** null, align 8
@commonJP = global i32** null, align 8
@consweight_multi = global float 1.000000e+00, align 4
@consweight_rna = global float 0.000000e+00, align 4
@RNAscoremtx = global i8 110, align 1
@modelname = common global [100 x i8] zeroinitializer, align 16
@njob = common global i32 0, align 4
@nlenmax = common global i32 0, align 4
@amino_n = common global [128 x i32] zeroinitializer, align 16
@amino_grp = common global [128 x i8] zeroinitializer, align 16
@amino_dis = common global [128 x [128 x i32]] zeroinitializer, align 16
@amino_disLN = common global [128 x [128 x i32]] zeroinitializer, align 16
@amino_dis_consweight_multi = common global [128 x [128 x double]] zeroinitializer, align 16
@n_dis = common global [26 x [26 x i32]] zeroinitializer, align 16
@n_disFFT = common global [26 x [26 x i32]] zeroinitializer, align 16
@n_dis_consweight_multi = common global [26 x [26 x float]] zeroinitializer, align 16
@amino = common global [26 x i8] zeroinitializer, align 16
@polarity = common global [20 x double] zeroinitializer, align 16
@volume = common global [20 x double] zeroinitializer, align 16
@ribosumdis = common global [37 x [37 x i32]] zeroinitializer, align 16
@ppid = common global i32 0, align 4
@thrinter = common global double 0.000000e+00, align 8
@fastathreshold = common global double 0.000000e+00, align 8
@pslocal = common global i32 0, align 4
@ppslocal = common global i32 0, align 4
@constraint = common global i32 0, align 4
@divpairscore = common global i32 0, align 4
@fmodel = common global i32 0, align 4
@nblosum = common global i32 0, align 4
@kobetsubunkatsu = common global i32 0, align 4
@bunkatsu = common global i32 0, align 4
@dorp = common global i32 0, align 4
@niter = common global i32 0, align 4
@contin = common global i32 0, align 4
@calledByXced = common global i32 0, align 4
@devide = common global i32 0, align 4
@scmtd = common global i32 0, align 4
@weight = common global i32 0, align 4
@utree = common global i32 0, align 4
@tbutree = common global i32 0, align 4
@refine = common global i32 0, align 4
@check = common global i32 0, align 4
@cut = common global double 0.000000e+00, align 8
@cooling = common global i32 0, align 4
@penalty = common global i32 0, align 4
@ppenalty = common global i32 0, align 4
@penaltyLN = common global i32 0, align 4
@RNApenalty = common global i32 0, align 4
@RNAppenalty = common global i32 0, align 4
@RNApenalty_ex = common global i32 0, align 4
@RNAppenalty_ex = common global i32 0, align 4
@penalty_ex = common global i32 0, align 4
@ppenalty_ex = common global i32 0, align 4
@penalty_exLN = common global i32 0, align 4
@penalty_EX = common global i32 0, align 4
@ppenalty_EX = common global i32 0, align 4
@penalty_OP = common global i32 0, align 4
@ppenalty_OP = common global i32 0, align 4
@RNAthr = common global i32 0, align 4
@RNApthr = common global i32 0, align 4
@offset = common global i32 0, align 4
@poffset = common global i32 0, align 4
@offsetLN = common global i32 0, align 4
@offsetFFT = common global i32 0, align 4
@scoremtx = common global i32 0, align 4
@TMorJTT = common global i32 0, align 4
@use_fft = common global i8 0, align 1
@force_fft = common global i8 0, align 1
@nevermemsave = common global i32 0, align 4
@fftscore = common global i32 0, align 4
@fftWinSize = common global i32 0, align 4
@fftThreshold = common global i32 0, align 4
@fftRepeatStop = common global i32 0, align 4
@fftNoAnchStop = common global i32 0, align 4
@divWinSize = common global i32 0, align 4
@divThreshold = common global i32 0, align 4
@disp = common global i32 0, align 4
@outgap = common global i32 0, align 4
@alg = common global i8 0, align 1
@cnst = common global i32 0, align 4
@mix = common global i32 0, align 4
@tbitr = common global i32 0, align 4
@tbweight = common global i32 0, align 4
@tbrweight = common global i32 0, align 4
@disopt = common global i32 0, align 4
@pamN = common global i32 0, align 4
@checkC = common global i32 0, align 4
@geta2 = common global float 0.000000e+00, align 4
@treemethod = common global i32 0, align 4
@kimuraR = common global i32 0, align 4
@swopt = common global i8* null, align 8
@fftkeika = common global i32 0, align 4
@score_check = common global i32 0, align 4
@makedistmtx = common global i32 0, align 4
@inputfile = common global i8* null, align 8
@rnakozo = common global i32 0, align 4
@rnaprediction = common global i8 0, align 1
@signalSM = common global i8* null, align 8
@prep_g = common global %struct._IO_FILE* null, align 8
@trap_g = common global %struct._IO_FILE* null, align 8
@seq_g = common global i8** null, align 8
@res_g = common global i8** null, align 8

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}