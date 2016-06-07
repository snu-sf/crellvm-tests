; ModuleID = 'hmmsearch.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.ReadSeqVars = type { %struct._IO_FILE*, i8*, i32, i8*, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i32, i32, i32, i32, i32, i32, i8*, %struct.seqinfo_s*, i8*, i32, i32, i32, i32, i32, %struct.msa_struct*, %struct.msafile_struct* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@OPTIONS = internal global [17 x %struct.opt_s] [%struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 1, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 4 }, %struct.opt_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0 }], align 16
@usage = internal global [382 x i8] c"Usage: hmmsearch [-options] <hmmfile> <sequence file or database>\0A  Available options are:\0A   -h        : help; print brief help on version and usage\0A   -A <n>    : sets alignment output limit to <n> best domain alignments\0A   -E <x>    : sets E value cutoff (globE) to <= x\0A   -T <x>    : sets T bit threshold (globT) to >= x\0A   -Z <n>    : sets Z (# seqs) for E-value calculation\0A\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"--compat\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--cut_ga\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"--cut_nc\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"--cut_tc\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--domE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--domT\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--forward\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"--null2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"--pvm\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"--xnu\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"--informat\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"unrecognized sequence file format \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@banner = internal global [58 x i8] c"hmmsearch - search a sequence database with a profile HMM\00", align 16
@experts = internal global [759 x i8] c"   --compat       : make best effort to use last version's output style\0A   --cpu <n>      : run <n> threads in parallel (if threaded)\0A   --cut_ga       : use Pfam GA gathering threshold cutoffs\0A   --cut_nc       : use Pfam NC noise threshold cutoffs\0A   --cut_tc       : use Pfam TC trusted threshold cutoffs\0A   --domE <x>     : sets domain Eval cutoff (2nd threshold) to <= x\0A   --domT <x>     : sets domain T bit thresh (2nd threshold) to >= x\0A   --forward      : use the full Forward() algorithm instead of Viterbi\0A   --informat <s> : sequence file is in format <s>\0A   --null2        : turn OFF the post hoc second null model\0A   --pvm          : run on a Parallel Virtual Machine (PVM)\0A   --xnu          : turn ON XNU filtering of target protein sequences\0A\00", align 16
@.str.18 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"PVM support is not compiled into your HMMER software; --pvm doesn't work.\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"POSIX threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"^.*\5C.gz$\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"BLASTDB\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Failed to open sequence database file %s\0A%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"HMMERDB\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Failed to open HMM file %s\0A%s\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Failed to read any HMMs from %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"HMM file %s corrupt or in incorrect format? Parse failed\00", align 1
@Alphabet_type = common global i32 0, align 4
@.str.29 = private unnamed_addr constant [71 x i8] c"The HMM is a DNA model, and you can't use the --xnu filter on DNA data\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"HMM %s did not contain the GA, TC, or NC cutoffs you needed\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"HMM file:                   %s [%s]\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Sequence database:          %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"PVM:                        ACTIVE\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"per-sequence score cutoff:  \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"[none]\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c">= %.1f\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" [GA1]\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c" [NC1]\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c" [TC1]\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"per-domain score cutoff:    \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c" [GA2]\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c" [NC2]\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" [TC2]\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"per-sequence Eval cutoff:   \00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"<= %-10.2g\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"per-domain Eval cutoff:     \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"<= %10.2g\0A\00", align 1
@.str.49 = private unnamed_addr constant [65 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"\0AQuery HMM: %s|%s|%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"\0AQuery HMM:   %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Accession:   %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Description: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [63 x i8] c"  [HMM has been calibrated; E-values are empirical estimates]\0A\00", align 1
@.str.57 = private unnamed_addr constant [55 x i8] c"  [No calibration for HMM; E-values are upper bounds]\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"\0AAlignments of top-scoring domains:\0A\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"%s: domain %d of %d, from %d to %d: score %.1f, E = %.2g\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"\09[no hits above thresholds]\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"\09[output cut off at A = %d top alignments]\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"\0ATotal sequences searched: %d\0A\00", align 1
@Alphabet = common global [25 x i8] zeroinitializer, align 16
@Alphabet_size = common global i32 0, align 4
@Alphabet_iupac = common global i32 0, align 4
@Degenerate = common global [24 x [20 x i8]] zeroinitializer, align 16
@DegenCount = common global [24 x i32] zeroinitializer, align 16
@.str.63 = private unnamed_addr constant [15 x i8] c"No PVM support\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"No threads support\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %hmmfile = alloca i8*, align 8
  %hmmfp = alloca %struct.hmmfile_s*, align 8
  %seqfile = alloca i8*, align 8
  %sqfp = alloca %struct.ReadSeqVars*, align 8
  %format = alloca i32, align 4
  %i = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %histogram = alloca %struct.histogram_s*, align 8
  %ali = alloca %struct.fancyali_s*, align 8
  %ghit = alloca %struct.tophit_s*, align 8
  %dhit = alloca %struct.tophit_s*, align 8
  %sc = alloca float, align 4
  %pvalue = alloca double, align 8
  %evalue = alloca double, align 8
  %motherp = alloca double, align 8
  %mothersc = alloca float, align 4
  %sqfrom = alloca i32, align 4
  %sqto = alloca i32, align 4
  %hmmfrom = alloca i32, align 4
  %hmmto = alloca i32, align 4
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %sqlen = alloca i32, align 4
  %nseq = alloca i32, align 4
  %Z = alloca i32, align 4
  %domidx = alloca i32, align 4
  %ndom = alloca i32, align 4
  %namewidth = alloca i32, align 4
  %descwidth = alloca i32, align 4
  %nreported = alloca i32, align 4
  %Alimit = alloca i32, align 4
  %thresh = alloca %struct.threshold_s, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  %do_null2 = alloca i32, align 4
  %do_forward = alloca i32, align 4
  %do_xnu = alloca i32, align 4
  %do_pvm = alloca i32, align 4
  %be_backwards = alloca i32, align 4
  %num_threads = alloca i32, align 4
  %threads_support = alloca i32, align 4
  %pvm_support = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @hmmcalibrate(i32 %1, i8** %2)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %format, align 4
  store i32 0, i32* %do_forward, align 4
  store i32 1, i32* %do_null2, align 4
  store i32 0, i32* %do_xnu, align 4
  store i32 0, i32* %do_pvm, align 4
  store i32 0, i32* %Z, align 4
  store i32 0, i32* %be_backwards, align 4
  store i32 0, i32* %pvm_support, align 4
  store i32 0, i32* %threads_support, align 4
  store i32 0, i32* %num_threads, align 4
  store i32 2147483647, i32* %Alimit, align 4
  %globE = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 1
  store double 1.000000e+01, double* %globE, align 8
  %globT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %globT, align 4
  %domT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %domT, align 4
  %domE = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE, align 8
  %autocut = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  store i32 0, i32* %autocut, align 4
  %Z1 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 5
  store i32 0, i32* %Z1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.122, %if.end
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @Getopt(i32 %3, i8** %4, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s], [17 x %struct.opt_s]* @OPTIONS, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0), i32* %optind, i8** %optname, i8** %optarg)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %optname, align 8
  %call3 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.body
  %6 = load i8*, i8** %optarg, align 8
  %call6 = call i32 @atoi(i8* %6) #5
  store i32 %call6, i32* %Alimit, align 4
  br label %if.end.122

