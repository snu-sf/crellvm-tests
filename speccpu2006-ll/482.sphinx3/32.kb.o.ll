; ModuleID = 'kb.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.kb_t = type { %struct.kbcore_t*, i32, %struct.lextree_t**, %struct.lextree_t**, %struct.lextree_t**, i32, %struct.vithist_t*, float***, i32, i32*, i32*, i32*, i32*, i32, i32, i32**, i32*, i32*, i32, i32, i32, %struct.ascr_t*, %struct.beam_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32*, i32, i32, %struct.ptmr_t, %struct.ptmr_t, %struct.ptmr_t, i32, double, double, double, double, %struct._IO_FILE*, %struct._IO_FILE*, %struct.hyp_t**, i32, i8*, i32 }
%struct.kbcore_t = type { %struct.feat_s*, %struct.mdef_t*, %struct.dict_t*, %struct.dict2pid_t*, %struct.lm_s*, %struct.lmset_s*, %struct.fillpen_t*, i16*, %struct.mgau_model_t*, %struct.subvq_t*, %struct.gs_s*, %struct.tmat_t*, i32, i32 }
%struct.feat_s = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i32, void (%struct.feat_s*, float**, float**)* }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.dict2pid_t = type { i32**, i32***, i32**, i16**, i16**, i32*, i32, i32 }
%struct.lm_s = type { i32, i32, i32, i32, i8**, i16, i16, i32, i32, %struct.ug_t*, %struct.bg_t*, %struct.tg_t*, %struct.membg_t*, %struct.tginfo_s**, %union.lmlog_t*, %union.lmlog_t*, %union.lmlog_t*, i32*, i32, i32, i32, %struct._IO_FILE*, i32, i32, i32, float, i32, %struct.lm_tgcache_entry_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16*, i32, %struct.lmclass_s**, i32, i32* }
%struct.ug_t = type { i32, %union.lmlog_t, %union.lmlog_t, i32 }
%union.lmlog_t = type { float }
%struct.bg_t = type { i16, i16, i16, i16 }
%struct.tg_t = type { i16, i16 }
%struct.membg_t = type { %struct.bg_t*, i32 }
%struct.tginfo_s = type { i16, i32, %struct.tg_t*, i32, i32, %struct.tginfo_s* }
%struct.lm_tgcache_entry_t = type { [3 x i16], i32 }
%struct.lmclass_s = type { i8*, %struct.lmclass_word_s*, %struct.lmclass_s* }
%struct.lmclass_word_s = type { i8*, i32, i32, %struct.lmclass_word_s* }
%struct.lmset_s = type { i8*, %struct.lm_s* }
%struct.fillpen_t = type { %struct.dict_t*, i32*, double, double }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }
%struct.subvq_t = type { %struct.arraysize_t, i32, i32, i32**, %struct.vector_gautbl_t*, i32***, float*, i32**, i32*, i32* }
%struct.arraysize_t = type { i32, i32 }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }
%struct.gs_s = type { i32, i32, i32, i32, i32, i32, float**, i32***, %struct._IO_FILE*, i32* }
%struct.tmat_t = type { i32***, i32, i32 }
%struct.lextree_t = type { i32, %struct.gnode_s*, %struct.lextree_lcroot_t*, i32, i32, %struct.lextree_node_t**, %struct.lextree_node_t**, i32, i32, i32, i32 }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
%struct.lextree_lcroot_t = type { i8, %struct.gnode_s* }
%struct.lextree_node_t = type { %struct.hmm_t, %struct.gnode_s*, i32, i32, i32, i32*, i8, i8, i16 }
%struct.hmm_t = type { %struct.hmm_state_t*, %struct.hmm_state_t, %struct.hmm_state_t, i32**, i32 }
%struct.hmm_state_t = type { i32, i32 }
%struct.vithist_t = type { %struct.vithist_entry_t**, i32*, i32, i32, i32, i32, i32*, i32*, %struct.vh_lms2vh_t**, %struct.gnode_s* }
%struct.vithist_entry_t = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, %union.vh_lmstate_t }
%union.vh_lmstate_t = type { %struct.anon }
%struct.anon = type { [2 x i16] }
%struct.vh_lms2vh_t = type { i32, i32, %struct.vithist_entry_t*, %struct.gnode_s* }
%struct.ascr_t = type { i32*, i32* }
%struct.beam_t = type { i32, i32, i32, i32 }
%struct.ptmr_t = type { i8*, double, double, double, double, double, double }
%struct.hyp_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wordprob_t = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"-logbase\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-feat\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-cmn\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-varnorm\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-agc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-mdef\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-dict\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-fdict\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"-lmctlfn\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"-lmdumpdir\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-fillpen\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"-senmgau\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"-silprob\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-fillprob\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"-lw\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"-wip\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-uw\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"-mean\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"-var\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"-varfloor\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"-mixw\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"-mixwfloor\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"-subvq\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-gs\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"-tmat\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"-tmatfloor\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"kb.c\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Initialization of kb failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"%s or %s not in dictionary\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"%s or %s not in LM %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"%s or %s not in LM\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Tmat contains arcs skipping more than 1 state\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Silence phone '%s' not in mdef\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"SIL\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Building lextrees\0A\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"-Nlextree\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"No. of ugtrees specified: %d; will instantiate 1 ugtree\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"Creating Unigram Table for lm %d name %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"Size of word table after unigram + words in class: %d.\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"%d active words in %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"Size of word table after adding alternative prons: %d.\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"-treeugprob\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"Lextrees (%d) for lm %d name %s, %d nodes(ug)\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Creating Unigram Table\0A\00", align 1
@.str.51 = private unnamed_addr constant [55 x i8] c"Size of word table after unigram + words in class: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"%d active words\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"Lextrees(%d), %d nodes(ug)\0A\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Lextrees(%d), %d nodes(filler)\0A\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"-lextreedump\00", align 1
@.str.56 = private unnamed_addr constant [58 x i8] c"Currently, doesn't support -lextreedump for multiple-LMs\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.57 = private unnamed_addr constant [11 x i8] c"UGTREE %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"FILLERTREE %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"-subvqbeam\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"-beam\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"-pbeam\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"-wbeam\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"Beam= %d, PBeam= %d, WBeam= %d, SVQBeam= %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"-ds\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"Down Sampling Ratio = %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"-cond_ds\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Conditional Down Sampling Parameter = %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"Conditional Down Sampling require the use of Gaussian Selection map\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"-gs4gs\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"GS map would be used for Gaussian Selection? = %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"-svq4svq\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"SVQ would be used as Gaussian Score ?= %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"-ci_pbeam\00", align 1
@.str.74 = private unnamed_addr constant [85 x i8] c"CI phone beam to prune the number of parent CI phones in CI-base GMM Selection = %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [63 x i8] c"Virtually no CI phone beam is applied now. (ci_pbeam>1000000)\0A\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"-wend_beam\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"Word-end pruning beam: %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"-pl_window\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"Phoneme look-ahead window size = %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"-pl_beam\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"Phoneme look-ahead beam = %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"feat_array_alloc() failed\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"-bghist\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"-hmmhistbinsize\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"-hypseg\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"fopen(%s,w) failed; use FWDXCT: from std logfile\0A\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"-hyp\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"Inside kb_setlm\0A\00", align 1
@.str.90 = private unnamed_addr constant [60 x i8] c"LM name %s cannot be found! Fall back to use base LM model\0A\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"Current LM name %s.\0A\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"Current LM name %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"LM ug size %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"LM bg size %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"LM tg size %d\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"HMM history bin size %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @kb_init(%struct.kb_t* %kb) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %kbcore = alloca %struct.kbcore_t*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %d2p = alloca %struct.dict2pid_t*, align 8
  %lm = alloca %struct.lm_s*, align 8
  %lmset = alloca %struct.lmset_s*, align 8
  %sil = alloca i8, align 1
  %ci = alloca i8, align 1
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %n_lc = alloca i32, align 4
  %wp = alloca %struct.wordprob_t*, align 8
  %lc = alloca i8*, align 8
  %lc_active = alloca i32*, align 8
  %str = alloca i8*, align 8
  %cisencnt = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %1 = bitcast %struct.kb_t* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 504, i32 8, i1 false)
  %2 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore1 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %2, i32 0, i32 0
  store %struct.kbcore_t* null, %struct.kbcore_t** %kbcore1, align 8
  %call = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %3 = bitcast i8* %call to float*
  %4 = load float, float* %3, align 4
  %conv = fpext float %4 to double
  %call2 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %call3 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call4 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %call5 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %call6 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %call7 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %call8 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %call9 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %call10 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %call11 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %call12 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  %call13 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %call14 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  %5 = bitcast i8* %call14 to float*
  %6 = load float, float* %5, align 4
  %conv15 = fpext float %6 to double
  %call16 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  %7 = bitcast i8* %call16 to float*
  %8 = load float, float* %7, align 4
  %conv17 = fpext float %8 to double
  %call18 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %9 = bitcast i8* %call18 to float*
  %10 = load float, float* %9, align 4
  %conv19 = fpext float %10 to double
  %call20 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %11 = bitcast i8* %call20 to float*
  %12 = load float, float* %11, align 4
  %conv21 = fpext float %12 to double
  %call22 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %13 = bitcast i8* %call22 to float*
  %14 = load float, float* %13, align 4
  %conv23 = fpext float %14 to double
  %call24 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  %call25 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %call26 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  %15 = bitcast i8* %call26 to float*
  %16 = load float, float* %15, align 4
  %conv27 = fpext float %16 to double
  %call28 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  %call29 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0))
  %17 = bitcast i8* %call29 to float*
  %18 = load float, float* %17, align 4
  %conv30 = fpext float %18 to double
  %call31 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  %call32 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  %call33 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  %call34 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0))
  %19 = bitcast i8* %call34 to float*
  %20 = load float, float* %19, align 4
  %conv35 = fpext float %20 to double
  %call36 = call %struct.kbcore_t* @kbcore_init(double %conv, i8* %call2, i8* %call3, i8* %call4, i8* %call5, i8* %call6, i8* %call7, i8* %call8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* %call9, i8* %call10, i8* %call11, i8* %call12, i8* %call13, double %conv15, double %conv17, double %conv19, double %conv21, double %conv23, i8* %call24, i8* %call25, double %conv27, i8* %call28, double %conv30, i8* %call31, i8* %call32, i8* %call33, double %conv35)
  %21 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore37 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %21, i32 0, i32 0
  store %struct.kbcore_t* %call36, %struct.kbcore_t** %kbcore37, align 8
  %22 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore38 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %22, i32 0, i32 0
  %23 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore38, align 8
  %cmp = icmp eq %struct.kbcore_t* %23, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore40 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %24, i32 0, i32 0
  %25 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore40, align 8
  store %struct.kbcore_t* %25, %struct.kbcore_t** %kbcore, align 8
  %26 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mdef41 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %26, i32 0, i32 1
  %27 = load %struct.mdef_t*, %struct.mdef_t** %mdef41, align 8
  store %struct.mdef_t* %27, %struct.mdef_t** %mdef, align 8
  %28 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict42 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %28, i32 0, i32 2
  %29 = load %struct.dict_t*, %struct.dict_t** %dict42, align 8
  store %struct.dict_t* %29, %struct.dict_t** %dict, align 8
  %30 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %lm43 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %30, i32 0, i32 4
  %31 = load %struct.lm_s*, %struct.lm_s** %lm43, align 8
  store %struct.lm_s* %31, %struct.lm_s** %lm, align 8
  %32 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %lmset44 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %32, i32 0, i32 5
  %33 = load %struct.lmset_s*, %struct.lmset_s** %lmset44, align 8
  store %struct.lmset_s* %33, %struct.lmset_s** %lmset, align 8
  %34 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict2pid = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %34, i32 0, i32 3
  %35 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  store %struct.dict2pid_t* %35, %struct.dict2pid_t** %d2p, align 8
  %36 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %startwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %36, i32 0, i32 11
  %37 = load i32, i32* %startwid, align 4
  %cmp45 = icmp slt i32 %37, 0
  br i1 %cmp45, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %38 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %38, i32 0, i32 12
  %39 = load i32, i32* %finishwid, align 4
  %cmp47 = icmp slt i32 %39, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false, %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %lor.lhs.false
  %40 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool = icmp ne %struct.lmset_s* %40, null
  br i1 %tobool, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.51
  %41 = load i32, i32* %i, align 4
  %42 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %n_lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %42, i32 0, i32 12
  %43 = load i32, i32* %n_lm, align 4
  %cmp52 = icmp slt i32 %41, %43
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %45, i64 %idxprom
  %lm54 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx, i32 0, i32 1
  %46 = load %struct.lm_s*, %struct.lm_s** %lm54, align 8
  %startlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %46, i32 0, i32 5
  %47 = load i16, i16* %startlwid, align 2
  %conv55 = zext i16 %47 to i32
  %cmp56 = icmp eq i32 %conv55, 65535
  br i1 %cmp56, label %if.then.65, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %48 to i64
  %49 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx60 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %49, i64 %idxprom59
  %lm61 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx60, i32 0, i32 1
  %50 = load %struct.lm_s*, %struct.lm_s** %lm61, align 8
  %finishlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %50, i32 0, i32 6
  %51 = load i16, i16* %finishlwid, align 2
  %conv62 = zext i16 %51 to i32
  %cmp63 = icmp eq i32 %conv62, 65535
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %lor.lhs.false.58, %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  %52 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx67 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %53, i64 %idxprom66
  %name = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx67, i32 0, i32 0
  %54 = load i8*, i8** %name, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %54)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %lor.lhs.false.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.83

