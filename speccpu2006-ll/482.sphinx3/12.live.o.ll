; ModuleID = 'live.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hyp_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.partialhyp_t = type { i32, i32, i8*, i32, i32 }
%struct.fe_t = type { float, i32, i32, float, i32, i32, i32, i32, float, i16*, i32, %struct.melfb_t*, i32, i16, double* }
%struct.melfb_t = type { float, i32, i32, i32, float, float, float**, float**, float*, i32*, i32 }
%struct.param_t = type { float, i32, float, i32, i32, i32, i32, float, float, float, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@live_initialize_decoder.live_kb = internal global %struct.kb_t zeroinitializer, align 8
@kb = common global %struct.kb_t* null, align 8
@kbcore = internal global %struct.kbcore_t* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"live.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-hmmdump\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@hmmdumpfp = internal global %struct._IO_FILE* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"-maxwpf\00", align 1
@maxwpf = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"-maxhistpf\00", align 1
@maxhistpf = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"-maxhmmpf\00", align 1
@maxhmmpf = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"-ptranskip\00", align 1
@ptranskip = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"-maxhyplen\00", align 1
@parthyp = internal global %struct.partialhyp_t* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"-samprate\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Sampling rate %s not supported. Must be 8000 or 16000\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"-lowerf\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"-upperf\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"-nfilt\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"-frate\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"-nfft\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"-wlen\00", align 1
@fe = internal global %struct.fe_t* null, align 8
@.str.17 = private unnamed_addr constant [43 x i8] c"Front end initialization fe_init() failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"-maxcepvecs\00", align 1
@dummyframe = internal global float* null, align 8
@live_utt_decode_block.live_begin_new_utt = internal global i32 1, align 4
@live_utt_decode_block.frmno = internal global i32 0, align 4
@live_utt_decode_block.live_feat = internal global float*** null, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.20 = private unnamed_addr constant [98 x i8] c"SUMMARY:  %d fr;  %d sen, %d gau/fr, %.2f xCPU [%.2f xOvrhd];  %d hmm/fr, %d wd/fr, %.2f xCPU;  \0A\00", align 1
@confp_open = external global i32, align 4
@confp = external global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [21 x i8] c"total_considered.out\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"fopen considered_total.out failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"%22d grand total considered\0A\00", align 1
@tot_considered = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @live_initialize_decoder(i8* %live_args) #0 {
entry:
  %live_args.addr = alloca i8*, align 8
  %maxcepvecs = alloca i32, align 4
  %maxhyplen = alloca i32, align 4
  %samprate = alloca i32, align 4
  %ceplen = alloca i32, align 4
  %fe_param = alloca %struct.param_t*, align 8
  store i8* %live_args, i8** %live_args.addr, align 8
  %0 = load i8*, i8** %live_args.addr, align 8
  call void @parse_args_file(i8* %0)
  call void @unlimit()
  call void @kb_init(%struct.kb_t* @live_initialize_decoder.live_kb)
  store %struct.kb_t* @live_initialize_decoder.live_kb, %struct.kb_t** @kb, align 8
  %1 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %1, i32 0, i32 0
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  store %struct.kbcore_t* %2, %struct.kbcore_t** @kbcore, align 8
  %call = call i8* @__ckd_calloc__(i64 1000, i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 93)
  %3 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %uttid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %3, i32 0, i32 33
  store i8* %call, i8** %uttid, align 8
  %call1 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %4 = bitcast i8* %call1 to i32*
  %5 = load i32, i32* %4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %6, %cond.true ], [ null, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** @hmmdumpfp, align 8
  %call2 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %7 = bitcast i8* %call2 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @maxwpf, align 4
  %call3 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  %9 = bitcast i8* %call3 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* @maxhistpf, align 4
  %call4 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %11 = bitcast i8* %call4 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @maxhmmpf, align 4
  %call5 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %13 = bitcast i8* %call5 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @ptranskip, align 4
  %call6 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %15 = bitcast i8* %call6 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %maxhyplen, align 4
  %17 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %tobool7 = icmp ne %struct.partialhyp_t* %17, null
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %maxhyplen, align 4
  %conv = sext i32 %18 to i64
  %call8 = call i8* @__ckd_calloc__(i64 %conv, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 102)
  %19 = bitcast i8* %call8 to %struct.partialhyp_t*
  store %struct.partialhyp_t* %19, %struct.partialhyp_t** @parthyp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call9 = call i8* @__ckd_calloc__(i64 1, i64 120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 104)
  %20 = bitcast i8* %call9 to %struct.param_t*
  store %struct.param_t* %20, %struct.param_t** %fe_param, align 8
  %call10 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %21 = bitcast i8* %call10 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %samprate, align 4
  %23 = load i32, i32* %samprate, align 4
  %cmp = icmp ne i32 %23, 8000
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %24 = load i32, i32* %samprate, align 4
  %cmp12 = icmp ne i32 %24, 16000
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %25 = load i32, i32* %samprate, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0), i32 %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %if.end
  %26 = load i32, i32* %samprate, align 4
  %conv16 = sitofp i32 %26 to float
  %27 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %SAMPLING_RATE = getelementptr inbounds %struct.param_t, %struct.param_t* %27, i32 0, i32 0
  store float %conv16, float* %SAMPLING_RATE, align 4
  %call17 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %28 = bitcast i8* %call17 to float*
  %29 = load float, float* %28, align 4
  %30 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %LOWER_FILT_FREQ = getelementptr inbounds %struct.param_t, %struct.param_t* %30, i32 0, i32 7
  store float %29, float* %LOWER_FILT_FREQ, align 4
  %call18 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %31 = bitcast i8* %call18 to float*
  %32 = load float, float* %31, align 4
  %33 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %UPPER_FILT_FREQ = getelementptr inbounds %struct.param_t, %struct.param_t* %33, i32 0, i32 8
  store float %32, float* %UPPER_FILT_FREQ, align 4
  %call19 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  %34 = bitcast i8* %call19 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %NUM_FILTERS = getelementptr inbounds %struct.param_t, %struct.param_t* %36, i32 0, i32 5
  store i32 %35, i32* %NUM_FILTERS, align 4
  %call20 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  %37 = bitcast i8* %call20 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %FRAME_RATE = getelementptr inbounds %struct.param_t, %struct.param_t* %39, i32 0, i32 1
  store i32 %38, i32* %FRAME_RATE, align 4
  %call21 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %40 = bitcast i8* %call21 to float*
  %41 = load float, float* %40, align 4
  %42 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.param_t, %struct.param_t* %42, i32 0, i32 9
  store float %41, float* %PRE_EMPHASIS_ALPHA, align 4
  %call22 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %43 = bitcast i8* %call22 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %FFT_SIZE = getelementptr inbounds %struct.param_t, %struct.param_t* %45, i32 0, i32 6
  store i32 %44, i32* %FFT_SIZE, align 4
  %call23 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %46 = bitcast i8* %call23 to float*
  %47 = load float, float* %46, align 4
  %48 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %WINDOW_LENGTH = getelementptr inbounds %struct.param_t, %struct.param_t* %48, i32 0, i32 2
  store float %47, float* %WINDOW_LENGTH, align 4
  %49 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %doublebw = getelementptr inbounds %struct.param_t, %struct.param_t* %49, i32 0, i32 22
  store i32 0, i32* %doublebw, align 4
  %50 = load %struct.param_t*, %struct.param_t** %fe_param, align 8
  %call24 = call %struct.fe_t* @fe_init(%struct.param_t* %50)
  store %struct.fe_t* %call24, %struct.fe_t** @fe, align 8
  %51 = load %struct.fe_t*, %struct.fe_t** @fe, align 8
  %tobool25 = icmp ne %struct.fe_t* %51, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.15
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.15
  %call28 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0))
  %52 = bitcast i8* %call28 to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %maxcepvecs, align 4
  %54 = load %struct.kbcore_t*, %struct.kbcore_t** @kbcore, align 8
  %fcb = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %54, i32 0, i32 0
  %55 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %cepsize = getelementptr inbounds %struct.feat_s, %struct.feat_s* %55, i32 0, i32 1
  %56 = load i32, i32* %cepsize, align 4
  store i32 %56, i32* %ceplen, align 4
  %57 = load i32, i32* %ceplen, align 4
  %mul = mul nsw i32 1, %57
  %conv29 = sext i32 %mul to i64
  %call30 = call i8* @__ckd_calloc__(i64 %conv29, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 132)
  %58 = bitcast i8* %call30 to float*
  store float* %58, float** @dummyframe, align 8
  ret void
}