if.else:                                          ; preds = %while.body
  %7 = load i8*, i8** %optname, align 8
  %call7 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %8 = load i8*, i8** %optarg, align 8
  %call10 = call double @atof(i8* %8) #5
  %globE11 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 1
  store double %call10, double* %globE11, align 8
  br label %if.end.121

if.else.12:                                       ; preds = %if.else
  %9 = load i8*, i8** %optname, align 8
  %call13 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else.12
  %10 = load i8*, i8** %optarg, align 8
  %call16 = call double @atof(i8* %10) #5
  %conv = fptrunc double %call16 to float
  %globT17 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 0
  store float %conv, float* %globT17, align 4
  br label %if.end.120

if.else.18:                                       ; preds = %if.else.12
  %11 = load i8*, i8** %optname, align 8
  %call19 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #5
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.else.18
  %12 = load i8*, i8** %optarg, align 8
  %call23 = call i32 @atoi(i8* %12) #5
  %Z24 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 5
  store i32 %call23, i32* %Z24, align 4
  br label %if.end.119

if.else.25:                                       ; preds = %if.else.18
  %13 = load i8*, i8** %optname, align 8
  %call26 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.25
  store i32 1, i32* %be_backwards, align 4
  br label %if.end.118

if.else.30:                                       ; preds = %if.else.25
  %14 = load i8*, i8** %optname, align 8
  %call31 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.30
  %15 = load i8*, i8** %optarg, align 8
  %call35 = call i32 @atoi(i8* %15) #5
  store i32 %call35, i32* %num_threads, align 4
  br label %if.end.117

if.else.36:                                       ; preds = %if.else.30
  %16 = load i8*, i8** %optname, align 8
  %call37 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.36
  %autocut41 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  store i32 1, i32* %autocut41, align 4
  br label %if.end.116

if.else.42:                                       ; preds = %if.else.36
  %17 = load i8*, i8** %optname, align 8
  %call43 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.else.42
  %autocut47 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  store i32 2, i32* %autocut47, align 4
  br label %if.end.115

if.else.48:                                       ; preds = %if.else.42
  %18 = load i8*, i8** %optname, align 8
  %call49 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.else.48
  %autocut53 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  store i32 3, i32* %autocut53, align 4
  br label %if.end.114

if.else.54:                                       ; preds = %if.else.48
  %19 = load i8*, i8** %optname, align 8
  %call55 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #5
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.else.54
  %20 = load i8*, i8** %optarg, align 8
  %call59 = call double @atof(i8* %20) #5
  %domE60 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 3
  store double %call59, double* %domE60, align 8
  br label %if.end.113

if.else.61:                                       ; preds = %if.else.54
  %21 = load i8*, i8** %optname, align 8
  %call62 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #5
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.else.61
  %22 = load i8*, i8** %optarg, align 8
  %call66 = call double @atof(i8* %22) #5
  %conv67 = fptrunc double %call66 to float
  %domT68 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 2
  store float %conv67, float* %domT68, align 4
  br label %if.end.112

if.else.69:                                       ; preds = %if.else.61
  %23 = load i8*, i8** %optname, align 8
  %call70 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.else.69
  store i32 1, i32* %do_forward, align 4
  br label %if.end.111

if.else.74:                                       ; preds = %if.else.69
  %24 = load i8*, i8** %optname, align 8
  %call75 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.else.74
  store i32 0, i32* %do_null2, align 4
  br label %if.end.110

if.else.79:                                       ; preds = %if.else.74
  %25 = load i8*, i8** %optname, align 8
  %call80 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.else.79
  store i32 1, i32* %do_pvm, align 4
  br label %if.end.109

if.else.84:                                       ; preds = %if.else.79
  %26 = load i8*, i8** %optname, align 8
  %call85 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.else.84
  store i32 1, i32* %do_xnu, align 4
  br label %if.end.108

if.else.89:                                       ; preds = %if.else.84
  %27 = load i8*, i8** %optname, align 8
  %call90 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.99

if.then.93:                                       ; preds = %if.else.89
  %28 = load i8*, i8** %optarg, align 8
  %call94 = call i32 @String2SeqfileFormat(i8* %28)
  store i32 %call94, i32* %format, align 4
  %29 = load i32, i32* %format, align 4
  %cmp95 = icmp eq i32 %29, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.93
  %30 = load i8*, i8** %optarg, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* %30)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.93
  br label %if.end.107