if.else:                                          ; preds = %if.end.50
  %56 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tobool69 = icmp ne %struct.lm_s* %56, null
  br i1 %tobool69, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %if.else
  %57 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %startlwid71 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %57, i32 0, i32 5
  %58 = load i16, i16* %startlwid71, align 2
  %conv72 = zext i16 %58 to i32
  %cmp73 = icmp eq i32 %conv72, 65535
  br i1 %cmp73, label %if.then.80, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.then.70
  %59 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %finishlwid76 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %59, i32 0, i32 6
  %60 = load i16, i16* %finishlwid76, align 2
  %conv77 = zext i16 %60 to i32
  %cmp78 = icmp eq i32 %conv77, 65535
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.75, %if.then.70
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %lor.lhs.false.75
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.else
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.end
  %61 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %tmat = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %61, i32 0, i32 11
  %62 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %call84 = call i32 @tmat_chk_1skip(%struct.tmat_t* %62)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.83
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.83
  %63 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool89 = icmp ne %struct.lmset_s* %63, null
  br i1 %tobool89, label %if.then.90, label %if.else.150

if.then.90:                                       ; preds = %if.end.88
  store i32 0, i32* %i, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.147, %if.then.90
  %64 = load i32, i32* %i, align 4
  %65 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %n_lm92 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %65, i32 0, i32 12
  %66 = load i32, i32* %n_lm92, align 4
  %cmp93 = icmp slt i32 %64, %66
  br i1 %cmp93, label %for.body.95, label %for.end.149

for.body.95:                                      ; preds = %for.cond.91
  %67 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %67 to i64
  %68 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx97 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %68, i64 %idxprom96
  %lm98 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx97, i32 0, i32 1
  %69 = load %struct.lm_s*, %struct.lm_s** %lm98, align 8
  %startlwid99 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %69, i32 0, i32 5
  %70 = load i16, i16* %startlwid99, align 2
  %idxprom100 = zext i16 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %71 to i64
  %72 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx102 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %72, i64 %idxprom101
  %lm103 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx102, i32 0, i32 1
  %73 = load %struct.lm_s*, %struct.lm_s** %lm103, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %73, i32 0, i32 9
  %74 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx104 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %74, i64 %idxprom100
  %dictwid = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx104, i32 0, i32 0
  store i32 -1, i32* %dictwid, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %75 to i64
  %76 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx106 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %76, i64 %idxprom105
  %lm107 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx106, i32 0, i32 1
  %77 = load %struct.lm_s*, %struct.lm_s** %lm107, align 8
  %finishlwid108 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %77, i32 0, i32 6
  %78 = load i16, i16* %finishlwid108, align 2
  %idxprom109 = zext i16 %78 to i64
  %79 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %79 to i64
  %80 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx111 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %80, i64 %idxprom110
  %lm112 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx111, i32 0, i32 1
  %81 = load %struct.lm_s*, %struct.lm_s** %lm112, align 8
  %ug113 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %81, i32 0, i32 9
  %82 = load %struct.ug_t*, %struct.ug_t** %ug113, align 8
  %arrayidx114 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %82, i64 %idxprom109
  %dictwid115 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx114, i32 0, i32 0
  store i32 -1, i32* %dictwid115, align 4
  %83 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %startwid116 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %83, i32 0, i32 11
  %84 = load i32, i32* %startwid116, align 4
  store i32 %84, i32* %w, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.126, %for.body.95
  %85 = load i32, i32* %w, align 4
  %cmp118 = icmp sge i32 %85, 0
  br i1 %cmp118, label %for.body.120, label %for.end.129

for.body.120:                                     ; preds = %for.cond.117
  %86 = load i32, i32* %w, align 4
  %idxprom121 = sext i32 %86 to i64
  %87 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %87 to i64
  %88 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx123 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %88, i64 %idxprom122
  %lm124 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx123, i32 0, i32 1
  %89 = load %struct.lm_s*, %struct.lm_s** %lm124, align 8
  %dict2lmwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %89, i32 0, i32 38
  %90 = load i16*, i16** %dict2lmwid, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %90, i64 %idxprom121
  store i16 -1, i16* %arrayidx125, align 2
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.120
  %91 = load i32, i32* %w, align 4
  %idxprom127 = sext i32 %91 to i64
  %92 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %92, i32 0, i32 4
  %93 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx128 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %93, i64 %idxprom127
  %alt = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx128, i32 0, i32 3
  %94 = load i32, i32* %alt, align 4
  store i32 %94, i32* %w, align 4
  br label %for.cond.117

for.end.129:                                      ; preds = %for.cond.117
  %95 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid130 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %95, i32 0, i32 12
  %96 = load i32, i32* %finishwid130, align 4
  store i32 %96, i32* %w, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.141, %for.end.129
  %97 = load i32, i32* %w, align 4
  %cmp132 = icmp sge i32 %97, 0
  br i1 %cmp132, label %for.body.134, label %for.end.146

for.body.134:                                     ; preds = %for.cond.131
  %98 = load i32, i32* %w, align 4
  %idxprom135 = sext i32 %98 to i64
  %99 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %99 to i64
  %100 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx137 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %100, i64 %idxprom136
  %lm138 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx137, i32 0, i32 1
  %101 = load %struct.lm_s*, %struct.lm_s** %lm138, align 8
  %dict2lmwid139 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %101, i32 0, i32 38
  %102 = load i16*, i16** %dict2lmwid139, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %102, i64 %idxprom135
  store i16 -1, i16* %arrayidx140, align 2
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.134
  %103 = load i32, i32* %w, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word143 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %104, i32 0, i32 4
  %105 = load %struct.dictword_t*, %struct.dictword_t** %word143, align 8
  %arrayidx144 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %105, i64 %idxprom142
  %alt145 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx144, i32 0, i32 3
  %106 = load i32, i32* %alt145, align 4
  store i32 %106, i32* %w, align 4
  br label %for.cond.131

for.end.146:                                      ; preds = %for.cond.131
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %107 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %107, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond.91

for.end.149:                                      ; preds = %for.cond.91
  br label %if.end.192

if.else.150:                                      ; preds = %if.end.88
  %108 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tobool151 = icmp ne %struct.lm_s* %108, null
  br i1 %tobool151, label %if.then.152, label %if.end.191

if.then.152:                                      ; preds = %if.else.150
  %109 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %startlwid153 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %109, i32 0, i32 5
  %110 = load i16, i16* %startlwid153, align 2
  %idxprom154 = zext i16 %110 to i64
  %111 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug155 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %111, i32 0, i32 9
  %112 = load %struct.ug_t*, %struct.ug_t** %ug155, align 8
  %arrayidx156 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %112, i64 %idxprom154
  %dictwid157 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx156, i32 0, i32 0
  store i32 -1, i32* %dictwid157, align 4
  %113 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %finishlwid158 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %113, i32 0, i32 6
  %114 = load i16, i16* %finishlwid158, align 2
  %idxprom159 = zext i16 %114 to i64
  %115 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug160 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %115, i32 0, i32 9
  %116 = load %struct.ug_t*, %struct.ug_t** %ug160, align 8
  %arrayidx161 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %116, i64 %idxprom159
  %dictwid162 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx161, i32 0, i32 0
  store i32 -1, i32* %dictwid162, align 4
  %117 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %startwid163 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %117, i32 0, i32 11
  %118 = load i32, i32* %startwid163, align 4
  store i32 %118, i32* %w, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.171, %if.then.152
  %119 = load i32, i32* %w, align 4
  %cmp165 = icmp sge i32 %119, 0
  br i1 %cmp165, label %for.body.167, label %for.end.176

for.body.167:                                     ; preds = %for.cond.164
  %120 = load i32, i32* %w, align 4
  %idxprom168 = sext i32 %120 to i64
  %121 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict2lmwid169 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %121, i32 0, i32 7
  %122 = load i16*, i16** %dict2lmwid169, align 8
  %arrayidx170 = getelementptr inbounds i16, i16* %122, i64 %idxprom168
  store i16 -1, i16* %arrayidx170, align 2
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.167
  %123 = load i32, i32* %w, align 4
  %idxprom172 = sext i32 %123 to i64
  %124 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word173 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %124, i32 0, i32 4
  %125 = load %struct.dictword_t*, %struct.dictword_t** %word173, align 8
  %arrayidx174 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %125, i64 %idxprom172
  %alt175 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx174, i32 0, i32 3
  %126 = load i32, i32* %alt175, align 4
  store i32 %126, i32* %w, align 4
  br label %for.cond.164

for.end.176:                                      ; preds = %for.cond.164
  %127 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid177 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %127, i32 0, i32 12
  %128 = load i32, i32* %finishwid177, align 4
  store i32 %128, i32* %w, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.185, %for.end.176
  %129 = load i32, i32* %w, align 4
  %cmp179 = icmp sge i32 %129, 0
  br i1 %cmp179, label %for.body.181, label %for.end.190

for.body.181:                                     ; preds = %for.cond.178
  %130 = load i32, i32* %w, align 4
  %idxprom182 = sext i32 %130 to i64
  %131 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict2lmwid183 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %131, i32 0, i32 7
  %132 = load i16*, i16** %dict2lmwid183, align 8
  %arrayidx184 = getelementptr inbounds i16, i16* %132, i64 %idxprom182
  store i16 -1, i16* %arrayidx184, align 2
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.181
  %133 = load i32, i32* %w, align 4
  %idxprom186 = sext i32 %133 to i64
  %134 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word187 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %134, i32 0, i32 4
  %135 = load %struct.dictword_t*, %struct.dictword_t** %word187, align 8
  %arrayidx188 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %135, i64 %idxprom186
  %alt189 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx188, i32 0, i32 3
  %136 = load i32, i32* %alt189, align 4
  store i32 %136, i32* %w, align 4
  br label %for.cond.178

