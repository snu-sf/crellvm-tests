; ModuleID = 'kbcore.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

@.str = private unnamed_addr constant [9 x i8] c"kbcore.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Initializing core models:\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Please specified the feature type\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"feat_init(%s) failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".cont.\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"#Feature streams(%d) in the feature for continuous HMM!= 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c".semi.\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"#Feature streams(%d) in the feature for semi-continuous HMM!= 4\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Feature should be either .semi. or .cont.\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"mdef_init(%s) failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"Compound word separator(%s) must be empty or single character string\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"dict_init(%s,%s,%s) failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Please only specify either -lmfile or -lmctlfile\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Please specify either one of -lmfile or -lmctlfile\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"lm_read(%s, %e, %e, %e) failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Reading LM ctl file\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"kb->lmset[0].name %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"lm_read_ctl(%s,%e,%e,%e) failed\0A:\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"No dictionary for associating filler penalty file(%s)\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"fillpen_init(%s) failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Dict/LM word-id mapping failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"Dict/LM word-id mapping failed for LM index %d, named %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"Varfile or mixwfile not specified along with meanfile(%s)\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"gauden_init(%s, %s, %e) failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"subvq_init (%s, %e, -1) failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"gs_read(%s) failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"After reading the number of senones: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"tmat_init (%s, %e) failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Verifying models consistency:\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Feature streamlen(%d) != mgau streamlen(%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Mdef #senones(%d) != mgau #senones(%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Mdef #tmat(%d) != tmatfile(%d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Mdef #states(%d) != tmat #states(%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.kbcore_t* @kbcore_init(double %logbase, i8* %feattype, i8* %cmn, i8* %varnorm, i8* %agc, i8* %mdeffile, i8* %dictfile, i8* %fdictfile, i8* %compsep, i8* %lmfile, i8* %lmctlfile, i8* %lmdumpdir, i8* %fillpenfile, i8* %senmgau, double %silprob, double %fillprob, double %langwt, double %inspen, double %uw, i8* %meanfile, i8* %varfile, double %varfloor, i8* %mixwfile, double %mixwfloor, i8* %subvqfile, i8* %gsfile, i8* %tmatfile, double %tmatfloor) #0 {
entry:
  %logbase.addr = alloca double, align 8
  %feattype.addr = alloca i8*, align 8
  %cmn.addr = alloca i8*, align 8
  %varnorm.addr = alloca i8*, align 8
  %agc.addr = alloca i8*, align 8
  %mdeffile.addr = alloca i8*, align 8
  %dictfile.addr = alloca i8*, align 8
  %fdictfile.addr = alloca i8*, align 8
  %compsep.addr = alloca i8*, align 8
  %lmfile.addr = alloca i8*, align 8
  %lmctlfile.addr = alloca i8*, align 8
  %lmdumpdir.addr = alloca i8*, align 8
  %fillpenfile.addr = alloca i8*, align 8
  %senmgau.addr = alloca i8*, align 8
  %silprob.addr = alloca double, align 8
  %fillprob.addr = alloca double, align 8
  %langwt.addr = alloca double, align 8
  %inspen.addr = alloca double, align 8
  %uw.addr = alloca double, align 8
  %meanfile.addr = alloca i8*, align 8
  %varfile.addr = alloca i8*, align 8
  %varfloor.addr = alloca double, align 8
  %mixwfile.addr = alloca i8*, align 8
  %mixwfloor.addr = alloca double, align 8
  %subvqfile.addr = alloca i8*, align 8
  %gsfile.addr = alloca i8*, align 8
  %tmatfile.addr = alloca i8*, align 8
  %tmatfloor.addr = alloca double, align 8
  %kb = alloca %struct.kbcore_t*, align 8
  %i = alloca i32, align 4
  store double %logbase, double* %logbase.addr, align 8
  store i8* %feattype, i8** %feattype.addr, align 8
  store i8* %cmn, i8** %cmn.addr, align 8
  store i8* %varnorm, i8** %varnorm.addr, align 8
  store i8* %agc, i8** %agc.addr, align 8
  store i8* %mdeffile, i8** %mdeffile.addr, align 8
  store i8* %dictfile, i8** %dictfile.addr, align 8
  store i8* %fdictfile, i8** %fdictfile.addr, align 8
  store i8* %compsep, i8** %compsep.addr, align 8
  store i8* %lmfile, i8** %lmfile.addr, align 8
  store i8* %lmctlfile, i8** %lmctlfile.addr, align 8
  store i8* %lmdumpdir, i8** %lmdumpdir.addr, align 8
  store i8* %fillpenfile, i8** %fillpenfile.addr, align 8
  store i8* %senmgau, i8** %senmgau.addr, align 8
  store double %silprob, double* %silprob.addr, align 8
  store double %fillprob, double* %fillprob.addr, align 8
  store double %langwt, double* %langwt.addr, align 8
  store double %inspen, double* %inspen.addr, align 8
  store double %uw, double* %uw.addr, align 8
  store i8* %meanfile, i8** %meanfile.addr, align 8
  store i8* %varfile, i8** %varfile.addr, align 8
  store double %varfloor, double* %varfloor.addr, align 8
  store i8* %mixwfile, i8** %mixwfile.addr, align 8
  store double %mixwfloor, double* %mixwfloor.addr, align 8
  store i8* %subvqfile, i8** %subvqfile.addr, align 8
  store i8* %gsfile, i8** %gsfile.addr, align 8
  store i8* %tmatfile, i8** %tmatfile.addr, align 8
  store double %tmatfloor, double* %tmatfloor.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %call = call i8* @__ckd_calloc__(i64 1, i64 104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 97)
  %0 = bitcast i8* %call to %struct.kbcore_t*
  store %struct.kbcore_t* %0, %struct.kbcore_t** %kb, align 8
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %1, i32 0, i32 0
  store %struct.feat_s* null, %struct.feat_s** %fcb, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 1
  store %struct.mdef_t* null, %struct.mdef_t** %mdef, align 8
  %3 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %3, i32 0, i32 2
  store %struct.dict_t* null, %struct.dict_t** %dict, align 8
  %4 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict2pid = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %4, i32 0, i32 3
  store %struct.dict2pid_t* null, %struct.dict2pid_t** %dict2pid, align 8
  %5 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %5, i32 0, i32 4
  store %struct.lm_s* null, %struct.lm_s** %lm, align 8
  %6 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fillpen = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %6, i32 0, i32 6
  store %struct.fillpen_t* null, %struct.fillpen_t** %fillpen, align 8
  %7 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict2lmwid = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %7, i32 0, i32 7
  store i16* null, i16** %dict2lmwid, align 8
  %8 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %8, i32 0, i32 8
  store %struct.mgau_model_t* null, %struct.mgau_model_t** %mgau, align 8
  %9 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %svq = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %9, i32 0, i32 9
  store %struct.subvq_t* null, %struct.subvq_t** %svq, align 8
  %10 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %10, i32 0, i32 11
  store %struct.tmat_t* null, %struct.tmat_t** %tmat, align 8
  %11 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %n_lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %11, i32 0, i32 12
  store i32 0, i32* %n_lm, align 4
  %12 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %n_alloclm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %12, i32 0, i32 13
  store i32 0, i32* %n_alloclm, align 4
  %13 = load double, double* %logbase.addr, align 8
  %call1 = call i32 @logs3_init(double %13)
  %14 = load i8*, i8** %feattype.addr, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8*, i8** %feattype.addr, align 8
  %tobool2 = icmp ne i8* %15, null
  br i1 %tobool2, label %if.then.3, label %if.end.30