if.else.99:                                       ; preds = %if.else.89
  %31 = load i8*, i8** %optname, align 8
  %call100 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %if.else.99
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @banner, i32 0, i32 0))
  %call104 = call i32 @puts(i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  %call105 = call i32 @puts(i8* getelementptr inbounds ([759 x i8], [759 x i8]* @experts, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.106:                                       ; preds = %if.else.99
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.98
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.88
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.83
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.78
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.73
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.65
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.58
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.52
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.46
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.40
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.34
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.29
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.22
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.15
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.9
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %argc.addr, align 4
  %34 = load i32, i32* %optind, align 4
  %sub = sub nsw i32 %33, %34
  %cmp123 = icmp ne i32 %sub, 2
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %while.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %while.end
  %35 = load i32, i32* %optind, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %optind, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8
  store i8* %37, i8** %hmmfile, align 8
  %38 = load i32, i32* %optind, align 4
  %inc127 = add nsw i32 %38, 1
  store i32 %inc127, i32* %optind, align 4
  %idxprom128 = sext i32 %38 to i64
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %39, i64 %idxprom128
  %40 = load i8*, i8** %arrayidx129, align 8
  store i8* %40, i8** %seqfile, align 8
  %41 = load i32, i32* %do_pvm, align 4
  %tobool130 = icmp ne i32 %41, 0
  br i1 %tobool130, label %land.lhs.true, label %if.end.133

land.lhs.true:                                    ; preds = %if.end.126
  %42 = load i32, i32* %pvm_support, align 4
  %tobool131 = icmp ne i32 %42, 0
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %land.lhs.true, %if.end.126
  %43 = load i32, i32* %num_threads, align 4
  %tobool134 = icmp ne i32 %43, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.138

land.lhs.true.135:                                ; preds = %if.end.133
  %44 = load i32, i32* %threads_support, align 4
  %tobool136 = icmp ne i32 %44, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.135
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.end.133
  %45 = load i32, i32* %format, align 4
  %cmp139 = icmp eq i32 %45, 0
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.148

land.lhs.true.141:                                ; preds = %if.end.138
  %46 = load i8*, i8** %seqfile, align 8
  %call142 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* %46, i32 0)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then.147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.141
  %47 = load i8*, i8** %seqfile, align 8
  %call144 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #5
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false, %land.lhs.true.141
  store i32 7, i32* %format, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %lor.lhs.false, %if.end.138
  %48 = load i8*, i8** %seqfile, align 8
  %49 = load i32, i32* %format, align 4
  %call149 = call %struct.ReadSeqVars* @SeqfileOpen(i8* %48, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0))
  store %struct.ReadSeqVars* %call149, %struct.ReadSeqVars** %sqfp, align 8
  %cmp150 = icmp eq %struct.ReadSeqVars* %call149, null
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.148
  %50 = load i8*, i8** %seqfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0), i8* %50, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.148
  %51 = load i8*, i8** %hmmfile, align 8
  %call154 = call %struct.hmmfile_s* @HMMFileOpen(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  store %struct.hmmfile_s* %call154, %struct.hmmfile_s** %hmmfp, align 8
  %cmp155 = icmp eq %struct.hmmfile_s* %call154, null
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.153
  %52 = load i8*, i8** %hmmfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %52, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end.153
  %53 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %call159 = call i32 @HMMFileRead(%struct.hmmfile_s* %53, %struct.plan7_s** %hmm)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %if.end.158
  %54 = load i8*, i8** %hmmfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* %54)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end.158
  %55 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cmp163 = icmp eq %struct.plan7_s* %55, null
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  %56 = load i8*, i8** %hmmfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0), i8* %56)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.162
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %58 = load i32, i32* %do_forward, align 4
  %tobool167 = icmp ne i32 %58, 0
  %lnot = xor i1 %tobool167, true
  %lnot.ext = zext i1 %lnot to i32
  call void @P7Logoddsify(%struct.plan7_s* %57, i32 %lnot.ext)
  %59 = load i32, i32* %do_xnu, align 4
  %tobool168 = icmp ne i32 %59, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.end.173

land.lhs.true.169:                                ; preds = %if.end.166
  %60 = load i32, i32* @Alphabet_type, align 4
  %cmp170 = icmp eq i32 %60, 2
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %land.lhs.true.169
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %land.lhs.true.169, %if.end.166
  %61 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %call174 = call i32 @SetAutocuts(%struct.threshold_s* %thresh, %struct.plan7_s* %61)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end.178, label %if.then.176

if.then.176:                                      ; preds = %if.end.173
  %62 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name177 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 0
  %63 = load i8*, i8** %name177, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* %63)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %if.end.173
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @banner, i32 0, i32 0))
  %65 = load i8*, i8** %hmmfile, align 8
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name179 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 0
  %67 = load i8*, i8** %name179, align 8
  %call180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* %65, i8* %67)
  %68 = load i8*, i8** %seqfile, align 8
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* %68)
  %69 = load i32, i32* %do_pvm, align 4
  %tobool182 = icmp ne i32 %69, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.end.178
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.end.178
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  %globT187 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 0
  %70 = load float, float* %globT187, align 4
  %cmp188 = fcmp oeq float %70, 0xC7EFFFFFE0000000
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.end.185
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.218

if.else.192:                                      ; preds = %if.end.185
  %globT193 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 0
  %71 = load float, float* %globT193, align 4
  %conv194 = fpext float %71 to double
  %call195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), double %conv194)
  %autocut196 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  %72 = load i32, i32* %autocut196, align 4
  %cmp197 = icmp eq i32 %72, 1
  br i1 %cmp197, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %if.else.192
  %call200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.217

if.else.201:                                      ; preds = %if.else.192
  %autocut202 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  %73 = load i32, i32* %autocut202, align 4
  %cmp203 = icmp eq i32 %73, 2
  br i1 %cmp203, label %if.then.205, label %if.else.207

if.then.205:                                      ; preds = %if.else.201
  %call206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.216

if.else.207:                                      ; preds = %if.else.201
  %autocut208 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  %74 = load i32, i32* %autocut208, align 4
  %cmp209 = icmp eq i32 %74, 3
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.else.207
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.215

if.else.213:                                      ; preds = %if.else.207
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.then.211
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.205
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.199
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.190
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0))
  %domT220 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 2
  %75 = load float, float* %domT220, align 4
  %cmp221 = fcmp oeq float %75, 0xC7EFFFFFE0000000
  br i1 %cmp221, label %if.then.223, label %if.else.225

if.then.223:                                      ; preds = %if.end.218
  %call224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.251

if.else.225:                                      ; preds = %if.end.218
  %domT226 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 2
  %76 = load float, float* %domT226, align 4
  %conv227 = fpext float %76 to double
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), double %conv227)
  %autocut229 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  %77 = load i32, i32* %autocut229, align 4
  %cmp230 = icmp eq i32 %77, 1
  br i1 %cmp230, label %if.then.232, label %if.else.234

if.then.232:                                      ; preds = %if.else.225
  %call233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.250

if.else.234:                                      ; preds = %if.else.225
  %autocut235 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  %78 = load i32, i32* %autocut235, align 4
  %cmp236 = icmp eq i32 %78, 2
  br i1 %cmp236, label %if.then.238, label %if.else.240