for.end.190:                                      ; preds = %for.cond.178
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.190, %if.else.150
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %for.end.149
  %137 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mdef193 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %137, i32 0, i32 1
  %138 = load %struct.mdef_t*, %struct.mdef_t** %mdef193, align 8
  %sil194 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %138, i32 0, i32 14
  %139 = load i8, i8* %sil194, align 1
  store i8 %139, i8* %sil, align 1
  %140 = load i8, i8* %sil, align 1
  %conv195 = sext i8 %140 to i32
  %cmp196 = icmp slt i32 %conv195, 0
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.192
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.end.192
  %141 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %141, i32 0, i32 4
  %142 = load i32, i32* %n_sen, align 4
  %conv200 = sext i32 %142 to i64
  %call201 = call i8* @__ckd_calloc__(i64 %conv200, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 176)
  %143 = bitcast i8* %call201 to i32*
  %144 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %144, i32 0, i32 11
  store i32* %143, i32** %sen_active, align 8
  %145 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_sen202 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %145, i32 0, i32 4
  %146 = load i32, i32* %n_sen202, align 4
  %conv203 = sext i32 %146 to i64
  %call204 = call i8* @__ckd_calloc__(i64 %conv203, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 177)
  %147 = bitcast i8* %call204 to i32*
  %148 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_sen_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %148, i32 0, i32 12
  store i32* %147, i32** %rec_sen_active, align 8
  %149 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %149, i32 0, i32 10
  %150 = load i32, i32* %n_sseq, align 4
  %conv205 = sext i32 %150 to i64
  %call206 = call i8* @__ckd_calloc__(i64 %conv205, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 178)
  %151 = bitcast i8* %call206 to i32*
  %152 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ssid_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %152, i32 0, i32 9
  store i32* %151, i32** %ssid_active, align 8
  %153 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %153, i32 0, i32 7
  %154 = load i32, i32* %n_comsseq, align 4
  %conv207 = sext i32 %154 to i64
  %call208 = call i8* @__ckd_calloc__(i64 %conv207, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 179)
  %155 = bitcast i8* %call208 to i32*
  %156 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %comssid_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %156, i32 0, i32 10
  store i32* %155, i32** %comssid_active, align 8
  %157 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %157, i32 0, i32 0
  %158 = load i32, i32* %n_ciphone, align 4
  %add = add nsw i32 %158, 1
  %conv209 = sext i32 %add to i64
  %call210 = call i8* @__ckd_calloc__(i64 %conv209, i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 182)
  store i8* %call210, i8** %lc, align 8
  %159 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_ciphone211 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %159, i32 0, i32 0
  %160 = load i32, i32* %n_ciphone211, align 4
  %add212 = add nsw i32 %160, 31
  %shr = ashr i32 %add212, 5
  %conv213 = sext i32 %shr to i64
  %call214 = call i8* @__ckd_calloc__(i64 %conv213, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 183)
  %161 = bitcast i8* %call214 to i32*
  store i32* %161, i32** %lc_active, align 8
  store i32 0, i32* %w, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.239, %if.end.199
  %162 = load i32, i32* %w, align 4
  %163 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %163, i32 0, i32 7
  %164 = load i32, i32* %n_word, align 4
  %cmp216 = icmp slt i32 %162, %164
  br i1 %cmp216, label %for.body.218, label %for.end.241

for.body.218:                                     ; preds = %for.cond.215
  %165 = load i32, i32* %w, align 4
  %idxprom219 = sext i32 %165 to i64
  %166 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word220 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %166, i32 0, i32 4
  %167 = load %struct.dictword_t*, %struct.dictword_t** %word220, align 8
  %arrayidx221 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %167, i64 %idxprom219
  %pronlen = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx221, i32 0, i32 2
  %168 = load i32, i32* %pronlen, align 4
  %sub = sub nsw i32 %168, 1
  %idxprom222 = sext i32 %sub to i64
  %169 = load i32, i32* %w, align 4
  %idxprom223 = sext i32 %169 to i64
  %170 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word224 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %170, i32 0, i32 4
  %171 = load %struct.dictword_t*, %struct.dictword_t** %word224, align 8
  %arrayidx225 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %171, i64 %idxprom223
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx225, i32 0, i32 1
  %172 = load i8*, i8** %ciphone, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %172, i64 %idxprom222
  %173 = load i8, i8* %arrayidx226, align 1
  store i8 %173, i8* %ci, align 1
  %174 = load i8, i8* %ci, align 1
  %conv227 = sext i8 %174 to i32
  %idxprom228 = sext i32 %conv227 to i64
  %175 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %ciphone229 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %175, i32 0, i32 7
  %176 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone229, align 8
  %arrayidx230 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %176, i64 %idxprom228
  %filler = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx230, i32 0, i32 1
  %177 = load i32, i32* %filler, align 4
  %tobool231 = icmp ne i32 %177, 0
  br i1 %tobool231, label %if.end.238, label %if.then.232

if.then.232:                                      ; preds = %for.body.218
  %178 = load i8, i8* %ci, align 1
  %conv233 = sext i8 %178 to i32
  %and = and i32 %conv233, 31
  %shl = shl i32 1, %and
  %179 = load i8, i8* %ci, align 1
  %conv234 = sext i8 %179 to i32
  %shr235 = ashr i32 %conv234, 5
  %idxprom236 = sext i32 %shr235 to i64
  %180 = load i32*, i32** %lc_active, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %180, i64 %idxprom236
  %181 = load i32, i32* %arrayidx237, align 4
  %or = or i32 %181, %shl
  store i32 %or, i32* %arrayidx237, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.232, %for.body.218
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %182 = load i32, i32* %w, align 4
  %inc240 = add nsw i32 %182, 1
  store i32 %inc240, i32* %w, align 4
  br label %for.cond.215

for.end.241:                                      ; preds = %for.cond.215
  %183 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %sil242 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %183, i32 0, i32 14
  %184 = load i8, i8* %sil242, align 1
  store i8 %184, i8* %ci, align 1
  %185 = load i8, i8* %ci, align 1
  %conv243 = sext i8 %185 to i32
  %and244 = and i32 %conv243, 31
  %shl245 = shl i32 1, %and244
  %186 = load i8, i8* %ci, align 1
  %conv246 = sext i8 %186 to i32
  %shr247 = ashr i32 %conv246, 5
  %idxprom248 = sext i32 %shr247 to i64
  %187 = load i32*, i32** %lc_active, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %187, i64 %idxprom248
  %188 = load i32, i32* %arrayidx249, align 4
  %or250 = or i32 %188, %shl245
  store i32 %or250, i32* %arrayidx249, align 4
  store i8 0, i8* %ci, align 1
  store i32 0, i32* %n_lc, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.271, %for.end.241
  %189 = load i8, i8* %ci, align 1
  %conv252 = sext i8 %189 to i32
  %190 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_ciphone253 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %190, i32 0, i32 0
  %191 = load i32, i32* %n_ciphone253, align 4
  %cmp254 = icmp slt i32 %conv252, %191
  br i1 %cmp254, label %for.body.256, label %for.end.273

for.body.256:                                     ; preds = %for.cond.251
  %192 = load i8, i8* %ci, align 1
  %conv257 = sext i8 %192 to i32
  %shr258 = ashr i32 %conv257, 5
  %idxprom259 = sext i32 %shr258 to i64
  %193 = load i32*, i32** %lc_active, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %193, i64 %idxprom259
  %194 = load i32, i32* %arrayidx260, align 4
  %195 = load i8, i8* %ci, align 1
  %conv261 = sext i8 %195 to i32
  %and262 = and i32 %conv261, 31
  %shl263 = shl i32 1, %and262
  %and264 = and i32 %194, %shl263
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %if.then.266, label %if.end.270

if.then.266:                                      ; preds = %for.body.256
  %196 = load i8, i8* %ci, align 1
  %197 = load i32, i32* %n_lc, align 4
  %inc267 = add nsw i32 %197, 1
  store i32 %inc267, i32* %n_lc, align 4
  %idxprom268 = sext i32 %197 to i64
  %198 = load i8*, i8** %lc, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %198, i64 %idxprom268
  store i8 %196, i8* %arrayidx269, align 1
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.266, %for.body.256
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.270
  %199 = load i8, i8* %ci, align 1
  %inc272 = add i8 %199, 1
  store i8 %inc272, i8* %ci, align 1
  br label %for.cond.251

for.end.273:                                      ; preds = %for.cond.251
  %200 = load i32, i32* %n_lc, align 4
  %idxprom274 = sext i32 %200 to i64
  %201 = load i8*, i8** %lc, align 8
  %arrayidx275 = getelementptr inbounds i8, i8* %201, i64 %idxprom274
  store i8 -1, i8* %arrayidx275, align 1
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0))
  %call276 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0))
  %202 = bitcast i8* %call276 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %204, i32 0, i32 1
  store i32 %203, i32* %n_lextree, align 4
  %205 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree277 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %205, i32 0, i32 1
  %206 = load i32, i32* %n_lextree277, align 4
  %cmp278 = icmp slt i32 %206, 1
  br i1 %cmp278, label %if.then.280, label %if.end.283

if.then.280:                                      ; preds = %for.end.273
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %207 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree281 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %207, i32 0, i32 1
  %208 = load i32, i32* %n_lextree281, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i32 0, i32 0), i32 %208)
  %209 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree282 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %209, i32 0, i32 1
  store i32 1, i32* %n_lextree282, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.280, %for.end.273
  %210 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %n_word284 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %210, i32 0, i32 7
  %211 = load i32, i32* %n_word284, align 4
  %conv285 = sext i32 %211 to i64
  %call286 = call i8* @__ckd_calloc__(i64 %conv285, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 208)
  %212 = bitcast i8* %call286 to %struct.wordprob_t*
  store %struct.wordprob_t* %212, %struct.wordprob_t** %wp, align 8
  %213 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool287 = icmp ne %struct.lmset_s* %213, null
  br i1 %tobool287, label %if.then.288, label %if.else.377

if.then.288:                                      ; preds = %if.end.283
  %214 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %n_lm289 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %214, i32 0, i32 12
  %215 = load i32, i32* %n_lm289, align 4
  %216 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree290 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %216, i32 0, i32 1
  %217 = load i32, i32* %n_lextree290, align 4
  %mul = mul nsw i32 %215, %217
  %conv291 = sext i32 %mul to i64
  %call292 = call i8* @__ckd_calloc__(i64 %conv291, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 212)
  %218 = bitcast i8* %call292 to %struct.lextree_t**
  %219 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti = getelementptr inbounds %struct.kb_t, %struct.kb_t* %219, i32 0, i32 3
  store %struct.lextree_t** %218, %struct.lextree_t*** %ugtreeMulti, align 8
  %220 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree293 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %220, i32 0, i32 1
  %221 = load i32, i32* %n_lextree293, align 4
  %conv294 = sext i32 %221 to i64
  %call295 = call i8* @__ckd_calloc__(i64 %conv294, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 214)
  %222 = bitcast i8* %call295 to %struct.lextree_t**
  %223 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %223, i32 0, i32 2
  store %struct.lextree_t** %222, %struct.lextree_t*** %ugtree, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.374, %if.then.288
  %224 = load i32, i32* %i, align 4
  %225 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %n_lm297 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %225, i32 0, i32 12
  %226 = load i32, i32* %n_lm297, align 4
  %cmp298 = icmp slt i32 %224, %226
  br i1 %cmp298, label %for.body.300, label %for.end.376

for.body.300:                                     ; preds = %for.cond.296
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %227 = load i32, i32* %i, align 4
  %228 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %228 to i64
  %229 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx302 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %229, i64 %idxprom301
  %name303 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx302, i32 0, i32 0
  %230 = load i8*, i8** %name303, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0), i32 %227, i8* %230)
  store i32 0, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.304