if.then.3:                                        ; preds = %if.end
  %16 = load i8*, i8** %feattype.addr, align 8
  %17 = load i8*, i8** %cmn.addr, align 8
  %18 = load i8*, i8** %varnorm.addr, align 8
  %19 = load i8*, i8** %agc.addr, align 8
  %call4 = call %struct.feat_s* @feat_init(i8* %16, i8* %17, i8* %18, i8* %19)
  %20 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb5 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %20, i32 0, i32 0
  store %struct.feat_s* %call4, %struct.feat_s** %fcb5, align 8
  %cmp = icmp eq %struct.feat_s* %call4, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %21 = load i8*, i8** %feattype.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %21)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  %22 = load i8*, i8** %senmgau.addr, align 8
  %call8 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #3
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %23 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb11 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %23, i32 0, i32 0
  %24 = load %struct.feat_s*, %struct.feat_s** %fcb11, align 8
  %n_stream = getelementptr inbounds %struct.feat_s, %struct.feat_s* %24, i32 0, i32 3
  %25 = load i32, i32* %n_stream, align 4
  %cmp12 = icmp ne i32 %25, 1
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.10
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %26 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb14 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %26, i32 0, i32 0
  %27 = load %struct.feat_s*, %struct.feat_s** %fcb14, align 8
  %n_stream15 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %27, i32 0, i32 3
  %28 = load i32, i32* %n_stream15, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i32 0, i32 0), i32 %28)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.29

if.else:                                          ; preds = %if.end.7
  %29 = load i8*, i8** %senmgau.addr, align 8
  %call17 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #3
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.27

if.then.19:                                       ; preds = %if.else
  %30 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb20 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %30, i32 0, i32 0
  %31 = load %struct.feat_s*, %struct.feat_s** %fcb20, align 8
  %n_stream21 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %31, i32 0, i32 3
  %32 = load i32, i32* %n_stream21, align 4
  %cmp22 = icmp ne i32 %32, 4
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.19
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %33 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb24 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %33, i32 0, i32 0
  %34 = load %struct.feat_s*, %struct.feat_s** %fcb24, align 8
  %n_stream25 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %34, i32 0, i32 3
  %35 = load i32, i32* %n_stream25, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i32 %35)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.19
  br label %if.end.28

if.else.27:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.end.26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.16
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %36 = load i8*, i8** %mdeffile.addr, align 8
  %tobool31 = icmp ne i8* %36, null
  br i1 %tobool31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.end.30
  %37 = load i8*, i8** %mdeffile.addr, align 8
  %call33 = call %struct.mdef_t* @mdef_init(i8* %37)
  %38 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef34 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %38, i32 0, i32 1
  store %struct.mdef_t* %call33, %struct.mdef_t** %mdef34, align 8
  %cmp35 = icmp eq %struct.mdef_t* %call33, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %39 = load i8*, i8** %mdeffile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* %39)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.30
  %40 = load i8*, i8** %dictfile.addr, align 8
  %tobool39 = icmp ne i8* %40, null
  br i1 %tobool39, label %if.then.40, label %if.end.62