if.then.238:                                      ; preds = %if.else.234
  %call239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.249

if.else.240:                                      ; preds = %if.else.234
  %autocut241 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 4
  %79 = load i32, i32* %autocut241, align 4
  %cmp242 = icmp eq i32 %79, 3
  br i1 %cmp242, label %if.then.244, label %if.else.246

if.then.244:                                      ; preds = %if.else.240
  %call245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.248

if.else.246:                                      ; preds = %if.else.240
  %call247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.246, %if.then.244
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.238
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.232
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.223
  %call252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0))
  %globE253 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 1
  %80 = load double, double* %globE253, align 8
  %cmp254 = fcmp oeq double %80, 0x47EFFFFFE0000000
  br i1 %cmp254, label %if.then.256, label %if.else.258

if.then.256:                                      ; preds = %if.end.251
  %call257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.261

if.else.258:                                      ; preds = %if.end.251
  %globE259 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 1
  %81 = load double, double* %globE259, align 8
  %call260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), double %81)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.256
  %call262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0))
  %domE263 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 3
  %82 = load double, double* %domE263, align 8
  %cmp264 = fcmp oeq double %82, 0x47EFFFFFE0000000
  br i1 %cmp264, label %if.then.266, label %if.else.268

if.then.266:                                      ; preds = %if.end.261
  %call267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.271

if.else.268:                                      ; preds = %if.end.261
  %domE269 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 3
  %83 = load double, double* %domE269, align 8
  %call270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), double %83)
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.268, %if.then.266
  %call272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.49, i32 0, i32 0))
  %call273 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100)
  store %struct.histogram_s* %call273, %struct.histogram_s** %histogram, align 8
  %call274 = call %struct.tophit_s* @AllocTophits(i32 200)
  store %struct.tophit_s* %call274, %struct.tophit_s** %ghit, align 8
  %call275 = call %struct.tophit_s* @AllocTophits(i32 200)
  store %struct.tophit_s* %call275, %struct.tophit_s** %dhit, align 8
  %84 = load i32, i32* %pvm_support, align 4
  %tobool276 = icmp ne i32 %84, 0
  br i1 %tobool276, label %land.lhs.true.277, label %if.else.280

land.lhs.true.277:                                ; preds = %if.end.271
  %85 = load i32, i32* %do_pvm, align 4
  %tobool278 = icmp ne i32 %85, 0
  br i1 %tobool278, label %if.then.279, label %if.else.280

if.then.279:                                      ; preds = %land.lhs.true.277
  %86 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %87 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp, align 8
  %88 = load i32, i32* %do_forward, align 4
  %89 = load i32, i32* %do_null2, align 4
  %90 = load i32, i32* %do_xnu, align 4
  %91 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  %92 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  %93 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  call void @main_loop_pvm(%struct.plan7_s* %86, %struct.ReadSeqVars* %87, %struct.threshold_s* %thresh, i32 %88, i32 %89, i32 %90, %struct.histogram_s* %91, %struct.tophit_s* %92, %struct.tophit_s* %93, i32* %nseq)
  br label %if.end.287

if.else.280:                                      ; preds = %land.lhs.true.277, %if.end.271
  %94 = load i32, i32* %threads_support, align 4
  %tobool281 = icmp ne i32 %94, 0
  br i1 %tobool281, label %land.lhs.true.282, label %if.else.285

land.lhs.true.282:                                ; preds = %if.else.280
  %95 = load i32, i32* %num_threads, align 4
  %tobool283 = icmp ne i32 %95, 0
  br i1 %tobool283, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %land.lhs.true.282
  %96 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %97 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp, align 8
  %98 = load i32, i32* %do_forward, align 4
  %99 = load i32, i32* %do_null2, align 4
  %100 = load i32, i32* %do_xnu, align 4
  %101 = load i32, i32* %num_threads, align 4
  %102 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  %103 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  %104 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  call void @main_loop_threaded(%struct.plan7_s* %96, %struct.ReadSeqVars* %97, %struct.threshold_s* %thresh, i32 %98, i32 %99, i32 %100, i32 %101, %struct.histogram_s* %102, %struct.tophit_s* %103, %struct.tophit_s* %104, i32* %nseq)
  br label %if.end.286

if.else.285:                                      ; preds = %land.lhs.true.282, %if.else.280
  %105 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %106 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp, align 8
  %107 = load i32, i32* %do_forward, align 4
  %108 = load i32, i32* %do_null2, align 4
  %109 = load i32, i32* %do_xnu, align 4
  %110 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  %111 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  %112 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  call void @main_loop_serial(%struct.plan7_s* %105, %struct.ReadSeqVars* %106, %struct.threshold_s* %thresh, i32 %107, i32 %108, i32 %109, %struct.histogram_s* %110, %struct.tophit_s* %111, %struct.tophit_s* %112, i32* %nseq)
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.285, %if.then.284
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.then.279
  %113 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %113, i32 0, i32 47
  %114 = load i32, i32* %flags, align 4
  %and = and i32 %114, 128
  %tobool288 = icmp ne i32 %and, 0
  br i1 %tobool288, label %if.then.289, label %if.end.292

if.then.289:                                      ; preds = %if.end.287
  %115 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  %116 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %116, i32 0, i32 45
  %117 = load float, float* %mu, align 4
  %118 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %118, i32 0, i32 46
  %119 = load float, float* %lambda, align 4
  %120 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %120, i32 0, i32 4
  %121 = load i32, i32* %lowscore, align 4
  %conv290 = sitofp i32 %121 to float
  %122 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %122, i32 0, i32 3
  %123 = load i32, i32* %highscore, align 4
  %conv291 = sitofp i32 %123 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %115, float %117, float %119, float %conv290, float %conv291, i32 0)
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.289, %if.end.287
  %Z293 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 5
  %124 = load i32, i32* %Z293, align 4
  %tobool294 = icmp ne i32 %124, 0
  br i1 %tobool294, label %if.end.297, label %if.then.295

if.then.295:                                      ; preds = %if.end.292
  %125 = load i32, i32* %nseq, align 4
  %Z296 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 5
  store i32 %125, i32* %Z296, align 4
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %if.end.292
  %126 = load i32, i32* %be_backwards, align 4
  %tobool298 = icmp ne i32 %126, 0
  br i1 %tobool298, label %if.then.299, label %if.else.313