for.cond.304:                                     ; preds = %for.inc.313, %for.body.300
  %231 = load i32, i32* %j, align 4
  %232 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %n_word305 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %232, i32 0, i32 7
  %233 = load i32, i32* %n_word305, align 4
  %cmp306 = icmp slt i32 %231, %233
  br i1 %cmp306, label %for.body.308, label %for.end.315

for.body.308:                                     ; preds = %for.cond.304
  %234 = load i32, i32* %j, align 4
  %idxprom309 = sext i32 %234 to i64
  %235 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %arrayidx310 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %235, i64 %idxprom309
  %wid = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx310, i32 0, i32 0
  store i32 -1, i32* %wid, align 4
  %236 = load i32, i32* %j, align 4
  %idxprom311 = sext i32 %236 to i64
  %237 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %arrayidx312 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %237, i64 %idxprom311
  %prob = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx312, i32 0, i32 1
  store i32 -1, i32* %prob, align 4
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.body.308
  %238 = load i32, i32* %j, align 4
  %inc314 = add nsw i32 %238, 1
  store i32 %inc314, i32* %j, align 4
  br label %for.cond.304

for.end.315:                                      ; preds = %for.cond.304
  %239 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %239 to i64
  %240 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx317 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %240, i64 %idxprom316
  %lm318 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx317, i32 0, i32 1
  %241 = load %struct.lm_s*, %struct.lm_s** %lm318, align 8
  %242 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %243 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %call319 = call i32 @lm_ug_wordprob(%struct.lm_s* %241, %struct.dict_t* %242, i32 -2147483648, %struct.wordprob_t* %243)
  store i32 %call319, i32* %n, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %244 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* %n, align 4
  %cmp320 = icmp slt i32 %245, 1
  br i1 %cmp320, label %if.then.322, label %if.end.326

if.then.322:                                      ; preds = %for.end.315
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  %246 = load i32, i32* %n, align 4
  %247 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %247 to i64
  %248 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx324 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %248, i64 %idxprom323
  %name325 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx324, i32 0, i32 0
  %249 = load i8*, i8** %name325, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i32 %246, i8* %249)
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.322, %for.end.315
  %250 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %251 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %252 = load i32, i32* %n, align 4
  %call327 = call i32 @wid_wordprob2alt(%struct.dict_t* %250, %struct.wordprob_t* %251, i32 %252)
  store i32 %call327, i32* %n, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %253 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i32 0, i32 0), i32 %253)
  %call328 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0))
  %254 = bitcast i8* %call328 to i32*
  %255 = load i32, i32* %254, align 4
  %cmp329 = icmp eq i32 %255, 0
  br i1 %cmp329, label %if.then.331, label %if.end.342

if.then.331:                                      ; preds = %if.end.326
  store i32 0, i32* %i, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.339, %if.then.331
  %256 = load i32, i32* %i, align 4
  %257 = load i32, i32* %n, align 4
  %cmp333 = icmp slt i32 %256, %257
  br i1 %cmp333, label %for.body.335, label %for.end.341

for.body.335:                                     ; preds = %for.cond.332
  %258 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %258 to i64
  %259 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %arrayidx337 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %259, i64 %idxprom336
  %prob338 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx337, i32 0, i32 1
  store i32 -1, i32* %prob338, align 4
  br label %for.inc.339

for.inc.339:                                      ; preds = %for.body.335
  %260 = load i32, i32* %i, align 4
  %inc340 = add nsw i32 %260, 1
  store i32 %inc340, i32* %i, align 4
  br label %for.cond.332

for.end.341:                                      ; preds = %for.cond.332
  br label %if.end.342

if.end.342:                                       ; preds = %for.end.341, %if.end.326
  store i32 0, i32* %j, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.371, %if.end.342
  %261 = load i32, i32* %j, align 4
  %262 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree344 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %262, i32 0, i32 1
  %263 = load i32, i32* %n_lextree344, align 4
  %cmp345 = icmp slt i32 %261, %263
  br i1 %cmp345, label %for.body.347, label %for.end.373

for.body.347:                                     ; preds = %for.cond.343
  %264 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %265 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %266 = load i32, i32* %n, align 4
  %267 = load i8*, i8** %lc, align 8
  %call348 = call %struct.lextree_t* @lextree_build(%struct.kbcore_t* %264, %struct.wordprob_t* %265, i32 %266, i8* %267)
  %268 = load i32, i32* %i, align 4
  %269 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree349 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %269, i32 0, i32 1
  %270 = load i32, i32* %n_lextree349, align 4
  %mul350 = mul nsw i32 %268, %270
  %271 = load i32, i32* %j, align 4
  %add351 = add nsw i32 %mul350, %271
  %idxprom352 = sext i32 %add351 to i64
  %272 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti353 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %272, i32 0, i32 3
  %273 = load %struct.lextree_t**, %struct.lextree_t*** %ugtreeMulti353, align 8
  %arrayidx354 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %273, i64 %idxprom352
  store %struct.lextree_t* %call348, %struct.lextree_t** %arrayidx354, align 8
  %274 = load i32, i32* %i, align 4
  %275 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree355 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %275, i32 0, i32 1
  %276 = load i32, i32* %n_lextree355, align 4
  %mul356 = mul nsw i32 %274, %276
  %277 = load i32, i32* %j, align 4
  %add357 = add nsw i32 %mul356, %277
  %idxprom358 = sext i32 %add357 to i64
  %278 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti359 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %278, i32 0, i32 3
  %279 = load %struct.lextree_t**, %struct.lextree_t*** %ugtreeMulti359, align 8
  %arrayidx360 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %279, i64 %idxprom358
  %280 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx360, align 8
  %type = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %280, i32 0, i32 0
  store i32 0, i32* %type, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %281 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree361 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %281, i32 0, i32 1
  %282 = load i32, i32* %n_lextree361, align 4
  %283 = load i32, i32* %i, align 4
  %284 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %284 to i64
  %285 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx363 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %285, i64 %idxprom362
  %name364 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx363, i32 0, i32 0
  %286 = load i8*, i8** %name364, align 8
  %287 = load i32, i32* %i, align 4
  %288 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree365 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %288, i32 0, i32 1
  %289 = load i32, i32* %n_lextree365, align 4
  %mul366 = mul nsw i32 %287, %289
  %290 = load i32, i32* %j, align 4
  %add367 = add nsw i32 %mul366, %290
  %idxprom368 = sext i32 %add367 to i64
  %291 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti369 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %291, i32 0, i32 3
  %292 = load %struct.lextree_t**, %struct.lextree_t*** %ugtreeMulti369, align 8
  %arrayidx370 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %292, i64 %idxprom368
  %293 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx370, align 8
  %n_node = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %293, i32 0, i32 4
  %294 = load i32, i32* %n_node, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i32 0, i32 0), i32 %282, i32 %283, i8* %286, i32 %294)
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.body.347
  %295 = load i32, i32* %j, align 4
  %inc372 = add nsw i32 %295, 1
  store i32 %inc372, i32* %j, align 4
  br label %for.cond.343

for.end.373:                                      ; preds = %for.cond.343
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.end.373
  %296 = load i32, i32* %i, align 4
  %inc375 = add nsw i32 %296, 1
  store i32 %inc375, i32* %i, align 4
  br label %for.cond.296

for.end.376:                                      ; preds = %for.cond.296
  br label %if.end.426

if.else.377:                                      ; preds = %if.end.283
  %297 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tobool378 = icmp ne %struct.lm_s* %297, null
  br i1 %tobool378, label %if.then.379, label %if.end.425

if.then.379:                                      ; preds = %if.else.377
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  %298 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %299 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %300 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %call380 = call i32 @lm_ug_wordprob(%struct.lm_s* %298, %struct.dict_t* %299, i32 -2147483648, %struct.wordprob_t* %300)
  store i32 %call380, i32* %n, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %301 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.51, i32 0, i32 0), i32 %301)
  %302 = load i32, i32* %n, align 4
  %cmp381 = icmp slt i32 %302, 1
  br i1 %cmp381, label %if.then.383, label %if.end.384

if.then.383:                                      ; preds = %if.then.379
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  %303 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i32 %303)
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.383, %if.then.379
  %304 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %305 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %306 = load i32, i32* %n, align 4
  %call385 = call i32 @wid_wordprob2alt(%struct.dict_t* %304, %struct.wordprob_t* %305, i32 %306)
  store i32 %call385, i32* %n, align 4
  %call386 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0))
  %307 = bitcast i8* %call386 to i32*
  %308 = load i32, i32* %307, align 4
  %cmp387 = icmp eq i32 %308, 0
  br i1 %cmp387, label %if.then.389, label %if.end.400

if.then.389:                                      ; preds = %if.end.384
  store i32 0, i32* %i, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.397, %if.then.389
  %309 = load i32, i32* %i, align 4
  %310 = load i32, i32* %n, align 4
  %cmp391 = icmp slt i32 %309, %310
  br i1 %cmp391, label %for.body.393, label %for.end.399

for.body.393:                                     ; preds = %for.cond.390
  %311 = load i32, i32* %i, align 4
  %idxprom394 = sext i32 %311 to i64
  %312 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %arrayidx395 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %312, i64 %idxprom394
  %prob396 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx395, i32 0, i32 1
  store i32 -1, i32* %prob396, align 4
  br label %for.inc.397

for.inc.397:                                      ; preds = %for.body.393
  %313 = load i32, i32* %i, align 4
  %inc398 = add nsw i32 %313, 1
  store i32 %inc398, i32* %i, align 4
  br label %for.cond.390

for.end.399:                                      ; preds = %for.cond.390
  br label %if.end.400

if.end.400:                                       ; preds = %for.end.399, %if.end.384
  %314 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree401 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %314, i32 0, i32 1
  %315 = load i32, i32* %n_lextree401, align 4
  %conv402 = sext i32 %315 to i64
  %call403 = call i8* @__ckd_calloc__(i64 %conv402, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 258)
  %316 = bitcast i8* %call403 to %struct.lextree_t**
  %317 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree404 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %317, i32 0, i32 2
  store %struct.lextree_t** %316, %struct.lextree_t*** %ugtree404, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.405

for.cond.405:                                     ; preds = %for.inc.418, %if.end.400
  %318 = load i32, i32* %i, align 4
  %319 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree406 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %319, i32 0, i32 1
  %320 = load i32, i32* %n_lextree406, align 4
  %cmp407 = icmp slt i32 %318, %320
  br i1 %cmp407, label %for.body.409, label %for.end.420

for.body.409:                                     ; preds = %for.cond.405
  %321 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %322 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %323 = load i32, i32* %n, align 4
  %324 = load i8*, i8** %lc, align 8
  %call410 = call %struct.lextree_t* @lextree_build(%struct.kbcore_t* %321, %struct.wordprob_t* %322, i32 %323, i8* %324)
  %325 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %325 to i64
  %326 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree412 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %326, i32 0, i32 2
  %327 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree412, align 8
  %arrayidx413 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %327, i64 %idxprom411
  store %struct.lextree_t* %call410, %struct.lextree_t** %arrayidx413, align 8
  %328 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %328 to i64
  %329 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree415 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %329, i32 0, i32 2
  %330 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree415, align 8
  %arrayidx416 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %330, i64 %idxprom414
  %331 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx416, align 8
  %type417 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %331, i32 0, i32 0
  store i32 0, i32* %type417, align 4
  br label %for.inc.418

for.inc.418:                                      ; preds = %for.body.409
  %332 = load i32, i32* %i, align 4
  %inc419 = add nsw i32 %332, 1
  store i32 %inc419, i32* %i, align 4
  br label %for.cond.405