declare void @parse_args_file(i8*) #1

declare void @unlimit() #1

declare void @kb_init(%struct.kb_t*) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i8* @cmd_ln_access(i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare %struct.fe_t* @fe_init(%struct.param_t*) #1

; Function Attrs: nounwind uwtable
define i32 @live_free_memory() #0 {
entry:
  call void (...) @parse_args_free()
  %0 = load %struct.fe_t*, %struct.fe_t** @fe, align 8
  %call = call i32 @fe_close(%struct.fe_t* %0)
  %1 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %uttid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %1, i32 0, i32 33
  %2 = load i8*, i8** %uttid, align 8
  call void @ckd_free(i8* %2)
  %3 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  call void @kb_free(%struct.kb_t* %3)
  %4 = load float*, float** @dummyframe, align 8
  %5 = bitcast float* %4 to i8*
  call void @ckd_free(i8* %5)
  %6 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %7 = bitcast %struct.partialhyp_t* %6 to i8*
  call void @ckd_free(i8* %7)
  ret i32 0
}

declare void @parse_args_free(...) #1

declare i32 @fe_close(%struct.fe_t*) #1

declare void @ckd_free(i8*) #1

declare void @kb_free(%struct.kb_t*) #1

; Function Attrs: nounwind uwtable
define i32 @live_get_partialhyp(i32 %endutt) #0 {
entry:
  %endutt.addr = alloca i32, align 4
  %id = alloca i32, align 4
  %nwds = alloca i32, align 4
  %hyp = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %h = alloca %struct.hyp_t*, align 8
  %dict = alloca %struct.dict_t*, align 8
  store i32 %endutt, i32* %endutt.addr, align 4
  %0 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 0
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %1, i32 0, i32 2
  %2 = load %struct.dict_t*, %struct.dict_t** %dict1, align 8
  store %struct.dict_t* %2, %struct.dict_t** %dict, align 8
  %3 = load i32, i32* %endutt.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %vithist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %4, i32 0, i32 6
  %5 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %6 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %kbcore2 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %6, i32 0, i32 0
  %7 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore2, align 8
  %call = call i32 @vithist_utt_end(%struct.vithist_t* %5, %struct.kbcore_t* %7)
  store i32 %call, i32* %id, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %vithist3 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %8, i32 0, i32 6
  %9 = load %struct.vithist_t*, %struct.vithist_t** %vithist3, align 8
  %10 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %kbcore4 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %10, i32 0, i32 0
  %11 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore4, align 8
  %call5 = call i32 @vithist_partialutt_end(%struct.vithist_t* %9, %struct.kbcore_t* %11)
  store i32 %call5, i32* %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %id, align 4
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then.6, label %if.else.62

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %vithist7 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %13, i32 0, i32 6
  %14 = load %struct.vithist_t*, %struct.vithist_t** %vithist7, align 8
  %15 = load i32, i32* %id, align 4
  %call8 = call %struct.gnode_s* @vithist_backtrace(%struct.vithist_t* %14, i32 %15)
  store %struct.gnode_s* %call8, %struct.gnode_s** %hyp, align 8
  %16 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  store %struct.gnode_s* %16, %struct.gnode_s** %gn, align 8
  store i32 0, i32* %nwds, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %17 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool9 = icmp ne %struct.gnode_s* %17, null
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %18, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %19 = load i8*, i8** %ptr, align 8
  %20 = bitcast i8* %19 to %struct.hyp_t*
  store %struct.hyp_t* %20, %struct.hyp_t** %h, align 8
  %21 = load i32, i32* %nwds, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %22, i64 %idxprom
  %word = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx, i32 0, i32 2
  %23 = load i8*, i8** %word, align 8
  %cmp10 = icmp ne i8* %23, null
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %for.body
  %24 = load i32, i32* %nwds, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx13 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %25, i64 %idxprom12
  %word14 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx13, i32 0, i32 2
  %26 = load i8*, i8** %word14, align 8
  call void @ckd_free(i8* %26)
  %27 = load i32, i32* %nwds, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx16 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %28, i64 %idxprom15
  %word17 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx16, i32 0, i32 2
  store i8* null, i8** %word17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %for.body
  %29 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id19 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %29, i32 0, i32 0
  %30 = load i32, i32* %id19, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word21 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %31, i32 0, i32 4
  %32 = load %struct.dictword_t*, %struct.dictword_t** %word21, align 8
  %arrayidx22 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %32, i64 %idxprom20
  %word23 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx22, i32 0, i32 0
  %33 = load i8*, i8** %word23, align 8
  %call24 = call noalias i8* @strdup(i8* %33) #3
  %34 = load i32, i32* %nwds, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx26 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %35, i64 %idxprom25
  %word27 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx26, i32 0, i32 2
  store i8* %call24, i8** %word27, align 8
  %36 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %sf = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %36, i32 0, i32 2
  %37 = load i32, i32* %sf, align 4
  %38 = load i32, i32* %nwds, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx29 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %39, i64 %idxprom28
  %sf30 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx29, i32 0, i32 3
  store i32 %37, i32* %sf30, align 4
  %40 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ef = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %40, i32 0, i32 3
  %41 = load i32, i32* %ef, align 4
  %42 = load i32, i32* %nwds, align 4
  %idxprom31 = sext i32 %42 to i64
  %43 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx32 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %43, i64 %idxprom31
  %ef33 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx32, i32 0, i32 4
  store i32 %41, i32* %ef33, align 4
  %44 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ascr = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %44, i32 0, i32 4
  %45 = load i32, i32* %ascr, align 4
  %46 = load i32, i32* %nwds, align 4
  %idxprom34 = sext i32 %46 to i64
  %47 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx35 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %47, i64 %idxprom34
  %ascr36 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx35, i32 0, i32 0
  store i32 %45, i32* %ascr36, align 4
  %48 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %lscr = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %48, i32 0, i32 5
  %49 = load i32, i32* %lscr, align 4
  %50 = load i32, i32* %nwds, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx38 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %51, i64 %idxprom37
  %lscr39 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx38, i32 0, i32 1
  store i32 %49, i32* %lscr39, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %52 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %52, i32 0, i32 1
  %53 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %53, %struct.gnode_s** %gn, align 8
  %54 = load i32, i32* %nwds, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %nwds, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %nwds, align 4
  %idxprom40 = sext i32 %55 to i64
  %56 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx41 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %56, i64 %idxprom40
  %word42 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx41, i32 0, i32 2
  %57 = load i8*, i8** %word42, align 8
  %cmp43 = icmp ne i8* %57, null
  br i1 %cmp43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %for.end
  %58 = load i32, i32* %nwds, align 4
  %idxprom45 = sext i32 %58 to i64
  %59 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx46 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %59, i64 %idxprom45
  %word47 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx46, i32 0, i32 2
  %60 = load i8*, i8** %word47, align 8
  call void @ckd_free(i8* %60)
  %61 = load i32, i32* %nwds, align 4
  %idxprom48 = sext i32 %61 to i64
  %62 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx49 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %62, i64 %idxprom48
  %word50 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx49, i32 0, i32 2
  store i8* null, i8** %word50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %for.end
  %63 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  store %struct.gnode_s* %63, %struct.gnode_s** %gn, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %if.end.51
  %64 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool53 = icmp ne %struct.gnode_s* %64, null
  br i1 %tobool53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.52
  %65 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next54 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %65, i32 0, i32 1
  %66 = load %struct.gnode_s*, %struct.gnode_s** %next54, align 8
  %tobool55 = icmp ne %struct.gnode_s* %66, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.52
  %67 = phi i1 [ false, %for.cond.52 ], [ %tobool55, %land.rhs ]
  br i1 %67, label %for.body.56, label %for.end.61