if.then.40:                                       ; preds = %if.end.38
  %41 = load i8*, i8** %compsep.addr, align 8
  %tobool41 = icmp ne i8* %41, null
  br i1 %tobool41, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.40
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8** %compsep.addr, align 8
  br label %if.end.52

if.else.43:                                       ; preds = %if.then.40
  %42 = load i8*, i8** %compsep.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %43 to i32
  %cmp44 = icmp ne i32 %conv, 0
  br i1 %cmp44, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.else.43
  %44 = load i8*, i8** %compsep.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %45 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %46 = load i8*, i8** %compsep.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i32 0, i32 0), i8* %46)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true, %if.else.43
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.42
  %47 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef53 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %47, i32 0, i32 1
  %48 = load %struct.mdef_t*, %struct.mdef_t** %mdef53, align 8
  %49 = load i8*, i8** %dictfile.addr, align 8
  %50 = load i8*, i8** %fdictfile.addr, align 8
  %51 = load i8*, i8** %compsep.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx54, align 1
  %call55 = call %struct.dict_t* @dict_init(%struct.mdef_t* %48, i8* %49, i8* %50, i8 signext %52)
  %53 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict56 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %53, i32 0, i32 2
  store %struct.dict_t* %call55, %struct.dict_t** %dict56, align 8
  %cmp57 = icmp eq %struct.dict_t* %call55, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.52
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %54 = load i8*, i8** %dictfile.addr, align 8
  %55 = load i8*, i8** %fdictfile.addr, align 8
  %tobool60 = icmp ne i8* %55, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.59
  %56 = load i8*, i8** %fdictfile.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %56, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), %cond.false ]
  %57 = load i8*, i8** %compsep.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i8* %54, i8* %cond, i8* %57)
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end, %if.end.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.38
  %58 = load i8*, i8** %lmfile.addr, align 8
  %tobool63 = icmp ne i8* %58, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.67

land.lhs.true.64:                                 ; preds = %if.end.62
  %59 = load i8*, i8** %lmctlfile.addr, align 8
  %tobool65 = icmp ne i8* %59, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.64
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %land.lhs.true.64, %if.end.62
  %60 = load i8*, i8** %lmfile.addr, align 8
  %tobool68 = icmp ne i8* %60, null
  br i1 %tobool68, label %if.end.72, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %if.end.67
  %61 = load i8*, i8** %lmctlfile.addr, align 8
  %tobool70 = icmp ne i8* %61, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.69
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.69, %if.end.67
  %62 = load i8*, i8** %lmfile.addr, align 8
  %tobool73 = icmp ne i8* %62, null
  br i1 %tobool73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.end.72
  %63 = load i8*, i8** %lmfile.addr, align 8
  %64 = load double, double* %langwt.addr, align 8
  %65 = load double, double* %inspen.addr, align 8
  %66 = load double, double* %uw.addr, align 8
  %call75 = call %struct.lm_s* @lm_read(i8* %63, double %64, double %65, double %66)
  %67 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lm76 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %67, i32 0, i32 4
  store %struct.lm_s* %call75, %struct.lm_s** %lm76, align 8
  %cmp77 = icmp eq %struct.lm_s* %call75, null
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.74
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %68 = load i8*, i8** %lmfile.addr, align 8
  %69 = load double, double* %langwt.addr, align 8
  %70 = load double, double* %inspen.addr, align 8
  %71 = load double, double* %uw.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %68, double %69, double %70, double %71)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.74
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.72
  %72 = load i8*, i8** %lmctlfile.addr, align 8
  %tobool82 = icmp ne i8* %72, null
  br i1 %tobool82, label %if.then.83, label %if.end.96

if.then.83:                                       ; preds = %if.end.81
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  %73 = load i8*, i8** %lmctlfile.addr, align 8
  %74 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict84 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %74, i32 0, i32 2
  %75 = load %struct.dict_t*, %struct.dict_t** %dict84, align 8
  %76 = load double, double* %langwt.addr, align 8
  %77 = load double, double* %uw.addr, align 8
  %78 = load double, double* %inspen.addr, align 8
  %79 = load i8*, i8** %lmdumpdir.addr, align 8
  %80 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %n_lm85 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %80, i32 0, i32 12
  %81 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %n_alloclm86 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %81, i32 0, i32 13
  %82 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict87 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %82, i32 0, i32 2
  %83 = load %struct.dict_t*, %struct.dict_t** %dict87, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %83, i32 0, i32 7
  %84 = load i32, i32* %n_word, align 4
  %call88 = call %struct.lmset_s* @lm_read_ctl(i8* %73, %struct.dict_t* %75, double %76, double %77, double %78, i8* %79, i32* %n_lm85, i32* %n_alloclm86, i32 %84)
  %85 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %85, i32 0, i32 5
  store %struct.lmset_s* %call88, %struct.lmset_s** %lmset, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %86 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset89 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %86, i32 0, i32 5
  %87 = load %struct.lmset_s*, %struct.lmset_s** %lmset89, align 8
  %arrayidx90 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %87, i64 0
  %name = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx90, i32 0, i32 0
  %88 = load i8*, i8** %name, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* %88)
  %89 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset91 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %89, i32 0, i32 5
  %90 = load %struct.lmset_s*, %struct.lmset_s** %lmset91, align 8
  %cmp92 = icmp eq %struct.lmset_s* %90, null
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.83
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %91 = load i8*, i8** %lmctlfile.addr, align 8
  %92 = load double, double* %langwt.addr, align 8
  %93 = load double, double* %inspen.addr, align 8
  %94 = load double, double* %uw.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i8* %91, double %92, double %93, double %94)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.then.83
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.81
  %95 = load i8*, i8** %fillpenfile.addr, align 8
  %tobool97 = icmp ne i8* %95, null
  br i1 %tobool97, label %if.then.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.96
  %96 = load i8*, i8** %lmfile.addr, align 8
  %tobool98 = icmp ne i8* %96, null
  br i1 %tobool98, label %land.lhs.true.99, label %lor.lhs.false.102