for.end.420:                                      ; preds = %for.cond.405
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %333 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree421 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %333, i32 0, i32 1
  %334 = load i32, i32* %n_lextree421, align 4
  %335 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree422 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %335, i32 0, i32 2
  %336 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree422, align 8
  %arrayidx423 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %336, i64 0
  %337 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx423, align 8
  %n_node424 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %337, i32 0, i32 4
  %338 = load i32, i32* %n_node424, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0), i32 %334, i32 %338)
  br label %if.end.425

if.end.425:                                       ; preds = %for.end.420, %if.else.377
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %for.end.376
  store i32 0, i32* %n, align 4
  %339 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %filler_start = getelementptr inbounds %struct.dict_t, %struct.dict_t* %339, i32 0, i32 8
  %340 = load i32, i32* %filler_start, align 4
  store i32 %340, i32* %i, align 4
  br label %for.cond.427

for.cond.427:                                     ; preds = %for.inc.443, %if.end.426
  %341 = load i32, i32* %i, align 4
  %342 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %filler_end = getelementptr inbounds %struct.dict_t, %struct.dict_t* %342, i32 0, i32 9
  %343 = load i32, i32* %filler_end, align 4
  %cmp428 = icmp sle i32 %341, %343
  br i1 %cmp428, label %for.body.430, label %for.end.445

for.body.430:                                     ; preds = %for.cond.427
  %344 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %345 = load i32, i32* %i, align 4
  %call431 = call i32 @dict_filler_word(%struct.dict_t* %344, i32 %345)
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.then.433, label %if.end.442

if.then.433:                                      ; preds = %for.body.430
  %346 = load i32, i32* %i, align 4
  %347 = load i32, i32* %n, align 4
  %idxprom434 = sext i32 %347 to i64
  %348 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %arrayidx435 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %348, i64 %idxprom434
  %wid436 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx435, i32 0, i32 0
  store i32 %346, i32* %wid436, align 4
  %349 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %fillpen = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %349, i32 0, i32 6
  %350 = load %struct.fillpen_t*, %struct.fillpen_t** %fillpen, align 8
  %351 = load i32, i32* %i, align 4
  %call437 = call i32 @fillpen(%struct.fillpen_t* %350, i32 %351)
  %352 = load i32, i32* %n, align 4
  %idxprom438 = sext i32 %352 to i64
  %353 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %arrayidx439 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %353, i64 %idxprom438
  %prob440 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx439, i32 0, i32 1
  store i32 %call437, i32* %prob440, align 4
  %354 = load i32, i32* %n, align 4
  %inc441 = add nsw i32 %354, 1
  store i32 %inc441, i32* %n, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.433, %for.body.430
  br label %for.inc.443

for.inc.443:                                      ; preds = %if.end.442
  %355 = load i32, i32* %i, align 4
  %inc444 = add nsw i32 %355, 1
  store i32 %inc444, i32* %i, align 4
  br label %for.cond.427

for.end.445:                                      ; preds = %for.cond.427
  %356 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree446 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %356, i32 0, i32 1
  %357 = load i32, i32* %n_lextree446, align 4
  %conv447 = sext i32 %357 to i64
  %call448 = call i8* @__ckd_calloc__(i64 %conv447, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 281)
  %358 = bitcast i8* %call448 to %struct.lextree_t**
  %359 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %359, i32 0, i32 4
  store %struct.lextree_t** %358, %struct.lextree_t*** %fillertree, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.449

for.cond.449:                                     ; preds = %for.inc.462, %for.end.445
  %360 = load i32, i32* %i, align 4
  %361 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree450 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %361, i32 0, i32 1
  %362 = load i32, i32* %n_lextree450, align 4
  %cmp451 = icmp slt i32 %360, %362
  br i1 %cmp451, label %for.body.453, label %for.end.464

for.body.453:                                     ; preds = %for.cond.449
  %363 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %364 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %365 = load i32, i32* %n, align 4
  %call454 = call %struct.lextree_t* @lextree_build(%struct.kbcore_t* %363, %struct.wordprob_t* %364, i32 %365, i8* null)
  %366 = load i32, i32* %i, align 4
  %idxprom455 = sext i32 %366 to i64
  %367 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree456 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %367, i32 0, i32 4
  %368 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree456, align 8
  %arrayidx457 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %368, i64 %idxprom455
  store %struct.lextree_t* %call454, %struct.lextree_t** %arrayidx457, align 8
  %369 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %369 to i64
  %370 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree459 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %370, i32 0, i32 4
  %371 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree459, align 8
  %arrayidx460 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %371, i64 %idxprom458
  %372 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx460, align 8
  %type461 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %372, i32 0, i32 0
  store i32 -1, i32* %type461, align 4
  br label %for.inc.462

for.inc.462:                                      ; preds = %for.body.453
  %373 = load i32, i32* %i, align 4
  %inc463 = add nsw i32 %373, 1
  store i32 %inc463, i32* %i, align 4
  br label %for.cond.449

for.end.464:                                      ; preds = %for.cond.449
  %374 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %375 = bitcast %struct.wordprob_t* %374 to i8*
  call void @ckd_free(i8* %375)
  %376 = load i8*, i8** %lc, align 8
  call void @ckd_free(i8* %376)
  %377 = load i32*, i32** %lc_active, align 8
  %378 = bitcast i32* %377 to i8*
  call void @ckd_free(i8* %378)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %379 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree465 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %379, i32 0, i32 1
  %380 = load i32, i32* %n_lextree465, align 4
  %381 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree466 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %381, i32 0, i32 4
  %382 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree466, align 8
  %arrayidx467 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %382, i64 0
  %383 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx467, align 8
  %n_node468 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %383, i32 0, i32 4
  %384 = load i32, i32* %n_node468, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0), i32 %380, i32 %384)
  %call469 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0))
  %385 = bitcast i8* %call469 to i32*
  %386 = load i32, i32* %385, align 4
  %tobool470 = icmp ne i32 %386, 0
  br i1 %tobool470, label %if.then.471, label %if.end.500

if.then.471:                                      ; preds = %for.end.464
  %387 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool472 = icmp ne %struct.lmset_s* %387, null
  br i1 %tobool472, label %if.then.473, label %if.end.474

if.then.473:                                      ; preds = %if.then.471
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %if.then.471
  store i32 0, i32* %i, align 4
  br label %for.cond.475

for.cond.475:                                     ; preds = %for.inc.484, %if.end.474
  %388 = load i32, i32* %i, align 4
  %389 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree476 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %389, i32 0, i32 1
  %390 = load i32, i32* %n_lextree476, align 4
  %cmp477 = icmp slt i32 %388, %390
  br i1 %cmp477, label %for.body.479, label %for.end.486

for.body.479:                                     ; preds = %for.cond.475
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %392 = load i32, i32* %i, align 4
  %call480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %391, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 %392)
  %393 = load i32, i32* %i, align 4
  %idxprom481 = sext i32 %393 to i64
  %394 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree482 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %394, i32 0, i32 2
  %395 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree482, align 8
  %arrayidx483 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %395, i64 %idxprom481
  %396 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx483, align 8
  %397 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @lextree_dump(%struct.lextree_t* %396, %struct.dict_t* %397, %struct._IO_FILE* %398)
  br label %for.inc.484

for.inc.484:                                      ; preds = %for.body.479
  %399 = load i32, i32* %i, align 4
  %inc485 = add nsw i32 %399, 1
  store i32 %inc485, i32* %i, align 4
  br label %for.cond.475

for.end.486:                                      ; preds = %for.cond.475
  store i32 0, i32* %i, align 4
  br label %for.cond.487

for.cond.487:                                     ; preds = %for.inc.496, %for.end.486
  %400 = load i32, i32* %i, align 4
  %401 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree488 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %401, i32 0, i32 1
  %402 = load i32, i32* %n_lextree488, align 4
  %cmp489 = icmp slt i32 %400, %402
  br i1 %cmp489, label %for.body.491, label %for.end.498

for.body.491:                                     ; preds = %for.cond.487
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %404 = load i32, i32* %i, align 4
  %call492 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %i, align 4
  %idxprom493 = sext i32 %405 to i64
  %406 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree494 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %406, i32 0, i32 4
  %407 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree494, align 8
  %arrayidx495 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %407, i64 %idxprom493
  %408 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx495, align 8
  %409 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @lextree_dump(%struct.lextree_t* %408, %struct.dict_t* %409, %struct._IO_FILE* %410)
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.body.491
  %411 = load i32, i32* %i, align 4
  %inc497 = add nsw i32 %411, 1
  store i32 %inc497, i32* %i, align 4
  br label %for.cond.487

for.end.498:                                      ; preds = %for.cond.487
  %412 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call499 = call i32 @fflush(%struct._IO_FILE* %412)
  br label %if.end.500

if.end.500:                                       ; preds = %for.end.498, %for.end.464
  %413 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mgau = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %413, i32 0, i32 8
  %414 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %414, i32 0, i32 0
  %415 = load i32, i32* %n_mgau, align 4
  %416 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict2pid501 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %416, i32 0, i32 3
  %417 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid501, align 8
  %n_comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %417, i32 0, i32 6
  %418 = load i32, i32* %n_comstate, align 4
  %call502 = call %struct.ascr_t* @ascr_init(i32 %415, i32 %418)
  %419 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ascr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %419, i32 0, i32 21
  store %struct.ascr_t* %call502, %struct.ascr_t** %ascr, align 8
  %call503 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0))
  %420 = bitcast i8* %call503 to double*
  %421 = load double, double* %420, align 8
  %call504 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0))
  %422 = bitcast i8* %call504 to double*
  %423 = load double, double* %422, align 8
  %call505 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0))
  %424 = bitcast i8* %call505 to double*
  %425 = load double, double* %424, align 8
  %call506 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0))
  %426 = bitcast i8* %call506 to double*
  %427 = load double, double* %426, align 8
  %call507 = call %struct.beam_t* @beam_init(double %421, double %423, double %425, double %427)
  %428 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %428, i32 0, i32 22
  store %struct.beam_t* %call507, %struct.beam_t** %beam, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %429 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam508 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %429, i32 0, i32 22
  %430 = load %struct.beam_t*, %struct.beam_t** %beam508, align 8
  %hmm = getelementptr inbounds %struct.beam_t, %struct.beam_t* %430, i32 0, i32 1
  %431 = load i32, i32* %hmm, align 4
  %432 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam509 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %432, i32 0, i32 22
  %433 = load %struct.beam_t*, %struct.beam_t** %beam509, align 8
  %ptrans = getelementptr inbounds %struct.beam_t, %struct.beam_t* %433, i32 0, i32 2
  %434 = load i32, i32* %ptrans, align 4
  %435 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam510 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %435, i32 0, i32 22
  %436 = load %struct.beam_t*, %struct.beam_t** %beam510, align 8
  %word511 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %436, i32 0, i32 3
  %437 = load i32, i32* %word511, align 4
  %438 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam512 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %438, i32 0, i32 22
  %439 = load %struct.beam_t*, %struct.beam_t** %beam512, align 8
  %subvq = getelementptr inbounds %struct.beam_t, %struct.beam_t* %439, i32 0, i32 0
  %440 = load i32, i32* %subvq, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i32 0, i32 0), i32 %431, i32 %434, i32 %437, i32 %440)
  %call513 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0))
  %441 = bitcast i8* %call513 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ds_ratio = getelementptr inbounds %struct.kb_t, %struct.kb_t* %443, i32 0, i32 23
  store i32 %442, i32* %ds_ratio, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %444 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ds_ratio514 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %444, i32 0, i32 23
  %445 = load i32, i32* %ds_ratio514, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i32 %445)
  %446 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bstcid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %446, i32 0, i32 13
  store i32 -1, i32* %rec_bstcid, align 4
  %447 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %skip_count = getelementptr inbounds %struct.kb_t, %struct.kb_t* %447, i32 0, i32 18
  store i32 0, i32* %skip_count, align 4
  %call515 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0))
  %448 = bitcast i8* %call515 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cond_ds = getelementptr inbounds %struct.kb_t, %struct.kb_t* %450, i32 0, i32 24
  store i32 %449, i32* %cond_ds, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 328, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %451 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cond_ds516 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %451, i32 0, i32 24
  %452 = load i32, i32* %cond_ds516, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i32 0, i32 0), i32 %452)
  %453 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cond_ds517 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %453, i32 0, i32 24
  %454 = load i32, i32* %cond_ds517, align 4
  %cmp518 = icmp sgt i32 %454, 0
  br i1 %cmp518, label %land.lhs.true, label %if.end.524