for.body.56:                                      ; preds = %land.end
  %68 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data57 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %68, i32 0, i32 0
  %ptr58 = bitcast %union.anytype_s* %data57 to i8**
  %69 = load i8*, i8** %ptr58, align 8
  %70 = bitcast i8* %69 to %struct.hyp_t*
  store %struct.hyp_t* %70, %struct.hyp_t** %h, align 8
  %71 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %72 = bitcast %struct.hyp_t* %71 to i8*
  call void @ckd_free(i8* %72)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.56
  %73 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next60 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %73, i32 0, i32 1
  %74 = load %struct.gnode_s*, %struct.gnode_s** %next60, align 8
  store %struct.gnode_s* %74, %struct.gnode_s** %gn, align 8
  br label %for.cond.52

for.end.61:                                       ; preds = %land.end
  %75 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  call void @glist_free(%struct.gnode_s* %75)
  br label %if.end.75

if.else.62:                                       ; preds = %if.end
  store i32 0, i32* %nwds, align 4
  %76 = load i32, i32* %nwds, align 4
  %idxprom63 = sext i32 %76 to i64
  %77 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx64 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %77, i64 %idxprom63
  %word65 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx64, i32 0, i32 2
  %78 = load i8*, i8** %word65, align 8
  %cmp66 = icmp ne i8* %78, null
  br i1 %cmp66, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %if.else.62
  %79 = load i32, i32* %nwds, align 4
  %idxprom68 = sext i32 %79 to i64
  %80 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx69 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %80, i64 %idxprom68
  %word70 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx69, i32 0, i32 2
  %81 = load i8*, i8** %word70, align 8
  call void @ckd_free(i8* %81)
  %82 = load i32, i32* %nwds, align 4
  %idxprom71 = sext i32 %82 to i64
  %83 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %arrayidx72 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %83, i64 %idxprom71
  %word73 = getelementptr inbounds %struct.partialhyp_t, %struct.partialhyp_t* %arrayidx72, i32 0, i32 2
  store i8* null, i8** %word73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %if.else.62
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %for.end.61
  %84 = load i32, i32* %nwds, align 4
  ret i32 %84
}