land.lhs.true.99:                                 ; preds = %lor.lhs.false
  %97 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict100 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %97, i32 0, i32 2
  %98 = load %struct.dict_t*, %struct.dict_t** %dict100, align 8
  %tobool101 = icmp ne %struct.dict_t* %98, null
  br i1 %tobool101, label %if.then.107, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.99, %lor.lhs.false
  %99 = load i8*, i8** %lmctlfile.addr, align 8
  %tobool103 = icmp ne i8* %99, null
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.119

land.lhs.true.104:                                ; preds = %lor.lhs.false.102
  %100 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict105 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %100, i32 0, i32 2
  %101 = load %struct.dict_t*, %struct.dict_t** %dict105, align 8
  %tobool106 = icmp ne %struct.dict_t* %101, null
  br i1 %tobool106, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %land.lhs.true.104, %land.lhs.true.99, %if.end.96
  %102 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict108 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %102, i32 0, i32 2
  %103 = load %struct.dict_t*, %struct.dict_t** %dict108, align 8
  %tobool109 = icmp ne %struct.dict_t* %103, null
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %if.then.107
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %104 = load i8*, i8** %fillpenfile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0), i8* %104)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.then.107
  %105 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict112 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %105, i32 0, i32 2
  %106 = load %struct.dict_t*, %struct.dict_t** %dict112, align 8
  %107 = load i8*, i8** %fillpenfile.addr, align 8
  %108 = load double, double* %silprob.addr, align 8
  %109 = load double, double* %fillprob.addr, align 8
  %110 = load double, double* %langwt.addr, align 8
  %111 = load double, double* %inspen.addr, align 8
  %call113 = call %struct.fillpen_t* @fillpen_init(%struct.dict_t* %106, i8* %107, double %108, double %109, double %110, double %111)
  %112 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fillpen114 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %112, i32 0, i32 6
  store %struct.fillpen_t* %call113, %struct.fillpen_t** %fillpen114, align 8
  %cmp115 = icmp eq %struct.fillpen_t* %call113, null
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.111
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %113 = load i8*, i8** %fillpenfile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %113)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.111
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.104, %lor.lhs.false.102
  %114 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict120 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %114, i32 0, i32 2
  %115 = load %struct.dict_t*, %struct.dict_t** %dict120, align 8
  %tobool121 = icmp ne %struct.dict_t* %115, null
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.135

land.lhs.true.122:                                ; preds = %if.end.119
  %116 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lm123 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %116, i32 0, i32 4
  %117 = load %struct.lm_s*, %struct.lm_s** %lm123, align 8
  %tobool124 = icmp ne %struct.lm_s* %117, null
  br i1 %tobool124, label %if.then.125, label %if.end.135

if.then.125:                                      ; preds = %land.lhs.true.122
  %118 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict126 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %118, i32 0, i32 2
  %119 = load %struct.dict_t*, %struct.dict_t** %dict126, align 8
  %120 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lm127 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %120, i32 0, i32 4
  %121 = load %struct.lm_s*, %struct.lm_s** %lm127, align 8
  %122 = load double, double* %langwt.addr, align 8
  %conv128 = fptosi double %122 to i32
  %call129 = call i16* @wid_dict_lm_map(%struct.dict_t* %119, %struct.lm_s* %121, i32 %conv128)
  %123 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict2lmwid130 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %123, i32 0, i32 7
  store i16* %call129, i16** %dict2lmwid130, align 8
  %cmp131 = icmp eq i16* %call129, null
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.125
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.then.125
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true.122, %if.end.119
  %124 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict136 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %124, i32 0, i32 2
  %125 = load %struct.dict_t*, %struct.dict_t** %dict136, align 8
  %tobool137 = icmp ne %struct.dict_t* %125, null
  br i1 %tobool137, label %land.lhs.true.138, label %if.end.164

land.lhs.true.138:                                ; preds = %if.end.135
  %126 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset139 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %126, i32 0, i32 5
  %127 = load %struct.lmset_s*, %struct.lmset_s** %lmset139, align 8
  %tobool140 = icmp ne %struct.lmset_s* %127, null
  br i1 %tobool140, label %if.then.141, label %if.end.164