if.then.299:                                      ; preds = %if.end.297
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name300 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 0
  %128 = load i8*, i8** %name300, align 8
  %129 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags301 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 47
  %130 = load i32, i32* %flags301, align 4
  %and302 = and i32 %130, 512
  %tobool303 = icmp ne i32 %and302, 0
  br i1 %tobool303, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.299
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 1
  %132 = load i8*, i8** %acc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.299
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %132, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), %cond.false ]
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags304 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 47
  %134 = load i32, i32* %flags304, align 4
  %and305 = and i32 %134, 2
  %tobool306 = icmp ne i32 %and305, 0
  br i1 %tobool306, label %cond.true.307, label %cond.false.309

cond.true.307:                                    ; preds = %cond.end
  %135 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %desc308 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 2
  %136 = load i8*, i8** %desc308, align 8
  br label %cond.end.310

cond.false.309:                                   ; preds = %cond.end
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.309, %cond.true.307
  %cond311 = phi i8* [ %136, %cond.true.307 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), %cond.false.309 ]
  %call312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0), i8* %128, i8* %cond, i8* %cond311)
  br label %if.end.334

if.else.313:                                      ; preds = %if.end.297
  %137 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name314 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 0
  %138 = load i8*, i8** %name314, align 8
  %call315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* %138)
  %139 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags316 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %139, i32 0, i32 47
  %140 = load i32, i32* %flags316, align 4
  %and317 = and i32 %140, 512
  %tobool318 = icmp ne i32 %and317, 0
  br i1 %tobool318, label %cond.true.319, label %cond.false.321

cond.true.319:                                    ; preds = %if.else.313
  %141 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %acc320 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 1
  %142 = load i8*, i8** %acc320, align 8
  br label %cond.end.322

cond.false.321:                                   ; preds = %if.else.313
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.319
  %cond323 = phi i8* [ %142, %cond.true.319 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %cond.false.321 ]
  %call324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* %cond323)
  %143 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags325 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %143, i32 0, i32 47
  %144 = load i32, i32* %flags325, align 4
  %and326 = and i32 %144, 2
  %tobool327 = icmp ne i32 %and326, 0
  br i1 %tobool327, label %cond.true.328, label %cond.false.330

cond.true.328:                                    ; preds = %cond.end.322
  %145 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %desc329 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %145, i32 0, i32 2
  %146 = load i8*, i8** %desc329, align 8
  br label %cond.end.331

cond.false.330:                                   ; preds = %cond.end.322
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.330, %cond.true.328
  %cond332 = phi i8* [ %146, %cond.true.328 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %cond.false.330 ]
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* %cond332)
  br label %if.end.334

if.end.334:                                       ; preds = %cond.end.331, %cond.end.310
  %147 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags335 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 47
  %148 = load i32, i32* %flags335, align 4
  %and336 = and i32 %148, 128
  %tobool337 = icmp ne i32 %and336, 0
  br i1 %tobool337, label %if.then.338, label %if.else.340

if.then.338:                                      ; preds = %if.end.334
  %call339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.342

if.else.340:                                      ; preds = %if.end.334
  %call341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.340, %if.then.338
  %149 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  call void @FullSortTophits(%struct.tophit_s* %149)
  %150 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  %call343 = call i32 @TophitsMaxName(%struct.tophit_s* %150)
  %cmp344 = icmp sgt i32 8, %call343
  br i1 %cmp344, label %cond.true.346, label %cond.false.347

cond.true.346:                                    ; preds = %if.end.342
  br label %cond.end.349

cond.false.347:                                   ; preds = %if.end.342
  %151 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  %call348 = call i32 @TophitsMaxName(%struct.tophit_s* %151)
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.347, %cond.true.346
  %cond350 = phi i32 [ 8, %cond.true.346 ], [ %call348, %cond.false.347 ]
  store i32 %cond350, i32* %namewidth, align 4
  %152 = load i32, i32* %namewidth, align 4
  %sub351 = sub nsw i32 52, %152
  %cmp352 = icmp sgt i32 %sub351, 11
  br i1 %cmp352, label %cond.true.354, label %cond.false.356

cond.true.354:                                    ; preds = %cond.end.349
  %153 = load i32, i32* %namewidth, align 4
  %sub355 = sub nsw i32 52, %153
  br label %cond.end.357

cond.false.356:                                   ; preds = %cond.end.349
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.356, %cond.true.354
  %cond358 = phi i32 [ %sub355, %cond.true.354 ], [ 11, %cond.false.356 ]
  store i32 %cond358, i32* %descwidth, align 4
  %154 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  call void @FullSortTophits(%struct.tophit_s* %154)
  %155 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  %call359 = call i32 @TophitsMaxName(%struct.tophit_s* %155)
  %cmp360 = icmp sgt i32 8, %call359
  br i1 %cmp360, label %cond.true.362, label %cond.false.363

cond.true.362:                                    ; preds = %cond.end.357
  br label %cond.end.365

cond.false.363:                                   ; preds = %cond.end.357
  %156 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  %call364 = call i32 @TophitsMaxName(%struct.tophit_s* %156)
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.363, %cond.true.362
  %cond366 = phi i32 [ 8, %cond.true.362 ], [ %call364, %cond.false.363 ]
  store i32 %cond366, i32* %namewidth, align 4
  %157 = load i32, i32* %Alimit, align 4
  %cmp367 = icmp ne i32 %157, 0
  br i1 %cmp367, label %if.then.369, label %if.end.415

if.then.369:                                      ; preds = %cond.end.365
  %call370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  store i32 0, i32* %nreported, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.369
  %158 = load i32, i32* %i, align 4
  %159 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %159, i32 0, i32 3
  %160 = load i32, i32* %num, align 4
  %cmp371 = icmp slt i32 %158, %160
  br i1 %cmp371, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %161 = load i32, i32* %nreported, align 4
  %162 = load i32, i32* %Alimit, align 4
  %cmp373 = icmp eq i32 %161, %162
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %for.body
  br label %for.end