declare i32 @vithist_utt_end(%struct.vithist_t*, %struct.kbcore_t*) #1

declare i32 @vithist_partialutt_end(%struct.vithist_t*, %struct.kbcore_t*) #1

declare %struct.gnode_s* @vithist_backtrace(%struct.vithist_t*, i32) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: nounwind uwtable
define void @live_utt_set_uttid(i8* %uttname) #0 {
entry:
  %uttname.addr = alloca i8*, align 8
  store i8* %uttname, i8** %uttname.addr, align 8
  %0 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %uttid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 33
  %1 = load i8*, i8** %uttid, align 8
  %2 = load i8*, i8** %uttname.addr, align 8
  %call = call i8* @strcpy(i8* %1, i8* %2) #3
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @live_utt_decode_block(i16* %samples, i32 %nsamples, i32 %live_endutt, %struct.partialhyp_t** %ohyp) #0 {
entry:
  %samples.addr = alloca i16*, align 8
  %nsamples.addr = alloca i32, align 4
  %live_endutt.addr = alloca i32, align 4
  %ohyp.addr = alloca %struct.partialhyp_t**, align 8
  %live_nfr = alloca i32, align 4
  %live_nfeatvec = alloca i32, align 4
  %nwds = alloca i32, align 4
  %mfcbuf = alloca float**, align 8
  store i16* %samples, i16** %samples.addr, align 8
  store i32 %nsamples, i32* %nsamples.addr, align 4
  store i32 %live_endutt, i32* %live_endutt.addr, align 4
  store %struct.partialhyp_t** %ohyp, %struct.partialhyp_t*** %ohyp.addr, align 8
  store i32 0, i32* %nwds, align 4
  %0 = load float***, float**** @live_utt_decode_block.live_feat, align 8
  %cmp = icmp eq float*** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** @kbcore, align 8
  %fcb = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %1, i32 0, i32 0
  %2 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %call = call float*** @feat_array_alloc(%struct.feat_s* %2, i32 256)
  store float*** %call, float**** @live_utt_decode_block.live_feat, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @live_utt_decode_block.live_begin_new_utt, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.fe_t*, %struct.fe_t** @fe, align 8
  %call2 = call i32 @fe_start_utt(%struct.fe_t* %4)
  %5 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  call void @utt_begin(%struct.kb_t* %5)
  store i32 0, i32* @live_utt_decode_block.frmno, align 4
  %6 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %nfr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %6, i32 0, i32 8
  store i32 0, i32* %nfr, align 4
  %7 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %utt_hmm_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %7, i32 0, i32 34
  store i32 0, i32* %utt_hmm_eval, align 4
  %8 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %utt_sen_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %8, i32 0, i32 35
  store i32 0, i32* %utt_sen_eval, align 4
  %9 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %utt_gau_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %9, i32 0, i32 36
  store i32 0, i32* %utt_gau_eval, align 4
  store i32 0, i32* @live_utt_decode_block.live_begin_new_utt, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  store float** null, float*** %mfcbuf, align 8
  %10 = load %struct.fe_t*, %struct.fe_t** @fe, align 8
  %11 = load i16*, i16** %samples.addr, align 8
  %12 = load i32, i32* %nsamples.addr, align 4
  %call4 = call i32 @fe_process_utt(%struct.fe_t* %10, i16* %11, i32 %12, float*** %mfcbuf)
  store i32 %call4, i32* %live_nfr, align 4
  %13 = load i32, i32* %live_endutt.addr, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %14 = load %struct.fe_t*, %struct.fe_t** @fe, align 8
  %15 = load float*, float** @dummyframe, align 8
  %call7 = call i32 @fe_end_utt(%struct.fe_t* %14, float* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.3
  %16 = load i32, i32* %live_nfr, align 4
  %cmp9 = icmp sgt i32 %16, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct.kbcore_t*, %struct.kbcore_t** @kbcore, align 8
  %fcb11 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %17, i32 0, i32 0
  %18 = load %struct.feat_s*, %struct.feat_s** %fcb11, align 8
  %19 = load float**, float*** %mfcbuf, align 8
  %20 = load i32, i32* %live_nfr, align 4
  %21 = load i32, i32* @live_utt_decode_block.live_begin_new_utt, align 4
  %22 = load i32, i32* %live_endutt.addr, align 4
  %23 = load float***, float**** @live_utt_decode_block.live_feat, align 8
  %call12 = call i32 @feat_s2mfc2feat_block(%struct.feat_s* %18, float** %19, i32 %20, i32 %21, i32 %22, float*** %23)
  store i32 %call12, i32* %live_nfeatvec, align 4
  %24 = load float***, float**** @live_utt_decode_block.live_feat, align 8
  %25 = load i32, i32* %live_nfeatvec, align 4
  %26 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %27 = load i32, i32* @maxwpf, align 4
  %28 = load i32, i32* @maxhistpf, align 4
  %29 = load i32, i32* @maxhmmpf, align 4
  %30 = load i32, i32* @ptranskip, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @hmmdumpfp, align 8
  call void @utt_decode_block(float*** %24, i32 %25, i32* @live_utt_decode_block.frmno, %struct.kb_t* %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct._IO_FILE* %31)
  %32 = load i32, i32* %live_endutt.addr, align 4
  %call13 = call i32 @live_get_partialhyp(i32 %32)
  store i32 %call13, i32* %nwds, align 4
  %33 = load %struct.partialhyp_t*, %struct.partialhyp_t** @parthyp, align 8
  %34 = load %struct.partialhyp_t**, %struct.partialhyp_t*** %ohyp.addr, align 8
  store %struct.partialhyp_t* %33, %struct.partialhyp_t** %34, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.8
  %35 = load i32, i32* %live_endutt.addr, align 4
  %tobool15 = icmp ne i32 %35, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  store i32 1, i32* @live_utt_decode_block.live_begin_new_utt, align 4
  %36 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %nfr17 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %36, i32 0, i32 8
  %37 = load i32, i32* %nfr17, align 4
  %38 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_fr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %38, i32 0, i32 43
  %39 = load i32, i32* %tot_fr, align 4
  %add = add nsw i32 %39, %37
  store i32 %add, i32* %tot_fr, align 4
  %40 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  call void @utt_end(%struct.kb_t* %40)
  br label %if.end.18

if.else:                                          ; preds = %if.end.14
  store i32 0, i32* @live_utt_decode_block.live_begin_new_utt, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %41 = load i32, i32* %live_nfr, align 4
  %cmp19 = icmp sgt i32 %41, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %42 = load float**, float*** %mfcbuf, align 8
  %43 = bitcast float** %42 to i8**
  call void @ckd_free_2d(i8** %43)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %44 = load i32, i32* %nwds, align 4
  ret i32 %44
}