if.then.141:                                      ; preds = %land.lhs.true.138
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.141
  %128 = load i32, i32* %i, align 4
  %129 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %n_lm142 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %129, i32 0, i32 12
  %130 = load i32, i32* %n_lm142, align 4
  %cmp143 = icmp slt i32 %128, %130
  br i1 %cmp143, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %131 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict145 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %131, i32 0, i32 2
  %132 = load %struct.dict_t*, %struct.dict_t** %dict145, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom = sext i32 %133 to i64
  %134 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset146 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %134, i32 0, i32 5
  %135 = load %struct.lmset_s*, %struct.lmset_s** %lmset146, align 8
  %arrayidx147 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %135, i64 %idxprom
  %lm148 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx147, i32 0, i32 1
  %136 = load %struct.lm_s*, %struct.lm_s** %lm148, align 8
  %137 = load double, double* %langwt.addr, align 8
  %conv149 = fptosi double %137 to i32
  %call150 = call i16* @wid_dict_lm_map(%struct.dict_t* %132, %struct.lm_s* %136, i32 %conv149)
  %138 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %138 to i64
  %139 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset152 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %139, i32 0, i32 5
  %140 = load %struct.lmset_s*, %struct.lmset_s** %lmset152, align 8
  %arrayidx153 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %140, i64 %idxprom151
  %lm154 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx153, i32 0, i32 1
  %141 = load %struct.lm_s*, %struct.lm_s** %lm154, align 8
  %dict2lmwid155 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %141, i32 0, i32 38
  store i16* %call150, i16** %dict2lmwid155, align 8
  %cmp156 = icmp eq i16* %call150, null
  br i1 %cmp156, label %if.then.158, label %if.end.163

if.then.158:                                      ; preds = %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %143 to i64
  %144 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %lmset160 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %144, i32 0, i32 5
  %145 = load %struct.lmset_s*, %struct.lmset_s** %lmset160, align 8
  %arrayidx161 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %145, i64 %idxprom159
  %name162 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx161, i32 0, i32 0
  %146 = load i8*, i8** %name162, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i32 0, i32 0), i32 %142, i8* %146)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.158, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.163
  %147 = load i32, i32* %i, align 4
  %inc = add nsw i32 %147, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.164

if.end.164:                                       ; preds = %for.end, %land.lhs.true.138, %if.end.135
  %148 = load i8*, i8** %meanfile.addr, align 8
  %tobool165 = icmp ne i8* %148, null
  br i1 %tobool165, label %if.then.166, label %if.end.198

if.then.166:                                      ; preds = %if.end.164
  %149 = load i8*, i8** %varfile.addr, align 8
  %tobool167 = icmp ne i8* %149, null
  br i1 %tobool167, label %lor.lhs.false.168, label %if.then.170

lor.lhs.false.168:                                ; preds = %if.then.166
  %150 = load i8*, i8** %mixwfile.addr, align 8
  %tobool169 = icmp ne i8* %150, null
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %lor.lhs.false.168, %if.then.166
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %151 = load i8*, i8** %meanfile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i32 0, i32 0), i8* %151)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %lor.lhs.false.168
  %152 = load i8*, i8** %meanfile.addr, align 8
  %153 = load i8*, i8** %varfile.addr, align 8
  %154 = load double, double* %varfloor.addr, align 8
  %155 = load i8*, i8** %mixwfile.addr, align 8
  %156 = load double, double* %mixwfloor.addr, align 8
  %157 = load i8*, i8** %senmgau.addr, align 8
  %call172 = call %struct.mgau_model_t* @mgau_init(i8* %152, i8* %153, double %154, i8* %155, double %156, i32 1, i8* %157)
  %158 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau173 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %158, i32 0, i32 8
  store %struct.mgau_model_t* %call172, %struct.mgau_model_t** %mgau173, align 8
  %159 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau174 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %159, i32 0, i32 8
  %160 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau174, align 8
  %cmp175 = icmp eq %struct.mgau_model_t* %160, null
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.171
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %161 = load i8*, i8** %meanfile.addr, align 8
  %162 = load i8*, i8** %varfile.addr, align 8
  %163 = load double, double* %varfloor.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i8* %161, i8* %162, double %163)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %if.end.171
  %164 = load i8*, i8** %subvqfile.addr, align 8
  %tobool179 = icmp ne i8* %164, null
  br i1 %tobool179, label %if.then.180, label %if.end.188

if.then.180:                                      ; preds = %if.end.178
  %165 = load i8*, i8** %subvqfile.addr, align 8
  %166 = load double, double* %varfloor.addr, align 8
  %167 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau181 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %167, i32 0, i32 8
  %168 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau181, align 8
  %call182 = call %struct.subvq_t* @subvq_init(i8* %165, double %166, i32 -1, %struct.mgau_model_t* %168)
  %169 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %svq183 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %169, i32 0, i32 9
  store %struct.subvq_t* %call182, %struct.subvq_t** %svq183, align 8
  %cmp184 = icmp eq %struct.subvq_t* %call182, null
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.then.180
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %170 = load i8*, i8** %subvqfile.addr, align 8
  %171 = load double, double* %varfloor.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), i8* %170, double %171)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %if.then.180
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.178
  %172 = load i8*, i8** %gsfile.addr, align 8
  %tobool189 = icmp ne i8* %172, null
  br i1 %tobool189, label %if.then.190, label %if.end.197

if.then.190:                                      ; preds = %if.end.188
  %173 = load i8*, i8** %gsfile.addr, align 8
  %call191 = call %struct.gs_s* @gs_read(i8* %173)
  %174 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %gs = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %174, i32 0, i32 10
  store %struct.gs_s* %call191, %struct.gs_s** %gs, align 8
  %cmp192 = icmp eq %struct.gs_s* %call191, null
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.then.190
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %175 = load i8*, i8** %gsfile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* %175)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %if.then.190
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %176 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %gs196 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %176, i32 0, i32 10
  %177 = load %struct.gs_s*, %struct.gs_s** %gs196, align 8
  %n_mgau = getelementptr inbounds %struct.gs_s, %struct.gs_s* %177, i32 0, i32 0
  %178 = load i32, i32* %n_mgau, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i32 0, i32 0), i32 %178)
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.195, %if.end.188
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.164
  %179 = load i8*, i8** %tmatfile.addr, align 8
  %tobool199 = icmp ne i8* %179, null
  br i1 %tobool199, label %if.then.200, label %if.end.207