if.end.376:                                       ; preds = %for.body
  %163 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  %164 = load i32, i32* %i, align 4
  call void @GetRankedHit(%struct.tophit_s* %163, i32 %164, double* %pvalue, float* %sc, double* %motherp, float* %mothersc, i8** %name, i8** null, i8** null, i32* %sqfrom, i32* %sqto, i32* %sqlen, i32* %hmmfrom, i32* %hmmto, i32* null, i32* %domidx, i32* %ndom, %struct.fancyali_s** %ali)
  %165 = load double, double* %pvalue, align 8
  %Z377 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 5
  %166 = load i32, i32* %Z377, align 4
  %conv378 = sitofp i32 %166 to double
  %mul = fmul double %165, %conv378
  store double %mul, double* %evalue, align 8
  %167 = load double, double* %motherp, align 8
  %Z379 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 5
  %168 = load i32, i32* %Z379, align 4
  %conv380 = sitofp i32 %168 to double
  %mul381 = fmul double %167, %conv380
  %globE382 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 1
  %169 = load double, double* %globE382, align 8
  %cmp383 = fcmp ogt double %mul381, %169
  br i1 %cmp383, label %if.then.389, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %if.end.376
  %170 = load float, float* %mothersc, align 4
  %globT386 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 0
  %171 = load float, float* %globT386, align 4
  %cmp387 = fcmp olt float %170, %171
  br i1 %cmp387, label %if.then.389, label %if.else.390

if.then.389:                                      ; preds = %lor.lhs.false.385, %if.end.376
  br label %for.inc

if.else.390:                                      ; preds = %lor.lhs.false.385
  %172 = load double, double* %evalue, align 8
  %domE391 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 3
  %173 = load double, double* %domE391, align 8
  %cmp392 = fcmp ole double %172, %173
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.402

land.lhs.true.394:                                ; preds = %if.else.390
  %174 = load float, float* %sc, align 4
  %domT395 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %thresh, i32 0, i32 2
  %175 = load float, float* %domT395, align 4
  %cmp396 = fcmp oge float %174, %175
  br i1 %cmp396, label %if.then.398, label %if.end.402

if.then.398:                                      ; preds = %land.lhs.true.394
  %176 = load i8*, i8** %name, align 8
  %177 = load i32, i32* %domidx, align 4
  %178 = load i32, i32* %ndom, align 4
  %179 = load i32, i32* %sqfrom, align 4
  %180 = load i32, i32* %sqto, align 4
  %181 = load float, float* %sc, align 4
  %conv399 = fpext float %181 to double
  %182 = load double, double* %evalue, align 8
  %call400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.59, i32 0, i32 0), i8* %176, i32 %177, i32 %178, i32 %179, i32 %180, double %conv399, double %182)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %184 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  call void @PrintFancyAli(%struct._IO_FILE* %183, %struct.fancyali_s* %184)
  %185 = load i32, i32* %nreported, align 4
  %inc401 = add nsw i32 %185, 1
  store i32 %inc401, i32* %nreported, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.398, %land.lhs.true.394, %if.else.390
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402
  br label %for.inc

for.inc:                                          ; preds = %if.end.403, %if.then.389
  %186 = load i32, i32* %i, align 4
  %inc404 = add nsw i32 %186, 1
  store i32 %inc404, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.375, %for.cond
  %187 = load i32, i32* %nreported, align 4
  %cmp405 = icmp eq i32 %187, 0
  br i1 %cmp405, label %if.then.407, label %if.end.409

if.then.407:                                      ; preds = %for.end
  %call408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.407, %for.end
  %188 = load i32, i32* %nreported, align 4
  %189 = load i32, i32* %Alimit, align 4
  %cmp410 = icmp eq i32 %188, %189
  br i1 %cmp410, label %if.then.412, label %if.end.414

if.then.412:                                      ; preds = %if.end.409
  %190 = load i32, i32* %Alimit, align 4
  %call413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), i32 %190)
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.412, %if.end.409
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %cond.end.365
  %191 = load i32, i32* %nseq, align 4
  %call416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0), i32 %191)
  %192 = load %struct.histogram_s*, %struct.histogram_s** %histogram, align 8
  call void @FreeHistogram(%struct.histogram_s* %192)
  %193 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %193)
  %194 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp, align 8
  call void @SeqfileClose(%struct.ReadSeqVars* %194)
  %195 = load %struct.tophit_s*, %struct.tophit_s** %ghit, align 8
  call void @FreeTophits(%struct.tophit_s* %195)
  %196 = load %struct.tophit_s*, %struct.tophit_s** %dhit, align 8
  call void @FreeTophits(%struct.tophit_s* %196)
  %197 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %197)
  call void @SqdClean()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.415, %if.then
  %198 = load i32, i32* %retval
  ret i32 %198
}

declare i32 @hmmcalibrate(i32, i8**) #1

declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

declare i32 @String2SeqfileFormat(i8*) #1

declare void @Die(i8*, ...) #1

declare void @HMMERBanner(%struct._IO_FILE*, i8*) #1