land.lhs.true:                                    ; preds = %if.end.500
  %455 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore520 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %455, i32 0, i32 0
  %456 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore520, align 8
  %gs = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %456, i32 0, i32 10
  %457 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %cmp521 = icmp eq %struct.gs_s* %457, null
  br i1 %cmp521, label %if.then.523, label %if.end.524

if.then.523:                                      ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 330, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.524

if.end.524:                                       ; preds = %if.then.523, %land.lhs.true, %if.end.500
  %call525 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0))
  %458 = bitcast i8* %call525 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %gs4gs = getelementptr inbounds %struct.kb_t, %struct.kb_t* %460, i32 0, i32 25
  store i32 %459, i32* %gs4gs, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 333, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %461 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %gs4gs526 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %461, i32 0, i32 25
  %462 = load i32, i32* %gs4gs526, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.70, i32 0, i32 0), i32 %462)
  %call527 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  %463 = bitcast i8* %call527 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %svq4svq = getelementptr inbounds %struct.kb_t, %struct.kb_t* %465, i32 0, i32 26
  store i32 %464, i32* %svq4svq, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 336, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %466 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %svq4svq528 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %466, i32 0, i32 26
  %467 = load i32, i32* %svq4svq528, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.72, i32 0, i32 0), i32 %467)
  %call529 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0))
  %468 = bitcast i8* %call529 to float*
  %469 = load float, float* %468, align 4
  %conv530 = fpext float %469 to double
  %call531 = call i32 @logs3(double %conv530)
  %mul532 = mul nsw i32 -1, %call531
  %470 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ci_pbeam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %470, i32 0, i32 27
  store i32 %mul532, i32* %ci_pbeam, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %471 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ci_pbeam533 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %471, i32 0, i32 27
  %472 = load i32, i32* %ci_pbeam533, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.74, i32 0, i32 0), i32 %472)
  %473 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ci_pbeam534 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %473, i32 0, i32 27
  %474 = load i32, i32* %ci_pbeam534, align 4
  %cmp535 = icmp sgt i32 %474, 10000000
  br i1 %cmp535, label %if.then.537, label %if.end.538

if.then.537:                                      ; preds = %if.end.524
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.537, %if.end.524
  %call539 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0))
  %475 = bitcast i8* %call539 to float*
  %476 = load float, float* %475, align 4
  %conv540 = fpext float %476 to double
  %call541 = call i32 @logs3(double %conv540)
  %mul542 = mul nsw i32 -1, %call541
  %477 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %wend_beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %477, i32 0, i32 32
  store i32 %mul542, i32* %wend_beam, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 345, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %478 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %wend_beam543 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %478, i32 0, i32 32
  %479 = load i32, i32* %wend_beam543, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0), i32 %479)
  %call544 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0))
  %480 = bitcast i8* %call544 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window = getelementptr inbounds %struct.kb_t, %struct.kb_t* %482, i32 0, i32 28
  store i32 %481, i32* %pl_window, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %483 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window545 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %483, i32 0, i32 28
  %484 = load i32, i32* %pl_window545, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.79, i32 0, i32 0), i32 %484)
  %485 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start = getelementptr inbounds %struct.kb_t, %struct.kb_t* %485, i32 0, i32 29
  store i32 0, i32* %pl_window_start, align 4
  %call546 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0))
  %486 = bitcast i8* %call546 to float*
  %487 = load float, float* %486, align 4
  %conv547 = fpext float %487 to double
  %call548 = call i32 @logs3(double %conv547)
  %488 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %488, i32 0, i32 31
  store i32 %call548, i32* %pl_beam, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 353, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %489 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_beam549 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %489, i32 0, i32 31
  %490 = load i32, i32* %pl_beam549, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0), i32 %490)
  store i32 0, i32* %cisencnt, align 4
  br label %for.cond.550

for.cond.550:                                     ; preds = %for.inc.557, %if.end.538
  %491 = load i32, i32* %cisencnt, align 4
  %492 = load i32, i32* %cisencnt, align 4
  %idxprom551 = sext i32 %492 to i64
  %493 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %cd2cisen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %493, i32 0, i32 11
  %494 = load i16*, i16** %cd2cisen, align 8
  %arrayidx552 = getelementptr inbounds i16, i16* %494, i64 %idxprom551
  %495 = load i16, i16* %arrayidx552, align 2
  %conv553 = sext i16 %495 to i32
  %cmp554 = icmp eq i32 %491, %conv553
  br i1 %cmp554, label %for.body.556, label %for.end.559

for.body.556:                                     ; preds = %for.cond.550
  br label %for.inc.557

for.inc.557:                                      ; preds = %for.body.556
  %496 = load i32, i32* %cisencnt, align 4
  %inc558 = add nsw i32 %496, 1
  store i32 %inc558, i32* %cisencnt, align 4
  br label %for.cond.550

for.end.559:                                      ; preds = %for.cond.550
  %497 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window560 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %497, i32 0, i32 28
  %498 = load i32, i32* %pl_window560, align 4
  %499 = load i32, i32* %cisencnt, align 4
  %call561 = call i8** @__ckd_calloc_2d__(i32 %498, i32 %499, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 358)
  %500 = bitcast i8** %call561 to i32**
  %501 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %501, i32 0, i32 15
  store i32** %500, i32*** %cache_ci_senscr, align 8
  %502 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window562 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %502, i32 0, i32 28
  %503 = load i32, i32* %pl_window562, align 4
  %conv563 = sext i32 %503 to i64
  %call564 = call i8* @__ckd_calloc__(i64 %conv563, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 359)
  %504 = bitcast i8* %call564 to i32*
  %505 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %505, i32 0, i32 16
  store i32* %504, i32** %cache_best_list, align 8
  %506 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_ciphone565 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %506, i32 0, i32 0
  %507 = load i32, i32* %n_ciphone565, align 4
  %conv566 = sext i32 %507 to i64
  %call567 = call i8* @__ckd_calloc__(i64 %conv566, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 360)
  %508 = bitcast i8* %call567 to i32*
  %509 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %509, i32 0, i32 17
  store i32* %508, i32** %phn_heur_list, align 8
  %510 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %fcb = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %510, i32 0, i32 0
  %511 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %call568 = call float*** @feat_array_alloc(%struct.feat_s* %511, i32 15000)
  %512 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %feat = getelementptr inbounds %struct.kb_t, %struct.kb_t* %512, i32 0, i32 7
  store float*** %call568, float**** %feat, align 8
  %cmp569 = icmp eq float*** %call568, null
  br i1 %cmp569, label %if.then.571, label %if.end.572

if.then.571:                                      ; preds = %for.end.559
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.572

if.end.572:                                       ; preds = %if.then.571, %for.end.559
  %513 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %514 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam573 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %514, i32 0, i32 22
  %515 = load %struct.beam_t*, %struct.beam_t** %beam573, align 8
  %word574 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %515, i32 0, i32 3
  %516 = load i32, i32* %word574, align 4
  %call575 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0))
  %517 = bitcast i8* %call575 to i32*
  %518 = load i32, i32* %517, align 4
  %call576 = call %struct.vithist_t* @vithist_init(%struct.kbcore_t* %513, i32 %516, i32 %518)
  %519 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %519, i32 0, i32 6
  store %struct.vithist_t* %call576, %struct.vithist_t** %vithist, align 8
  %520 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_sen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %520, i32 0, i32 40
  call void @ptmr_init(%struct.ptmr_t* %tm_sen)
  %521 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_srch = getelementptr inbounds %struct.kb_t, %struct.kb_t* %521, i32 0, i32 41
  call void @ptmr_init(%struct.ptmr_t* %tm_srch)
  %522 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_ovrhd = getelementptr inbounds %struct.kb_t, %struct.kb_t* %522, i32 0, i32 42
  call void @ptmr_init(%struct.ptmr_t* %tm_ovrhd)
  %523 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_fr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %523, i32 0, i32 43
  store i32 0, i32* %tot_fr, align 4
  %524 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_sen_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %524, i32 0, i32 44
  store double 0.000000e+00, double* %tot_sen_eval, align 8
  %525 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_gau_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %525, i32 0, i32 45
  store double 0.000000e+00, double* %tot_gau_eval, align 8
  %526 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_hmm_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %526, i32 0, i32 46
  store double 0.000000e+00, double* %tot_hmm_eval, align 8
  %527 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_wd_exit = getelementptr inbounds %struct.kb_t, %struct.kb_t* %527, i32 0, i32 47
  store double 0.000000e+00, double* %tot_wd_exit, align 8
  %call577 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0))
  %528 = bitcast i8* %call577 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_binsize = getelementptr inbounds %struct.kb_t, %struct.kb_t* %530, i32 0, i32 39
  store i32 %529, i32* %hmm_hist_binsize, align 4
  %531 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool578 = icmp ne %struct.lmset_s* %531, null
  br i1 %tobool578, label %if.then.579, label %if.else.589

if.then.579:                                      ; preds = %if.end.572
  %532 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti580 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %532, i32 0, i32 3
  %533 = load %struct.lextree_t**, %struct.lextree_t*** %ugtreeMulti580, align 8
  %arrayidx581 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %533, i64 0
  %534 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx581, align 8
  %n_node582 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %534, i32 0, i32 4
  %535 = load i32, i32* %n_node582, align 4
  %536 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree583 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %536, i32 0, i32 4
  %537 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree583, align 8
  %arrayidx584 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %537, i64 0
  %538 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx584, align 8
  %n_node585 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %538, i32 0, i32 4
  %539 = load i32, i32* %n_node585, align 4
  %add586 = add nsw i32 %535, %539
  %540 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree587 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %540, i32 0, i32 1
  %541 = load i32, i32* %n_lextree587, align 4
  %mul588 = mul nsw i32 %add586, %541
  store i32 %mul588, i32* %n, align 4
  br label %if.end.599

if.else.589:                                      ; preds = %if.end.572
  %542 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree590 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %542, i32 0, i32 2
  %543 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree590, align 8
  %arrayidx591 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %543, i64 0
  %544 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx591, align 8
  %n_node592 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %544, i32 0, i32 4
  %545 = load i32, i32* %n_node592, align 4
  %546 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree593 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %546, i32 0, i32 4
  %547 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree593, align 8
  %arrayidx594 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %547, i64 0
  %548 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx594, align 8
  %n_node595 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %548, i32 0, i32 4
  %549 = load i32, i32* %n_node595, align 4
  %add596 = add nsw i32 %545, %549
  %550 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree597 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %550, i32 0, i32 1
  %551 = load i32, i32* %n_lextree597, align 4
  %mul598 = mul nsw i32 %add596, %551
  store i32 %mul598, i32* %n, align 4
  br label %if.end.599