if.then.200:                                      ; preds = %if.end.198
  %180 = load i8*, i8** %tmatfile.addr, align 8
  %181 = load double, double* %tmatfloor.addr, align 8
  %call201 = call %struct.tmat_t* @tmat_init(i8* %180, double %181)
  %182 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat202 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %182, i32 0, i32 11
  store %struct.tmat_t* %call201, %struct.tmat_t** %tmat202, align 8
  %cmp203 = icmp eq %struct.tmat_t* %call201, null
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.then.200
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %183 = load i8*, i8** %tmatfile.addr, align 8
  %184 = load double, double* %tmatfloor.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i8* %183, double %184)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %if.then.200
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.198
  %185 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef208 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %185, i32 0, i32 1
  %186 = load %struct.mdef_t*, %struct.mdef_t** %mdef208, align 8
  %tobool209 = icmp ne %struct.mdef_t* %186, null
  br i1 %tobool209, label %land.lhs.true.210, label %if.end.218

land.lhs.true.210:                                ; preds = %if.end.207
  %187 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict211 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %187, i32 0, i32 2
  %188 = load %struct.dict_t*, %struct.dict_t** %dict211, align 8
  %tobool212 = icmp ne %struct.dict_t* %188, null
  br i1 %tobool212, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %land.lhs.true.210
  %189 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef214 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %189, i32 0, i32 1
  %190 = load %struct.mdef_t*, %struct.mdef_t** %mdef214, align 8
  %191 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict215 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %191, i32 0, i32 2
  %192 = load %struct.dict_t*, %struct.dict_t** %dict215, align 8
  %call216 = call %struct.dict2pid_t* @dict2pid_build(%struct.mdef_t* %190, %struct.dict_t* %192)
  %193 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %dict2pid217 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %193, i32 0, i32 3
  store %struct.dict2pid_t* %call216, %struct.dict2pid_t** %dict2pid217, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.213, %land.lhs.true.210, %if.end.207
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0))
  %194 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb219 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %194, i32 0, i32 0
  %195 = load %struct.feat_s*, %struct.feat_s** %fcb219, align 8
  %tobool220 = icmp ne %struct.feat_s* %195, null
  br i1 %tobool220, label %land.lhs.true.221, label %if.end.237

land.lhs.true.221:                                ; preds = %if.end.218
  %196 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau222 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %196, i32 0, i32 8
  %197 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau222, align 8
  %tobool223 = icmp ne %struct.mgau_model_t* %197, null
  br i1 %tobool223, label %if.then.224, label %if.end.237

if.then.224:                                      ; preds = %land.lhs.true.221
  %198 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb225 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %198, i32 0, i32 0
  %199 = load %struct.feat_s*, %struct.feat_s** %fcb225, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %199, i32 0, i32 4
  %200 = load i32*, i32** %stream_len, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %200, i64 0
  %201 = load i32, i32* %arrayidx226, align 4
  %202 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau227 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %202, i32 0, i32 8
  %203 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau227, align 8
  %veclen = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %203, i32 0, i32 2
  %204 = load i32, i32* %veclen, align 4
  %cmp228 = icmp ne i32 %201, %204
  br i1 %cmp228, label %if.then.230, label %if.end.236

if.then.230:                                      ; preds = %if.then.224
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %205 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %fcb231 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %205, i32 0, i32 0
  %206 = load %struct.feat_s*, %struct.feat_s** %fcb231, align 8
  %stream_len232 = getelementptr inbounds %struct.feat_s, %struct.feat_s* %206, i32 0, i32 4
  %207 = load i32*, i32** %stream_len232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %207, i64 0
  %208 = load i32, i32* %arrayidx233, align 4
  %209 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau234 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %209, i32 0, i32 8
  %210 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau234, align 8
  %veclen235 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %210, i32 0, i32 2
  %211 = load i32, i32* %veclen235, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i32 0, i32 0), i32 %208, i32 %211)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.230, %if.then.224
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %land.lhs.true.221, %if.end.218
  %212 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef238 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %212, i32 0, i32 1
  %213 = load %struct.mdef_t*, %struct.mdef_t** %mdef238, align 8
  %tobool239 = icmp ne %struct.mdef_t* %213, null
  br i1 %tobool239, label %land.lhs.true.240, label %if.end.255

land.lhs.true.240:                                ; preds = %if.end.237
  %214 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau241 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %214, i32 0, i32 8
  %215 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau241, align 8
  %tobool242 = icmp ne %struct.mgau_model_t* %215, null
  br i1 %tobool242, label %if.then.243, label %if.end.255

if.then.243:                                      ; preds = %land.lhs.true.240
  %216 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef244 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %216, i32 0, i32 1
  %217 = load %struct.mdef_t*, %struct.mdef_t** %mdef244, align 8
  %n_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %217, i32 0, i32 4
  %218 = load i32, i32* %n_sen, align 4
  %219 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau245 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %219, i32 0, i32 8
  %220 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau245, align 8
  %n_mgau246 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %220, i32 0, i32 0
  %221 = load i32, i32* %n_mgau246, align 4
  %cmp247 = icmp ne i32 %218, %221
  br i1 %cmp247, label %if.then.249, label %if.end.254