declare i32 @puts(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @Strparse(i8*, i8*, i32) #1

declare %struct.ReadSeqVars* @SeqfileOpen(i8*, i32, i8*) #1

declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #1

declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #1

declare void @P7Logoddsify(%struct.plan7_s*, i32) #1

declare i32 @SetAutocuts(%struct.threshold_s*, %struct.plan7_s*) #1

declare i32 @printf(i8*, ...) #1

declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #1

declare %struct.tophit_s* @AllocTophits(i32) #1

; Function Attrs: nounwind uwtable
define internal void @main_loop_pvm(%struct.plan7_s* %hmm, %struct.ReadSeqVars* %sqfp, %struct.threshold_s* %thresh, i32 %do_forward, i32 %do_null2, i32 %do_xnu, %struct.histogram_s* %histogram, %struct.tophit_s* %ghit, %struct.tophit_s* %dhit, i32* %ret_nseq) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %sqfp.addr = alloca %struct.ReadSeqVars*, align 8
  %thresh.addr = alloca %struct.threshold_s*, align 8
  %do_forward.addr = alloca i32, align 4
  %do_null2.addr = alloca i32, align 4
  %do_xnu.addr = alloca i32, align 4
  %histogram.addr = alloca %struct.histogram_s*, align 8
  %ghit.addr = alloca %struct.tophit_s*, align 8
  %dhit.addr = alloca %struct.tophit_s*, align 8
  %ret_nseq.addr = alloca i32*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.ReadSeqVars* %sqfp, %struct.ReadSeqVars** %sqfp.addr, align 8
  store %struct.threshold_s* %thresh, %struct.threshold_s** %thresh.addr, align 8
  store i32 %do_forward, i32* %do_forward.addr, align 4
  store i32 %do_null2, i32* %do_null2.addr, align 4
  store i32 %do_xnu, i32* %do_xnu.addr, align 4
  store %struct.histogram_s* %histogram, %struct.histogram_s** %histogram.addr, align 8
  store %struct.tophit_s* %ghit, %struct.tophit_s** %ghit.addr, align 8
  store %struct.tophit_s* %dhit, %struct.tophit_s** %dhit.addr, align 8
  store i32* %ret_nseq, i32** %ret_nseq.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @main_loop_threaded(%struct.plan7_s* %hmm, %struct.ReadSeqVars* %sqfp, %struct.threshold_s* %thresh, i32 %do_forward, i32 %do_null2, i32 %do_xnu, i32 %num_threads, %struct.histogram_s* %histogram, %struct.tophit_s* %ghit, %struct.tophit_s* %dhit, i32* %ret_nseq) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %sqfp.addr = alloca %struct.ReadSeqVars*, align 8
  %thresh.addr = alloca %struct.threshold_s*, align 8
  %do_forward.addr = alloca i32, align 4
  %do_null2.addr = alloca i32, align 4
  %do_xnu.addr = alloca i32, align 4
  %num_threads.addr = alloca i32, align 4
  %histogram.addr = alloca %struct.histogram_s*, align 8
  %ghit.addr = alloca %struct.tophit_s*, align 8
  %dhit.addr = alloca %struct.tophit_s*, align 8
  %ret_nseq.addr = alloca i32*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.ReadSeqVars* %sqfp, %struct.ReadSeqVars** %sqfp.addr, align 8
  store %struct.threshold_s* %thresh, %struct.threshold_s** %thresh.addr, align 8
  store i32 %do_forward, i32* %do_forward.addr, align 4
  store i32 %do_null2, i32* %do_null2.addr, align 4
  store i32 %do_xnu, i32* %do_xnu.addr, align 4
  store i32 %num_threads, i32* %num_threads.addr, align 4
  store %struct.histogram_s* %histogram, %struct.histogram_s** %histogram.addr, align 8
  store %struct.tophit_s* %ghit, %struct.tophit_s** %ghit.addr, align 8
  store %struct.tophit_s* %dhit, %struct.tophit_s** %dhit.addr, align 8
  store i32* %ret_nseq, i32** %ret_nseq.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @main_loop_serial(%struct.plan7_s* %hmm, %struct.ReadSeqVars* %sqfp, %struct.threshold_s* %thresh, i32 %do_forward, i32 %do_null2, i32 %do_xnu, %struct.histogram_s* %histogram, %struct.tophit_s* %ghit, %struct.tophit_s* %dhit, i32* %ret_nseq) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %sqfp.addr = alloca %struct.ReadSeqVars*, align 8
  %thresh.addr = alloca %struct.threshold_s*, align 8
  %do_forward.addr = alloca i32, align 4
  %do_null2.addr = alloca i32, align 4
  %do_xnu.addr = alloca i32, align 4
  %histogram.addr = alloca %struct.histogram_s*, align 8
  %ghit.addr = alloca %struct.tophit_s*, align 8
  %dhit.addr = alloca %struct.tophit_s*, align 8
  %ret_nseq.addr = alloca i32*, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %seq = alloca i8*, align 8
  %dsq = alloca i8*, align 8
  %sqinfo = alloca %struct.seqinfo_s, align 8
  %sc = alloca float, align 4
  %pvalue = alloca double, align 8
  %evalue = alloca double, align 8
  %nseq = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.ReadSeqVars* %sqfp, %struct.ReadSeqVars** %sqfp.addr, align 8
  store %struct.threshold_s* %thresh, %struct.threshold_s** %thresh.addr, align 8
  store i32 %do_forward, i32* %do_forward.addr, align 4
  store i32 %do_null2, i32* %do_null2.addr, align 4
  store i32 %do_xnu, i32* %do_xnu.addr, align 4
  store %struct.histogram_s* %histogram, %struct.histogram_s** %histogram.addr, align 8
  store %struct.tophit_s* %ghit, %struct.tophit_s** %ghit.addr, align 8
  store %struct.tophit_s* %dhit, %struct.tophit_s** %dhit.addr, align 8
  store i32* %ret_nseq, i32** %ret_nseq.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 20
  %1 = load i32, i32* %M, align 4
  %call = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %1, i32 25, i32 0)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %mx, align 8
  store i32 0, i32* %nseq, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %if.then, %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %3 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %format = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %3, i32 0, i32 20
  %4 = load i32, i32* %format, align 4
  %call1 = call i32 @ReadSeq(%struct.ReadSeqVars* %2, i32 %4, i8** %seq, %struct.seqinfo_s* %sqinfo)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %len = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %5 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %nseq, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nseq, align 4
  %7 = load i8*, i8** %seq, align 8
  %len2 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %8 = load i32, i32* %len2, align 4
  %call3 = call i8* @DigitizeSequence(i8* %7, i32 %8)
  store i8* %call3, i8** %dsq, align 8
  %9 = load i32, i32* %do_xnu.addr, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* @Alphabet_type, align 4
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %dsq, align 8
  %len7 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %12 = load i32, i32* %len7, align 4
  %call8 = call i32 @XNU(i8* %11, i32 %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %land.lhs.true, %if.end
  %len10 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %13 = load i32, i32* %len10, align 4
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 20
  %15 = load i32, i32* %M11, align 4
  %call12 = call i32 @P7ViterbiSize(i32 %13, i32 %15)
  %cmp13 = icmp sle i32 %call12, 1000
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %16 = load i8*, i8** %dsq, align 8
  %len15 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %17 = load i32, i32* %len15, align 4
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %19 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %call16 = call float @P7Viterbi(i8* %16, i32 %17, %struct.plan7_s* %18, %struct.dpmatrix_s* %19, %struct.p7trace_s** %tr)
  store float %call16, float* %sc, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end.9
  %20 = load i8*, i8** %dsq, align 8
  %len17 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %21 = load i32, i32* %len17, align 4
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %23 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %call18 = call float @P7SmallViterbi(i8* %20, i32 %21, %struct.plan7_s* %22, %struct.dpmatrix_s* %23, %struct.p7trace_s** %tr)
  store float %call18, float* %sc, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.14
  %24 = load i32, i32* %do_forward.addr, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.end.19
  %25 = load i8*, i8** %dsq, align 8
  %len22 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %26 = load i32, i32* %len22, align 4
  %27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %call23 = call float @P7Forward(i8* %25, i32 %26, %struct.plan7_s* %27, %struct.dpmatrix_s** null)
  store float %call23, float* %sc, align 4
  %28 = load i32, i32* %do_null2.addr, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.21
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %31 = load i8*, i8** %dsq, align 8
  %call26 = call float @TraceScoreCorrection(%struct.plan7_s* %29, %struct.p7trace_s* %30, i8* %31)
  %32 = load float, float* %sc, align 4
  %sub = fsub float %32, %call26
  store float %sub, float* %sc, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.19
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %34 = load float, float* %sc, align 4
  %call29 = call double @PValue(%struct.plan7_s* %33, float %34)
  store double %call29, double* %pvalue, align 8
  %35 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %Z = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %35, i32 0, i32 5
  %36 = load i32, i32* %Z, align 4
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %37 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %Z31 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  %38 = load i32, i32* %Z31, align 4
  %conv = sitofp i32 %38 to double
  %39 = load double, double* %pvalue, align 8
  %mul = fmul double %conv, %39
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  %40 = load i32, i32* %nseq, align 4
  %conv32 = sitofp i32 %40 to double
  %41 = load double, double* %pvalue, align 8
  %mul33 = fmul double %conv32, %41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul, %cond.true ], [ %mul33, %cond.false ]
  store double %cond, double* %evalue, align 8
  %42 = load float, float* %sc, align 4
  %43 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %43, i32 0, i32 0
  %44 = load float, float* %globT, align 4
  %cmp34 = fcmp oge float %42, %44
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.56