declare float*** @feat_array_alloc(%struct.feat_s*, i32) #1

declare i32 @fe_start_utt(%struct.fe_t*) #1

declare void @utt_begin(%struct.kb_t*) #1

declare i32 @fe_process_utt(%struct.fe_t*, i16*, i32, float***) #1

declare i32 @fe_end_utt(%struct.fe_t*, float*) #1

declare i32 @feat_s2mfc2feat_block(%struct.feat_s*, float**, i32, i32, i32, float***) #1

declare void @utt_decode_block(float***, i32, i32*, %struct.kb_t*, i32, i32, i32, i32, %struct._IO_FILE*) #1

declare void @utt_end(%struct.kb_t*) #1

declare void @ckd_free_2d(i8**) #1

; Function Attrs: nounwind uwtable
define void @live_utt_summary() #0 {
entry:
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 354, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %0 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_fr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 43
  %1 = load i32, i32* %tot_fr, align 4
  %2 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_sen_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %2, i32 0, i32 44
  %3 = load double, double* %tot_sen_eval, align 8
  %4 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_fr1 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %4, i32 0, i32 43
  %5 = load i32, i32* %tot_fr1, align 4
  %conv = sitofp i32 %5 to double
  %div = fdiv double %3, %conv
  %conv2 = fptosi double %div to i32
  %6 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_gau_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %6, i32 0, i32 45
  %7 = load double, double* %tot_gau_eval, align 8
  %8 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_fr3 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %8, i32 0, i32 43
  %9 = load i32, i32* %tot_fr3, align 4
  %conv4 = sitofp i32 %9 to double
  %div5 = fdiv double %7, %conv4
  %conv6 = fptosi double %div5 to i32
  %10 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_hmm_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %10, i32 0, i32 46
  %11 = load double, double* %tot_hmm_eval, align 8
  %12 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_fr7 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %12, i32 0, i32 43
  %13 = load i32, i32* %tot_fr7, align 4
  %conv8 = sitofp i32 %13 to double
  %div9 = fdiv double %11, %conv8
  %conv10 = fptosi double %div9 to i32
  %14 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_wd_exit = getelementptr inbounds %struct.kb_t, %struct.kb_t* %14, i32 0, i32 47
  %15 = load double, double* %tot_wd_exit, align 8
  %16 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %tot_fr11 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %16, i32 0, i32 43
  %17 = load i32, i32* %tot_fr11, align 4
  %conv12 = sitofp i32 %17 to double
  %div13 = fdiv double %15, %conv12
  %conv14 = fptosi double %div13 to i32
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.20, i32 0, i32 0), i32 %1, i32 %conv2, i32 %conv6, double 0.000000e+00, double 0.000000e+00, i32 %conv10, i32 %conv14, double 0.000000e+00)
  %18 = load i32, i32* @confp_open, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @confp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  store %struct._IO_FILE* %call15, %struct._IO_FILE** @confp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call15, null
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 365, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @confp, align 8
  %21 = load i64, i64* @tot_considered, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i64 %21)
  ret void
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