if.then.249:                                      ; preds = %if.then.243
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 237, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %222 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef250 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %222, i32 0, i32 1
  %223 = load %struct.mdef_t*, %struct.mdef_t** %mdef250, align 8
  %n_sen251 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %223, i32 0, i32 4
  %224 = load i32, i32* %n_sen251, align 4
  %225 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mgau252 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %225, i32 0, i32 8
  %226 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau252, align 8
  %n_mgau253 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %226, i32 0, i32 0
  %227 = load i32, i32* %n_mgau253, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0), i32 %224, i32 %227)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.249, %if.then.243
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %land.lhs.true.240, %if.end.237
  %228 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef256 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %228, i32 0, i32 1
  %229 = load %struct.mdef_t*, %struct.mdef_t** %mdef256, align 8
  %tobool257 = icmp ne %struct.mdef_t* %229, null
  br i1 %tobool257, label %land.lhs.true.258, label %if.end.283

land.lhs.true.258:                                ; preds = %if.end.255
  %230 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat259 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %230, i32 0, i32 11
  %231 = load %struct.tmat_t*, %struct.tmat_t** %tmat259, align 8
  %tobool260 = icmp ne %struct.tmat_t* %231, null
  br i1 %tobool260, label %if.then.261, label %if.end.283

if.then.261:                                      ; preds = %land.lhs.true.258
  %232 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef262 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %232, i32 0, i32 1
  %233 = load %struct.mdef_t*, %struct.mdef_t** %mdef262, align 8
  %n_tmat = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %233, i32 0, i32 5
  %234 = load i32, i32* %n_tmat, align 4
  %235 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat263 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %235, i32 0, i32 11
  %236 = load %struct.tmat_t*, %struct.tmat_t** %tmat263, align 8
  %n_tmat264 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %236, i32 0, i32 1
  %237 = load i32, i32* %n_tmat264, align 4
  %cmp265 = icmp ne i32 %234, %237
  br i1 %cmp265, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %if.then.261
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %238 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef268 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %238, i32 0, i32 1
  %239 = load %struct.mdef_t*, %struct.mdef_t** %mdef268, align 8
  %n_tmat269 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %239, i32 0, i32 5
  %240 = load i32, i32* %n_tmat269, align 4
  %241 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat270 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %241, i32 0, i32 11
  %242 = load %struct.tmat_t*, %struct.tmat_t** %tmat270, align 8
  %n_tmat271 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %242, i32 0, i32 1
  %243 = load i32, i32* %n_tmat271, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i32 %240, i32 %243)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.267, %if.then.261
  %244 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef273 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %244, i32 0, i32 1
  %245 = load %struct.mdef_t*, %struct.mdef_t** %mdef273, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %245, i32 0, i32 2
  %246 = load i32, i32* %n_emit_state, align 4
  %247 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat274 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %247, i32 0, i32 11
  %248 = load %struct.tmat_t*, %struct.tmat_t** %tmat274, align 8
  %n_state = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %248, i32 0, i32 2
  %249 = load i32, i32* %n_state, align 4
  %cmp275 = icmp ne i32 %246, %249
  br i1 %cmp275, label %if.then.277, label %if.end.282