land.lhs.true.36:                                 ; preds = %cond.end
  %45 = load double, double* %evalue, align 8
  %46 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globE = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %46, i32 0, i32 1
  %47 = load double, double* %globE, align 8
  %cmp37 = fcmp ole double %45, %47
  br i1 %cmp37, label %if.then.39, label %if.end.56

if.then.39:                                       ; preds = %land.lhs.true.36
  %48 = load %struct.tophit_s*, %struct.tophit_s** %ghit.addr, align 8
  %49 = load %struct.tophit_s*, %struct.tophit_s** %dhit.addr, align 8
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %51 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %52 = load i8*, i8** %dsq, align 8
  %len40 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 5
  %53 = load i32, i32* %len40, align 4
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 0
  %54 = load i32, i32* %flags, align 4
  %and = and i32 %54, 4
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %if.then.39
  %acc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 3
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i32 0, i32 0
  br label %cond.end.45

cond.false.44:                                    ; preds = %if.then.39
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.42
  %cond46 = phi i8* [ %arraydecay43, %cond.true.42 ], [ null, %cond.false.44 ]
  %flags47 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 0
  %55 = load i32, i32* %flags47, align 4
  %and48 = and i32 %55, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %cond.end.45
  %desc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %sqinfo, i32 0, i32 4
  %arraydecay51 = getelementptr inbounds [128 x i8], [128 x i8]* %desc, i32 0, i32 0
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.45
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.50
  %cond54 = phi i8* [ %arraydecay51, %cond.true.50 ], [ null, %cond.false.52 ]
  %56 = load i32, i32* %do_forward.addr, align 4
  %57 = load float, float* %sc, align 4
  %58 = load i32, i32* %do_null2.addr, align 4
  %59 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %call55 = call float @PostprocessSignificantHit(%struct.tophit_s* %48, %struct.tophit_s* %49, %struct.p7trace_s* %50, %struct.plan7_s* %51, i8* %52, i32 %53, i8* %arraydecay, i8* %cond46, i8* %cond54, i32 %56, float %57, i32 %58, %struct.threshold_s* %59, i32 0)
  store float %call55, float* %sc, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.53, %land.lhs.true.36, %cond.end
  %60 = load %struct.histogram_s*, %struct.histogram_s** %histogram.addr, align 8
  %61 = load float, float* %sc, align 4
  call void @AddToHistogram(%struct.histogram_s* %60, float %61)
  %62 = load i8*, i8** %seq, align 8
  call void @FreeSequence(i8* %62, %struct.seqinfo_s* %sqinfo)
  %63 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %63)
  %64 = load i8*, i8** %dsq, align 8
  call void @free(i8* %64) #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %65)
  %66 = load i32, i32* %nseq, align 4
  %67 = load i32*, i32** %ret_nseq.addr, align 8
  store i32 %66, i32* %67, align 4
  ret void
}

declare void @ExtremeValueSetHistogram(%struct.histogram_s*, float, float, float, float, i32) #1

declare void @FullSortTophits(%struct.tophit_s*) #1

declare i32 @TophitsMaxName(%struct.tophit_s*) #1

declare void @GetRankedHit(%struct.tophit_s*, i32, double*, float*, double*, float*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.fancyali_s**) #1

declare void @PrintFancyAli(%struct._IO_FILE*, %struct.fancyali_s*) #1

declare void @FreeHistogram(%struct.histogram_s*) #1

declare void @HMMFileClose(%struct.hmmfile_s*) #1

declare void @SeqfileClose(%struct.ReadSeqVars*) #1

declare void @FreeTophits(%struct.tophit_s*) #1

declare void @FreePlan7(%struct.plan7_s*) #1

declare void @SqdClean() #1

declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #1

declare i32 @ReadSeq(%struct.ReadSeqVars*, i32, i8**, %struct.seqinfo_s*) #1

declare i8* @DigitizeSequence(i8*, i32) #1

declare i32 @XNU(i8*, i32) #1

declare i32 @P7ViterbiSize(i32, i32) #1

declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #1

declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #1

declare double @PValue(%struct.plan7_s*, float) #1

declare float @PostprocessSignificantHit(%struct.tophit_s*, %struct.tophit_s*, %struct.p7trace_s*, %struct.plan7_s*, i8*, i32, i8*, i8*, i8*, i32, float, i32, %struct.threshold_s*, i32) #1

declare void @AddToHistogram(%struct.histogram_s*, float) #1

declare void @FreeSequence(i8*, %struct.seqinfo_s*) #1

declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