if.end.599:                                       ; preds = %if.else.589, %if.then.579
  %552 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_binsize600 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %552, i32 0, i32 39
  %553 = load i32, i32* %hmm_hist_binsize600, align 4
  %554 = load i32, i32* %n, align 4
  %div = sdiv i32 %554, %553
  store i32 %div, i32* %n, align 4
  %555 = load i32, i32* %n, align 4
  %add601 = add nsw i32 %555, 1
  %556 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t, %struct.kb_t* %556, i32 0, i32 38
  store i32 %add601, i32* %hmm_hist_bins, align 4
  %557 = load i32, i32* %n, align 4
  %add602 = add nsw i32 %557, 1
  %conv603 = sext i32 %add602 to i64
  %call604 = call i8* @__ckd_calloc__(i64 %conv603, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 386)
  %558 = bitcast i8* %call604 to i32*
  %559 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %559, i32 0, i32 37
  store i32* %558, i32** %hmm_hist, align 8
  %call605 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0))
  store i8* %call605, i8** %str, align 8
  %560 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchsegfp = getelementptr inbounds %struct.kb_t, %struct.kb_t* %560, i32 0, i32 49
  store %struct._IO_FILE* null, %struct._IO_FILE** %matchsegfp, align 8
  %561 = load i8*, i8** %str, align 8
  %tobool606 = icmp ne i8* %561, null
  br i1 %tobool606, label %if.then.607, label %if.end.614

if.then.607:                                      ; preds = %if.end.599
  %562 = load i8*, i8** %str, align 8
  %call608 = call %struct._IO_FILE* @fopen(i8* %562, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0))
  %563 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchsegfp609 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %563, i32 0, i32 49
  store %struct._IO_FILE* %call608, %struct._IO_FILE** %matchsegfp609, align 8
  %cmp610 = icmp eq %struct._IO_FILE* %call608, null
  br i1 %cmp610, label %if.then.612, label %if.end.613

if.then.612:                                      ; preds = %if.then.607
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 397, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %564 = load i8*, i8** %str, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.87, i32 0, i32 0), i8* %564)
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.612, %if.then.607
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.end.599
  %call615 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0))
  store i8* %call615, i8** %str, align 8
  %565 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchfp = getelementptr inbounds %struct.kb_t, %struct.kb_t* %565, i32 0, i32 48
  store %struct._IO_FILE* null, %struct._IO_FILE** %matchfp, align 8
  %566 = load i8*, i8** %str, align 8
  %tobool616 = icmp ne i8* %566, null
  br i1 %tobool616, label %if.then.617, label %if.end.624

if.then.617:                                      ; preds = %if.end.614
  %567 = load i8*, i8** %str, align 8
  %call618 = call %struct._IO_FILE* @fopen(i8* %567, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0))
  %568 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchfp619 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %568, i32 0, i32 48
  store %struct._IO_FILE* %call618, %struct._IO_FILE** %matchfp619, align 8
  %cmp620 = icmp eq %struct._IO_FILE* %call618, null
  br i1 %cmp620, label %if.then.622, label %if.end.623

if.then.622:                                      ; preds = %if.then.617
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %569 = load i8*, i8** %str, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.87, i32 0, i32 0), i8* %569)
  br label %if.end.623

if.end.623:                                       ; preds = %if.then.622, %if.then.617
  br label %if.end.624

if.end.624:                                       ; preds = %if.end.623, %if.end.614
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.kbcore_t* @kbcore_init(double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, double, double, double, double, double, i8*, i8*, double, i8*, double, i8*, i8*, i8*, double) #2

declare i8* @cmd_ln_access(i8*) #2

declare void @_E__pr_header(i8*, i64, i8*) #2

declare void @_E__die_error(i8*, ...) #2

declare i32 @tmat_chk_1skip(%struct.tmat_t*) #2

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

declare void @_E__pr_info_header(i8*, i64, i8*) #2

declare void @_E__pr_info(i8*, ...) #2

declare void @_E__pr_warn(i8*, ...) #2

declare i32 @lm_ug_wordprob(%struct.lm_s*, %struct.dict_t*, i32, %struct.wordprob_t*) #2

declare i32 @wid_wordprob2alt(%struct.dict_t*, %struct.wordprob_t*, i32) #2

declare %struct.lextree_t* @lextree_build(%struct.kbcore_t*, %struct.wordprob_t*, i32, i8*) #2

declare i32 @dict_filler_word(%struct.dict_t*, i32) #2

declare i32 @fillpen(%struct.fillpen_t*, i32) #2

declare void @ckd_free(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @lextree_dump(%struct.lextree_t*, %struct.dict_t*, %struct._IO_FILE*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare %struct.ascr_t* @ascr_init(i32, i32) #2

declare %struct.beam_t* @beam_init(double, double, double, double) #2

declare i32 @logs3(double) #2

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #2

declare float*** @feat_array_alloc(%struct.feat_s*, i32) #2

declare %struct.vithist_t* @vithist_init(%struct.kbcore_t*, i32, i32) #2

declare void @ptmr_init(%struct.ptmr_t*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @kb_setlm(i8* %lmname, %struct.kb_t* %kb) #0 {
entry:
  %lmname.addr = alloca i8*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %lms = alloca %struct.lmset_s*, align 8
  %kbc = alloca %struct.kbcore_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %lmname, i8** %lmname.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store %struct.kbcore_t* null, %struct.kbcore_t** %kbc, align 8
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 0
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  store %struct.kbcore_t* %1, %struct.kbcore_t** %kbc, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lmset = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 5
  %3 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  store %struct.lmset_s* %3, %struct.lmset_s** %lms, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0))
  %4 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %4, i32 0, i32 4
  store %struct.lm_s* null, %struct.lm_s** %lm, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %6 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %6, i32 0, i32 1
  %7 = load i32, i32* %n_lextree, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %9, i32 0, i32 2
  %10 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %10, i64 %idxprom
  store %struct.lextree_t* null, %struct.lextree_t** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 430, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0))
  %12 = load %struct.lmset_s*, %struct.lmset_s** %lms, align 8
  %cmp1 = icmp ne %struct.lmset_s* %12, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.27, %if.then
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %n_lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %14, i32 0, i32 12
  %15 = load i32, i32* %n_lm, align 4
  %cmp3 = icmp slt i32 %13, %15
  br i1 %cmp3, label %for.body.4, label %for.end.29

for.body.4:                                       ; preds = %for.cond.2
  %16 = load i8*, i8** %lmname.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.lmset_s*, %struct.lmset_s** %lms, align 8
  %arrayidx6 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %18, i64 %idxprom5
  %name = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx6, i32 0, i32 0
  %19 = load i8*, i8** %name, align 8
  %call7 = call i32 @strcmp(i8* %16, i8* %19) #4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %for.body.4
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.lmset_s*, %struct.lmset_s** %lms, align 8
  %arrayidx11 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %21, i64 %idxprom10
  %lm12 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx11, i32 0, i32 1
  %22 = load %struct.lm_s*, %struct.lm_s** %lm12, align 8
  %23 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm13 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %23, i32 0, i32 4
  store %struct.lm_s* %22, %struct.lm_s** %lm13, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.24, %if.then.9
  %24 = load i32, i32* %j, align 4
  %25 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree15 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %25, i32 0, i32 1
  %26 = load i32, i32* %n_lextree15, align 4
  %cmp16 = icmp slt i32 %24, %26
  br i1 %cmp16, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.14
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree18 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %28, i32 0, i32 1
  %29 = load i32, i32* %n_lextree18, align 4
  %mul = mul nsw i32 %27, %29
  %30 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %30
  %idxprom19 = sext i32 %add to i64
  %31 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti = getelementptr inbounds %struct.kb_t, %struct.kb_t* %31, i32 0, i32 3
  %32 = load %struct.lextree_t**, %struct.lextree_t*** %ugtreeMulti, align 8
  %arrayidx20 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %32, i64 %idxprom19
  %33 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx20, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree22 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %35, i32 0, i32 2
  %36 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree22, align 8
  %arrayidx23 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %36, i64 %idxprom21
  store %struct.lextree_t* %33, %struct.lextree_t** %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.17
  %37 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %37, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond.14

for.end.26:                                       ; preds = %for.cond.14
  br label %for.end.29

if.end:                                           ; preds = %for.body.4
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %38 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.2

for.end.29:                                       ; preds = %for.end.26, %for.cond.2
  %39 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm30 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %39, i32 0, i32 4
  %40 = load %struct.lm_s*, %struct.lm_s** %lm30, align 8
  %cmp31 = icmp eq %struct.lm_s* %40, null
  br i1 %cmp31, label %if.then.32, label %if.end.49

if.then.32:                                       ; preds = %for.end.29
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 445, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %41 = load i8*, i8** %lmname.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.90, i32 0, i32 0), i8* %41)
  %42 = load %struct.lmset_s*, %struct.lmset_s** %lms, align 8
  %arrayidx33 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %42, i64 0
  %lm34 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx33, i32 0, i32 1
  %43 = load %struct.lm_s*, %struct.lm_s** %lm34, align 8
  %44 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm35 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %44, i32 0, i32 4
  store %struct.lm_s* %43, %struct.lm_s** %lm35, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.46, %if.then.32
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree37 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %46, i32 0, i32 1
  %47 = load i32, i32* %n_lextree37, align 4
  %cmp38 = icmp slt i32 %45, %47
  br i1 %cmp38, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.36
  %48 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %48 to i64
  %49 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtreeMulti41 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %49, i32 0, i32 3
  %50 = load %struct.lextree_t**, %struct.lextree_t*** %ugtreeMulti41, align 8
  %arrayidx42 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %50, i64 %idxprom40
  %51 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx42, align 8
  %52 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %52 to i64
  %53 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree44 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %53, i32 0, i32 2
  %54 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree44, align 8
  %arrayidx45 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %54, i64 %idxprom43
  store %struct.lextree_t* %51, %struct.lextree_t** %arrayidx45, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %55 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %55, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.36