if.then.277:                                      ; preds = %if.end.272
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %250 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %mdef278 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %250, i32 0, i32 1
  %251 = load %struct.mdef_t*, %struct.mdef_t** %mdef278, align 8
  %n_emit_state279 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %251, i32 0, i32 2
  %252 = load i32, i32* %n_emit_state279, align 4
  %253 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  %tmat280 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %253, i32 0, i32 11
  %254 = load %struct.tmat_t*, %struct.tmat_t** %tmat280, align 8
  %n_state281 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %254, i32 0, i32 2
  %255 = load i32, i32* %n_state281, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i32 0, i32 0), i32 %252, i32 %255)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.277, %if.end.272
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %land.lhs.true.258, %if.end.255
  %256 = load %struct.kbcore_t*, %struct.kbcore_t** %kb, align 8
  ret %struct.kbcore_t* %256
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i32 @logs3_init(double) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare %struct.feat_s* @feat_init(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct.mdef_t* @mdef_init(i8*) #1

declare %struct.dict_t* @dict_init(%struct.mdef_t*, i8*, i8*, i8 signext) #1

declare %struct.lm_s* @lm_read(i8*, double, double, double) #1

declare %struct.lmset_s* @lm_read_ctl(i8*, %struct.dict_t*, double, double, double, i8*, i32*, i32*, i32) #1

declare %struct.fillpen_t* @fillpen_init(%struct.dict_t*, i8*, double, double, double, double) #1

declare i16* @wid_dict_lm_map(%struct.dict_t*, %struct.lm_s*, i32) #1

declare %struct.mgau_model_t* @mgau_init(i8*, i8*, double, i8*, double, i32, i8*) #1

declare %struct.subvq_t* @subvq_init(i8*, double, i32, %struct.mgau_model_t*) #1

declare %struct.gs_s* @gs_read(i8*) #1

declare %struct.tmat_t* @tmat_init(i8*, double) #1

declare %struct.dict2pid_t* @dict2pid_build(%struct.mdef_t*, %struct.dict_t*) #1

; Function Attrs: nounwind uwtable
define void @kbcore_free(%struct.kbcore_t* %kbcore) #0 {
entry:
  %kbcore.addr = alloca %struct.kbcore_t*, align 8
  %fcb = alloca %struct.feat_s*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %dict2pid = alloca %struct.dict2pid_t*, align 8
  %lm = alloca %struct.lm_s*, align 8
  store %struct.kbcore_t* %kbcore, %struct.kbcore_t** %kbcore.addr, align 8
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %fcb1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 0
  %1 = load %struct.feat_s*, %struct.feat_s** %fcb1, align 8
  store %struct.feat_s* %1, %struct.feat_s** %fcb, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %mdef2 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 1
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef2, align 8
  store %struct.mdef_t* %3, %struct.mdef_t** %mdef, align 8
  %4 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %dict3 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %4, i32 0, i32 2
  %5 = load %struct.dict_t*, %struct.dict_t** %dict3, align 8
  store %struct.dict_t* %5, %struct.dict_t** %dict, align 8
  %6 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %dict2pid4 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %6, i32 0, i32 3
  %7 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid4, align 8
  store %struct.dict2pid_t* %7, %struct.dict2pid_t** %dict2pid, align 8
  %8 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %lm5 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %8, i32 0, i32 4
  %9 = load %struct.lm_s*, %struct.lm_s** %lm5, align 8
  store %struct.lm_s* %9, %struct.lm_s** %lm, align 8
  %10 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  call void @lm_free(%struct.lm_s* %10)
  %11 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  call void @dict_free(%struct.dict_t* %11)
  %12 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comwt = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %12, i32 0, i32 5
  %13 = load i32*, i32** %comwt, align 8
  %14 = bitcast i32* %13 to i8*
  call void @ckd_free(i8* %14)
  %15 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %15, i32 0, i32 4
  %16 = load i16**, i16*** %comsseq, align 8
  %17 = bitcast i16** %16 to i8*
  call void @ckd_free(i8* %17)
  %18 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %18, i32 0, i32 3
  %19 = load i16**, i16*** %comstate, align 8
  %20 = bitcast i16** %19 to i8*
  call void @ckd_free(i8* %20)
  %21 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %single_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %21, i32 0, i32 2
  %22 = load i32**, i32*** %single_lc, align 8
  %23 = bitcast i32** %22 to i8*
  %24 = bitcast i8* %23 to i8**
  call void @ckd_free_2d(i8** %24)
  %25 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %ldiph_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %25, i32 0, i32 1
  %26 = load i32***, i32**** %ldiph_lc, align 8
  %27 = bitcast i32*** %26 to i8***
  call void @ckd_free_3d(i8*** %27)
  %28 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %internal = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %28, i32 0, i32 0
  %29 = load i32**, i32*** %internal, align 8
  %30 = bitcast i32** %29 to i8*
  call void @ckd_free(i8* %30)
  %31 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  call void @mdef_free(%struct.mdef_t* %31)
  %32 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %fillpen = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %32, i32 0, i32 6
  %33 = load %struct.fillpen_t*, %struct.fillpen_t** %fillpen, align 8
  call void @fillpen_free(%struct.fillpen_t* %33)
  %34 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %tmat = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %34, i32 0, i32 11
  %35 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  call void @tmat_free(%struct.tmat_t* %35)
  %36 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %svq = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %36, i32 0, i32 9
  %37 = load %struct.subvq_t*, %struct.subvq_t** %svq, align 8
  call void @subvq_free(%struct.subvq_t* %37)
  %38 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %mgau = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %38, i32 0, i32 8
  %39 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  call void @mgau_free(%struct.mgau_model_t* %39)
  %40 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %tobool = icmp ne %struct.feat_s* %40, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %41 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %name = getelementptr inbounds %struct.feat_s, %struct.feat_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %name, align 8
  call void @ckd_free(i8* %42)
  %43 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %stream_len = getelementptr inbounds %struct.feat_s, %struct.feat_s* %43, i32 0, i32 4
  %44 = load i32*, i32** %stream_len, align 8
  %45 = bitcast i32* %44 to i8*
  call void @ckd_free(i8* %45)
  %46 = load %struct.feat_s*, %struct.feat_s** %fcb, align 8
  %47 = bitcast %struct.feat_s* %46 to i8*
  call void @ckd_free(i8* %47)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void (...) @logs_free()
  %48 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %fcb6 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %48, i32 0, i32 0
  %49 = load %struct.feat_s*, %struct.feat_s** %fcb6, align 8
  call void @feat_free(%struct.feat_s* %49)
  %50 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore.addr, align 8
  %51 = bitcast %struct.kbcore_t* %50 to i8*
  call void @ckd_free(i8* %51)
  ret void
}

declare void @lm_free(%struct.lm_s*) #1

declare void @dict_free(%struct.dict_t*) #1

declare void @ckd_free(i8*) #1

declare void @ckd_free_2d(i8**) #1

declare void @ckd_free_3d(i8***) #1

declare void @mdef_free(%struct.mdef_t*) #1

declare void @fillpen_free(%struct.fillpen_t*) #1

declare void @tmat_free(%struct.tmat_t*) #1

declare void @subvq_free(%struct.subvq_t*) #1

declare void @mgau_free(%struct.mgau_model_t*) #1

declare void @logs_free(...) #1

declare void @feat_free(%struct.feat_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