for.end.48:                                       ; preds = %for.cond.36
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.48, %for.end.29
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %lor.lhs.false
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 453, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %56 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %56 to i64
  %57 = load %struct.lmset_s*, %struct.lmset_s** %lms, align 8
  %arrayidx52 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %57, i64 %idxprom51
  %name53 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx52, i32 0, i32 0
  %58 = load i8*, i8** %name53, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i8* %58)
  %59 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree54 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %59, i32 0, i32 2
  %60 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree54, align 8
  %arrayidx55 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %60, i64 0
  %61 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx55, align 8
  %n_node = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %61, i32 0, i32 4
  %62 = load i32, i32* %n_node, align 4
  %63 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %63, i32 0, i32 4
  %64 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %arrayidx56 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %64, i64 0
  %65 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx56, align 8
  %n_node57 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %65, i32 0, i32 4
  %66 = load i32, i32* %n_node57, align 4
  %add58 = add nsw i32 %62, %66
  %67 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree59 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %67, i32 0, i32 1
  %68 = load i32, i32* %n_lextree59, align 4
  %mul60 = mul nsw i32 %add58, %68
  store i32 %mul60, i32* %n, align 4
  %69 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_binsize = getelementptr inbounds %struct.kb_t, %struct.kb_t* %69, i32 0, i32 39
  %70 = load i32, i32* %hmm_hist_binsize, align 4
  %71 = load i32, i32* %n, align 4
  %div = sdiv i32 %71, %70
  store i32 %div, i32* %n, align 4
  %72 = load i32, i32* %n, align 4
  %add61 = add nsw i32 %72, 1
  %73 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t, %struct.kb_t* %73, i32 0, i32 38
  store i32 %add61, i32* %hmm_hist_bins, align 4
  %74 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %74, i32 0, i32 37
  %75 = load i32*, i32** %hmm_hist, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load i32, i32* %n, align 4
  %add62 = add nsw i32 %77, 1
  %conv = sext i32 %add62 to i64
  %mul63 = mul i64 %conv, 4
  %call64 = call i8* @__ckd_realloc__(i8* %76, i64 %mul63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 466)
  %78 = bitcast i8* %call64 to i32*
  %79 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist65 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %79, i32 0, i32 37
  store i32* %78, i32** %hmm_hist65, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 468, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %80 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %80 to i64
  %81 = load %struct.lmset_s*, %struct.lmset_s** %lms, align 8
  %arrayidx67 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %81, i64 %idxprom66
  %name68 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx67, i32 0, i32 0
  %82 = load i8*, i8** %name68, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i8* %82)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 469, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %83 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm69 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %83, i32 0, i32 4
  %84 = load %struct.lm_s*, %struct.lm_s** %lm69, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %84, i32 0, i32 0
  %85 = load i32, i32* %n_ug, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i32 0, i32 0), i32 %85)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 470, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %86 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm70 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %86, i32 0, i32 4
  %87 = load %struct.lm_s*, %struct.lm_s** %lm70, align 8
  %n_bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %87, i32 0, i32 1
  %88 = load i32, i32* %n_bg, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i32 %88)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 471, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %89 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %lm71 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %89, i32 0, i32 4
  %90 = load %struct.lm_s*, %struct.lm_s** %lm71, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %90, i32 0, i32 2
  %91 = load i32, i32* %n_tg, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i32 %91)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 472, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %92 = load i32, i32* %n, align 4
  %add72 = add nsw i32 %92, 1
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i32 0, i32 0), i32 %add72)
  store i32 0, i32* %j, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.83, %if.end.50
  %93 = load i32, i32* %j, align 4
  %94 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree74 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %94, i32 0, i32 1
  %95 = load i32, i32* %n_lextree74, align 4
  %cmp75 = icmp slt i32 %93, %95
  br i1 %cmp75, label %for.body.77, label %for.end.85

for.body.77:                                      ; preds = %for.cond.73
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 475, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %96 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree78 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %96, i32 0, i32 1
  %97 = load i32, i32* %n_lextree78, align 4
  %98 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %98 to i64
  %99 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree80 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %99, i32 0, i32 2
  %100 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree80, align 8
  %arrayidx81 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %100, i64 %idxprom79
  %101 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx81, align 8
  %n_node82 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %101, i32 0, i32 4
  %102 = load i32, i32* %n_node82, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0), i32 %97, i32 %102)
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.77
  %103 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %103, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.73

for.end.85:                                       ; preds = %for.cond.73
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @__ckd_realloc__(i8*, i64, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @kb_lextree_active_swap(%struct.kb_t* %kb) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %i = alloca i32, align 4
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %1, i32 0, i32 1
  %2 = load i32, i32* %n_lextree, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %4, i32 0, i32 2
  %5 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %5, i64 %idxprom
  %6 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx, align 8
  call void @lextree_active_swap(%struct.lextree_t* %6)
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %8, i32 0, i32 4
  %9 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %arrayidx2 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %9, i64 %idxprom1
  %10 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx2, align 8
  call void @lextree_active_swap(%struct.lextree_t* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @lextree_active_swap(%struct.lextree_t*) #2

; Function Attrs: nounwind uwtable
define void @kb_freehyps(%struct.kb_t* %kb) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %i = alloca i32, align 4
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_segs = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 50
  %1 = load %struct.hyp_t**, %struct.hyp_t*** %hyp_segs, align 8
  %tobool = icmp ne %struct.hyp_t** %1, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_seglen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %3, i32 0, i32 51
  %4 = load i32, i32* %hyp_seglen, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_segs1 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %6, i32 0, i32 50
  %7 = load %struct.hyp_t**, %struct.hyp_t*** %hyp_segs1, align 8
  %arrayidx = getelementptr inbounds %struct.hyp_t*, %struct.hyp_t** %7, i64 %idxprom
  %8 = load %struct.hyp_t*, %struct.hyp_t** %arrayidx, align 8
  %tobool2 = icmp ne %struct.hyp_t* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_segs5 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %10, i32 0, i32 50
  %11 = load %struct.hyp_t**, %struct.hyp_t*** %hyp_segs5, align 8
  %arrayidx6 = getelementptr inbounds %struct.hyp_t*, %struct.hyp_t** %11, i64 %idxprom4
  %12 = load %struct.hyp_t*, %struct.hyp_t** %arrayidx6, align 8
  %13 = bitcast %struct.hyp_t* %12 to i8*
  call void @ckd_free(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_segs7 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %15, i32 0, i32 50
  %16 = load %struct.hyp_t**, %struct.hyp_t*** %hyp_segs7, align 8
  %17 = bitcast %struct.hyp_t** %16 to i8*
  call void @ckd_free(i8* %17)
  %18 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_seglen8 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %18, i32 0, i32 51
  store i32 0, i32* %hyp_seglen8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_str = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 52
  %20 = load i8*, i8** %hyp_str, align 8
  %tobool10 = icmp ne i8* %20, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %21 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_str12 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %21, i32 0, i32 52
  %22 = load i8*, i8** %hyp_str12, align 8
  call void @ckd_free(i8* %22)
  %23 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_strlen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %23, i32 0, i32 53
  store i32 0, i32* %hyp_strlen, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @kb_free(%struct.kb_t* %kb) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %vithist = alloca %struct.vithist_t*, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist1 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 6
  %1 = load %struct.vithist_t*, %struct.vithist_t** %vithist1, align 8
  store %struct.vithist_t* %1, %struct.vithist_t** %vithist, align 8
  %2 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %2, i32 0, i32 11
  %3 = load i32*, i32** %sen_active, align 8
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active2 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %4, i32 0, i32 11
  %5 = load i32*, i32** %sen_active2, align 8
  %6 = bitcast i32* %5 to i8*
  call void @ckd_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ssid_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %7, i32 0, i32 9
  %8 = load i32*, i32** %ssid_active, align 8
  %tobool3 = icmp ne i32* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ssid_active5 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %9, i32 0, i32 9
  %10 = load i32*, i32** %ssid_active5, align 8
  %11 = bitcast i32* %10 to i8*
  call void @ckd_free(i8* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %comssid_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %12, i32 0, i32 10
  %13 = load i32*, i32** %comssid_active, align 8
  %tobool7 = icmp ne i32* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %comssid_active9 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %14, i32 0, i32 10
  %15 = load i32*, i32** %comssid_active9, align 8
  %16 = bitcast i32* %15 to i8*
  call void @ckd_free(i8* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %17 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %17, i32 0, i32 4
  %18 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %tobool11 = icmp ne %struct.lextree_t** %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree13 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 4
  %20 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree13, align 8
  %21 = bitcast %struct.lextree_t** %20 to i8*
  call void @ckd_free(i8* %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %22 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %22, i32 0, i32 37
  %23 = load i32*, i32** %hmm_hist, align 8
  %tobool15 = icmp ne i32* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %24 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist17 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %24, i32 0, i32 37
  %25 = load i32*, i32** %hmm_hist17, align 8
  %26 = bitcast i32* %25 to i8*
  call void @ckd_free(i8* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %27 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %tobool19 = icmp ne %struct.vithist_t* %27, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %28 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %entry21 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %28, i32 0, i32 0
  %29 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry21, align 8
  %30 = bitcast %struct.vithist_entry_t** %29 to i8*
  call void @ckd_free(i8* %30)
  %31 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %31, i32 0, i32 1
  %32 = load i32*, i32** %frame_start, align 8
  %33 = bitcast i32* %32 to i8*
  call void @ckd_free(i8* %33)
  %34 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %34, i32 0, i32 6
  %35 = load i32*, i32** %bestscore, align 8
  %36 = bitcast i32* %35 to i8*
  call void @ckd_free(i8* %36)
  %37 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %37, i32 0, i32 7
  %38 = load i32*, i32** %bestvh, align 8
  %39 = bitcast i32* %38 to i8*
  call void @ckd_free(i8* %39)
  %40 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %lms2vh_root = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %40, i32 0, i32 8
  %41 = load %struct.vh_lms2vh_t**, %struct.vh_lms2vh_t*** %lms2vh_root, align 8
  %42 = bitcast %struct.vh_lms2vh_t** %41 to i8*
  call void @ckd_free(i8* %42)
  %43 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist22 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %43, i32 0, i32 6
  %44 = load %struct.vithist_t*, %struct.vithist_t** %vithist22, align 8
  %45 = bitcast %struct.vithist_t* %44 to i8*
  call void @ckd_free(i8* %45)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %46 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %46, i32 0, i32 0
  %47 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  call void @kbcore_free(%struct.kbcore_t* %47)
  %48 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %feat = getelementptr inbounds %struct.kb_t, %struct.kb_t* %48, i32 0, i32 7
  %49 = load float***, float**** %feat, align 8
  %tobool24 = icmp ne float*** %49, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.23
  %50 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %feat26 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %50, i32 0, i32 7
  %51 = load float***, float**** %feat26, align 8
  %arrayidx = getelementptr inbounds float**, float*** %51, i64 0
  %52 = load float**, float*** %arrayidx, align 8
  %arrayidx27 = getelementptr inbounds float*, float** %52, i64 0
  %53 = load float*, float** %arrayidx27, align 8
  %54 = bitcast float* %53 to i8*
  call void @ckd_free(i8* %54)
  %55 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %feat28 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %55, i32 0, i32 7
  %56 = load float***, float**** %feat28, align 8
  %57 = bitcast float*** %56 to i8**
  call void @ckd_free_2d(i8** %57)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.23
  %58 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %58, i32 0, i32 15
  %59 = load i32**, i32*** %cache_ci_senscr, align 8
  %tobool30 = icmp ne i32** %59, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %60 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr32 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %60, i32 0, i32 15
  %61 = load i32**, i32*** %cache_ci_senscr32, align 8
  %62 = bitcast i32** %61 to i8**
  call void @ckd_free_2d(i8** %62)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %63 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %63, i32 0, i32 16
  %64 = load i32*, i32** %cache_best_list, align 8
  %tobool34 = icmp ne i32* %64, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %65 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list36 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %65, i32 0, i32 16
  %66 = load i32*, i32** %cache_best_list36, align 8
  %67 = bitcast i32* %66 to i8*
  call void @ckd_free(i8* %67)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %68 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %68, i32 0, i32 17
  %69 = load i32*, i32** %phn_heur_list, align 8
  %tobool38 = icmp ne i32* %69, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %70 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list40 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %70, i32 0, i32 17
  %71 = load i32*, i32** %phn_heur_list40, align 8
  %72 = bitcast i32* %71 to i8*
  call void @ckd_free(i8* %72)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  %73 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchsegfp = getelementptr inbounds %struct.kb_t, %struct.kb_t* %73, i32 0, i32 49
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %matchsegfp, align 8
  %tobool42 = icmp ne %struct._IO_FILE* %74, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %75 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchsegfp44 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %75, i32 0, i32 49
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %matchsegfp44, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %76)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  %77 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchfp = getelementptr inbounds %struct.kb_t, %struct.kb_t* %77, i32 0, i32 48
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %matchfp, align 8
  %tobool46 = icmp ne %struct._IO_FILE* %78, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.45
  %79 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchfp48 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %79, i32 0, i32 48
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %matchfp48, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %80)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.45
  %81 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  call void @kb_freehyps(%struct.kb_t* %81)
  ret void
}

declare void @kbcore_free(%struct.kbcore_t*) #2

declare void @ckd_free_2d(i8**) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
